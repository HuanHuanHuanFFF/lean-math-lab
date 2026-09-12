import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk074
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨5250, 5250, .largeDivisor 880250973641324806009512817⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨5251, 5251, .largeDivisor 35283953149546538598137036657⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨5252, 5252, .largeDivisor 26518506288125131756928408203⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨5253, 5253, .largeDivisor 17716102445824916332079985793⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨5254, 5254, .largeDivisor 434955150702636029947421707273⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨5255, 5255, .largeDivisor 1046082067250504502230526806279⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨5256, 5256, .largeDivisor 72796940809615661261037613783⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨5257, 5257, .largeDivisor 20842738295090111173099217671⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨5258, 5258, .largeDivisor 93988951934462954157937981573⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨5265, 5271, .topPrime 5261⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5265) (hi := 5271) (p := 5261)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨5272, 5272, .largeDivisor 716899266497642308897947462293⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨5273, 5275, .topPrime 5273⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5273) (hi := 5275) (p := 5273)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨5280, 5285, .topPrime 5279⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5280) (hi := 5285) (p := 5279)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨5292, 5292, .largeDivisor 427096494019283386759227682253⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨5293, 5293, .largeDivisor 855971882939820888344033366969⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨5294, 5294, .largeDivisor 3859893652711594363622923888189⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk074

#print axioms B699LowIndex.I11TerminalData.Chunk074.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk074.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk074.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk074.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk074.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk074.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk074.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk074.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk074.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk074.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk074.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk074.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk074.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk074.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk074.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk074.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk074.witnesses_check
