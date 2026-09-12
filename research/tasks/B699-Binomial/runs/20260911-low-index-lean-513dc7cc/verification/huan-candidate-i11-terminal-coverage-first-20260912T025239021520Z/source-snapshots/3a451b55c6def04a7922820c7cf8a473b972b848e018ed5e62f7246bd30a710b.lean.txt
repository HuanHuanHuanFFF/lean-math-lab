import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk000
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨24, 33, .topPrime 23⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 24) (hi := 33) (p := 23)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨34, 41, .topPrime 31⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 34) (hi := 41) (p := 31)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨42, 51, .topPrime 41⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 42) (hi := 51) (p := 41)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨52, 57, .topPrime 47⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 52) (hi := 57) (p := 47)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨58, 63, .topPrime 53⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 58) (hi := 63) (p := 53)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨64, 71, .topPrime 61⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 64) (hi := 71) (p := 61)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨72, 81, .topPrime 71⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 72) (hi := 81) (p := 71)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨82, 89, .topPrime 79⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 82) (hi := 89) (p := 79)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨90, 99, .topPrime 89⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 90) (hi := 99) (p := 89)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨100, 107, .topPrime 97⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 100) (hi := 107) (p := 97)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨108, 117, .topPrime 107⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 108) (hi := 117) (p := 107)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨118, 123, .topPrime 113⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 118) (hi := 123) (p := 113)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨124, 124, .largeDivisor 140926216014727⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨125, 125, .largeDivisor 7417169263933⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨126, 126, .largeDivisor 322485620171⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨127, 137, .topPrime 127⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 127) (hi := 137) (p := 127)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk000

#print axioms B699LowIndex.I11TerminalData.Chunk000.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk000.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk000.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk000.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk000.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk000.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk000.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk000.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk000.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk000.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk000.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk000.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk000.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk000.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk000.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk000.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk000.witnesses_check
