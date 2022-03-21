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