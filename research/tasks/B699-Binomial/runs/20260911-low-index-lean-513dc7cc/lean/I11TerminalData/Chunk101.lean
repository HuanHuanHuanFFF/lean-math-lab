import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk101
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨7268, 7268, .largeDivisor 221197919342886223582704471635309⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨7269, 7269, .largeDivisor 147688773372227423461254597622583⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨7270, 7270, .largeDivisor 103538802547357123294437890522293⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨7271, 7271, .largeDivisor 6221740771254823499783949603203243⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨7272, 7272, .largeDivisor 86543977123913672149590815304163⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨7273, 7273, .largeDivisor 24764305213920767106423810823747⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨7280, 7280, .largeDivisor 27030169778541617880759135165181⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨7281, 7281, .largeDivisor 30078964719174922786154250823427⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨7282, 7282, .largeDivisor 15062234980403781304413096857117⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨7283, 7285, .topPrime 7283⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7283) (hi := 7285) (p := 7283)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨7290, 7290, .topPrime 7283⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7290) (hi := 7290) (p := 7283)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨7296, 7296, .largeDivisor 356112837607932169822104264607⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨7297, 7307, .topPrime 7297⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7297) (hi := 7307) (p := 7297)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨7308, 7310, .topPrime 7307⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7308) (hi := 7310) (p := 7307)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨7317, 7319, .topPrime 7309⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7317) (hi := 7319) (p := 7309)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨7320, 7320, .largeDivisor 111652634317324711559534246853413⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk101

#print axioms B699LowIndex.I11TerminalData.Chunk101.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk101.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk101.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk101.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk101.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk101.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk101.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk101.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk101.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk101.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk101.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk101.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk101.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk101.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk101.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk101.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk101.witnesses_check
