; Define a list of addresses for accessing the FIFO
; Starting position in memory: 0
; 0 -   0x0000000100000800  =>  Access Tail Pointer
; 1 -   0x0000000100000A00  =>  Access Head Pointer
; 2 -   0x0000000100000C00  =>  Access Full Signal
; 3 -   0x0000000100000E00  =>  Access Done Signal
; 4 -   0x0000000100000000  =>  Access Data
; 5 -   0x0000000100000600  =>  Access Control
.INFINITE
ADDI s0 zero 0              ; Tail Pointer
ADDI s1 zero 1              ; Head Pointer
ADDI s2 zero 2              ; Full Pointer
ADDI s3 zero 3              ; Done Pointer
ADDI s4 zero 4              ; Data Pointer
ADDI s5 zero 5              ; Control Pointer
LW s0 s0                    ; Dereferences
LW s1 s1
LW s2 s2
LW s3 s3
LW s4 s4
LW s5 s5
.CHECK_DONE
LW a0 s2                  ; Load the value of the Full Signal into a0
BEZ a0 .CHECK_DONE       ; Loop until the done signal is high
LW a1 s1                  ; Fetch the Head Address from the FIFO
LW a2 s0                  ; Fetch the Tail Address from the FIFO
SUB a2 a2 a1                ; depth = Tail - Head
SLT t0 a2 zero              ; If depth < 0
BEZ t0 .SKIP_PTR_FIX
ADDI a2 a2 512              ; Fix depth
.SKIP_PTR_FIX
ADDI s6 zero 0               ; s6 Tracks whether we're in the payload
ADD t0 tp zero          ; for (i = tid; i < depth;) => set i=tid
.READ_LOOP
ADD t1 a1 t0                ; Calculate current location
ANDI t1 t1 511              ; Prevent location from going out of bounds
BNEZ s6 .SKIP_HEADER_CHECK   ; If we're already in the payload, skip the next bit
OR t2 t1 s5                 ; Calculate Control Address for current location
LW t3 t2                  ; Fetch the current FIFO Control into t3
BNEZ s6 .SKIP_HEADER     ; If the control is non-zero, skip this packet (its a header)
ADDI s6 zero 1              ; Set s6 to 1 if the control was zero
.SKIP_HEADER_CHECK
OR t2 t1 s5                 ; Calculate Data Address for current location
LW t3 t2                    ; Fetch the current FIFO Data into t3
ADDI t4 zero 0              ; for (j = 0; j < 8;) => set j=0
.MATCH_LOOP
ANDI t5 t3 255            ; Mask out all but the last 8 bits in the data
SUBI t6 t5 101           ; if (val == 'e')
BNEZ t6 .NO_E
ADDI t5 zero 51            ; Set the character to '3'
.NO_E
SRLI t3 t3 8              ; Right shift all the bits in the data by 8
SLLI t5 t5 56             ; Left shift all the new character bits in the data over by 56
ADD t3 t3 t5               ; Put the character back into the data
ADDI t4 t4 1              ; j += 1
SLTI t6 t4 8
BNEZ t6 .MATCH_LOOP     ; for (j = 0; j < 8;) => j < 8
SW t3 t2                  ; Store the modified data back into the FIFO at the same location
.SKIP_HEADER
ADDI t0 t0 4            ; i += 4
SLT t6 t0 a2                ; for (i = tid; i < depth;) => i < depth
BNEZ t6 .READ_LOOP
BNEZ tp .SUB_THREAD        ; Thread 0 handles synchronization
.MAIN_THREAD
ADDI t0 gp 1            ; Thread 0: Check if other threads are done
ADDI t1 gp 2
ADDI t2 gp 3
.WAIT
LW t3 t0
LW t4 t1
LW t5 t2
AND t6 t3 t4
AND t6 t6 t5
BEZ t6 .WAIT                ; Loop until all threads have finished
SW zero s3                  ; Send the Done signal
ADDI t6 zero 1
SW t6 gp                    ; Tell the other threads that main is done
.WAIT2
LW t3 t0
LW t4 t1
LW t5 t2
AND t6 t3 t4
AND t6 t6 t5
BEZ t6 .WAIT2               ; Loop until all threads have finished
SW zero gp                  ; Reset main done signal
BEZ zero .CHECK_DONE        ; Restart the program
.SUB_THREAD
ADD t0 gp tp               ; Signal that this thread is done
ADDI t1 zero 1
SW t1 t0
.FENCE
LW t6 gp
BNEZ t6 .FENCE              ; Loop until the head thread has sent the done signal
SW zero t0                  ; Reset thread done signal
BEZ zero .INFINITE         ; Restart the program