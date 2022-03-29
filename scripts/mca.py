from enum import Enum
import sys

# Define Boostrap Code
# This sets up the stack pointer, global pointer, and thread pointers
Boostrap = """\
ADDI tp zero {0}    ; Sets thread pointer to current thread ID
SLLI sp tp 9        ; Allocate the stack pointer based on thread ID
ADDI sp sp 511
ADDI gp zero 2048   ; Sets the global pointer to bottom half of memory
"""

# Define OP codes
OpMap = {
    # R-Type
    "ADD"   : 0x06,
    "SUB"   : 0x06,
    "SLL"   : 0x06,
    "SLT"   : 0x06,
    "SLTU"  : 0x06,
    "SGT"   : 0x06,
    "SGTU"  : 0x06,
    "XNOR"  : 0x06,
    "SRL"   : 0x06,
    "SRA"   : 0x06,
    "OR"    : 0x06,
    "AND"   : 0x06,
    # I-Type
    "ADDI"  : 0x04,
    "SUBI"  : 0x04,
    "SLLI"  : 0x04,
    "SLTI"  : 0x04,
    "SLTUI" : 0x04,
    "SGTI"  : 0x04,
    "SGTUI" : 0x04,
    "XNORI" : 0x04,
    "SRLI"  : 0x04,
    "SRAI"  : 0x04,
    "ORI"   : 0x04,
    "ANDI"  : 0x04,
    "LW"    : 0x02,
    "SW"    : 0x03,
    "LWI"   : 0x02,
    "SWI"   : 0x03,
    "LWUI"  : 0x02,
    "SWUI"  : 0x03,
    # B-Type
    "BEZ"   : 0x10,
    "BNEZ"  : 0x08,
    # Noop
    "NOOP"  : 0x00
}
# Define FUN4 values
FuncMap = {
    # R-Type
    "ADD"   : 0x0,
    "SUB"   : 0x1,
    "SLL"   : 0x2,
    "SLT"   : 0x4,
    "SLTU"  : 0x5,
    "SGT"   : 0x6,
    "SGTU"  : 0x7,
    "XNOR"  : 0x8,
    "SRL"   : 0xA,
    "SRA"   : 0xB,
    "OR"    : 0xC,
    "AND"   : 0xE,
    # I-Type
    "ADDI"  : 0x0,
    "SUBI"  : 0x1,
    "SLLI"  : 0x2,
    "SLTI"  : 0x4,
    "SLTUI" : 0x5,
    "SGTI"  : 0x6,
    "SGTUI" : 0x7,
    "XNORI" : 0x8,
    "SRLI"  : 0xA,
    "SRAI"  : 0xB,
    "ORI"   : 0xC,
    "ANDI"  : 0xE,
    "LW"    : 0x0,
    "SW"    : 0x0,
    "LWI"   : 0x3,
    "SWI"   : 0x3,
    "LWUI"  : 0x1,
    "SWUI"  : 0x1,
    # B-Type
    "BEZ"   : 0x0,
    "BNEZ"  : 0x0,
    # Noop
    "NOOP"  : 0x0
}

# Define instruction types (formats)
class IType(Enum):
    R = 0
    I = 1
    B = 2
ItypeMap = {
    # R-Type
    "ADD"   : IType.R,
    "SUB"   : IType.R,
    "SLL"   : IType.R,
    "SLT"   : IType.R,
    "SLTU"  : IType.R,
    "SGT"   : IType.R,
    "SGTU"  : IType.R,
    "XNOR"  : IType.R,
    "SRL"   : IType.R,
    "SRA"   : IType.R,
    "OR"    : IType.R,
    "AND"   : IType.R,
    # I-Type
    "ADDI"  : IType.I,
    "SUBI"  : IType.I,
    "SLLI"  : IType.I,
    "SLTI"  : IType.I,
    "SLTUI" : IType.I,
    "SGTI"  : IType.I,
    "SGTUI" : IType.I,
    "XNORI" : IType.I,
    "SRLI"  : IType.I,
    "SRAI"  : IType.I,
    "ORI"   : IType.I,
    "ANDI"  : IType.I,
    "LW"    : IType.I,
    "SW"    : IType.I,
    "LWI"   : IType.I,
    "SWI"   : IType.I,
    "LWUI"  : IType.I,
    "SWUI"  : IType.I,
    # B-Type
    "BEZ"   : IType.B,
    "BNEZ"  : IType.B,
    # Noop
    "NOOP"  : IType.R
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
        if (len(bits) % 512 != 0):
            print("[ERROR] Misalligned threads!")
            print("bits = %d" % len(bits))
            print("thread = %d" % tid)
            sys.exit(1)
        # Read in input file
        lines = []
        if (add_boostrap):
            lines = Boostrap.format(tid).split("\n")
        with open(infile) as fin:
            lines = lines + fin.readlines()
            fin.close()
        # Parse the assembly
        purelines = []
        labels = {}
        for line in lines:
            line = line.split(";")[0].strip()
            if (line == ""):
                continue
            elif (line[0] == "."):
                # Found a label
                labels[line[1:]] = len(purelines)
                continue
            else:
                # Found a real instruction
                purelines.append(line)
        # Now that we have the pure assembly, do a pass to resolve the labels
        for i in range(0, len(purelines)):
            if ("." in purelines[i]):
                splitline = purelines[i].split(" ")
                for j in range(0, len(splitline)):
                    if ("." in splitline[j]):
                        val = labels[splitline[j][1:]] - i - 1
                        splitline[j] = str(val)
                purelines[i] = " ".join(splitline)
        # With the labels resolved, now we just need to translate the instructions
        # But first fill with NOOP until the there are 512 instructions
        while len(purelines) < 1024:
            purelines.append("NOOP")
        lindex = 0
        for line in purelines:
            if line == "NOOP":
                bits.append(0)
            else:
                splitline = line.split(" ")
                op = splitline[0]
                args = splitline[1:]
                
                opcode = OpMap[op.upper()]
                func = FuncMap[op.upper()]
                itype = ItypeMap[op.upper()]

                # R-type instructions
                if itype == IType.R:
                    bit = opcode + (RegMap[args[0]]<<5) + (func<<10) + (RegMap[args[1]]<<14) + (RegMap[args[2]]<<19)
                    bits.append(bit)
                # I-type instructions
                elif itype == IType.I:
                    # If its a load, we use RD and RS2
                    if (op.upper() == "LW"):
                        bit = opcode + (RegMap[args[0]]<<5) + (func<<10) + (RegMap[args[1]]<<19)
                        bits.append(bit) 
                    # If its a store, we use RS1 and RS2
                    elif (op.upper() == "SW"):
                        bit = opcode + (func<<10) + (RegMap[args[0]]<<14) + (RegMap[args[1]]<<19)
                        bits.append(bit)
                    # Every other instruction
                    else:
                        bit = opcode + (RegMap[args[0]]<<5) + (func<<10) + (RegMap[args[1]]<<14) + (int(args[2])<<19)
                        bits.append(bit)
                # B-type instructions
                elif itype == IType.B:
                    bit = opcode + (RegMap[args[0]]<<14) + (int(args[1])<<19)
                    bits.append(bit)
                else:
                    bits.append(0)
                hex_str = "0xbad"
                if (bit < 0):
                    hex_str = hex(bit & 2**32-1)
                else:
                    hex_str = "0x%08x" % bit
                print("%d:\t%s\t%s" % (tid*1024 + lindex, hex_str, line))
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
        infiles.append(args[1])
        infiles.append(args[1])
        infiles.append(args[1])
        outfile = args[2]
    else:
        infiles.append(args[1])
        infiles.append(args[2])
        infiles.append(args[3])
        infiles.append(args[4])
        outfile = args[5]
    if (memmode):
        memconvert(args[1], args[2], hexmode)
    else:
        main(infiles, outfile, hexmode, add_bootstrap)
    sys.exit(0)
