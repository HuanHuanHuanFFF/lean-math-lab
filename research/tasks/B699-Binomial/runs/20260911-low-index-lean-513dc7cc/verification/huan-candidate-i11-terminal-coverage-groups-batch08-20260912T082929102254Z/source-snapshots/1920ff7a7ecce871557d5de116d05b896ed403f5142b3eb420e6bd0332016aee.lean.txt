import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk248
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨288126, 288126, .largeDivisor 2048420843336914894087088809404244278305057191⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨288127, 288127, .largeDivisor 1170570885790317149419243117131823275893243819⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨288128, 288128, .largeDivisor 740780169781839725426684356666779362956337317⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨288129, 288129, .largeDivisor 493872301254050304036228529056480264033593909⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨288130, 288130, .largeDivisor 49389115664128194982614310780283028358421143⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨302535, 302535, .largeDivisor 19863212044901105292036885573155881338871939⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨302536, 302536, .largeDivisor 62074794636974225173866531833735721394274863⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨306180, 306180, .largeDivisor 283370398340881212391954301343749490746866853⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨306181, 306181, .largeDivisor 2833805792024344334565142239270031774059066529⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨306182, 306182, .largeDivisor 12752584217842937726650171685002158626722612481⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨306183, 306183, .largeDivisor 17004056515387012101951101633630839026454888787⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨306184, 306184, .largeDivisor 14879083998568945658976531535333526190802440809⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨306185, 306185, .largeDivisor 17855542276359844898366533963613222742875013577⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨306186, 306186, .largeDivisor 74400765730784620315876753057658722119021378121⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨349191, 349194, .topPrime 349187⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 349191) (hi := 349194) (p := 349187)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨354304, 354304, .topPrime 354301⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 354304) (hi := 354304) (p := 354301)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk248

#print axioms B699LowIndex.I11TerminalData.Chunk248.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk248.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk248.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk248.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk248.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk248.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk248.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk248.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk248.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk248.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk248.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk248.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk248.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk248.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk248.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk248.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk248.witnesses_check
