; Define a list of addresses for accessing the FIFO
; Starting position in memory: 0
; 0 -   0x0000000100000800  =>  Access Tail Pointer
; 1 -   0x0000000100000A00  =>  Access Head Pointer
; 2 -   0x0000000100000C00  =>  Access Full Signal
; 3 -   0x0000000100000E00  =>  Access Done Signal
; 4 -   0x0000000100000000  =>  Access Data
; 5 -   0x0000000100000200  =>  Access Control
SUB 0 0 0               ; Create a zero register
NOOP
NOOP
NOOP
@INFINITE
ADDI 1 0 2              ; Load the Full Signal Pointer into R1
NOOP
NOOP
NOOP
LW 1 1
NOOP
NOOP
NOOP
@CHECK_DONE
LW 2 1                  ; Load the value of the Full Signal into R2
NOOP
NOOP
NOOP
BEZ 2 @CHECK_DONE       ; Loop until the done signal is found
NOOP
NOOP
NOOP
ADDI 5 0 1              ; Load the Head Address Pointer into R5
ADDI 4 0 0              ; Load the Tail Address into R4
ADDI 1 0 4              ; Load the FIFO Data Pointer into R1
ADDI 2 0 5              ; Load the FIFO Control Pointer into R2
LW 5 5                  ; Load the value from the pointer
LW 4 4                  ; ^
LW 1 1                  ; ^
LW 2 2                  ; ^
LW 5 5                  ; Fetch the Head Address from the FIFO
LW 4 4                  ; Fetch the Tail Address from the FIFO
NOOP
NOOP
ADDI 5 5 3              ; Offset head to not interfere with header
NOOP
NOOP
NOOP
OR 6 1 5                ; Calculate Head Address for Data, R6 will be i for the following loop
OR 2 1 4                ; Calculate Tail Address for Data, R2 will be the end condition for the following loop
ADDI 3 0 8              ; Counter for local addresses
NOOP
@READ_LOOP
LW 7 6
NOOP
NOOP
NOOP
SW 7 3
ADDI 6 6 1
ADDI 3 3 1
NOOP
NOOP
ANDI 6 6 -257          ; Make sure R6 doesnt go out of bounds
NOOP
NOOP
NOOP
BNEZ 7 @READ_LOOP       ; Loop as long as R2 != R6
NOOP
NOOP
NOOP
OR 6 1 4                ; Calculate Tail Address for Data, R6 will be i for the following loop
OR 2 1 5                ; Calculate Head Address for Data, R2 will be the end condition for the following loop
ADDI 3 0 8              ; Counter for local addresses
NOOP
SUBI 6 6 1
SUBI 2 2 1
@WRITE_LOOP
LW 7 3
NOOP
NOOP
NOOP
SW 7 6
ADDI 6 6 255            ; This is the same as subtract 1, done to prevent address overflow without a branch
ADDI 3 3 1
NOOP
NOOP
ANDI 6 6 -257           ; Remove address overflow
NOOP
NOOP
NOOP
SUB 7 6 2               ; Loop as long as R6 != R2
NOOP
NOOP
NOOP
BNEZ 7 @WRITE_LOOP
NOOP
NOOP
NOOP
ADDI 1 0 7              ; Set up the packet counter pointer
ADDI 3 0 3              ; Set up for sending done signal to peripheral
NOOP
NOOP
LW 2 1                  ; Load in the packet counter
LW 3 3                  ; Load Pointer to Done signal
NOOP
NOOP
ADDI 2 2 1              ; Increment the packet counter
SW 0 3                  ; Send the Done signal
NOOP
NOOP
SW 2 1                  ; Store the packet counter
BEZ 0 @INFINITE         ; Restart the program
NOOP
NOOP
NOOP