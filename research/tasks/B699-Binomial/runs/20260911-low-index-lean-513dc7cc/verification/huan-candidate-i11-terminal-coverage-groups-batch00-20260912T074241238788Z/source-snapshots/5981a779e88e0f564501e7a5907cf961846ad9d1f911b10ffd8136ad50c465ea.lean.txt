import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk070
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨4887, 4887, .topPrime 4877⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4887) (hi := 4887) (p := 4877)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨4888, 4888, .largeDivisor 311756459344440145533639564397⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨4889, 4890, .topPrime 4889⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4889) (hi := 4890) (p := 4889)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨4896, 4897, .topPrime 4889⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4896) (hi := 4897) (p := 4889)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨4900, 4900, .largeDivisor 16471972802942625263723735033⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨4901, 4901, .largeDivisor 495270789614857708082883591391⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨4902, 4902, .largeDivisor 82730777983099314558109976317⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨4903, 4910, .topPrime 4903⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4903) (hi := 4910) (p := 4903)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨4914, 4919, .topPrime 4909⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4914) (hi := 4919) (p := 4909)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨4920, 4922, .topPrime 4919⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4920) (hi := 4922) (p := 4919)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨4928, 4929, .topPrime 4919⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4928) (hi := 4929) (p := 4919)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨4930, 4930, .largeDivisor 30829934566153995973126421671⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨4931, 4935, .topPrime 4931⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4931) (hi := 4935) (p := 4931)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨4944, 4953, .topPrime 4943⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4944) (hi := 4953) (p := 4943)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨4954, 4960, .topPrime 4951⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4954) (hi := 4960) (p := 4951)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨4968, 4970, .topPrime 4967⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4968) (hi := 4970) (p := 4967)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk070

#print axioms B699LowIndex.I11TerminalData.Chunk070.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk070.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk070.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk070.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk070.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk070.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk070.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk070.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk070.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk070.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk070.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk070.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk070.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk070.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk070.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk070.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk070.witnesses_check
