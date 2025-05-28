; You now implement the “Power” operation. It is going to calculate the values from the memory location stored at R2 to the power of the value from values from the memory location stored at R3 (R2 ^ R3). The result is saved at R1. Notice that you can only use R1 to R6 in your implementation. You also need to clear the values from R1 to R6 to ZERO before the end of your program.

.ORIG X3000
LDR R2, R2, #0
BRZ DONE
ADD R1, R1, #1
LDR R3, R3, #0
BRZ DONE
POW AND R5, R5, #0
ADD R5, R1, #0
AND R4, R4, #0
ADD R4, R2, #0
ADD R4, R4, #-1
MUL ADD R5, R5, R1
ADD R4, R4, #-1
BRP MUL
AND R1, R1, #0
ADD R1, R5, #0
ADD R3, R3, #-1
BRP POW
DONE AND R2, R2, #0
AND R3, R3, #0
AND R4, R4, #0
AND R5, R5, #0
.END