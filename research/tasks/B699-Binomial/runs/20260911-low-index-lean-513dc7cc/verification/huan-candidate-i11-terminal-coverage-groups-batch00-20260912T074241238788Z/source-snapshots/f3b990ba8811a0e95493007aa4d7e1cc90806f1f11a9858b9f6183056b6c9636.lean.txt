import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk069
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨4832, 4841, .topPrime 4831⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4832) (hi := 4841) (p := 4831)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨4842, 4842, .largeDivisor 983255716092111521159202075259⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨4850, 4850, .largeDivisor 2162792566963116657547735870399⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨4851, 4851, .largeDivisor 196617506087556059777066897309⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨4852, 4852, .largeDivisor 49266067937245507231890548737⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨4853, 4853, .largeDivisor 888803820444061139763438040969⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨4854, 4854, .largeDivisor 148470429638497927331947424147⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨4855, 4855, .largeDivisor 833322469242667557452722247669⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨4856, 4856, .largeDivisor 1566027055202164728711462552121⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨4857, 4857, .largeDivisor 1046387867260546717203408118813⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨4858, 4858, .largeDivisor 74911613356593709690444113313⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨4859, 4859, .largeDivisor 3603916131680087479067999471167⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨4860, 4860, .largeDivisor 743228734106019278009486383⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨4861, 4861, .topPrime 4861⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4861) (hi := 4861) (p := 4861)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨4864, 4870, .topPrime 4861⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4864) (hi := 4870) (p := 4861)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨4880, 4885, .topPrime 4877⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4880) (hi := 4885) (p := 4877)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk069

#print axioms B699LowIndex.I11TerminalData.Chunk069.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk069.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk069.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk069.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk069.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk069.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk069.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk069.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk069.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk069.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk069.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk069.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk069.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk069.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk069.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk069.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk069.witnesses_check
