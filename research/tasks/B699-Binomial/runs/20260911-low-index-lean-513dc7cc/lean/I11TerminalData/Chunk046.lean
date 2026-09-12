import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk046
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨3342, 3342, .largeDivisor 24343503629118754572319339577⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨3343, 3353, .topPrime 3343⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3343) (hi := 3353) (p := 3343)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨3354, 3357, .topPrime 3347⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3354) (hi := 3357) (p := 3347)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨3358, 3358, .largeDivisor 27939426367555216910194542367⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨3359, 3369, .topPrime 3359⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3359) (hi := 3369) (p := 3359)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨3370, 3371, .topPrime 3361⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3370) (hi := 3371) (p := 3361)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨3372, 3381, .topPrime 3371⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3372) (hi := 3381) (p := 3371)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨3382, 3383, .topPrime 3373⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3382) (hi := 3383) (p := 3373)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨3384, 3384, .largeDivisor 31037909603289411676859213⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨3385, 3385, .largeDivisor 87189480503846189648272561⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨3386, 3386, .largeDivisor 147611790493011599074525445773⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨3387, 3387, .largeDivisor 789828016429431731540944209847⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨3388, 3388, .largeDivisor 28300026647308628817427968431⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨3389, 3399, .topPrime 3389⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3389) (hi := 3399) (p := 3389)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨3400, 3401, .topPrime 3391⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3400) (hi := 3401) (p := 3391)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨3402, 3402, .largeDivisor 31991819121100222755475871⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk046

#print axioms B699LowIndex.I11TerminalData.Chunk046.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk046.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk046.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk046.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk046.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk046.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk046.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk046.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk046.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk046.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk046.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk046.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk046.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk046.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk046.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk046.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk046.witnesses_check
