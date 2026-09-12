import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk224
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨52009, 52010, .topPrime 52009⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 52009) (hi := 52010) (p := 52009)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨52250, 52255, .topPrime 52249⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 52250) (hi := 52255) (p := 52249)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨52480, 52480, .largeDivisor 10534273498138488482596559235291126289⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨52481, 52481, .largeDivisor 948283374709787331140909134180640821223⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨52482, 52482, .largeDivisor 158080362077843185483210386626480632411⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨52483, 52483, .largeDivisor 8854356075700580473548912189239683063849⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨52484, 52484, .largeDivisor 6642159171532063140668645408210730174419⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨52485, 52485, .largeDivisor 885806873544638827960498162264334523013⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨52486, 52486, .largeDivisor 1582129570709314419258650600442587006563⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨52487, 52487, .largeDivisor 18989534593601597512835306212080965976097⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨52488, 52488, .largeDivisor 361863951704586723952118189151075061⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨52489, 52490, .topPrime 52489⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 52489) (hi := 52490) (p := 52489)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨52736, 52741, .topPrime 52733⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 52736) (hi := 52741) (p := 52733)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨53000, 53002, .topPrime 52999⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 53000) (hi := 53002) (p := 52999)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨53125, 53127, .topPrime 53117⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 53125) (hi := 53127) (p := 53117)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨53128, 53128, .largeDivisor 330841741575013289973576675586943397161⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk224

#print axioms B699LowIndex.I11TerminalData.Chunk224.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk224.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk224.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk224.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk224.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk224.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk224.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk224.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk224.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk224.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk224.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk224.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk224.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk224.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk224.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk224.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk224.witnesses_check
