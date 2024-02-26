                INP
                BRZ lbExit
                STA varDividend
                
                INP
                BRZ lbExit
                STA varDivisor

lbDivideLoop LDA varQuotient
               ADD varDividend 
               STA varQuotient 

               LDA varDivisor
               SUB val1
               STA varDivisor
               BRZ lbExit
               BRP lbDivideLoop

lbExit         LDA varQuotient
               OUT 
               HLT

varQuotient dat 0
varDividend dat 0
varDivisor dat 0
val1 dat 1