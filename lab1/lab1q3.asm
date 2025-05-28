; You now implement the “Multi” (multiplication) operation. It is going to multiply the values from the memory location stored at R3 and the values from the memory location stored at R2 (mem[R3] * mem[R2]). The result is saved at R1. Notice that you can only use R1 to R6 in your implementation. You also need to clear the values from R1 to R6 to ZERO before the end of your program.

.ORIG X3000
LDR R2, R2, #0
LDR R3, R3, #0
LOOP ADD R1, R1, R3
ADD R2, R2, #-1
BRZP LOOP
NOT R3, R3
ADD R3, R3, #1
ADD R1, R1, R3
AND R2, R2, #0
AND R3, R3, #0
.END