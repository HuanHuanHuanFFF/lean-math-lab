import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk201
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨27010, 27010, .largeDivisor 323032709525231212159698991268426051⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨27135, 27137, .topPrime 27127⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 27135) (hi := 27137) (p := 27127)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨27138, 27138, .largeDivisor 10633751019385508939569858302381324097⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨27139, 27139, .largeDivisor 12157786110928227118464270315049364059⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨27140, 27140, .largeDivisor 1824407359563154285055403606935971141⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨27141, 27141, .largeDivisor 6083823583475067016917153126409779179⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨27142, 27142, .largeDivisor 3043145105279574453082550775073057139⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨27143, 27145, .topPrime 27143⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 27143) (hi := 27145) (p := 27143)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨27378, 27378, .largeDivisor 714081154084453910903190473855603257⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨27379, 27379, .largeDivisor 5714945313556931782115887747352400343⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨27380, 27380, .largeDivisor 2572759005017901877578642001356605087⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨27381, 27381, .largeDivisor 60055169920200487050282009070030011839⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨27382, 27382, .largeDivisor 30039652602296769142720798881216648719⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨27383, 27383, .largeDivisor 360620695838970815184183970085206265617⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨27384, 27384, .largeDivisor 2147414365314442804041281084422190527⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨27385, 27385, .largeDivisor 859310913920304174598823445560045117⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk201

#print axioms B699LowIndex.I11TerminalData.Chunk201.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk201.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk201.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk201.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk201.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk201.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk201.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk201.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk201.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk201.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk201.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk201.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk201.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk201.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk201.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk201.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk201.witnesses_check
