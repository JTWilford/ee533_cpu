; Define the array of ints A (randomly generated from RANDOM.org)
; Starting position in memory: 0
; 0 -     664           Final order:    -4388
; 1 -    1624                           -4323
; 2 -   -228                            -4033
; 3 -    2327                           -3850
; 4 -   -3850                            -228
; 5 -   -4033                             664
; 6 -   -4388                            1624
; 7 -    3349                            2327
; 8 -    3943                            3349
; 9 -   -4323                            3943
SUB 0 0 0               ; Create a zero register
ADDI 1 0 10             ; Load the size of the array into Register 1
@whileloop              ; Loop until no swaps are made => while (!swapped). Register 3 will be our swapped variable. Initialize to 0 (False)
ADDI 2 0 1              ; Loop from i = 1 to n-1 => for (i=1; i < 10; i++). Register 2 will be our i
ADDI 7 0 0              ; Register 7 will be i-1
ADDI 3 0 0
@forloop
LW 5 2                  ; Load A[i] into Register 5
LW 4 7                  ; Load A[i-1] into Register 4
SGT 6 4 5               ; If A[i-1] > A[i], fallthrough
BEZ 6 @endswap
SW 5 7                  ; Swap A[i-1] and A[i]
SW 4 2
ADDI 3 0 1              ; Set the Swapped flag to True (1)
@endswap
ADDI 7 2 0
ADDI 2 2 1              ; End of the swap for loop, so update i and check conditions => If i < 10, branch
SLT 6 2 1
BNEZ 6 @forloop
BNEZ 3 @whileloop       ; End of while loop, so check conditions => If swapped == 1, branch
@infinite
ADD 2 1 2
BEZ 0 @infinite         ; End of program, so loop forever