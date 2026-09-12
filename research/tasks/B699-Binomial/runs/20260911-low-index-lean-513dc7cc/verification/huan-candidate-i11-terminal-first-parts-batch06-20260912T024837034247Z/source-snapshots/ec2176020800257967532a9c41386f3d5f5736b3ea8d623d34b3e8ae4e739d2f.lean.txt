import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk050
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨3571, 3581, .topPrime 3571⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3571) (hi := 3581) (p := 3571)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨3582, 3591, .topPrime 3581⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3582) (hi := 3591) (p := 3581)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨3592, 3593, .topPrime 3583⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3592) (hi := 3593) (p := 3583)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨3594, 3603, .topPrime 3593⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3594) (hi := 3603) (p := 3593)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨3604, 3604, .largeDivisor 273943818443058398029671895853⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨3605, 3605, .largeDivisor 47105531385033414018457771741⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨3606, 3606, .largeDivisor 39374720949103034527250515739⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨3607, 3617, .topPrime 3607⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3607) (hi := 3617) (p := 3607)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨3618, 3627, .topPrime 3617⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3618) (hi := 3627) (p := 3617)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨3628, 3633, .topPrime 3623⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3628) (hi := 3633) (p := 3623)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨3634, 3641, .topPrime 3631⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3634) (hi := 3641) (p := 3631)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨3642, 3647, .topPrime 3637⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3642) (hi := 3647) (p := 3637)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨3648, 3653, .topPrime 3643⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3648) (hi := 3653) (p := 3643)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨3654, 3654, .largeDivisor 46860771465923142366783833⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨3655, 3655, .largeDivisor 37601782592304958364565293⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨3656, 3656, .largeDivisor 17184014644683365972606338901⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk050

#print axioms B699LowIndex.I11TerminalData.Chunk050.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk050.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk050.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk050.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk050.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk050.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk050.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk050.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk050.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk050.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk050.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk050.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk050.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk050.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk050.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk050.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk050.witnesses_check
