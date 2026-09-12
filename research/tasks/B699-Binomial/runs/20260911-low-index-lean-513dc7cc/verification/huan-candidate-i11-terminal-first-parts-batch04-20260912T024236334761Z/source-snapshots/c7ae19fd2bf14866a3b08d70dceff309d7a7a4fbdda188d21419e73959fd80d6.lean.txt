import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk036
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨2760, 2763, .topPrime 2753⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2760) (hi := 2763) (p := 2753)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨2764, 2764, .largeDivisor 5452112883112986397861796411⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨2765, 2765, .largeDivisor 25336289280348583848887171557⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨2766, 2766, .largeDivisor 21197875423304350552335727927⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨2767, 2777, .topPrime 2767⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2767) (hi := 2777) (p := 2767)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨2778, 2787, .topPrime 2777⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2778) (hi := 2787) (p := 2777)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨2788, 2788, .largeDivisor 1927640025822980460976166611⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨2789, 2799, .topPrime 2789⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2789) (hi := 2799) (p := 2789)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨2800, 2807, .topPrime 2797⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2800) (hi := 2807) (p := 2797)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨2808, 2813, .topPrime 2803⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2808) (hi := 2813) (p := 2803)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨2814, 2814, .largeDivisor 8541022091547382170000753187⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨2815, 2815, .largeDivisor 6859622592783418205007737581⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨2816, 2816, .largeDivisor 403507211340201070882808093⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨2817, 2817, .largeDivisor 90019784140757615956036303⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨2818, 2818, .largeDivisor 316303929811290476015100127⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨2819, 2829, .topPrime 2819⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2819) (hi := 2829) (p := 2819)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk036

#print axioms B699LowIndex.I11TerminalData.Chunk036.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk036.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk036.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk036.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk036.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk036.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk036.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk036.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk036.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk036.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk036.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk036.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk036.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk036.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk036.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk036.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk036.witnesses_check
