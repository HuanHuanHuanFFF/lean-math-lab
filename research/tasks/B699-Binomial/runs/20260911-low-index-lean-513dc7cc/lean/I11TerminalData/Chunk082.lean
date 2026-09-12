import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk082
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨5776, 5776, .largeDivisor 3526111981616383993552471543297⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨5777, 5777, .largeDivisor 21197033213109105443030830494929⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨5778, 5778, .largeDivisor 393286380059419851292578266509⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨5779, 5788, .topPrime 5779⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5779) (hi := 5788) (p := 5779)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨5792, 5792, .topPrime 5791⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5792) (hi := 5792) (p := 5791)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨5800, 5801, .topPrime 5791⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5800) (hi := 5801) (p := 5791)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨5802, 5802, .topPrime 5801⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5802) (hi := 5802) (p := 5801)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨5805, 5811, .topPrime 5801⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5805) (hi := 5811) (p := 5801)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨5812, 5815, .topPrime 5807⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5812) (hi := 5815) (p := 5807)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨5825, 5831, .topPrime 5821⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5825) (hi := 5831) (p := 5821)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨5832, 5837, .topPrime 5827⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5832) (hi := 5837) (p := 5827)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨5838, 5838, .largeDivisor 19984575868352222999717492023⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨5839, 5842, .topPrime 5839⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5839) (hi := 5842) (p := 5839)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨5850, 5850, .topPrime 5849⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5850) (hi := 5850) (p := 5849)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨5856, 5861, .topPrime 5851⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5856) (hi := 5861) (p := 5851)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨5862, 5866, .topPrime 5861⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5862) (hi := 5866) (p := 5861)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk082

#print axioms B699LowIndex.I11TerminalData.Chunk082.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk082.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk082.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk082.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk082.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk082.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk082.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk082.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk082.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk082.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk082.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk082.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk082.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk082.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk082.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk082.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk082.witnesses_check
