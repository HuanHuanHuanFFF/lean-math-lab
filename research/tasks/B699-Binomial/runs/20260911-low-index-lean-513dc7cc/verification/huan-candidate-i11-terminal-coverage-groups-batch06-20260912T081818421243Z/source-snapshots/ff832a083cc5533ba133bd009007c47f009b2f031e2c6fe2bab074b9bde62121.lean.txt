import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk211
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨33135, 33135, .largeDivisor 78349507957401983716817307035737566299⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨33280, 33280, .largeDivisor 105321642075401383211747455363245599⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨33281, 33281, .largeDivisor 3160693931389930960027202039625046691⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨33375, 33375, .largeDivisor 60588571960816503451881338055354989723⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨33376, 33376, .largeDivisor 1352869357434685900544031076014969799⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨33377, 33382, .topPrime 33377⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 33377) (hi := 33382) (p := 33377)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨33536, 33543, .topPrime 33533⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 33536) (hi := 33543) (p := 33533)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨33544, 33544, .largeDivisor 1158323671954361363652953904845386499⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨33615, 33623, .topPrime 33613⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 33615) (hi := 33623) (p := 33613)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨33624, 33625, .topPrime 33623⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 33624) (hi := 33625) (p := 33623)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨34182, 34182, .largeDivisor 10260878540832369261974151396855585059⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨34183, 34186, .topPrime 34183⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 34183) (hi := 34186) (p := 34183)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨34304, 34310, .topPrime 34303⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 34304) (hi := 34310) (p := 34303)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨34432, 34435, .topPrime 34429⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 34432) (hi := 34435) (p := 34429)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨34506, 34510, .topPrime 34501⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 34506) (hi := 34510) (p := 34501)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨34750, 34757, .topPrime 34747⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 34750) (hi := 34757) (p := 34747)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk211

#print axioms B699LowIndex.I11TerminalData.Chunk211.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk211.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk211.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk211.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk211.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk211.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk211.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk211.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk211.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk211.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk211.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk211.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk211.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk211.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk211.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk211.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk211.witnesses_check
