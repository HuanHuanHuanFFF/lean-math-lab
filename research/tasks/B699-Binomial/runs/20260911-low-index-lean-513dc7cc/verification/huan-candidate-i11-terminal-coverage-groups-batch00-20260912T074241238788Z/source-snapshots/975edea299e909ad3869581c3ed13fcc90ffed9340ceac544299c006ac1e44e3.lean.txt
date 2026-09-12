import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk079
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨5600, 5601, .topPrime 5591⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5600) (hi := 5601) (p := 5591)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨5602, 5602, .largeDivisor 1258961989327496408594491331573⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨5603, 5603, .largeDivisor 30274523717604988744012596269543⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨5604, 5604, .largeDivisor 17694871809914305060643157018619⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨5605, 5605, .largeDivisor 7091866749701085439035030038567⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨5606, 5606, .largeDivisor 53293572384482955725509890611537⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨5607, 5607, .largeDivisor 3390370223172968591544231783007⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨5608, 5608, .largeDivisor 424629181069189026741559135231⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨5609, 5609, .largeDivisor 7658344297804119778113843053089⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨5610, 5610, .largeDivisor 255779672028821289249381791557⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨5616, 5616, .largeDivisor 1437820568941735166775260278007⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨5617, 5617, .largeDivisor 2881283673116563122289203346973⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨5618, 5618, .largeDivisor 90938492559375570904610923614013⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨5619, 5619, .largeDivisor 242978311788459977609609500612049⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨5620, 5620, .largeDivisor 12172741239535969639561467226241⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨5621, 5621, .largeDivisor 52271182969772104922822771030329⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk079

#print axioms B699LowIndex.I11TerminalData.Chunk079.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk079.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk079.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk079.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk079.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk079.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk079.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk079.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk079.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk079.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk079.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk079.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk079.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk079.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk079.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk079.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk079.witnesses_check
