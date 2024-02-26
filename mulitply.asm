                INP
                STA varMultiplicand
                INP
                STA varMultiplier
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