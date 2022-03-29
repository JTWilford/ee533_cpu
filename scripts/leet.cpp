#define BITS_PER_UNIT 64
#define BITS_PER_WORD 64
#define UNITS_PER_WORD 1

#define FIFO_TAIL reinterpret_cast<long*>(0x0000000100000800)
#define FIFO_HEAD reinterpret_cast<long*>(0x0000000100000A00)
#define FIFO_FULL reinterpret_cast<long*>(0x0000000100000C00)
#define FIFO_DONE reinterpret_cast<long*>(0x0000000100000E00)
#define FIFO_DATA reinterpret_cast<long*>(0x0000000100000000)
#define FIFO_CTRL reinterpret_cast<long*>(0x0000000100000600)
#define SHARED_MEM reinterpret_cast<long*>(0x0000000000000800)
#define THREAD_ID reinterpret_cast<long*>(0x000000010000AB00)

int main(int argc, char **argv) {
    long tid = *THREAD_ID;
	while(true) {
		// Loop until the fifo is full
		while (*FIFO_DONE == 0);
		// Calculate how large the packet is
		long tail = *FIFO_TAIL;
		long head = *FIFO_HEAD;
		long size = tail - head;
		if (size < 0) {
			size += 512;
		}
		long in_header = true;
		for (long i = tid; i < size; i+=4) {
            long loc = head + i;
            if (head >= 512)
                head = 0;
			// Skip header segments
			if (in_header) {
				if (FIFO_CTRL[loc] != 0)
					continue;
				in_header = false;
			}
			long data = FIFO_DATA[loc];
			for (long j = 0; j < 64; j+=8)
				if (data & ('e' << j)) {
					data = data | (0xFF<<j);
                    data = data & ('e'<<j);
                }
			FIFO_DATA[i] = (long) data;
		}
        if (tid == 0) {
            // Wait for the other threads to finish
            while ((SHARED_MEM[1] & SHARED_MEM[2] & SHARED_MEM[3]) == 0);
            // Send the done signal to the FIFO
            *FIFO_DONE = 1;
            // Signal the job is done
            SHARED_MEM[tid] = 1;
            // Wait until all threads have finished
            while ((SHARED_MEM[1] & SHARED_MEM[2] & SHARED_MEM[3]) != 0);
            SHARED_MEM[tid] = 0;
        }
        else {
            // Signal the the job is done
            SHARED_MEM[tid] = 1;
            // Wait for main thread to finish
            while (SHARED_MEM[0] == 0);
            SHARED_MEM[tid] = 0;
        }
	}
	return 0;
}