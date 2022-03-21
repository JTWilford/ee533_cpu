; Define a list of addresses for accessing the FIFO
; Starting position in memory: 0
; 0 -   0x0000000100000800  =>  Access Tail Pointer
; 1 -   0x0000000100000A00  =>  Access Head Pointer
; 2 -   0x0000000100000C00  =>  Access Full Signal
; 3 -   0x0000000100000E00  =>  Access Done Signal
; 4 -   0x0000000100000000  =>  Access Data
; 5 -   0x0000000100000600  =>  Access Control
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
ADDI 2 0 1              ; Load the Head Address Pointer into R1
NOOP
NOOP
NOOP
LW 2 2                  ; Load the value from the pointer
NOOP
NOOP
NOOP
LW 2 2                  ; Fetch the Head Address from the FIFO, R2 will be i for the follwoing Loop
SUB 6 0 0               ; Reset R6
NOOP
NOOP
@READ_LOOP
ADDI 1 0 5              ; Load the FIFO Control Pointer into R1
NOOP
NOOP
NOOP
LW 1 1                  ; Load the Control Address value from the pointer
ADDI 2 2 1              ; Increment Header address (i variable)
NOOP
NOOP
NOOP
ANDI 2 2 511            ; Make sure R2 doesnt go out of bounds
NOOP
NOOP
NOOP
BNEZ 6 @SKIP_HEADER_CHECK   ; If we have already found the whole header, no need to check anymore (R6 wont be 0 ever again)
NOOP
NOOP
NOOP
OR 3 1 2                ; Calculate Head Address for Control
NOOP
NOOP
NOOP
LW 4 3                  ; Load the ith item from the FIFO Control into R4
NOOP
NOOP
NOOP
BNEZ 4 @SKIP_HEADER     ; If the control is non-zero, skip this packet (its a header)
NOOP
NOOP
NOOP
@SKIP_HEADER_CHECK
ADDI 1 0 4                ; Load the FIFO Data Pointer into R1
NOOP
NOOP
NOOP
LW 1 1                  ; Load the value from the pointer
NOOP
NOOP
NOOP
OR 3 1 2                ; Calculate Head Address for Data
NOOP
NOOP
ADDI 5 0 8             ; for (i = 0; i < 8; i++)
LW 4 3                  ; Load the ith item from the FIFO data into R4
NOOP
NOOP
NOOP
@MATCH_LOOP
ANDI 6 4 255            ; Mask out all but the last 8 bits in the data
NOOP
NOOP
NOOP
SUBI 7 6 101           ; Determine if the value equals 'e' in ascii
NOOP
NOOP
NOOP
BNEZ 7 @NO_E
NOOP
NOOP
NOOP
ADDI 6 0 51            ; Set the character to '3'
@NO_E
SRLI 4 4 8              ; Right shift all the bits in the data over by 8
SUBI 5 5 1              ; Decrement loop counter
NOOP
SLLI 6 6 56             ; Left shift all the new character bits in the data over by 56
NOOP
NOOP
NOOP
ADD 4 4 6               ; Put the character back into the data
BNEZ 5 @MATCH_LOOP      ; for (i=0; i < 8; i++)
NOOP
NOOP
NOOP
SW 4 3                  ; Store the modified data back into the FIFO at the same location
ADDI 6 0 1              ; Make R6 non-zero to ensure we skip the Header check
@SKIP_HEADER
LW 5 0                  ; Load the Tail Pointer into R5
NOOP
NOOP
NOOP
LW 5 5                  ; Get the Tail Pointer from the FIFO
NOOP
NOOP
NOOP
SUB 7 5 2               ; If Head != Tail, loop
NOOP
NOOP
NOOP
BNEZ 7 @READ_LOOP
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