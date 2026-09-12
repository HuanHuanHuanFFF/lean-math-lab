import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk228
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨58501, 58501, .largeDivisor 13639599095766820087220239218365383928141⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨58502, 58502, .largeDivisor 61389738906027889578593509367041982656109⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨58503, 58503, .largeDivisor 573078649308975526410795608504875875431681⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨58504, 58504, .largeDivisor 71648302572898261751699319320194848563621⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨58505, 58505, .largeDivisor 85994131542258955867948890692953115503429⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨58506, 58506, .largeDivisor 1462760251039365092548237391905091886929⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨58625, 58625, .largeDivisor 2094155625314358240471073529036769765533⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨58626, 58626, .largeDivisor 581819062667309117906191801081016730047⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨58627, 58627, .largeDivisor 4655425984304126061892494434553946749347⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨58628, 58628, .largeDivisor 31430022409924263329874846120339565870649⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨58629, 58629, .largeDivisor 146700962015082368821529524177166500074061⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨58630, 58630, .largeDivisor 14672849081260818649254125799667807194497⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨58631, 58634, .topPrime 58631⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 58631) (hi := 58634) (p := 58631)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨58752, 58752, .largeDivisor 34041373778739846547860398574672752399⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨58753, 58753, .largeDivisor 68095496701586674073965544157766103357⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨58754, 58754, .largeDivisor 306487116072086980890284325221800952707⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk228

#print axioms B699LowIndex.I11TerminalData.Chunk228.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk228.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk228.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk228.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk228.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk228.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk228.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk228.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk228.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk228.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk228.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk228.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk228.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk228.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk228.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk228.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk228.witnesses_check
