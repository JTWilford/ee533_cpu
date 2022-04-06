from enum import Enum
import sys
import re

# Define Boostrap Code
# This sets up the stack pointer, global pointer, and thread pointers
# Boostrap = """\
# addi\ttp,zero,{0}    ; Sets thread pointer to current thread ID
# slli\tsp,tp,9        ; Allocate the stack pointer based on thread ID
# addi\tsp,sp,511
# addi\tgp,zero,2048   ; Sets the global pointer to bottom half of memory
# """
Boostrap = """\
slli\tsp,tp,9        # Allocate the stack pointer based on thread ID
addi\tsp,sp,511
addi\tgp,zero,2048   # Sets the global pointer to bottom half of memory
"""


# Define pseudo OP codes
pOps = {
	"li"	: ["lui\t{0},{1}","addi\t{0},{0},{2}"],
	"mv"	: "addi\t{0},{1},0",
	"nop"	: "addi\tzero,zero,0",
	"j"		: "jal\tzero,{0}",
	"sext.w": "addi\t{0},{1},0",
	"sllw"	: ["sll\t{0},{1},{2}","slli\t{0},{0},32","srli\t{0},{0},32"],
	"ble"	: "bge\t{1},{0},{2}",
	"bgt"	: "blt\t{1},{0},{2}",
	"bleu"	: "bgeu\t{1},{0},{2}",
	"bgtu"	: "bltu\t{1},{0},{2}",
	"not"	: "xori\t{0},{1},-1",
	"call"	: ["auipc\tt1,%hi({0})","jalr\tra,t1,%lo({0})"],
	"ret"	: "jalr\tzero,ra,0",
	"srliw"	: "srli\t{0},{1},{2}"
}

# Define OP codes
OpMap = {
	# R-Type
	"add"   : 0x33,
	"sub"   : 0x33,
	"sll"   : 0x33,
	"slt"   : 0x33,
	"sltu"  : 0x33,
	"xor"   : 0x33,
	"srl"   : 0x33,
	"sra"   : 0x33,
	"or"    : 0x33,
	"and"   : 0x33,
	# I-Type
	"addi"  : 0x13,
	"slli"  : 0x13,
	"slti"  : 0x13,
	"sltui" : 0x13,
	"xori"  : 0x13,
	"srli"  : 0x13,
	"srai"  : 0x13,
	"ori"   : 0x13,
	"andi"  : 0x13,
	"jalr"  : 0x67,
	"lb"    : 0x03,
	"lh"    : 0x03,
	"lw"    : 0x03,
	"ld"    : 0x03,
	"lbu"	: 0x03,
	"lhu"	: 0x03,
	"lwu"	: 0x03,
	# S-Type
	"sb"    : 0x23,
	"sh"    : 0x23,
	"sw"    : 0x23,
	"sd"    : 0x23,
	# B-Type
	"beq"   : 0x63,
	"bne"  : 0x63,
	"blt"   : 0x63,
	"bltu"  : 0x63,
	"bge"   : 0x63,
	"bgeu"  : 0x63,
	# U-Type
	"lui"   : 0x37,
	"auipc" : 0x17,
	# J-Type
	"jal"   : 0x6F,
}
# Define FUN3 values
Func3Map = {
	# R-Type
	"add"   : 0x0,
	"sub"   : 0x0,
	"sll"   : 0x1,
	"slt"   : 0x2,
	"sltu"  : 0x3,
	"xor"   : 0x4,
	"srl"   : 0x5,
	"sra"   : 0x5,
	"or"    : 0x6,
	"and"   : 0x7,
	# I-Type
	"addi"  : 0x0,
	"subi"  : 0x0,
	"slli"  : 0x1,
	"slti"  : 0x2,
	"sltui" : 0x3,
	"xori"  : 0x4,
	"srli"  : 0x5,
	"srai"  : 0x5,
	"ori"   : 0x6,
	"andi"  : 0x7,
	"jalr"	: 0x0,
	"lb"    : 0x0,
	"lh"    : 0x1,
	"lw"    : 0x2,
	"ld"    : 0x3,
	"lbu"	: 0x4,
	"lhu"	: 0x5,
	"lwu"	: 0x6,
	# S-Type
	"sb"    : 0x0,
	"sh"    : 0x1,
	"sw"    : 0x2,
	"sd"    : 0x3,
	"LWI"   : 0x3,
	"SWI"   : 0x3,
	"LWUI"  : 0x1,
	"SWUI"  : 0x1,
	# B-Type
	"beq"   : 0x0,
	"bne"  : 0x1,
	"blt"   : 0x4,
	"bltu"  : 0x6,
	"bge"   : 0x5,
	"bgeu"  : 0x7
}
Func7Map = {
	# R-Type
	"add"   : 0x00,
	"sub"   : 0x20,
	"sll"   : 0x00,
	"slt"   : 0x00,
	"sltu"  : 0x00,
	"xor"   : 0x00,
	"srl"   : 0x00,
	"sra"   : 0x20,
	"or"    : 0x00,
	"and"   : 0x00
}

# Define instruction types (formats)
class IType(Enum):
	R = 0
	I = 1
	S = 2
	B = 3
	U = 4
	J = 5
ItypeMap = {
	# R-Type
	"add"   : IType.R,
	"sub"   : IType.R,
	"sll"   : IType.R,
	"slt"   : IType.R,
	"sltu"  : IType.R,
	"xor"  	: IType.R,
	"srl"   : IType.R,
	"sra"   : IType.R,
	"or"    : IType.R,
	"and"   : IType.R,
	# I-Type
	"addi"  : IType.I,
	"subi"  : IType.I,
	"slli"  : IType.I,
	"slti"  : IType.I,
	"sltui" : IType.I,
	"xori" : IType.I,
	"srli"  : IType.I,
	"srai"  : IType.I,
	"ori"   : IType.I,
	"andi"  : IType.I,
	"jalr"	: IType.I,
	"lb"    : IType.I,
	"lh"    : IType.I,
	"lw"    : IType.I,
	"ld"    : IType.I,
	# S-Type
	"sb"    : IType.S,
	"sh"    : IType.S,
	"sw"    : IType.S,
	"sd"    : IType.S,
	# B-Type
	"beq"   : IType.B,
	"bne"  : IType.B,
	"blt"   : IType.B,
	"bltu"  : IType.B,
	"bge"   : IType.B,
	"bgeu"  : IType.B,
	# U-Type
	"lui"   : IType.U,
	"auipc" : IType.U,
	# J-Type
	"jal"   : IType.J,
}

# Define register aliases
RegMap = {
	# Special Purpose Registers
	"zero"  : 0,        # Hardwired Zero Register
	"ra"    : 1,        # Return Address
	"sp"    : 2,        # Stack Pointer
	"gp"    : 3,        # Global Pointer
	"tp"    : 4,        # Thread Pointer
	"fp"    : 8,        # Frame Pointer (Same as s0)
	# Function Argument Registers 0 to 7
	"a0"    : 10,       # Also Return value 0
	"a1"    : 11,       # Also Return value 1
	"a2"    : 12,
	"a3"    : 13,
	"a4"    : 14,
	"a5"    : 15,
	"a6"    : 16,
	"a7"    : 17,
	# Saved Registers 0 to 11
	"s0"    : 8,        # Also Frame Pointer
	"s1"    : 9,
	"s2"    : 18,
	"s3"    : 19,
	"s4"    : 20,
	"s5"    : 21,
	"s6"    : 22,
	"s7"    : 23,
	"s8"    : 24,
	"s9"    : 25,
	"s10"   : 26,
	"s11"   : 27,
	# Temporary Registers 0 to 6
	"t0"    : 5,
	"t1"    : 6,
	"t2"    : 7,
	"t3"    : 28,
	"t4"    : 29,
	"t5"    : 30,
	"t6"    : 31,
}

def usage():
	print("Machine Code Assembler for EE533 5-Stage Pipelined Processor.\nGive me your .ASM file, and I'll munch it down to 1's and 0's ;)")
	print("Usage: python mca.py [options] (input-file) (output-file)")
	print("Required Arguments:")
	print("\tinput-file\t\t- The .ASM file to be assembled")
	print("\toutput-file\t\t- The file to store the generated binary")
	print("Optional Arguments:")
	print("\t-h\t\t- Specifies to store output in a HEXADECIMAL format")
	print("\t-n\t\t- Specifies to insert NOOPs wherever necessary to resolve dependencies")
	print("\t-m\t\t- Specifies to create memory from a text containing numbers")

def memconvert(infile, outfile, hexmode):
	# Read in input file
	lines = []
	with open(infile) as fin:
		lines = fin.readlines()
		fin.close()
	bits = []
	# Convert the numbers
	for line in lines:
		bits.append(int(line, 16))
		
	# Print the bits to a file
	with open(outfile, "w") as fout:
		for bit in bits:
			if (hexmode):
				if (bit < 0):
					print(hex(bit & 2**32-1)[2:], file=fout)
				else:
					print("%016x" % bit, file=fout)
			else:
				if (bit < 0):
					print(bin(bit & 2**32-1)[2:], file=fout)
				else:
					print("{:064b}".format(bit), file=fout)
		fout.close()
    

def main(infiles, outfile, hexmode, add_boostrap):
	bits = []
	tid = 0
	for infile in infiles:
		# Read in input file
		lines = []
		if (add_boostrap):
			lines = Boostrap.format(tid).split("\n")
		with open(infile) as fin:
			lines = lines + fin.readlines()
			fin.close()
		# Parse the assembly, and convert pseudo ops when found
		purelines = []
		symbols = {}
		ind = 0
		for line in lines:
			line = line.split("#")[0].strip()
			if (line == ""):
				continue
			elif (":" in line):
				# Found a symbol
				symbol = line.split(":")[0].strip()
				# If there's a '.', remove if
				if (symbol[0] == "."):
					symbol = symbol[1:]
				# Check if symbol is for data
				if (".dword" in lines[ind+1]):
					# Symbol was for data, so grab the data
					symbols[symbol] = lines[ind+1].split("\t")[2].strip()
				else:
					symbols[symbol] = len(purelines)
				print("New Symbol: '%s'->%s" % (symbol, symbols[symbol]))
				continue
			elif ("." in line and line.split(".")[0].strip() == ""):
				continue
			else:
				# Check for pseudo ops
				splitline = line.split("\t")
				op = splitline[0].lower()
				if (op in pOps.keys()):
					# pseudo op found
					conv = pOps[op]
					args = ()
					if len(splitline) > 1:
						args = splitline[1].split(",")
					# If li was found, need to parse out args
					if (op == "li"):
						val = int(args[1])
						args[1] = str(val>>12)
						args.append(str(val & 0xFFF))
					if type(conv) is list:
						# Multi-line pOP
						for l in conv:
							purelines.append(l.format(*args))
					else:
						# Single-line pOP
						purelines.append(conv.format(*args))
				else:
					# Found a real instruction
					purelines.append(line)
			ind += 1
		# Now that we have the pure assembly, do a pass to resolve the symbols
		for i in range(0, len(purelines)):
			if ("." in purelines[i]):
				op = purelines[i].split("\t")[0]
				splitline = purelines[i].split("\t")[1].split(",")
				for j in range(0, len(splitline)):
					if ("." in splitline[j]):
						val = (symbols[splitline[j][1:]] - i)<<2
						splitline[j] = str(val)
				purelines[i] = op + "\t" + ",".join(splitline)
		# With the symbols resolved, now we just need to translate the instructions
		# But first fill with NOOP until the there are 4096 instructions
		# while len(purelines) < 4096:
		#	purelines.append("addi\tzero,zero,0")
		lindex = 0
		for line in purelines:
			splitline = line.split("\t")
			op = splitline[0]
			args = []
			if len(splitline) > 1:
				args = splitline[1].split(",")

			# Resolve assembler functions
			for argi in range(len(args)):
				res = re.search(r"%([a-zA-Z0-9._]+)\(([a-zA-Z0-9._]+)\)", args[argi])
				if res:
					afunc = res.group(1)
					aval = res.group(2)
					# Resolve symbols in args
					if aval in symbols:
						aval = symbols[aval]

					if afunc == "lo":
						aval = str(int(aval) & 0xFFF)
					elif afunc == "hi":
						aval = str(int(aval)>>12)
						print(aval)
					tleft = args[argi][0:res.start()]
					tright = args[argi][res.end():]
					args[argi] = tleft + aval + tright
			
			# Fix offset args formatted like x(y) to be y,x
			newarg = []
			for arg in args:
				if '(' in arg:
					vals = arg.split('(')
					newarg.append(vals[1][:-1])
					newarg.append(vals[0])
				else:
					newarg.append(arg)
			args = newarg

			# Resolve symbols in args
			for argi in range(len(args)):
				if args[argi] in symbols:
					args[argi] = symbols[args[argi]]
			
			opcode = OpMap[op.lower()]
			itype = ItypeMap[op.lower()]

			# R-type instructions
			if itype == IType.R:
				func3 = Func3Map[op.lower()]
				func7 = Func7Map[op.lower()]
				bit = opcode + (RegMap[args[0]]<<7) + (func3<<12) + (RegMap[args[1]]<<15) + (RegMap[args[2]]<<20) + (func7<<25)
				bits.append(bit)
			# I-type instructions
			elif itype == IType.I:
				func3 = Func3Map[op.lower()]
				bit = opcode + (RegMap[args[0]]<<7) + (func3<<12) + (RegMap[args[1]]<<15) + (int(args[2])<<20)
				bits.append(bit)
			# S-type instructions
			elif itype == IType.S:
				func3 = Func3Map[op.lower()]
				taddr = int(args[2])
				bit = opcode + ((taddr & 0x1F)<<7) + (func3<<12) + (RegMap[args[1]]<<15) + (RegMap[args[0]]<<20) + (((taddr>>5) & 0x3F)<<25)
				bits.append(bit)
			# B-type instructions
			elif itype == IType.B:
				func3 = Func3Map[op.lower()]
				taddr = int(args[2])
				bit = opcode + (((taddr>>11) & 0x1)<<7) + (((taddr>>1) & 0xF)<<8) + (func3<<12) + (RegMap[args[0]]<<15) + (RegMap[args[1]]<<20) + (((taddr>>5) & 0x3F)<<25) + (((taddr>>12) & 0x1)<<31)
				bits.append(bit)
			# U-type instructions
			elif itype == IType.U:
				bit = opcode + (RegMap[args[0]]<<7) + (int(args[1])<<12)
				bits.append(bit)
			# J-type instructions
			elif itype == IType.J:
				taddr = int(args[1])
				bit = opcode + (RegMap[args[0]]<<7) + (((taddr>>12) & 0xFF)<<12) + (((taddr>>11) & 0x1)<<20) + (((taddr>>1) & 0x3FF)<<21) + (((taddr>>20) & 0x1)<<31)
				bits.append(bit)
			else:
				bits.append(0)
			hex_str = "0xbad"
			if (bit < 0):
				hex_str = hex(bit & 2**32-1)
			else:
				hex_str = "0x%08x" % bit
			print("%d:\t%s\t%s\t\t%s" % (tid*1024 + lindex, hex_str, line, args))
			lindex += 1
		tid += 1
	# Print the bits to a file
	with open(outfile, "w") as fout:
		for bit in bits:
			if (hexmode):
				if (bit < 0):
					print(hex(bit & 2**32-1)[2:], file=fout)
				else:
					print("%08x" % bit, file=fout)
			else:
				if (bit < 0):
					print(bin(bit & 2**32-1)[2:], file=fout)
				else:
					print("{:032b}".format(bit), file=fout)
		fout.close()


if __name__ == '__main__':
	args = sys.argv
	hexmode = False
	memmode = False
	add_bootstrap = False
	infiles = []
	outfile = "a.txt"
	if len(args) < 3:
		usage()
		sys.exit(1)
	if (len(args) > 3 and "-h" in args):
		args.remove("-h")
		hexmode = True
	if (len(args) > 3 and "-m" in args):
		args.remove("-m")
		memmode = True
	if (len(args) > 3 and "-b" in args):
		args.remove("-b")
		add_bootstrap = True
	if (len(args) > 3 and len(args) != 6):
		usage()
		sys.exit(1)
	if (len(args) == 3):
		infiles.append(args[1])
		outfile = args[2]
	else:
		infiles.append(args[1])
		outfile = args[5]
	if (memmode):
		memconvert(args[1], args[2], hexmode)
	else:
		main(infiles, outfile, hexmode, add_bootstrap)
	sys.exit(0)
