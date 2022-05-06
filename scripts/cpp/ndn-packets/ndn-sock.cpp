#include "ndn-sock.h"
#include <stdio.h>
#include <stdlib.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netinet/ip.h>
#include <arpa/inet.h>
#include <stdlib.h>
#include <cstring>

#define IPPROTO_NDN 252
#define TLV_NAME 0x07
#define TLV_GENERIC_NAME 0x08
#define TLV_IMP_DIGEST 0x01

void charcpy(uchar* src, int size, uchar* dst, int offset) {
    // printf("[DEBUG]\tcharcpy: size=%d; offset=%d\n", size, offset);
    for (int i = 0; i < size; i++) {
        // printf("[DEBUG]\t  index=%d / %d\n", offset+i, i);
        dst[offset + i] = src[i];
    }
}

NdnSock::NdnSock() {
    if ((mSock = socket(AF_INET, SOCK_RAW, IPPROTO_NDN)) == 0) {
        perror("Failed to create NDN socket");
        exit(0);
    }
}
NdnSock::~NdnSock() {

}

uchar* NdnSock::create_interest(const char *name, int length, bool fresh, int &interest_length) {
    // printf("[NDN] Interest\n");
    // Create an interest packet
    // Interest = INTEREST-TYPE TLV-LENGTH
    //              Name = NAME-TYPE TLV-LENGTH *NameComponent
    //              [CanBePrefix]
    //              [MustBeFresh]
    //              [ForwardingHint]
    //              [Nonce]
    //              [InterestLifetime]
    //              [HopLimit]
    //              [ApplicationParameters [InterestSignature]]

    // Build Name TLV
    uchar *nm;
    int nm_length;
    // printf("[NDN] Interest->Name\n");
    nm = build_name(reinterpret_cast<const uchar *>(name), length, nm_length);

    // If fresh, build fresh TLV
    uchar* tlv_fresh = nullptr;
    int fresh_length = 0;
    if (fresh) {
        // printf("[NDN] Interest->Fresh\n");
        tlv_fresh = build_tlv(TLV_FRESH, nullptr, 0, fresh_length);
    }
    // Build Nonce TLV
    uchar n[4];
    int n_rand = rand();
    printf("[DEBUG] Nonce is %d\n", n_rand);
    n[0] = n_rand & 0xFF;
    n[1] = (n_rand>>8) & 0xFF;
    n[2] = (n_rand>>16) & 0xFF;
    n[3] = (n_rand>>24) & 0xFF;
    printf("[DEBUG] Converted is %02x.%02x.%02x.%02x\n", n[3], n[2], n[1], n[0]);
    uchar* nonce;
    int nonce_length;
    // printf("[NDN] Interest->Nonce\n");
    nonce = build_tlv(TLV_NONCE, n, 4, nonce_length);

    // Combine
    int comb_length = nm_length + fresh_length + nonce_length;
    uchar *comb = (uchar*)malloc(sizeof(uchar) * comb_length);
    // printf("[DEBUG] Interest->Nonce: Comb_length => %d + %d + %d = %d\n", nm_length, fresh_length, nonce_length, comb_length);
    charcpy(nm, nm_length, comb, 0);
    charcpy(tlv_fresh, fresh_length, comb, nm_length);
    charcpy(nonce, nonce_length, comb, nm_length + fresh_length);

    // Build Interest TLV
    // printf("[NDN] Interest->Combined\n");
    uchar* result = build_tlv(TLV_INTEREST, comb, comb_length, interest_length);

    // Free memory
    free(nm);
    if (tlv_fresh != nullptr)
        free(tlv_fresh);
    free(nonce);
    free(comb);

    return result;
}
uchar* NdnSock::create_data(const char *name, int name_length, const void *content, int content_length, int &data_length) {
    // printf("[NDN] Data\n");
    // Create a data packet
    // Data = DATA-TYPE TLV-LENGTH
    //              Name = NAME-TYPE TLV-LENGTH *NameComponent
    //              [Content]

    // Build Name TLV
    uchar *nm;
    int nm_length;
    nm = build_name(reinterpret_cast<const uchar *>(name), name_length, nm_length);

    // Build Content TLV
    uchar *cn;
    int cn_length;
    cn = build_tlv(TLV_CONTENT, content, content_length, cn_length);

    // Combine
    int comb_length = nm_length + cn_length;
    uchar *comb = (uchar*)malloc(sizeof(uchar) * comb_length);
    charcpy(nm, nm_length, comb, 0);
    charcpy(cn, cn_length, comb, nm_length);

    // Build Data TLV
    uchar* result = build_tlv(TLV_DATA, comb, comb_length, data_length);

    // Free memory
    free(nm);
    free(cn);
    free(comb);

    return result;
}

bool NdnSock::send(const void *pkt, const int pkt_len, char *ip_hop) {
    struct sockaddr_in sin;

    sin.sin_family = AF_INET;
    sin.sin_addr.s_addr = inet_addr(ip_hop);

    if(sendto(mSock, pkt, pkt_len, 0, (struct sockaddr *) &sin, sizeof(sin)) < 0) {
        // perror("Failed to send the packet...\n");
        return false;
    }
    return true;
}

uchar* NdnSock::build_name(const uchar *name, int length, int &tlv_name_length) {
    // printf("[NDN] Name\n");
    // Create a Name
    // Name = NAME-TYPE TLV-LENGTH *NameComponent
    // NameComponent = Any of the following:
    //      GenericNameComponent = GENERIC-NAME-COMPONENT-TYPE TLV-LENGTH *OCTET
    //      ImplicitSha256DigestComponent = IMPLICIT-SHA256-DIGEST-COMPONENT-TYPE TLV-LENGTH=32 32OCTET

    uchar* gen;
    int gen_length;
    gen = build_generic_name(name, length, gen_length);


    // printf("[NDN] Name->Combined\n");
    uchar *result = build_tlv(TLV_NAME, gen, gen_length, tlv_name_length);

    // Free memory
    free(gen);

    return result;
}
uchar* NdnSock::build_name_digest(uchar *sha, int &name_length) {
    // printf("[NDN] Name+Digest\n");
    // Create a Name
    // Name = NAME-TYPE TLV-LENGTH *NameComponent
    // NameComponent = Any of the following:
    //      GenericNameComponent = GENERIC-NAME-COMPONENT-TYPE TLV-LENGTH *OCTET
    //      ImplicitSha256DigestComponent = IMPLICIT-SHA256-DIGEST-COMPONENT-TYPE TLV-LENGTH=32 32OCTET

    uchar* digest;
    int digest_length;
    digest = build_digest(sha, digest_length);

    // printf("[NDN] Name+Digest->Combined\n");
    uchar *result = build_tlv(TLV_NAME, digest, digest_length, name_length);

    // Free memory
    free(digest);

    return result;
}
uchar* NdnSock::build_name_gen_digest(const uchar* name, int length, uchar *digest, int &tlv_name_length) {
    // printf("[NDN] Name+Gen+Digest\n");
    // Create a Name
    // Name = NAME-TYPE TLV-LENGTH *NameComponent
    // NameComponent = Any of the following:
    //      GenericNameComponent = GENERIC-NAME-COMPONENT-TYPE TLV-LENGTH *OCTET
    //      ImplicitSha256DigestComponent = IMPLICIT-SHA256-DIGEST-COMPONENT-TYPE TLV-LENGTH=32 32OCTET

    uchar* gen;
    int gen_length;
    gen = build_generic_name(name, length, gen_length);

    uchar* tlv_digest;
    int tlv_digest_length;
    tlv_digest = build_digest(digest, tlv_digest_length);

    // Combine
    int comb_length = gen_length + tlv_digest_length;
    uchar *comb = (uchar*)malloc(sizeof(uchar) * comb_length);
    charcpy(gen, gen_length, comb, 0);
    charcpy(tlv_digest, tlv_digest_length, comb, gen_length);
    
    // printf("[NDN] Name+Gen+Digest->Combined\n");
    uchar *result = build_tlv(TLV_NAME, comb, comb_length, tlv_name_length);

    // Free memory
    free(gen);
    free(tlv_digest);
    free(comb);

    return result;
}
uchar* NdnSock::build_generic_name(const uchar* name, int length, int &gname_size) {
    // printf("[NDN] Gen\n");
    return build_tlv(TLV_GENERIC_NAME, (void *)name, length, gname_size);
}
uchar* NdnSock::build_digest(uchar* sha, int &idig_size) {
    // printf("[NDN] Digest\n");
    return build_tlv(TLV_IMP_DIGEST, sha, 32, idig_size);
}
uchar* NdnSock::build_tlv(int type, const void *value, int length, int &tlv_size) {
    // printf("[NDN] \tTLV: Type=%d\t\tLength=%d\n", type, length);
    // Generate Type and Length
    int t_size, l_size;
    uchar t_enc, l_enc;
    // printf("[NDN]\t  Generating Type...\n");
    // VAR-NUMBER-1
    if (type < 0xFD) {
        t_size = 1;
        t_enc = type;
    }
    // VAR-NUMBER-3
    else if (type <= 0xFFFF) {
        t_size = 3;
        t_enc = 0xFD;
    }
    // VAR-NUMBER-5
    else if (type <= 0xFFFFFFFF) {
        t_size = 5;
        t_enc = 0xFE;
    }
    // printf("[NDN]\t  Generating Length...\n");
    // VAR-NUMBER-1
    if (length < 0xFD) {
        l_size = 1;
        l_enc = length;
    }
    // VAR-NUMBER-3
    else if (length <= 0xFFFF) {
        l_size = 3;
        l_enc = 0xFD;
    }
    // VAR-NUMBER-5
    else if (length <= 0xFFFFFFFF) {
        l_size = 5;
        l_enc = 0xFE;
    }
    // VAR-NUMBER-9
    else {
        l_size = 9;
        l_enc = 0xFF;
    }
    uchar *tlv = (uchar*) malloc(sizeof(uchar)*(t_size+l_size+length));
    tlv_size = t_size + l_size + length;
    // printf("[NDN]\t  TLV Size = %d\n", tlv_size);
    // printf("[NDN]\t  Placing Type (%d)...\n", type);
    tlv[0] = t_enc;
    for (int i = 1; i < t_size; i++) {
        // printf("[DEBUG] index=%d\n", i);
        tlv[i] = (uchar)((type>>(8*sizeof(uchar)*((t_size-1)-i)))&0xFF);
        // printf("[DEBUG] \ttlv[%d] = %02x (shifted %d)\n", i, (uchar)((type>>(8*sizeof(uchar)*((t_size-1)-i)))&0xFF), (8*sizeof(uchar)*((t_size-1)-i)));
    }
    // printf("[NDN]\t  Placing Length (%d)...\n", length);
    tlv[t_size] = l_enc;
    for (int i = 1; i < l_size; i++) {
        // printf("[DEBUG] index=%d\n", i+t_size);
        tlv[i+t_size] = (uchar)((length>>(8*sizeof(uchar)*((l_size-1)-i)))&0xFF);
        // printf("[DEBUG] \ttlv[%d] = %02x (shifted %d)\n", i+t_size, (uchar)((length>>(8*sizeof(uchar)*((l_size-1)-i)))&0xFF), (8*sizeof(uchar)*((l_size-1)-i)));
    }
    // printf("[NDN]\t  Placing Value...\n");
    for(int i = 0; i < length; i++) {
        // printf("[DEBUG] index=%d\n", i+t_size+l_size);
        tlv[i+t_size+l_size] = 0;
        tlv[i+t_size+l_size] = *((char*)value + (sizeof(uchar)*i));
    }
    // printf("[NDN]\tTLV Created: Size=%d\n", tlv_size);
    return tlv;
}

bool NdnSock::is_terminal_tlv_type(int type) {
    return (type == TLV_CONTENT || type == TLV_FRESH || type == TLV_GENERIC_NAME || type == TLV_IMP_DIGEST || type == TLV_NONCE);
}

const char* NdnSock::get_type_string(int type) {
    switch(type) {
        case TLV_NAME: return "TLV_NAME";
        case TLV_INTEREST: return "TLV_INTEREST";
        case TLV_DATA: return "TLV_DATA";
        case TLV_GENERIC_NAME: return "TLV_GENERIC_NAME";
        case TLV_IMP_DIGEST: return "TLV_IMP_DIGEST";
        case TLV_FRESH: return "TLV_FRESH";
        case TLV_NONCE: return "TLV_NONCE";
        case TLV_CONTENT: return "TLV_CONTENT";
        default: return nullptr;
    }
}

uchar get_void_uchar_at(void *input, int index) {
    // printf("[DEBUG] Reading char from void at %d\n", index);
    return *((char*)input + (sizeof(uchar)*index));
}

void* NdnSock::parse_tlv(void *tlv, int &type, int &t_len, int &length, int &l_len) {
    uchar t_enc = get_void_uchar_at(tlv, 0);
    t_len = 1;
    if (t_enc < 0xFD) {
        type = t_enc;
    }
    else {
        type = 0;
        switch(t_enc) {
            case 0xFD:
                t_len = 3;
                break;
            case 0xFE:
                t_len = 5;
                break;
            case 0xFF:
                t_len = 9;
                break;
        }
        for (int i = 1; i < t_len; i++) {
            type += (get_void_uchar_at(tlv, i))<<(((t_len-1)-i)*8);
        }
    }

    uchar l_enc = get_void_uchar_at(tlv, t_len);
    l_len = 1;
    if (l_enc < 0xFD) {
        length = l_enc;
    }
    else {
        length = 0;
        switch(l_enc) {
            case 0xFD:
                l_len = 3;
                break;
            case 0xFE:
                l_len = 5;
                break;
            case 0xFF:
                l_len = 9;
                break;
        }
        for (int i = 1; i < l_len; i++) {
            length += (get_void_uchar_at(tlv, i + t_len))<<(((l_len-1)-i)*8);
        }
    }

    char *cvalue = (char*)malloc(sizeof(uchar) * length);
    for(int i = 0; i < length; i++) {
        cvalue[i] = get_void_uchar_at(tlv, i + t_len + l_len);
    }

    return cvalue;
}