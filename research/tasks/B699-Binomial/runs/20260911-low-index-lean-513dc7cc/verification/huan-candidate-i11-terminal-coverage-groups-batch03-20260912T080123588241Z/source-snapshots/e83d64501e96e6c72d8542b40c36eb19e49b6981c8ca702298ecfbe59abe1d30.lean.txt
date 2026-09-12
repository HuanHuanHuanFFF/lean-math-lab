import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk157
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨12740, 12749, .topPrime 12739⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12740) (hi := 12749) (p := 12739)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨12750, 12753, .topPrime 12743⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12750) (hi := 12753) (p := 12743)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨12754, 12754, .largeDivisor 479247296724291827696210501645429⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨12771, 12773, .topPrime 12763⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12771) (hi := 12773) (p := 12763)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨12774, 12774, .largeDivisor 255980804716665914303630507774884301⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨12775, 12775, .largeDivisor 5856032198156255639036360723148403⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨12776, 12776, .largeDivisor 10989522233202750006511243331219741⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨12777, 12777, .largeDivisor 7332661004419632191403945691315193⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨12778, 12778, .largeDivisor 3669489399015981050433133000846931⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨12798, 12801, .topPrime 12791⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12798) (hi := 12801) (p := 12791)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨12802, 12808, .topPrime 12799⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12802) (hi := 12808) (p := 12799)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨12832, 12835, .topPrime 12829⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12832) (hi := 12835) (p := 12829)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨12838, 12839, .topPrime 12829⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12838) (hi := 12839) (p := 12829)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨12840, 12840, .largeDivisor 1658675472607548930628783263852317⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨12841, 12842, .topPrime 12841⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12841) (hi := 12842) (p := 12841)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨12879, 12879, .largeDivisor 6639668675708455316667586431719383⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk157

#print axioms B699LowIndex.I11TerminalData.Chunk157.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk157.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk157.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk157.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk157.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk157.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk157.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk157.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk157.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk157.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk157.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk157.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk157.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk157.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk157.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk157.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk157.witnesses_check
