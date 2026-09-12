import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk140
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨10881, 10881, .largeDivisor 2980749235629794621054515040783⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨10882, 10882, .largeDivisor 10443178745049396351035168278751⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨10883, 10890, .topPrime 10883⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10883) (hi := 10890) (p := 10883)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨10908, 10910, .topPrime 10903⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10908) (hi := 10910) (p := 10903)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨10912, 10918, .topPrime 10909⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10912) (hi := 10918) (p := 10909)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨10927, 10927, .largeDivisor 2997501313787236515069844914017813⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨10928, 10928, .largeDivisor 1687793402569400280125889592971283⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨10929, 10929, .largeDivisor 1126329248133417332936181679280891⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨10930, 10930, .largeDivisor 112746393278672510751831355934977⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨10931, 10931, .largeDivisor 94802371148397631925251427055787199⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨10932, 10932, .largeDivisor 7908154941506294541150448681240009⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨10933, 10933, .largeDivisor 15832239145850268855227587517303977⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨10934, 10934, .largeDivisor 3396039212553985162299573153258557⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨10935, 10935, .largeDivisor 1243514907562792077004603864247⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨10936, 10936, .largeDivisor 3889896747456148213421724216077⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨10937, 10937, .topPrime 10937⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10937) (hi := 10937) (p := 10937)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk140

#print axioms B699LowIndex.I11TerminalData.Chunk140.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk140.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk140.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk140.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk140.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk140.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk140.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk140.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk140.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk140.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk140.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk140.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk140.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk140.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk140.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk140.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk140.witnesses_check
