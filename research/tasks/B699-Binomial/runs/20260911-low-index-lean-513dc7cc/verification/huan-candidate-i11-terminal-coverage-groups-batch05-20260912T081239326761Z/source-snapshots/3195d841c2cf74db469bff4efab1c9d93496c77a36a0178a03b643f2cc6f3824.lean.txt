import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk204
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨29160, 29163, .topPrime 29153⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 29160) (hi := 29163) (p := 29153)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨29164, 29164, .largeDivisor 973604906114237607069470732804879339⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨29165, 29165, .largeDivisor 1168766704540923639027829344402317593⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨29248, 29253, .topPrime 29243⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 29248) (hi := 29253) (p := 29243)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨29254, 29258, .topPrime 29251⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 29254) (hi := 29258) (p := 29251)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨29322, 29322, .largeDivisor 33224929097361493966843432501893283439⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨29376, 29376, .largeDivisor 1627408459598241878579123996675494583⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨29377, 29377, .largeDivisor 3256036117797286090514126925719267477⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨29378, 29378, .largeDivisor 14657650792008683844180818391630499531⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨29379, 29379, .largeDivisor 5585958446750244810135920710948261739⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨29380, 29380, .largeDivisor 279402531862716116520469458421566839⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨29381, 29381, .largeDivisor 8385215310172075811530044083640505921⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨29382, 29382, .largeDivisor 1398059288887428254028212382199705747⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨29383, 29385, .topPrime 29383⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 29383) (hi := 29385) (p := 29383)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨29500, 29500, .largeDivisor 715634519243395034961579222901934861⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨29501, 29510, .topPrime 29501⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 29501) (hi := 29510) (p := 29501)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk204

#print axioms B699LowIndex.I11TerminalData.Chunk204.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk204.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk204.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk204.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk204.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk204.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk204.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk204.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk204.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk204.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk204.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk204.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk204.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk204.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk204.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk204.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk204.witnesses_check
