import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk123
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨9122, 9122, .largeDivisor 577922281831048392632733740828479⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨9123, 9123, .largeDivisor 1542986531210024725194155668006501⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨9124, 9124, .largeDivisor 386212254766823921668810389413237⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨9125, 9125, .largeDivisor 909467567676714396187843820231171⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨9126, 9126, .largeDivisor 84311584716053062510008560405413⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨9127, 9135, .topPrime 9127⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9127) (hi := 9135) (p := 9127)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨9152, 9161, .topPrime 9151⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9152) (hi := 9161) (p := 9151)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨9162, 9163, .topPrime 9161⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9162) (hi := 9163) (p := 9161)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨9180, 9183, .topPrime 9173⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9180) (hi := 9183) (p := 9173)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨9184, 9190, .topPrime 9181⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9184) (hi := 9190) (p := 9181)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨9207, 9210, .topPrime 9203⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9207) (hi := 9210) (p := 9203)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨9212, 9219, .topPrime 9209⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9212) (hi := 9219) (p := 9209)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨9220, 9220, .largeDivisor 2708541135337839059658205408733⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨9221, 9222, .topPrime 9221⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9221) (hi := 9222) (p := 9221)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨9225, 9226, .topPrime 9221⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9225) (hi := 9226) (p := 9221)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨9234, 9235, .topPrime 9227⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9234) (hi := 9235) (p := 9227)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk123

#print axioms B699LowIndex.I11TerminalData.Chunk123.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk123.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk123.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk123.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk123.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk123.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk123.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk123.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk123.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk123.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk123.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk123.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk123.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk123.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk123.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk123.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk123.witnesses_check
