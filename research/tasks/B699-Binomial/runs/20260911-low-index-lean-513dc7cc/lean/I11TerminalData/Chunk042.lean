import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk042
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨3137, 3147, .topPrime 3137⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3137) (hi := 3147) (p := 3137)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨3148, 3148, .largeDivisor 617232533532646065801975062569⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨3149, 3149, .largeDivisor 3716377147407844094092580252447⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨3150, 3150, .largeDivisor 1183936650974145936314934773⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨3151, 3151, .largeDivisor 23761683995028877995722034839⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨3152, 3152, .largeDivisor 13412755722122317951739945167⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨3153, 3153, .largeDivisor 8973142115818304371278601127⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨3154, 3154, .largeDivisor 31515913400101260564602124671⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨3155, 3155, .largeDivisor 151805659202014468826442295171⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨3156, 3156, .largeDivisor 63473590413560898730293042337⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨3157, 3157, .largeDivisor 18198721726965012922671431719⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨3158, 3158, .largeDivisor 27393500101885372168635072149⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨3159, 3159, .largeDivisor 452497460386924826165509451⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨3160, 3160, .largeDivisor 11351952801069247782494521⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨3161, 3161, .largeDivisor 35883522804179892240465180881⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨3162, 3162, .largeDivisor 6001465096097366934536702737⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk042

#print axioms B699LowIndex.I11TerminalData.Chunk042.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk042.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk042.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk042.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk042.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk042.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk042.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk042.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk042.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk042.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk042.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk042.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk042.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk042.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk042.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk042.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk042.witnesses_check
