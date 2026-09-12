import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk071
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨4975, 4983, .topPrime 4973⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4975) (hi := 4983) (p := 4973)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨4984, 4984, .largeDivisor 695180250624955110416398755563⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨4985, 4985, .largeDivisor 836061169931339258245053750659⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨4995, 5003, .topPrime 4993⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4995) (hi := 5003) (p := 4993)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨5004, 5010, .topPrime 5003⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5004) (hi := 5010) (p := 5003)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨5024, 5033, .topPrime 5023⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5024) (hi := 5033) (p := 5023)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨5034, 5034, .largeDivisor 387973490377651298932052381491⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨5047, 5049, .topPrime 5039⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5047) (hi := 5049) (p := 5039)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨5050, 5050, .largeDivisor 2550917330164354559565794689⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨5051, 5060, .topPrime 5051⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5051) (hi := 5060) (p := 5051)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨5075, 5075, .largeDivisor 4072516579564589755349449296637⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨5076, 5076, .largeDivisor 188951904481279090327170895303⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨5077, 5085, .topPrime 5077⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5077) (hi := 5085) (p := 5077)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨5096, 5097, .topPrime 5087⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5096) (hi := 5097) (p := 5087)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨5098, 5098, .largeDivisor 318483169005872080753167931787⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨5100, 5109, .topPrime 5099⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5100) (hi := 5109) (p := 5099)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk071

#print axioms B699LowIndex.I11TerminalData.Chunk071.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk071.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk071.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk071.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk071.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk071.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk071.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk071.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk071.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk071.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk071.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk071.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk071.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk071.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk071.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk071.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk071.witnesses_check
