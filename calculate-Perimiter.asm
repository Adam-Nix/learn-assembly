lbInput    INP
           STA varNumone
           INP 
           STA varNumtwo
           INP
           STA varNumtree
lbAdition  LDA varNumone
           ADD varNumtwo
           ADD varNumtree
           STA varTotal   

           OUT
           HLT



varNumone dat 0
varNumtwo dat 0
varNumtree dat 0 
varTotal dat 0 