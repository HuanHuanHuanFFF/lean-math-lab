import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk147
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨11616, 11616, .largeDivisor 917955044225754296797774721743189⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨11617, 11623, .topPrime 11617⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11617) (hi := 11623) (p := 11617)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨11625, 11626, .topPrime 11621⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11625) (hi := 11626) (p := 11621)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨11650, 11650, .largeDivisor 199071575853074618329149614191897⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨11651, 11651, .largeDivisor 23911164229527550290236310875771051⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨11652, 11652, .largeDivisor 13961359270517890157438038400705767⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨11653, 11653, .largeDivisor 27949101456681837142179258114314431⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨11654, 11654, .largeDivisor 41963260548334208973841416395802677⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨11655, 11655, .largeDivisor 533370195908061055318492753914359⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨11656, 11656, .largeDivisor 333671264679280789007747506420447⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨11657, 11658, .topPrime 11657⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11657) (hi := 11658) (p := 11657)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨11664, 11667, .topPrime 11657⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11664) (hi := 11667) (p := 11657)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨11668, 11668, .largeDivisor 142844919167664085327142193842329⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨11669, 11669, .largeDivisor 122554029980697905424779226523501⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨11670, 11670, .largeDivisor 4088988563555320800260667219971⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨11671, 11671, .largeDivisor 81856921998720667341067319252627⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk147

#print axioms B699LowIndex.I11TerminalData.Chunk147.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk147.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk147.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk147.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk147.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk147.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk147.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk147.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk147.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk147.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk147.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk147.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk147.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk147.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk147.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk147.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk147.witnesses_check
