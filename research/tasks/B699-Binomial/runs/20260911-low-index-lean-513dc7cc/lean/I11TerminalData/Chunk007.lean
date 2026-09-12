import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk007
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨780, 783, .topPrime 773⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 780) (hi := 783) (p := 773)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨784, 784, .largeDivisor 15172848556831719559⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨785, 785, .largeDivisor 55398540079594883041⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨786, 786, .largeDivisor 234103508078288054141⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨787, 797, .topPrime 787⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 787) (hi := 797) (p := 787)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨798, 807, .topPrime 797⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 798) (hi := 807) (p := 797)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨808, 808, .largeDivisor 667327401920735963459⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨809, 819, .topPrime 809⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 809) (hi := 819) (p := 809)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨820, 821, .topPrime 811⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 820) (hi := 821) (p := 811)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨822, 831, .topPrime 821⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 822) (hi := 831) (p := 821)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨832, 839, .topPrime 829⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 832) (hi := 839) (p := 829)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨840, 849, .topPrime 839⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 840) (hi := 849) (p := 839)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨850, 850, .largeDivisor 467687046069664043909⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨851, 851, .largeDivisor 398001676205284101366559⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨852, 852, .largeDivisor 33600617135047765989329⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨853, 863, .topPrime 853⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 853) (hi := 863) (p := 853)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk007

#print axioms B699LowIndex.I11TerminalData.Chunk007.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk007.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk007.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk007.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk007.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk007.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk007.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk007.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk007.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk007.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk007.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk007.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk007.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk007.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk007.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk007.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk007.witnesses_check
