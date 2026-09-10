import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.BlockApprox
set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option Elab.async false
open B699Middle B699Dyadic B699HeightBlock
example : fastSmallPrimeCount 1022 = 172 := by decide +kernel
example : (factorialWindowUp 48 3).1.mantissa = 6 := by decide +kernel
example : (factorialWindowDown 48 3).2.mantissa = 12 := by decide +kernel
example : (powUp 48 (embed 3) 10).mantissa = 59049 := by decide +kernel
example : ltCheck (embed 2) (embed 3) = true := by decide +kernel
#eval blockApproxCheck 48 1000 1022 333 666 20000000 172
#reduce powUp 48 (embed 3) 2
