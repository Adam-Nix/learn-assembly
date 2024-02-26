lbinputAge INP
                BRZ lbProgramEnd
                sub varAgelimit
                BRP lbAddToAccepted
                BRA lbAddToRejected
          
lbAddToAccepted LDA  varAccepted
                Add varOne
                STA varAccepted
                BRA lbinputAge

lbAddToRejected LDA varRejected
                Add varOne
                STA varRejected
                OUT
                BRA lbinputAge

lbProgramEnd    HLT 



varAgelimit dat 17
varOne dat 1  
varAccepted dat 0
varRejected dat 0      