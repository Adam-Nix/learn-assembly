
lbUserInput  INP 
             STA varCurrentWorldRecord
             BRZ varExit 

 lbAttempt   INP 
             STA varAttempt
             LDA varAttempt
             SUB varCurrentWorldRecord  
             BRP lbNewRecord

lbNewRecord  STA varCurrentWorldRecord
             BRA  lbUserInput
             OUT 
varExit      HLT


varCurrentWorldRecord dat 0
varAttempt dat 0
lbNewRecord dat 0 