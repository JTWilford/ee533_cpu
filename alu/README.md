# 64-bit Arithmetic Logic Unit (ALU)

## Op Codes

| ASM | OP-Code | Modifier | Description |
| ---- | --- | - | --------------------------- |
| ADD  | 000 | 0 | Addition                    |
| SUB  | 000 | 1 | Subtraction                 |
| SLL  | 001 | X | Logical Left Shift          |
| SLT  | 010 | 0 | Set Less Than               |
| SLTU | 010 | 1 | Set Less Than (Unsigned)    |
| SGT  | 011 | 0 | Set Greater Than            |
| SGTU | 011 | 1 | Set Greater Than (Unsigned) |
| XNOR | 100 | X | Bitwise Exclusive NOR       |
| SRL  | 101 | 0 | Logical Right Shift         |
| SRA  | 101 | 1 | Arithmetic Right Shift      |
| OR   | 110 | X | Bitwise OR                  |
| AND  | 111 | X | Bitwise AND                 |
