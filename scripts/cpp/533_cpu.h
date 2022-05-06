typedef unsigned long long uint64_t;
typedef long long int64_t;

namespace CPU {
	const uint64_t SHARED_MEM 	= (uint64_t) 0x4000;

	void get_hw_thread(uint64_t &dest) {
		asm("mv\t%0,tp" : "=r"(dest));
	}
	void get_shared(uint64_t &dest, uint64_t index) {
		uint64_t target = (SHARED_MEM + (index<<3));
		asm volatile (
			"ld\t%0,0(%1)"
			: "=r"(dest)
			:"r"(target)
		);
	}
	void set_shared(uint64_t value, uint64_t index) {
		uint64_t target = (SHARED_MEM + (index<<3));
		asm volatile (
			"sd\t%0,0(%1)"
			:
			:"r"(value),"r"(target)
			: "memory"
		);
	}
}

namespace FIFO {
	const uint64_t BASE_ADDR	= (uint64_t) 0x800000000;
	const uint64_t DATA 		= BASE_ADDR;
	const uint64_t CTRL 		= BASE_ADDR + 0x3000;
	const uint64_t TAIL 		= BASE_ADDR + 0x4000;
	const uint64_t HEAD 		= BASE_ADDR + 0x5000;
	const uint64_t FULL 		= BASE_ADDR + 0x6000;
	const uint64_t DONE 		= BASE_ADDR + 0x7000;

	void get_data(uint64_t &dest, uint64_t index) {
		uint64_t target = (DATA + (index<<3));
		asm volatile (
			"ld\t%0,0(%1)"
			: "=r"(dest)
			:"r"(target)
		);
	}
	void set_data(uint64_t value, uint64_t index) {
		uint64_t target = (DATA + (index<<3));
		asm volatile (
			"sd\t%0,0(%1)"
			:
			:"r"(value),"r"(target)
			: "memory"
		);
	}
	void get_ctrl(uint64_t &dest, uint64_t index) {
		uint64_t target = (CTRL + (index<<3));
		asm volatile (
			"ld\t%0,0(%1)"
			: "=r"(dest)
			:"r"(target)
		);
	}
	void set_ctrl(uint64_t value, uint64_t index) {
		uint64_t target = (CTRL + (index<<3));
		asm volatile (
			"sd\t%0,0(%1)"
			:
			: "r"(value),"r"(target)
			: "memory"
		);
	}
	void get_tail(uint64_t &dest) {
		asm volatile (
			"ld\t%0,0(%1)"
			: "=r"(dest)
			:"r"(TAIL)
		);
	}
	void set_tail(uint64_t value) {
		asm volatile (
			"sd\t%0,0(%1)"
			:
			:"r"(value),"r"(TAIL)
			: "memory"
		);
	}
	void get_head(uint64_t &dest) {
		asm volatile (
			"ld\t%0,0(%1)"
			: "=r"(dest)
			:"r"(HEAD)
		);
	}
	void set_head(uint64_t value) {
		asm volatile (
			"sd\t%0,0(%1)"
			: 
			:"r"(value),"r"(HEAD)
			: "memory"
		);
	}
	void get_full(uint64_t &dest) {
		asm volatile (
			"ld\t%0,0(%1)"
			: "=r"(dest)
			:"r"(FULL)
		);
	}
	void set_done() {
		asm volatile (
			"sd\tzero,0(%0)"
			:
			:"r"(DONE)
			:"memory"
		);
	}
}

namespace TLV {
	const uint64_t BASE_ADDR	= (uint64_t) 0x2000000000000000;
	const uint64_t DATA 		= BASE_ADDR;
	const uint64_t BYTE 		= BASE_ADDR + 0x18;
	const uint64_t TYPE			= BASE_ADDR + 0x20;
	const uint64_t LENG			= BASE_ADDR + 0x28;
	const uint64_t VALO			= BASE_ADDR + 0x30;

	// TLV Types
	const uint64_t TYPE_INTEREST	= 0x05;
	const uint64_t TYPE_DATA		= 0x06;
	const uint64_t TYPE_NAME		= 0x07;
	const uint64_t TYPE_GNAME		= 0x08;
	const uint64_t TYPE_IDIG		= 0x01;
	const uint64_t TYPE_FRESH		= 0x12;
	const uint64_t TYPE_NONCE		= 0x0A;
	const uint64_t TYPE_CONTENT		= 0x15;

	void get_data(uint64_t &dest, uint64_t index) {
		uint64_t target = (DATA + (index<<3));
		asm volatile (
			"ld\t%0,0(%1)"
			: "=r"(dest)
			:"r"(target)
		);
	}
	void set_data(uint64_t value, uint64_t index) {
		uint64_t target = (DATA + (index<<3));
		asm volatile (
			"sd\t%0,0(%1)"
			:
			:"r"(value),"r"(target)
			: "memory"
		);
	}
	void get_byte_offset(uint64_t &dest) {
		asm volatile (
			"ld\t%0,0(%1)"
			: "=r"(dest)
			:"r"(BYTE)
		);
	}
	void set_byte_offset(uint64_t value) {
		asm volatile (
			"sd\t%0,0(%1)"
			:
			:"r"(value),"r"(BYTE)
			: "memory"
		);
	}
	void get_type(uint64_t &dest) {
		asm volatile (
			"ld\t%0,0(%1)"
			: "=r"(dest)
			:"r"(TYPE)
		);
	}
	void get_length(uint64_t &dest) {
		asm volatile (
			"ld\t%0,0(%1)"
			: "=r"(dest)
			:"r"(LENG)
		);
	}
	void get_value_offset(uint64_t &dest) {
		asm volatile (
			"ld\t%0,0(%1)"
			: "=r"(dest)
			:"r"(VALO)
		);
	}
}

namespace PAT {
	const uint64_t BASE_ADDR	= (uint64_t) 0x4000000000000000;
	const uint64_t DATA 		= BASE_ADDR;
	const uint64_t PAT 			= BASE_ADDR + 0x10;
	const uint64_t WILD			= BASE_ADDR + 0x18;
	const uint64_t RES			= BASE_ADDR + 0x20;

	void get_data(uint64_t &dest, uint64_t index) {
		uint64_t target = (DATA + (index<<3));
		asm volatile (
			"ld\t%0,0(%1)"
			: "=r"(dest)
			:"r"(target)
		);
	}
	void set_data(uint64_t value, uint64_t index) {
		uint64_t target = (DATA + (index<<3));
		asm volatile (
			"sd\t%0,0(%1)"
			:
			:"r"(value),"r"(target)
			: "memory"
		);
	}
	void get_pattern(uint64_t &dest) {
		asm volatile (
			"ld\t%0,0(%1)"
			: "=r"(dest)
			:"r"(PAT)
		);
	}
	void set_pattern(uint64_t value) {
		asm volatile (
			"sd\t%0,0(%1)"
			:
			:"r"(value),"r"(PAT)
			: "memory"
		);
	}
	void get_wild_mask(uint64_t &dest) {
		asm volatile (
			"ld\t%0,0(%1)"
			: "=r"(dest)
			:"r"(WILD)
		);
	}
	void set_wild_mask(uint64_t value) {
		asm volatile (
			"sd\t%0,0(%1)"
			:
			:"r"(value),"r"(WILD)
			: "memory"
		);
	}
	void get_result(uint64_t &dest) {
		asm volatile (
			"ld\t%0,0(%1)"
			: "=r"(dest)
			:"r"(RES)
		);
	}
}