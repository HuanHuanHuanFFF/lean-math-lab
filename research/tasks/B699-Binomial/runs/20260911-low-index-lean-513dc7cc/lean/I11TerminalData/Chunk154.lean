import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk154
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨12200, 12207, .topPrime 12197⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12200) (hi := 12207) (p := 12197)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨12208, 12211, .topPrime 12203⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12208) (hi := 12211) (p := 12203)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨12225, 12225, .largeDivisor 1353063271017762610187771587376107⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨12226, 12226, .largeDivisor 23699930589488776034607013506103559⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨12227, 12235, .topPrime 12227⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12227) (hi := 12235) (p := 12227)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨12250, 12251, .topPrime 12241⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12250) (hi := 12251) (p := 12241)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨12252, 12261, .topPrime 12251⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12252) (hi := 12261) (p := 12251)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨12262, 12263, .topPrime 12253⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12262) (hi := 12263) (p := 12253)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨12264, 12266, .topPrime 12263⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12264) (hi := 12266) (p := 12263)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨12285, 12285, .topPrime 12281⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12285) (hi := 12285) (p := 12281)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨12288, 12291, .topPrime 12281⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12288) (hi := 12291) (p := 12281)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨12292, 12295, .topPrime 12289⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12292) (hi := 12295) (p := 12289)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨12300, 12300, .largeDivisor 1654019605427284814303924986962809⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨12301, 12309, .topPrime 12301⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12301) (hi := 12309) (p := 12301)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨12320, 12320, .largeDivisor 2455625701848428101659731586134717⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨12321, 12321, .largeDivisor 2730911117652719797865290447943483⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk154

#print axioms B699LowIndex.I11TerminalData.Chunk154.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk154.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk154.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk154.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk154.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk154.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk154.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk154.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk154.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk154.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk154.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk154.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk154.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk154.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk154.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk154.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk154.witnesses_check
