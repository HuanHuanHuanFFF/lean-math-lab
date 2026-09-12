import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk045
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨3288, 3288, .largeDivisor 35602664226882528475629059033⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨3289, 3289, .largeDivisor 71444272508979033652436836583⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨3290, 3290, .largeDivisor 3072169083185740696856844757⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨3291, 3291, .largeDivisor 82199255713530671815901431669⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨3292, 3292, .largeDivisor 20618709982394313594784175027⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨3293, 3293, .largeDivisor 124126895744103244364943854413⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨3294, 3294, .largeDivisor 113011054334183550839725001779⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨3295, 3295, .largeDivisor 90711674550824555424334684741⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨3296, 3296, .largeDivisor 127990444914177112448033870251⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨3297, 3297, .largeDivisor 12230371181695560958211392349⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨3298, 3298, .largeDivisor 6135650160820194712531361723⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨3299, 3309, .topPrime 3299⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3299) (hi := 3309) (p := 3299)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨3310, 3317, .topPrime 3307⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3310) (hi := 3317) (p := 3307)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨3318, 3323, .topPrime 3313⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3318) (hi := 3323) (p := 3313)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨3324, 3333, .topPrime 3323⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3324) (hi := 3333) (p := 3323)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨3334, 3341, .topPrime 3331⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3334) (hi := 3341) (p := 3331)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk045

#print axioms B699LowIndex.I11TerminalData.Chunk045.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk045.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk045.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk045.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk045.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk045.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk045.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk045.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk045.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk045.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk045.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk045.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk045.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk045.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk045.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk045.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk045.witnesses_check
