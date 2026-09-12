import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk119
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨8774, 8774, .largeDivisor 376659290351723535032013142496083⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨8775, 8775, .largeDivisor 15643996084895865672256136908783⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨8776, 8776, .largeDivisor 9789768228825307839398164397567⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨8777, 8777, .largeDivisor 176436952247227365310878211329457⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨8778, 8778, .largeDivisor 4206150680925119122844022603839⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨8779, 8785, .topPrime 8779⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8779) (hi := 8785) (p := 8779)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨8800, 8800, .largeDivisor 36318589468764566282897034606841⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨8801, 8801, .largeDivisor 1090921180595894019985586353497637⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨8802, 8802, .largeDivisor 20227522743388775481475438018441⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨8803, 8810, .topPrime 8803⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8803) (hi := 8810) (p := 8803)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨8825, 8831, .topPrime 8821⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8825) (hi := 8831) (p := 8821)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨8832, 8839, .topPrime 8831⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8832) (hi := 8839) (p := 8831)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨8856, 8859, .topPrime 8849⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8856) (hi := 8859) (p := 8849)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨8860, 8860, .largeDivisor 730593305961844654399394080174769⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨8864, 8866, .topPrime 8863⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8864) (hi := 8866) (p := 8863)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨8869, 8877, .topPrime 8867⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8869) (hi := 8877) (p := 8867)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk119

#print axioms B699LowIndex.I11TerminalData.Chunk119.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk119.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk119.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk119.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk119.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk119.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk119.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk119.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk119.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk119.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk119.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk119.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk119.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk119.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk119.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk119.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk119.witnesses_check
