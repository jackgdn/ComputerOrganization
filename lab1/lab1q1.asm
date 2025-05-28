; You now implement the "Sub" operation.
; It is going to sub the values from the memory location stored at R3 from the values from the memory location stored at R2 (mem[R2] - mem[R3]).
; The result is saved at R1.
; Notice that you can only use R1 to R6 in your implementation.
; You also need to clear the values from R1 to R6 to ZERO before the end of your program.

.ORIG X3000
LDR R2, R2, #0
LDR R3, R3, #0
NOT R3, R3
ADD R3, R3, #1
ADD R1, R2, R3
AND R2, R2, #0
AND R3, R3, #0
.END