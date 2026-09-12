import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk034
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨2579, 2589, .topPrime 2579⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2579) (hi := 2589) (p := 2579)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨2590, 2590, .largeDivisor 2054269597116239949023341777⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨2591, 2601, .topPrime 2591⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2591) (hi := 2601) (p := 2591)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨2602, 2603, .topPrime 2593⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2602) (hi := 2603) (p := 2593)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨2604, 2604, .largeDivisor 311431465827184474018532129⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨2605, 2605, .largeDivisor 125100843250549815700582297⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨2606, 2606, .largeDivisor 942233518817724912473171867⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨2607, 2607, .largeDivisor 1261634711637292679413230127⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨2608, 2608, .largeDivisor 3880121848997711448006726617⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨2609, 2619, .topPrime 2609⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2609) (hi := 2619) (p := 2609)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨2620, 2627, .topPrime 2617⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2620) (hi := 2627) (p := 2617)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨2628, 2631, .topPrime 2621⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2628) (hi := 2631) (p := 2621)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨2632, 2632, .largeDivisor 30659307695641992334082219⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨2633, 2643, .topPrime 2633⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2633) (hi := 2643) (p := 2633)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨2644, 2644, .largeDivisor 45129747418504412867384895493⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨2645, 2645, .largeDivisor 54381859645532652407395466323⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk034

#print axioms B699LowIndex.I11TerminalData.Chunk034.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk034.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk034.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk034.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk034.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk034.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk034.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk034.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk034.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk034.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk034.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk034.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk034.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk034.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk034.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk034.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk034.witnesses_check
