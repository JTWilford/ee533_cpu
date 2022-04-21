#include <stdint>

namespace ndn {
    const uint64_t IP_PROTO_NUM = 252;
    const uint64_t IP_LENGTH_MASK = 0xFFFF;

    bool using_ndn_proto(uint64_t *packet);
    uint64_t ip_src(uint64_t *packet);
    uint64_t* ndn_start(uint64_t *packet);
    uint64_t* ndn_type(uint64_t *pndn)
    uint64_t* ndn_generic_name(uint64_t *pndn, uint64_t &size);
    uint64_t* ndn_implicit_sha(uint64_t *pndn, uint64_t &size);
}