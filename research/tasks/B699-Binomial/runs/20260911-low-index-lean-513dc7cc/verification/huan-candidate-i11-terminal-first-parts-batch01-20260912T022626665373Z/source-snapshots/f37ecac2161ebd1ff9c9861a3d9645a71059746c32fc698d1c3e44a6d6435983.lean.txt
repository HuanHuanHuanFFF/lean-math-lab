import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk012
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨1150, 1150, .largeDivisor 52901394586933767284449⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨1151, 1161, .topPrime 1151⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1151) (hi := 1161) (p := 1151)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨1162, 1163, .topPrime 1153⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1162) (hi := 1163) (p := 1153)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨1164, 1173, .topPrime 1163⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1164) (hi := 1173) (p := 1163)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨1174, 1181, .topPrime 1171⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1174) (hi := 1181) (p := 1171)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨1182, 1191, .topPrime 1181⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1182) (hi := 1191) (p := 1181)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨1192, 1197, .topPrime 1187⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1192) (hi := 1197) (p := 1187)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨1198, 1203, .topPrime 1193⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1198) (hi := 1203) (p := 1193)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨1204, 1211, .topPrime 1201⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1204) (hi := 1211) (p := 1201)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨1212, 1212, .largeDivisor 2362264759090746490482073⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨1213, 1223, .topPrime 1213⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1213) (hi := 1223) (p := 1213)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨1224, 1233, .topPrime 1223⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1224) (hi := 1233) (p := 1223)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨1234, 1241, .topPrime 1231⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1234) (hi := 1241) (p := 1231)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨1242, 1247, .topPrime 1237⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1242) (hi := 1247) (p := 1237)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨1248, 1248, .largeDivisor 135994301061180038313343⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨1249, 1259, .topPrime 1249⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1249) (hi := 1259) (p := 1249)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk012

#print axioms B699LowIndex.I11TerminalData.Chunk012.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk012.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk012.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk012.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk012.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk012.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk012.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk012.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk012.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk012.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk012.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk012.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk012.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk012.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk012.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk012.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk012.witnesses_check
