import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk105
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨7550, 7559, .topPrime 7549⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7550) (hi := 7559) (p := 7549)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨7560, 7562, .topPrime 7559⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7560) (hi := 7562) (p := 7559)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨7568, 7570, .topPrime 7561⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7568) (hi := 7570) (p := 7561)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨7575, 7578, .topPrime 7573⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7575) (hi := 7578) (p := 7573)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨7584, 7585, .topPrime 7583⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7584) (hi := 7585) (p := 7583)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨7587, 7593, .topPrime 7583⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7587) (hi := 7593) (p := 7583)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨7594, 7597, .topPrime 7591⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7594) (hi := 7597) (p := 7591)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨7600, 7601, .topPrime 7591⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7600) (hi := 7601) (p := 7591)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨7602, 7602, .largeDivisor 10363344536274776111169575725813⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨7603, 7610, .topPrime 7603⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7603) (hi := 7610) (p := 7603)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨7616, 7617, .topPrime 7607⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7616) (hi := 7617) (p := 7607)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨7618, 7618, .largeDivisor 10311366405327492926242236536069⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨7619, 7619, .largeDivisor 247830601394921667523784227660283⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨7620, 7620, .largeDivisor 28955369252212559131113704611643⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨7621, 7626, .topPrime 7621⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7621) (hi := 7626) (p := 7621)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨7632, 7632, .largeDivisor 5050501923424714716619371887747⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk105

#print axioms B699LowIndex.I11TerminalData.Chunk105.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk105.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk105.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk105.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk105.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk105.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk105.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk105.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk105.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk105.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk105.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk105.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk105.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk105.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk105.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk105.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk105.witnesses_check
