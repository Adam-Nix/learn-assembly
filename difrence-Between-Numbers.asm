lbInput INP
        STA varFirstValue
        INP 
        STA varSecondValue
        LDA varFirstValue
lbTotal SUB varSecondValue
        out
        HLT
        
varFirstValue dat 0
varSecondValue dat 0 
