import re
import subprocess
import sys
import imp

fpga = imp.load_source('netfpga', '/usr/local/netfpga/lib/python/netfpga.py')

ANA_CONTROL_REG = 0x2000300
ANA_ADDRESS_REG = 0x2000304
ANA_STATUS_REG  = 0x2000308
ANA_DATA_LO_REG = 0x200030c
ANA_DATA_HI_REG = 0x2000310

ANA_REGS = [
    ("Control", ANA_CONTROL_REG), 
    ("Address", ANA_ADDRESS_REG), 
    ("Status",  ANA_STATUS_REG),
    ("Data High:", ANA_DATA_HI_REG),
    ("Data Low:", ANA_DATA_LO_REG)
    ]

def regread(addr):
    return fpga.readReg(addr)
def regwrite(addr, val):
    fpga.writeReg(addr, val)

def data_address(chip, addr):
    return (chip<<28) + addr

def printtable(table):
    for row in table:
        print(",".join(row))

def main(target, cmd, args):
    if target == "ana":
        # Analyzer Commands
        if cmd == "rawregs":
            # Print out all register values in their raw form
            print("Register, Value")
            for reg in ANA_REGS:
                print ("%s, %08x" % (reg[0], regread(reg[1])))
        elif cmd == "analyze":
            # Retrieves data from the analyzer and puts it in a table
            # Figure out what to analyze
            chips = range(0,16)
            if len(args) > 0:
                chips = []
                for ch in args:
                    chips.append(int(ch))
            lines = []
            lines.append(["Time"])
            for i in chips:
                lines.append(['dout%d' % i])
            for i in range(0,64):
                lines[0].append('%d' % i)
                for j in range(0, len(chips)):
                    regwrite(ANA_ADDRESS_REG, data_address(chips[j], i))
                    regwrite(ANA_CONTROL_REG, 2)
                    while (regread(ANA_STATUS_REG) & 1 == 0): pass
                    lines[j+1].append("%016x" % ((regread(ANA_DATA_HI_REG)<<32) + regread(ANA_DATA_LO_REG)))
                    regwrite(ANA_CONTROL_REG, 0)
            printtable(lines)
        elif cmd == "clear":
            regwrite(ANA_CONTROL_REG, 1)
            regwrite(ANA_CONTROL_REG, 0)

if __name__ == '__main__':
    args = sys.argv
    if len(args) < 3:
        print("Need more arguments")
    elif len(args) < 4:
        main(args[1], args[2], [])
    else:
        main(args[1], args[2], args[3:])