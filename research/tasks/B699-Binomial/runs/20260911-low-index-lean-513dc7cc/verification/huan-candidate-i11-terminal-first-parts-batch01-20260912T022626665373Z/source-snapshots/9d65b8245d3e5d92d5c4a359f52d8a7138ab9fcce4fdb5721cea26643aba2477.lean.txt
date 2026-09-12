import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk013
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨1260, 1269, .topPrime 1259⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1260) (hi := 1269) (p := 1259)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨1270, 1270, .largeDivisor 43984872786455146185341⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨1271, 1271, .largeDivisor 55904773311584490801568411⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨1272, 1272, .largeDivisor 2349685159011877884602003⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨1273, 1273, .largeDivisor 4740331549004945399521949⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨1274, 1274, .largeDivisor 146376033579725154854597⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨1275, 1275, .largeDivisor 31498640137409210538331⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨1276, 1276, .largeDivisor 39715676694994221983113⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨1277, 1287, .topPrime 1277⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1277) (hi := 1287) (p := 1277)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨1288, 1293, .topPrime 1283⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1288) (hi := 1293) (p := 1283)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨1294, 1301, .topPrime 1291⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1294) (hi := 1301) (p := 1291)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨1302, 1311, .topPrime 1301⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1302) (hi := 1311) (p := 1301)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨1312, 1317, .topPrime 1307⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1312) (hi := 1317) (p := 1307)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨1318, 1318, .largeDivisor 1490744226820808775543559⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨1319, 1329, .topPrime 1319⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1319) (hi := 1329) (p := 1319)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨1330, 1337, .topPrime 1327⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1330) (hi := 1337) (p := 1327)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk013

#print axioms B699LowIndex.I11TerminalData.Chunk013.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk013.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk013.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk013.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk013.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk013.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk013.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk013.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk013.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk013.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk013.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk013.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk013.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk013.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk013.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk013.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk013.witnesses_check
