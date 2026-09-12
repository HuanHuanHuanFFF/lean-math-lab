import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk148
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨11672, 11672, .largeDivisor 30725302082874570015594859477639⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨11680, 11685, .topPrime 11677⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11680) (hi := 11685) (p := 11677)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨11700, 11701, .topPrime 11699⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11700) (hi := 11701) (p := 11699)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨11712, 11712, .largeDivisor 1507469732024282804198145116718479⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨11713, 11713, .largeDivisor 3017773538061942315086801188194077⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨11714, 11714, .largeDivisor 4530915050609791371305663819341889⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨11715, 11715, .largeDivisor 16931314136489220387510638482803901⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨11716, 11716, .largeDivisor 21184032082775278306287338793734569⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨11717, 11722, .topPrime 11717⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11717) (hi := 11722) (p := 11717)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨11725, 11728, .topPrime 11719⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11725) (hi := 11728) (p := 11719)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨11745, 11753, .topPrime 11743⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11745) (hi := 11753) (p := 11743)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨11754, 11754, .largeDivisor 32522281521754622221415487942623⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨11755, 11755, .largeDivisor 208337558195218302023291041289119⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨11760, 11760, .largeDivisor 50459825784898983372410314534477⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨11775, 11775, .largeDivisor 9552227179756699785362140483183657⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨11776, 11776, .largeDivisor 93370686414961366367755729329887⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk148

#print axioms B699LowIndex.I11TerminalData.Chunk148.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk148.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk148.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk148.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk148.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk148.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk148.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk148.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk148.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk148.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk148.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk148.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk148.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk148.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk148.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk148.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk148.witnesses_check
