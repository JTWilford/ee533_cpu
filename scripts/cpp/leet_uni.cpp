#include "533_cpu.h"

#define CTRL_PACKET_STORE		16
#define DATA_PACKET_STORE		272

int main(int argc, char **argv) {
	// Init
    uint64_t tid;
	CPU::get_hw_thread(tid);
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
		for (uint64_t i = tid; i < size; i+=4) {
            uint64_t loc = head + i;
            if (loc >= 512)
                loc -= 512;
			// Fetch control and data
			uint64_t ctrl;
			FIFO::get_ctrl(ctrl, loc);
			uint64_t data;
			FIFO::get_data(data, loc);
			// Copy the packet contents to memory (debug)
			CPU::set_shared(ctrl, CTRL_PACKET_STORE + i);
			CPU::set_shared(data, DATA_PACKET_STORE + i);
			// Skip header segments
			if (in_header) {
				if (ctrl != 0)
					continue;
				in_header = false;
			}
			// Copy the packet contents to memory (debug)
			CPU::set_shared(ctrl, CTRL_PACKET_STORE + i);
			uint64_t eval = 'e';		// 'e' character
			uint64_t threeval = '3';	// '3' character
			uint64_t mask = 0xFF;		// Mask one byte
			for (uint64_t j = 0; j < 64; j+=8)
				if (((data>>j)&mask) == eval) {
					data = data & ~(mask<<j);
                    data += (threeval<<j);
                }
			FIFO::set_data(data, loc);
		}
        if (tid == 0) {
            // Wait for the other threads to finish
			uint64_t done1, done2, done3;
			do {
				CPU::get_shared(done1, 1);
				CPU::get_shared(done2, 2);
				CPU::get_shared(done3, 3);
			} while (!(done1 && done2 && done3));
			// Send the done signal to the FIFO
			FIFO::set_done();
			// Signal the job is done
			CPU::set_shared(1, 0);
			// Wait until all threads have finished
			do {
				CPU::get_shared(done1, 1);
				CPU::get_shared(done2, 2);
				CPU::get_shared(done3, 3);
			} while (done1 || done2 || done3);
			CPU::set_shared(0, 0);
        }
        else {
            // Signal the the job is done
            CPU::set_shared(1, tid);
            // Wait for main thread to finish
			uint64_t done0;
			do {
				CPU::get_shared(done0, 0);
			} while (!done0);
            CPU::set_shared(0, tid);
			do {
				CPU::get_shared(done0, 0);
			} while (done0);
        }
	}
	return 0;
}