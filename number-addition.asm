; A program to add two numbers and output the sum

INP
STA INPUT1

INP
STA INPUT2

LDA INPUT1 ; Loads value of input1 to the acumilater
ADD INPUT2 ; adds teh value of INPUT2 to teh value (curently the value of INPUT1) in the acumilater
STA RESULT ; Saves the value of the acumilater to the varible RESULT
OUT ; Outpute the value of the acumilater to the screan

; program variables

INPUT1 DAT
INPUT2 DAT