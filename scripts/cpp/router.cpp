#include "533_cpu.h"

#define IP_TABLE                16
#define PIT                     32
#define PIT_ENTRY_SIZE          8
#define PIT_SIZE                128
#define CTRL_PACKET_STORE		256
#define DATA_PACKET_STORE		384
#define SYNC_VAR                0

void parse_tlv(uint64_t index, uint64_t offset, uint64_t &type, uint64_t &length, uint64_t &value_offset) {
	uint64_t data, data1, data2;
	FIFO::get_data(data, index);
	FIFO::get_data(data1, (index + 1) & 0x1FF);
	FIFO::get_data(data2, (index + 2) & 0x1FF);
	TLV::set_data(data, 0);
	TLV::set_data(data1, 1);
	TLV::set_data(data2, 2);
	TLV::set_byte_offset(offset);
	TLV::get_type(type);
	TLV::get_length(length);
	TLV::get_value_offset(value_offset);
}

void wait_for_full(uint64_t &head, uint64_t &tail) {
    // Loop until the fifo is full
    uint64_t full;
    do {
        FIFO::get_full(full);
    } while (!full);
    // Get the head and tail pointers
    FIFO::get_tail(tail);
    FIFO::get_head(head);
}

void wait_for_done() {
    // Loop until the fifo is full
    uint64_t head, tail;
    FIFO::get_tail(tail);
    do {
        FIFO::get_head(head);
    } while (head != tail);
}

void wait_for_sync(uint64_t val) {
    // Loop until the sync signal is found
    uint64_t sync;
    do {
        CPU::get_shared(sync, 0);
    } while (sync != val);
}

void set_sync(uint64_t val) {
    CPU::set_shared(val, 0);
}

void skip_headers(uint64_t head, uint64_t tail, uint64_t &i) {
    uint64_t in_header = true;
    uint64_t ctrl;
    i = 0;
    FIFO::get_ctrl(ctrl, head);
    while (ctrl != 0) {
        i++;
        uint64_t loc = (head + i) & 0x1FF;
        FIFO::get_ctrl(ctrl, loc);
    }
}

void capture_packet() {
    // Wait for the fifo to receive a packet
    uint64_t tail, head;
    wait_for_full(head, tail);
    int64_t size = (int64_t)tail - (int64_t)head;
    if (size < 0) {
        size += 512;
    }
    // Loop over packet
    for (uint64_t i = 0; i < size; i++) {
        // Calculate location
        uint64_t loc = (head + i) & 0x1FF;
        // Fetch control and data
        uint64_t ctrl;
        FIFO::get_ctrl(ctrl, loc);
        uint64_t data;
        FIFO::get_data(data, loc);
        // Copy the packet contents to memory
        CPU::set_shared(ctrl, CTRL_PACKET_STORE + i);
        CPU::set_shared(data, DATA_PACKET_STORE + i);
    }
    // Wait for sync
    wait_for_sync(1);
    // Reset sync
    set_sync(0);
}

void align_name(uint64_t &name0, uint64_t &name1, uint64_t offset, uint64_t length) {
    uint64_t bit_offset = offset << 3;
    name1 = name1 >> (64 - bit_offset);
    name0 = (name0 << bit_offset) + name1;
    if (length < 8) {
        asm("#Small name");
        uint64_t mask;
        asm ("li\t%0,-1"
            : "=r"(mask)
        );
        mask = mask >> (length<<3);
        name0 = (name0 & ~mask) + mask;
    }
}

void update_dest_ip(uint64_t dest_ip, uint64_t head, uint64_t ip_byte) {
    // Update the destination IP address
    uint64_t dst_byte = ip_byte + 16;
    uint64_t i = dst_byte >> 3;
    uint64_t offset = dst_byte & 0x7;
    uint64_t loc = (head + i) & 0x1FF;
    if (offset <= 4) {
        // All in one word
        uint64_t ip;
        FIFO::get_data(ip, loc);
        uint64_t mask = ~(0xFFFFFFFF<<((4-offset)<<3));
        ip = ip & mask;
        ip += (dest_ip<<((4-offset)<<3));
        FIFO::set_data(ip, loc);
    }
    else {
        // Across word boundary
        uint64_t ip0, ip1;
        FIFO::get_data(ip0, loc);
        FIFO::get_data(ip1, loc + 1);
        uint64_t mask0 = ~(0xFFFFFFFF>>((8-offset)<<3));
        uint64_t mask1 = ~(0xFFFFFFFF>>((offset-4)<<3));
        ip0 = ip0 & mask0;
        ip0 += (dest_ip>>((8-offset)<<3));
        ip1 = ip1 & mask1;
        ip1 += (dest_ip<<((offset-4)<<3));
        FIFO::set_data(ip0, loc);
        FIFO::set_data(ip1, loc + 1);
    }
}

void forward_interest(uint64_t name0, uint64_t head, uint64_t ip_byte) {
    // Get routing table data
    uint64_t best_ip = 0xBAD4;
    uint64_t best_score = 0;
    for(uint64_t i = 0; i < 8; i+=2) {
        uint64_t pattern = 0, value = 0, matches = 0;
        asm("#Reading IP Table");
        CPU::get_shared(pattern, IP_TABLE + i);
        CPU::get_shared(value, IP_TABLE + i +1);
        PAT::set_data(name0, 0);
        PAT::set_pattern(pattern);
        PAT::set_wild_mask(value>>32);
        PAT::get_result(matches);
        uint64_t score = 0;
        for(uint64_t j = 0; j < 16; j++) {
            score += ((matches >> j) & 1);
        }
        if (score > best_score) {
            best_score = score;
            best_ip = (value<<8)>>8;
        }
    }
    // Store the routing info in memory
    CPU::set_shared(best_ip, 3);
    CPU::set_shared(best_score, 4);

    // Update the destination IP address
    update_dest_ip(best_ip, head, ip_byte);
}

void update_pit(uint64_t name0, uint64_t head, uint64_t ip_byte, uint64_t &existed) {
    // Get the source IP
    uint64_t src_byte = ip_byte + 12;
    uint64_t i = src_byte >> 3;
    uint64_t offset = src_byte & 0x7;
    uint64_t loc = (head + i) & 0x1FF;
    uint64_t ip;
    FIFO::get_data(ip, loc);
    ip = (ip<<(offset<<3))>>32;
    if (offset > 4) {
        uint64_t ip1;
        FIFO::get_data(ip1, (loc + 1) & 0x1FF);
        ip += ip1>>((12-offset)<<3);
    }
    // Check the pit for an existing entry
    existed = 0;
    for(uint64_t i = 0; i < PIT_SIZE; i+=PIT_ENTRY_SIZE) {
        uint64_t pname0 = 0, base = PIT + i;
        CPU::get_shared(pname0, base);
        if (pname0 == 0) {
            // Not a valid entry
            continue;
        }
        if(pname0 == name0) {
            // Found an existing entry
            asm("#Existed");
            existed = 1;
            for(uint64_t j = 1; j < PIT_ENTRY_SIZE; j++) {
                uint64_t entry = 0;
                CPU::get_shared(entry, base + j);
                if (entry == 0) {
                    asm("#Entry Added");
                    CPU::set_shared(ip, base + j);
                    return;
                }
            }
        }
    }
    if (existed == 0) {
        asm("#Didn't Exist");
        // No prexisting entry, so we need to make a new one
        for(uint64_t i = 0; i < PIT_SIZE; i+=PIT_ENTRY_SIZE) {
            uint64_t pname0 = 0, base = PIT + i;
            CPU::get_shared(pname0, base);
            if (pname0 == 0) {
                // Empty entry found
                asm("#New Entry Made");
                CPU::set_shared(name0, base);
                CPU::set_shared(ip, base + 1);
                for(uint64_t j = 2; j < PIT_ENTRY_SIZE; j++) {
                    CPU::set_shared(0, base + j);
                }
                return;
            }
        }
        // Need to drop packet if PIT was full
        existed = 1;
    }
}

void resolve_pit(uint64_t name0, uint64_t head, uint64_t ip_byte) {
    // Check the pit for an existing entry
    for(uint64_t i = 0; i < PIT_SIZE; i+=PIT_ENTRY_SIZE) {
        uint64_t pname0 = 0, base = PIT + i;
        CPU::get_shared(pname0, base);
        if(pname0 == name0) {
            // Found an existing entry
            asm("#Found PI to Resolve");
            for(uint64_t j = 1; j < PIT_ENTRY_SIZE; j++) {
                uint64_t entry = 0;
                CPU::get_shared(entry, base + j);
                if (entry != 0) {
                    // Send the data packet
                    update_dest_ip(entry, head, ip_byte);
                    FIFO::set_send(1);
                    FIFO::set_done();
                    wait_for_done();
                    FIFO::set_head(head);
                    FIFO::set_send(0);
                    // Clear the entry
                    CPU::set_shared(0, base + j);
                }
            }
            // Clear the name from the PIT
            CPU::set_shared(0, base);
        }
    }
}

void int_name_handler(uint64_t byte, uint64_t length, uint64_t head, uint64_t ip_byte) {
    // Calculate position in fifo
    uint64_t i = (byte>>3);
    uint64_t offset = byte & 0x7;
    uint64_t loc = (head + i) & 0x1FF;
    // Get the data from the fifo
    uint64_t name0, name1;
    FIFO::get_data(name0, loc);
    FIFO::get_data(name1, loc + 1);
    // Align the name
    align_name(name0, name1, offset, length);
    // Store the name in memory
    CPU::set_shared(name0, 2);
    // Check the PIT
    uint64_t in_pit;
    update_pit(name0, head, ip_byte, in_pit);
    if (in_pit == 0) {
        // If it wasn't in the PIT, we need to forward
        forward_interest(name0, head, ip_byte);
    }
    else {
        // If it was in the PIT, an entry was allocated
        // Drop the packet
        FIFO::set_ctrl(1, head);
        FIFO::set_data(0, head);
        FIFO::set_tail(head+1);
    }
}

void data_name_handler(uint64_t byte, uint64_t length, uint64_t head, uint64_t ip_byte) {
    // Calculate position in fifo
    uint64_t i = (byte>>3);
    uint64_t offset = byte & 0x7;
    uint64_t loc = (head + i) & 0x1FF;
    // Get the data from the fifo
    uint64_t name0, name1;
    FIFO::get_data(name0, loc);
    FIFO::get_data(name1, loc + 1);
    // Align the name
    align_name(name0, name1, offset, length);
    // Store the name in memory
    CPU::set_shared(name0, 2);
    // Check the PIT
    resolve_pit(name0, head, ip_byte);
    // Resolve_pit sends out the packets, so we need to drop the last one
    FIFO::set_ctrl(1, head);
    FIFO::set_data(0, head);
    FIFO::set_tail(head+1);
}

int main(int argc, char **argv) {
	// Init
    uint64_t tid;
	CPU::get_hw_thread(tid);
	if (tid != 0) {
        if (tid == 1) {
            while (true) {
                capture_packet();
            }
        }
		while (true) {
			asm("nop");
		}
	}
	while(true) {
        // Wait for the fifo to receive a packet
		uint64_t tail, head;
		wait_for_full(head, tail);

        // Skip the headers
        uint64_t i = 0;
        skip_headers(head, tail, i);
        // Check for NDN packet
        uint64_t test;
		uint64_t ip_loc = (head + i) & 0x1FF;
        uint64_t ip_byte = i<<3;
		FIFO::get_data(test, ip_loc + 1);
		if (((test >> 48) & 0xFF) == 252) {
			// NDN Packet Found
			// Parse the NDN Packet
            uint64_t byte = ip_byte + 20;
            uint64_t max_byte = byte + 1;
			bool INT_PKT = false;
			while (byte < max_byte) {
                i = byte >> 3;
                uint64_t offset = byte & 0x7;
                uint64_t loc = (head + i) & 0x1FF;

                // Parse TLV
                uint64_t type, length, value_offset;
                parse_tlv(loc, offset, type, length, value_offset);
                uint64_t next_byte = 0;
                if (type == TLV::TYPE_INTEREST) {
                    INT_PKT = true;
                    // Store type at SM[0]
                    CPU::set_shared(type, 1);
                    // Calculate next location to check
                    byte += value_offset;
                    max_byte = byte + length;
                    continue;
                }
                if (type == TLV::TYPE_DATA) {
                    INT_PKT = false;
                    // Store type at SM[0]
                    CPU::set_shared(type, 1);
                    // Calculate next location to check
                    byte += value_offset;
                    max_byte = byte + length;
                    continue;
                }
                next_byte = 0;
                if (INT_PKT) {
                    // Interest packet
                    switch (type) {
                        case TLV::TYPE_NAME:
                            byte += value_offset;
                            break;
                        case TLV::TYPE_GNAME:
                            // Handle Interest Names
                            int_name_handler(byte + value_offset, length, head, ip_byte);
                            byte += value_offset + length;
                            break;
                        case TLV::TYPE_IDIG:
                            byte += value_offset + length;
                            break;
                        case TLV::TYPE_FRESH:
                            byte += value_offset + length;
                            break;
                        case TLV::TYPE_NONCE:
                            byte += value_offset + length;
                            break;
                    }
                    if (type == TLV::TYPE_GNAME) {
                        break;
                    } 
                }
                else {
                    // Data packet
                    switch (type) {
                        case TLV::TYPE_NAME:
                            byte += value_offset;
                            break;
                        case TLV::TYPE_GNAME:
                            // Handle Data Names
                            data_name_handler(byte + value_offset, length, head, ip_byte);
                            byte += value_offset + length;
                            break;
                        case TLV::TYPE_IDIG:
                            byte += value_offset + length;
                            break;
                        case TLV::TYPE_CONTENT:
                            byte += value_offset + length;
                            break;
                    }
                    if (type == TLV::TYPE_GNAME) {
                        break;
                    } 
                }
            }
		}
        // Set sync
        set_sync(1);
        // Wait for sync to be reset
        wait_for_sync(0);

		// Send the done signal to the FIFO
		FIFO::set_done();
	}
	return 0;
}