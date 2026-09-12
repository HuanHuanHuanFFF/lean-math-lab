import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk209
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨31681, 31681, .largeDivisor 62269149482784384882622702722038991203⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨31750, 31751, .topPrime 31741⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 31750) (hi := 31751) (p := 31741)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨31752, 31760, .topPrime 31751⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 31752) (hi := 31760) (p := 31751)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨31875, 31882, .topPrime 31873⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 31875) (hi := 31882) (p := 31873)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨32000, 32001, .topPrime 31991⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 32000) (hi := 32001) (p := 31991)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨32002, 32002, .largeDivisor 745425687975149029334352226120777991⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨32003, 32010, .topPrime 32003⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 32003) (hi := 32010) (p := 32003)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨32128, 32129, .topPrime 32119⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 32128) (hi := 32129) (p := 32119)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨32130, 32130, .largeDivisor 311556611450822608097173767060664957⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨32131, 32131, .largeDivisor 12466532356819901893860884569646607389⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨32132, 32132, .largeDivisor 28059303564677576888031517441292013773⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨32133, 32133, .largeDivisor 18712608211273365671359540708155081223⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨32134, 32134, .largeDivisor 65516556140886721778542981163200629769⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨32135, 32135, .largeDivisor 157293577257183026100371961126593368519⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨32242, 32247, .topPrime 32237⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 32242) (hi := 32247) (p := 32237)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨32248, 32248, .largeDivisor 15446605443684240884069687273705293147⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk209

#print axioms B699LowIndex.I11TerminalData.Chunk209.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk209.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk209.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk209.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk209.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk209.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk209.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk209.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk209.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk209.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk209.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk209.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk209.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk209.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk209.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk209.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk209.witnesses_check
