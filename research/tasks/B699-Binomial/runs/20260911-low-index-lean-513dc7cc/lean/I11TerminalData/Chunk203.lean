import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk203
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨28680, 28680, .largeDivisor 4650492300596886717927484458391607⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨28681, 28681, .largeDivisor 46522765843536556664415131409532501⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨28682, 28682, .largeDivisor 69810922356613765734474981641111813⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨28755, 28760, .topPrime 28753⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 28755) (hi := 28760) (p := 28753)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨28998, 28998, .largeDivisor 117607215417800949678345093823762314439⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨28999, 28999, .largeDivisor 470607374072141539909249258423524680063⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨29000, 29000, .largeDivisor 4237073532471935627869676651438129687⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨29001, 29001, .largeDivisor 2018419644133750638871343034024165953⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨29002, 29002, .largeDivisor 1009592744630523887215803019433080283⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨29003, 29003, .largeDivisor 193915353460391286761059172004090247999⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨29004, 29004, .largeDivisor 16165743776558677615337495903627983631⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨29005, 29005, .largeDivisor 45281255262103760910947761340872010161⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨29006, 29006, .largeDivisor 339738254043606230983691351643386840851⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨29007, 29007, .largeDivisor 151052061357779401636148051641141645477⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨29008, 29008, .largeDivisor 192741534304853531763198879564170117⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨29125, 29130, .topPrime 29123⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 29125) (hi := 29130) (p := 29123)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk203

#print axioms B699LowIndex.I11TerminalData.Chunk203.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk203.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk203.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk203.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk203.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk203.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk203.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk203.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk203.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk203.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk203.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk203.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk203.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk203.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk203.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk203.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk203.witnesses_check
