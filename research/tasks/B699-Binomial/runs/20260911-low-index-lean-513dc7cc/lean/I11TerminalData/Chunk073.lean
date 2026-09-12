import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk073
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨5158, 5162, .topPrime 5153⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5158) (hi := 5162) (p := 5153)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨5175, 5178, .topPrime 5171⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5175) (hi := 5178) (p := 5171)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨5184, 5189, .topPrime 5179⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5184) (hi := 5189) (p := 5179)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨5190, 5194, .topPrime 5189⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5190) (hi := 5194) (p := 5189)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨5200, 5207, .topPrime 5197⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5200) (hi := 5207) (p := 5197)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨5208, 5208, .largeDivisor 1128044423032431853263014805677⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨5209, 5210, .topPrime 5209⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5209) (hi := 5210) (p := 5209)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨5216, 5219, .topPrime 5209⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5216) (hi := 5219) (p := 5209)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨5220, 5220, .largeDivisor 899885166181647353084996089991⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨5221, 5221, .largeDivisor 9017851156687871075732753523691⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨5225, 5225, .largeDivisor 701553679961630671762671248377⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨5226, 5226, .largeDivisor 4101028558701881309431454076083⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨5232, 5235, .topPrime 5231⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5232) (hi := 5235) (p := 5231)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨5238, 5247, .topPrime 5237⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5238) (hi := 5247) (p := 5237)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨5248, 5248, .largeDivisor 85221676612301269554645123239⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨5249, 5249, .largeDivisor 4611634850906900658683837648263⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk073

#print axioms B699LowIndex.I11TerminalData.Chunk073.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk073.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk073.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk073.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk073.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk073.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk073.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk073.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk073.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk073.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk073.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk073.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk073.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk073.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk073.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk073.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk073.witnesses_check
