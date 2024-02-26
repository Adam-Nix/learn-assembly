                INP
                BRZ lbExit
                STA varDividend
                
                INP
                BRZ lbExit
                STA varDivisor

lbDivideLoop    BRZ lbExit   
                LDA varDividend
                SUB varDivisor
                STA varDividend
                BRP lbIncrement
                BRA lbExit

lbIncrement    LDA varQuotient
               ADD val1
               STA varQuotient
               BRA lbDivideLoop

lbExit         LDA varQuotient
               OUT 
               HLT

varQuotient dat 0
varDividend dat 0
varDivisor dat 0
val1 dat 1