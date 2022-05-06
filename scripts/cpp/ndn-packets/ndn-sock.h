#define IPPROTO_NDN 252

#define TLV_NAME 0x07
#define TLV_INTEREST 0x05
#define TLV_DATA 0x06
#define TLV_GENERIC_NAME 0x08
#define TLV_IMP_DIGEST 0x01
#define TLV_FRESH 0x12
#define TLV_NONCE 0x0A
#define TLV_CONTENT 0x15

typedef unsigned char uchar;

class NdnSock {
    private:
        int mSock;
    public:
        NdnSock();
        ~NdnSock();

        // Create an interest packet
        uchar* create_interest(const char *name, int length, bool fresh, int &interest_length);
        // Create a data packet
        uchar* create_data(const char *name, int name_length, const void *content, int content_length, int &data_length);

        // Send a packet
        bool send(const void *pkt, const int pkt_len, char *ip_hop);

        uchar* build_name(const uchar *name, int length, int &tlv_name_length);
        uchar* build_name_digest(uchar *sha, int &name_length);
        uchar* build_name_gen_digest(const uchar* name, int length, uchar *digest, int &tlv_name_length);
        uchar* build_generic_name(const uchar* name, int length, int &gname_size);
        uchar* build_digest(uchar* sha, int &idig_size);
        uchar* build_tlv(int type, const void *value, int length, int &tlv_size);

        static void* parse_tlv(void *tlv, int &type, int &t_len, int &length, int &l_len);
        static const char* get_type_string(int type);
        static bool is_terminal_tlv_type(int type);
};