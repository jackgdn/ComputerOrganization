; You now implement the “Factorial” operation. It is going to calculate the factorial of the values from the memory location stored at R2 (R2!). The result is saved at R1. Notice that you can only use R1 to R6 in your implementation. You also need to clear the values from R1 to R6 to ZERO before the end of your program.

.ORIG X3000
ADD R1, R1, #1
LDR R2, R2, #0
BRZ DONE
FAC ADD R3, R2, #0
AND R4, R4, #0
MUL ADD R4, R4, R1
ADD R3, R3, #-1
BRP MUL
ADD R1, R4, #0
ADD R2, R2, #-1
BRP FAC
DONE AND R2, R2, #0
AND R2, R2, #0
AND R3, R3, #0
AND R4, R4, #0
.END