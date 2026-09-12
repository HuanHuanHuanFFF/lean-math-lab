import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk083
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨5875, 5879, .topPrime 5869⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5875) (hi := 5879) (p := 5869)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨5880, 5889, .topPrime 5879⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5880) (hi := 5889) (p := 5879)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨5890, 5891, .topPrime 5881⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5890) (hi := 5891) (p := 5881)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨5892, 5892, .largeDivisor 6400671043191134520840581804213⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨5893, 5893, .largeDivisor 12825282032480569782833576529149⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨5894, 5894, .largeDivisor 2753413429716634308298284405289⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨5895, 5895, .largeDivisor 245205410804132627047637836229⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨5896, 5896, .largeDivisor 153539836671746598244782570349⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨5904, 5910, .topPrime 5903⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5904) (hi := 5910) (p := 5903)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨5913, 5913, .topPrime 5903⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5913) (hi := 5913) (p := 5903)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨5914, 5914, .largeDivisor 5927785582215725955533673003589⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨5920, 5920, .largeDivisor 1798299779550336801674663328913⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨5921, 5921, .largeDivisor 54049406064556061942719195789309⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨5922, 5922, .largeDivisor 429761814419579582356251429893⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨5923, 5923, .topPrime 5923⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5923) (hi := 5923) (p := 5923)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨5925, 5933, .topPrime 5923⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5925) (hi := 5933) (p := 5923)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk083

#print axioms B699LowIndex.I11TerminalData.Chunk083.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk083.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk083.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk083.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk083.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk083.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk083.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk083.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk083.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk083.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk083.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk083.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk083.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk083.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk083.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk083.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk083.witnesses_check
