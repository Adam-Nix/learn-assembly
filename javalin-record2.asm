///
// Javelin: Write a program to input attempts on the World Javelin record (98m).
// If an attempt is greater than the current record,the attempt should be stored 
// as the new record. Enter 0 to end and output the current record.
///
lbfirstInput    INP                                  // first input shuold be the exisiting current world record
                BRZ lbfirstInput
                BRP lbSaveRecord                    // if 1 or greater continue
                BRA lbfirstInput
 
lbSaveRecord    STA varCurrentWorldRecord           //98 input
 

lbUserInput     INP
                BRZ lbProgramEnd                    // if 0 continue, branch to end of program
                BRP lbTest                          // if 1 or greater continue, branch to test
                BRA lbUserInput                     // if negative branch back to user input  

lbTest          STA varAttempt
                SUB varCurrentWorldRecord 
                
                BRZ lbUserInput                         // if 0 continue, branch back to user input
                BRP lbNewRecord                         // if 1 or greater continue, branch to test
                BRA lbUserInput

lbNewRecord     LDA varAttempt
                STA varCurrentWorldRecord
                OUT 
                BRA  lbUserInput

lbProgramEnd   HLT


varCurrentWorldRecord dat 0
varAttempt dat 0