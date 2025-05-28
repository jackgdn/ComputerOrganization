; You now implement the “XOR” operation. It is going to “XOR” the values from the memory location stored at R2 and the values from the memory location stored at R3 (mem[R2] XOR mem[R3]). The result is saved at R1. Notice that you can only use R1 to R6 in your implementation. You also need to clear the values from R1 to R6 to ZERO before the end of your program.

.ORIG X3000
LDR R2, R2, #0
LDR R3, R3, #0
NOT R4, R2
NOT R5, R3
AND R4, R4, R3
AND R5, R2, R5
NOT R4, R4
NOT R5, R5
AND R1, R4, R5
NOT R1, R1
AND R2, R2, #0
AND R3, R3, #0
AND R4, R4, #0
AND R5, R5, #0
.END