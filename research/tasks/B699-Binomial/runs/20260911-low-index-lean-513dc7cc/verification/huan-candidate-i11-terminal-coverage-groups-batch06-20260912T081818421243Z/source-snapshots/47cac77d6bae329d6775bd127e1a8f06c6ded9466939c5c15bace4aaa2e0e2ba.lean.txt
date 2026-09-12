import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk220
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨44250, 44257, .topPrime 44249⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 44250) (hi := 44257) (p := 44249)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨44933, 44937, .topPrime 44927⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 44933) (hi := 44937) (p := 44927)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨44938, 44938, .largeDivisor 222994437031605730940856162765964804967⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨45441, 45449, .topPrime 45439⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 45441) (hi := 45449) (p := 45439)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨45450, 45450, .largeDivisor 55009184140370060210911707738685733627⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨45625, 45625, .largeDivisor 8672952777228754840736824853146527749⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨45626, 45626, .largeDivisor 9294690266684811583676853731142562951⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨45627, 45627, .largeDivisor 49583635309017642713483433320570761109⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨45628, 45628, .largeDivisor 12398897954051433685527446431982608939⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨45629, 45629, .largeDivisor 74411326416600403477171097362216817477⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨45962, 45962, .topPrime 45959⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 45962) (hi := 45962) (p := 45959)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨46656, 46658, .topPrime 46649⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 46656) (hi := 46658) (p := 46649)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨47000, 47001, .topPrime 46997⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 47000) (hi := 47001) (p := 46997)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨47385, 47385, .topPrime 47381⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 47385) (hi := 47385) (p := 47381)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨47625, 47626, .topPrime 47623⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 47625) (hi := 47626) (p := 47623)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨47628, 47633, .topPrime 47623⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 47628) (hi := 47633) (p := 47623)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk220

#print axioms B699LowIndex.I11TerminalData.Chunk220.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk220.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk220.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk220.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk220.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk220.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk220.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk220.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk220.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk220.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk220.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk220.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk220.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk220.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk220.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk220.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk220.witnesses_check
