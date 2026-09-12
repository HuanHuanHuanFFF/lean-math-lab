import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk124
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨9250, 9251, .topPrime 9241⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9250) (hi := 9251) (p := 9241)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨9252, 9252, .largeDivisor 294137864998502390005662274830779⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨9253, 9253, .largeDivisor 588975906693603682043365727982947⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨9254, 9254, .largeDivisor 379077969157226907332682323463221⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨9255, 9255, .largeDivisor 101207748580704890447540023183387⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨9256, 9256, .largeDivisor 63330105520754763790050733814591⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨9257, 9258, .topPrime 9257⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9257) (hi := 9258) (p := 9257)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨9261, 9267, .topPrime 9257⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9261) (hi := 9267) (p := 9257)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨9268, 9268, .largeDivisor 43700428122845941446679431744119⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨9269, 9269, .largeDivisor 262514107758042145994343261721477⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨9270, 9270, .largeDivisor 2920288702784138787927136403209⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨9271, 9271, .largeDivisor 58475154564820195902532357654753⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨9280, 9285, .topPrime 9277⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9280) (hi := 9285) (p := 9277)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨9288, 9290, .topPrime 9283⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9288) (hi := 9290) (p := 9283)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨9310, 9310, .largeDivisor 77162594788730818504363936968739⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨9312, 9321, .topPrime 9311⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9312) (hi := 9321) (p := 9311)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk124

#print axioms B699LowIndex.I11TerminalData.Chunk124.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk124.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk124.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk124.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk124.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk124.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk124.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk124.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk124.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk124.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk124.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk124.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk124.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk124.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk124.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk124.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk124.witnesses_check
