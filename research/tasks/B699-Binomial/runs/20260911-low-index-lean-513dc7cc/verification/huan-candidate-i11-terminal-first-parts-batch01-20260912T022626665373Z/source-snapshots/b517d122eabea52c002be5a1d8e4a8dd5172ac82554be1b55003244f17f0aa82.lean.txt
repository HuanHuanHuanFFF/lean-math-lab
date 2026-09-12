import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk011
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨1098, 1107, .topPrime 1097⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1098) (hi := 1107) (p := 1097)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨1108, 1113, .topPrime 1103⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1108) (hi := 1113) (p := 1103)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨1114, 1119, .topPrime 1109⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1114) (hi := 1119) (p := 1109)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨1120, 1127, .topPrime 1117⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1120) (hi := 1127) (p := 1117)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨1128, 1133, .topPrime 1123⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1128) (hi := 1133) (p := 1123)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨1134, 1139, .topPrime 1129⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1134) (hi := 1139) (p := 1129)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨1140, 1140, .largeDivisor 93402061385831686706803⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨1141, 1141, .largeDivisor 134730407131774910913353⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨1142, 1142, .largeDivisor 204061173666428313346219⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨1143, 1143, .largeDivisor 91575155673626840264911⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨1144, 1144, .largeDivisor 11558029356865523528581⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨1145, 1145, .largeDivisor 2646788722722204888045049⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨1146, 1146, .largeDivisor 2227033682995335390381517⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨1147, 1147, .largeDivisor 35977572315431685813628169⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨1148, 1148, .largeDivisor 3892032889004483161896451⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨1149, 1149, .largeDivisor 2619769062370328736390757⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk011

#print axioms B699LowIndex.I11TerminalData.Chunk011.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk011.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk011.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk011.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk011.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk011.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk011.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk011.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk011.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk011.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk011.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk011.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk011.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk011.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk011.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk011.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk011.witnesses_check
