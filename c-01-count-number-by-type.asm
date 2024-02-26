; Take 5 numbers and sum them and keep count of the number of Postive and Negative Numbers

lbLoopCheck       LDA varLoopCount      ; Load the value of varInpCount into the accumulator
                  SUB valOne            ; Subtract the constant value varIValue from the accumulator
                  STA varLoopCount      ; Store the result back into varInpCount
                  BRZ lbProgEnd         ; If the result is zero, end the program
lbInput           INP                   ; Input a number from the user
                  BRZ lbLoopCheck       ; If the input number is zero, branch to lbSum, we do not count it as either positive or negative
                  BRP ldAddPos          ; Having already checking on the previous line that the input isnot 0, If the input number is positive, branch to ldAddPos
ldAddNeg          ADD varNegativeSum    ; Add the input number to varNegative
                  STA varNegativeSum    ; Store the updated value in varNegative
                  BRA lbLoopCheck       ; Branch back to lbSum to continue the loop
ldAddPos          ADD varPositiveSum    ; Add the input number to varPositive
                  STA varPositiveSum    ; Store the updated value in varPositive
                  BRA lbLoopCheck       ; Branch back to lbSum to continue the loop
lbProgEnd         LDA varSum            ; Load the current total from varTotal into the accumulator
                  ADD varPositiveSum    ; Add varPositive to the accumulator
                  ADD varNegativeSum    ; Add varNegative to the accumulator
                  STA varSum            ; Store the final total back into varTotal
                  OUT                   ; Output the final total
                  HLT                   ; Halt the program
varLoopCount      DAT 6                 ; Variable to store the number of inputs ; 
                                        ; Loop Count is 1 greater than the required number of inputs
valOne            DAT 1                 ; Constant value to subtract from varInpCount
varPositiveSum    DAT 0                 ; Variable to store the sum of positive numbers
varNegativeSum    DAT 0                   ; Variable to store the sum of negative numbers
varSum            DAT 0                   ; Variable to store the total sum
