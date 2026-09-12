import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk178
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨18306, 18311, .topPrime 18301⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 18306) (hi := 18311) (p := 18301)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨18312, 18314, .topPrime 18311⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 18312) (hi := 18314) (p := 18311)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨18375, 18381, .topPrime 18371⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 18375) (hi := 18381) (p := 18371)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨18382, 18385, .topPrime 18379⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 18382) (hi := 18385) (p := 18379)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨18432, 18434, .topPrime 18427⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 18432) (hi := 18434) (p := 18427)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨18473, 18473, .largeDivisor 100874851816226840149608742120549711⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨18474, 18474, .largeDivisor 16822491942921650913754282456219063⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨18475, 18475, .largeDivisor 21545617930362391724894999540980741⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨18476, 18476, .largeDivisor 80844199204178625001860278537603609⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨18477, 18477, .largeDivisor 125832555698391749149976612462244283⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨18478, 18478, .largeDivisor 62953754377941266605113658013682511⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨18500, 18503, .topPrime 18493⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 18500) (hi := 18503) (p := 18493)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨18504, 18506, .topPrime 18503⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 18504) (hi := 18506) (p := 18503)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨18624, 18627, .topPrime 18617⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 18624) (hi := 18627) (p := 18617)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨18628, 18628, .largeDivisor 19905952677784375779488098113481171⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨18629, 18629, .largeDivisor 119506281802914965000349268371266753⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk178

#print axioms B699LowIndex.I11TerminalData.Chunk178.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk178.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk178.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk178.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk178.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk178.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk178.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk178.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk178.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk178.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk178.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk178.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk178.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk178.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk178.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk178.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk178.witnesses_check
