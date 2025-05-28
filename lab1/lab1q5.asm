; You now implement the “Shift” operation. It is going to calculate the values from the memory location stored at R2 lefts-shift by the values from the memory location stored at R3 (mem[R2] < mem[R3]). The result is saved at R1. Notice that you can only use R1 to R6 in your implementation. You also need to clear the values from R1 to R6 to ZERO before the end of your program.

.ORIG X3000
LDR R2, R2, #0
LDR R3, R3, #0
LOOP ADD R2, R2, R2
ADD R3, R3, #-1
BRP LOOP
DONE ADD R1, R2, #0
AND R2, R2, #0
AND R3, R3, #0
.END