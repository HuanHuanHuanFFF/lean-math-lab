import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk198
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨25029, 25029, .largeDivisor 3105074526808566569359392250767034891⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨25030, 25030, .largeDivisor 310643972205197734645931444249166167⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨25031, 25034, .topPrime 25031⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 25031) (hi := 25034) (p := 25031)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨25039, 25039, .topPrime 25037⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 25039) (hi := 25039) (p := 25037)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨25280, 25280, .largeDivisor 222774390759376225768784738464659797⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨25281, 25281, .largeDivisor 1733443943609661546217496759964624293⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨25282, 25282, .largeDivisor 867099239886420466373921749939172003⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨25353, 25354, .topPrime 25349⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 25353) (hi := 25354) (p := 25349)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨25382, 25383, .topPrime 25373⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 25382) (hi := 25383) (p := 25373)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨25384, 25384, .largeDivisor 28538897492283388874369080832994589⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨25385, 25385, .largeDivisor 34261523425945321663554462849163757⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨25600, 25600, .largeDivisor 15990017857671301015884842447810399⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨25601, 25606, .topPrime 25601⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 25601) (hi := 25606) (p := 25601)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨25728, 25728, .largeDivisor 124104260805665617928767745345012707⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨25729, 25729, .largeDivisor 1738202790565580121768788960251405519⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨25730, 25730, .largeDivisor 521683865639243864844406158255787519⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk198

#print axioms B699LowIndex.I11TerminalData.Chunk198.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk198.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk198.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk198.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk198.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk198.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk198.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk198.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk198.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk198.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk198.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk198.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk198.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk198.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk198.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk198.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk198.witnesses_check
