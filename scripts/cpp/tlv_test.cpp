#include "533_cpu.h"

#define CTRL_PACKET_STORE		16
#define DATA_PACKET_STORE		272

void soft_parse_tlv(uint64_t index, uint64_t offset, uint64_t &type, uint64_t &length, uint64_t &value_offset) {
	uint64_t data, data1, data2;
	FIFO::get_data(data, index);
	FIFO::get_data(data1, (index + 1) & 0x1FF);
	FIFO::get_data(data2, (index + 2) & 0x1FF);
	uint64_t byte = offset;
	uint64_t t_size = 1;
	// asm ("#SOFT PARSE");
	// Parse TLV Type
	for (uint64_t i = 0; i < t_size; byte++, i++) {
		if (byte > 7) {
			data = data1;
			data1 = data2;
			data2 = 0;
			byte = 0;
		}
		uint64_t val = (data >> 7 - byte) & 0xFF;
		if (i == 0) {
			if (val < 0xFD) {
				type = val;
			}
			else if (val == 0xFD) {
				t_size = 3;
			}
			else if (val == 0xFE) {
				t_size = 5;
			}
		}
		else {
			type += val << ((t_size - i) << 3);
		}
	}
	// Parse TLV Length
	uint64_t l_size = 1;
	for (uint64_t i = 0; i < l_size; byte++, i++) {
		if (byte > 7) {
			data = data1;
			data1 = data2;
			data2 = 0;
			byte = 0;
		}
		uint64_t val = (data >> 7 - byte) & 0xFF;
		if (i == 0) {
			if (val < 0xFD) {
				length = val;
			}
			else if (val == 0xFD) {
				l_size = 3;
			}
			else if (val == 0xFE) {
				l_size = 5;
			}
			else {
				l_size = 9;
			}
		}
		else {
			length += val << ((l_size - i) << 3);
		}
	}
	// Calculate value offset
	value_offset = t_size + l_size;
}

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

int main(int argc, char **argv) {
	// Init
    uint64_t tid;
	CPU::get_hw_thread(tid);
	if (tid != 0) {
		while (true) {
			asm("nop");
		}
	}
	while(true) {
		// Loop until the fifo is full
		uint64_t full;
		do {
			FIFO::get_full(full);
		} while (!full);
		uint64_t tail, head;
		FIFO::get_tail(tail);
		FIFO::get_head(head);
		int64_t size = (int64_t)tail - (int64_t)head;
		if (size < 0) {
			size += 512;
		}
		uint64_t in_header = true;
        uint64_t i = 0;
        uint64_t ctrl;
        do {
            uint64_t loc = head + i;
            if (loc >= 512)
                loc -= 512;
            FIFO::get_ctrl(ctrl, loc);
			i++;
        }
        while (ctrl != 0);
        // Check for NDN packet
        uint64_t test;
		uint64_t ip_loc = (head + i) & 0x1FF;
		uint64_t byte = 0, max_byte = 1;
		FIFO::get_data(test, ip_loc);
		if (((test >> 48) & 0xFF) == 252) {
			// NDN Packet Found
			// Parse the NDN Packet
			uint64_t offset = 4;
			i++;
			bool INT_PKT = false;
			while (byte < max_byte) {
				uint64_t loc = (head + i) & 0x1FF;

				// // Fetch control and data
				// uint64_t ctrl;
				// FIFO::get_ctrl(ctrl, loc);
				// uint64_t data;
				// FIFO::get_data(data, loc);
				// // Copy the packet contents to memory (debug)
				// CPU::set_shared(ctrl, CTRL_PACKET_STORE + i);
				// CPU::set_shared(data, DATA_PACKET_STORE + i);

				// Parse TLV
				uint64_t type, length, value_offset;
				parse_tlv(loc, offset, type, length, value_offset);
				uint64_t next_byte = 0;
				if (type == TLV::TYPE_INTEREST) {
					INT_PKT = true;
					// Store type at SM[0]
					CPU::set_shared((type<<32) + length, 0);
					// Calculate next location to check
					next_byte = offset + value_offset;
					byte = value_offset;
					max_byte = byte + length;
					i += next_byte >> 3;
					offset = next_byte & 0x7;
					continue;
				}
				if (type == TLV::TYPE_DATA) {
					INT_PKT = false;
					// Store type at SM[0]
					CPU::set_shared((type<<32) + length, 0);
					// Calculate next location to check
					next_byte = offset + value_offset;
					byte = value_offset;
					max_byte = byte + length;
					i += next_byte >> 3;
					offset = next_byte & 0x7;
					continue;
				}
				uint64_t sm_loc = 1;
				next_byte = 0;
				if (INT_PKT) {
					// Interest packet
					switch (type) {
						case TLV::TYPE_NAME:
							sm_loc = 1;
							next_byte = offset + value_offset;
							break;
						case TLV::TYPE_GNAME:
							sm_loc = 2;
							next_byte = offset + value_offset + length;
							break;
						case TLV::TYPE_IDIG:
							sm_loc = 3;
							next_byte = offset + value_offset + length;
							break;
						case TLV::TYPE_FRESH:
							sm_loc = 4;
							next_byte = offset + value_offset + length;
							break;
						case TLV::TYPE_NONCE:
							sm_loc = 5;
							next_byte = offset + value_offset + length;
							break;
					}
				}
				else {
					// Data packet
					switch (type) {
						case TLV::TYPE_NAME:
							sm_loc = 1;
							next_byte = offset + value_offset;
							break;
						case TLV::TYPE_GNAME:
							sm_loc = 2;
							next_byte = offset + value_offset + length;
							break;
						case TLV::TYPE_IDIG:
							sm_loc = 3;
							next_byte = offset + value_offset + length;
							break;
						case TLV::TYPE_CONTENT:
							sm_loc = 4;
							next_byte = offset + value_offset + length;
							break;
					}
				}
				// Store type
				CPU::set_shared((type<<32) + length, sm_loc);

				// Calculate next location to check
				i += next_byte >> 3;
				byte += next_byte - offset;
				offset = next_byte & 0x7;
			}
		}

		// Send the done signal to the FIFO
		FIFO::set_done();
	}
	return 0;
}