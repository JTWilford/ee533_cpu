#define FIFO_TAIL reinterpret_cast<long*>(0x0000000100000800)
#define FIFO_HEAD reinterpret_cast<long*>(0x0000000100000A00)
#define FIFO_FULL reinterpret_cast<long*>(0x0000000100000C00)
#define FIFO_DONE reinterpret_cast<long*>(0x0000000100000E00)
#define FIFO_DATA reinterpret_cast<long*>(0x0000000100000000)
#define FIFO_CTRL reinterpret_cast<long*>(0x0000000100000600)

main() {
	while(true) {
		// Loop until the fifo is full
		while (*FIFO_DONE = 0);
		// Calculate how large the packet is
		long tail = *FIFO_TAIL;
		long head = *FIFO_HEAD;
		long size = tail - head;
		if (size < 0) {
			size += 512;
		}
		long in_header = true;
		for (long i = 0; i < size; i++) {
			// Skip header segments
			if (in_header) {
				if (FIFO_CTRL[i] != 0)
					continue;
				in_header = false;
			}
			char *data = (char *)FIFO_DATA[i];
			for (long j = 0; j < 8; j++)
				if (data[j] == 'e')
					data[j] = '3';
			FIFO_DATA[i] = (long) data;
		}
	}
}