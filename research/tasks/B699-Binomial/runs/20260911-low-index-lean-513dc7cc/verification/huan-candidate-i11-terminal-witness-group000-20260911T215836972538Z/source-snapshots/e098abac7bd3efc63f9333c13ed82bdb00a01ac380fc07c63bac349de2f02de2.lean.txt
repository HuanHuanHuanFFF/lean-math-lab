import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk002
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨262, 267, .topPrime 257⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 262) (hi := 267) (p := 257)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨268, 273, .topPrime 263⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 268) (hi := 273) (p := 263)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨274, 281, .topPrime 271⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 274) (hi := 281) (p := 271)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨282, 291, .topPrime 281⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 282) (hi := 291) (p := 281)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨292, 293, .topPrime 283⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 292) (hi := 293) (p := 283)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨294, 303, .topPrime 293⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 294) (hi := 303) (p := 293)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨304, 304, .largeDivisor 1211801735253811⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨305, 305, .largeDivisor 73919905850482471⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨306, 306, .largeDivisor 21298955923020373⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨307, 317, .topPrime 307⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 307) (hi := 317) (p := 307)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨318, 327, .topPrime 317⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 318) (hi := 327) (p := 317)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨328, 328, .largeDivisor 11569892263412821⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨329, 329, .largeDivisor 10260093139252879⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .special330
theorem w13_check : witnessCheck w13 = true := rfl

def w14 : Witness := .good ⟨331, 341, .topPrime 331⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 331) (hi := 341) (p := 331)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨342, 347, .topPrime 337⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 342) (hi := 347) (p := 337)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk002

#print axioms B699LowIndex.I11TerminalData.Chunk002.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk002.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk002.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk002.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk002.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk002.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk002.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk002.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk002.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk002.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk002.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk002.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk002.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk002.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk002.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk002.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk002.witnesses_check
