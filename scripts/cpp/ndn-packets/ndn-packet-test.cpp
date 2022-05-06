#include <stdio.h>
#include <stdlib.h>
#include "ndn-sock.h"

bool print_tlv(int type, int length, void *value) {
    if (NdnSock::is_terminal_tlv_type(type)) {
        printf("[%02x: %s] (%d): %.*s\n", type & 0xFF, NdnSock::get_type_string(type), length, length, (char*)value);
    }
    else {
        if (NdnSock::get_type_string(type) == nullptr) {
            printf("[ERROR] Bad TLV type (%d)\n", type);
            return false;
        }
        printf("[%02x: %s] (%d): <TLV>\n", type & 0xFF, NdnSock::get_type_string(type), length);
    }
    return true;
}

int print_tlv_chain(void *tlv) {
    void *value;
    int type, t_len, length, l_len;
    value = NdnSock::parse_tlv(tlv, type, t_len, length, l_len);
    // printf("[DEBUG] t_len=%d l_len=%d length=%d\n", t_len, l_len, length);
    if (!print_tlv(type, length, value)) {
        exit(0);
    }

    if (!NdnSock::is_terminal_tlv_type(type)) {
        int i = 0;
        while (i < length) {
            // printf("[DEBUG] [%d] i=%d\n", type, i);
            i += print_tlv_chain(value + (sizeof(uchar)*i));
        }
    }

    return t_len + l_len + length;
}

int main() {
    printf("Creating Socket...\n");
    NdnSock sock = NdnSock();

    uchar* interest_pkt;
    int interest_pkt_length;
    printf("Creating Interest Packet...\n");
    interest_pkt = sock.create_interest("/uppity", 7, false, interest_pkt_length);

    uchar* data_pkt;
    int data_pkt_length;
    printf("Creating Data Packet...\n");
    const char *data = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
    data_pkt = sock.create_data("/uppity", 7, data, 446, data_pkt_length);

    printf("Raw Interest Packet:\n");
    for (int i = 0; i < interest_pkt_length; i++) {
        if (i % 4 == 0) {
            printf("\n");
        }
        printf("%02x  ", interest_pkt[i] & 0xFF);
    }
    printf("\n");

    printf("\n\nTLV Parse (Interest Pkt):");
    print_tlv_chain(interest_pkt);

    // Send the interest packet
    printf("Where should I send the request?\n");
    char dest[19];
    scanf("%18s", dest);
    if (!sock.send(interest_pkt, interest_pkt_length, dest)) {
        printf("Failed to send the packet!\n");
    }
    else {
        printf("Packet sent successfully\n");
    }

    printf("Raw Data Packet:\n");
    for (int i = 0; i < data_pkt_length; i++) {
        if (i % 4 == 0) {
            printf("\n");
        }
        printf("%02x  ", data_pkt[i] & 0xFF);
    }
    printf("\n");

    printf("\n\nTLV Parse (Data Pkt):\n");
    print_tlv_chain(data_pkt);

    // Send the data packet
    printf("Where should I send the response?\n");
    scanf("%18s", dest);

    if (!sock.send(data_pkt, data_pkt_length, dest)) {
        printf("Failed to send the packet!\n");
    }
    else {
        printf("Packet sent successfully\n");
    }
}