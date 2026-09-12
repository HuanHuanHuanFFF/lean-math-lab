import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk010
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨1020, 1029, .topPrime 1019⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1020) (hi := 1029) (p := 1019)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨1030, 1031, .topPrime 1021⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1030) (hi := 1031) (p := 1021)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨1032, 1041, .topPrime 1031⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1032) (hi := 1041) (p := 1031)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨1042, 1049, .topPrime 1039⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1042) (hi := 1049) (p := 1039)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨1050, 1059, .topPrime 1049⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1050) (hi := 1059) (p := 1049)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨1060, 1061, .topPrime 1051⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1060) (hi := 1061) (p := 1051)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨1062, 1071, .topPrime 1061⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1062) (hi := 1071) (p := 1061)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨1072, 1079, .topPrime 1069⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1072) (hi := 1079) (p := 1069)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨1080, 1080, .largeDivisor 104881015460846448317⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨1081, 1081, .largeDivisor 1059592315076401968511⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨1082, 1082, .largeDivisor 33719967203313733233203⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨1083, 1083, .largeDivisor 181685196423824741749049⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨1084, 1084, .largeDivisor 45886941501264217161223⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨1085, 1085, .largeDivisor 7946900483459166100547⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨1086, 1086, .largeDivisor 33450906686188582888349⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨1087, 1097, .topPrime 1087⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1087) (hi := 1097) (p := 1087)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk010

#print axioms B699LowIndex.I11TerminalData.Chunk010.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk010.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk010.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk010.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk010.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk010.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk010.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk010.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk010.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk010.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk010.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk010.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk010.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk010.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk010.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk010.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk010.witnesses_check
