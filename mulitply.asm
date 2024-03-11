///
///  Multiply. This program expects 2 postive numbers as input and outputs their product.
///  If the input is 0, the output is 0.
///
lbInput1        INP
                BRZ lbInput2
                BRP lbSave1
                BRA lbInput1
lbSave1         STA varMultiplicand
lbInput2        INP
                BRZ lbOutput        // if input is 0, output 0
                BRP lbSave2
                BRA lbInput2

lbSave2         STA varMultiplier
lbMultiplyLoop  LDA varProduct
                ADD varMultiplicand
                STA varProduct 
                LDA varMultiplier
                SUB valOne
                STA varMultiplier
                BRZ lbOutput
                BRP lbMultiplyLoop

lbOutput        LDA varProduct
                OUT
                HLT

valOne          DAT 1
varProduct      DAT 0
varMultiplicand DAT 0
varMultiplier   DAT 0