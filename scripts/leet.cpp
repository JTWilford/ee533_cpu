// volatile long long *FIFO_TAIL = reinterpret_cast<long long*>(0x0000000800004000);
// volatile long long *FIFO_HEAD = reinterpret_cast<long long*>(0x0000000800005000);
// volatile long long *FIFO_FULL = reinterpret_cast<long long*>(0x0000000800006000);
// volatile long long *FIFO_DONE = reinterpret_cast<long long*>(0x0000000800007000);
// volatile long long *FIFO_DATA = reinterpret_cast<long long*>(0x0000000800000000);
// volatile long long *FIFO_CTRL = reinterpret_cast<long long*>(0x0000000800003000);
// volatile long long *SHARED_MEM = reinterpret_cast<long long*>(0x0000000000004000);

int main(int argc, char **argv) {
	// Init
    long tid;
	long base = 0x800000;
	volatile long *FIFO_TAIL 	=	(long*) ((base + 0x4)<<12);
	volatile long *FIFO_HEAD 	=	(long*) ((base + 0x5)<<12);
	volatile long *FIFO_FULL 	=	(long*) ((base + 0x6)<<12);
	volatile long *FIFO_DONE 	=	(long*) ((base + 0x7)<<12);
	volatile long *FIFO_DATA 	=	(long*) ((base + 0x0)<<12);
	volatile long *FIFO_CTRL 	=	(long*) ((base + 0x3)<<12);
	volatile long *SHARED_MEM	=	(long*) 0x4000;
	asm("mv\t%0,tp" : "=r"(tid));
	while(true) {
		// Loop until the fifo is full
		asm("# Loop until the fifo is full");
		while (*FIFO_FULL == 0) {
			// Do nothing
			asm("nop");
		}
		// Calculate how large the packet is
		asm("# Calculate how large the packet is");
		long tail = *FIFO_TAIL;
		long head = *FIFO_HEAD;
		long size = tail - head;
		if (size < 0) {
			size += 512;
		}
		asm("# Loop over the packet");
		long in_header = true;
		for (long i = tid; i < size; i+=4) {
            long loc = head + i;
            if (loc >= 512)
                loc -= 512;
			// Skip header segments
			asm("# Skip Header Segments");
			if (in_header) {
				if (FIFO_CTRL[loc] != 0)
					continue;
				in_header = false;
			}
			asm("# Grab the Data from the FIFO");
			long data = FIFO_DATA[loc];
			long eval = 101;		// 'e' character
			long threeval = 51;		// '3' character
			long mask = 255;		// Mask one byte
			asm("# Loop over the data and check for 'e'");
			for (long j = 0; j < 64; j+=8)
				if (((data>>j)&mask) == eval) {
					asm("# Found an 'e'");
					data = data & ~(mask<<j);
                    data += (threeval<<j);
                }
			asm("# Save the data back to the FIFO");
			FIFO_DATA[loc] = data;
		}
        if (tid == 0) {
            // Wait for the other threads to finish
			asm("# Main thread - wait for other threads to finish");
			while ((SHARED_MEM[1] & SHARED_MEM[2] & SHARED_MEM[3]) == 0) {
				asm("nop");
			}
			// Send the done signal to the FIFO
			asm("# Main thread - Clear the FIFO_DONE signal");
			*FIFO_DONE = 0;
			// Signal the job is done
			asm("# Main thread - Signal that all threads have finished");
			SHARED_MEM[0] = 1;
			// Wait until all threads have finished
			asm("# Main thread - Wait for all other threads to clear");
			while (((SHARED_MEM[1] | SHARED_MEM[2]) | SHARED_MEM[3]) != 0) {
				asm("nop");
			}
			SHARED_MEM[0] = 0;
        }
        else {
            // Signal the the job is done
			asm("# Sub thread - Signal that this thread has finished");
            SHARED_MEM[tid] = 1;
            // Wait for main thread to finish
			asm("# Sub thread - Wait for Main's signal");
            while (SHARED_MEM[0] == 0) {
				asm("nop");
			}
            SHARED_MEM[tid] = 0;
			while (SHARED_MEM[0] == 1) {
				asm("nop");
			}
        }
		asm("# Loop forever");
	}
	return 0;
}

/*int main(int argc, char **argv) {
	int i = 0;
	while(true) {
		SHARED_MEM[i] = 69;
	}
}*/