import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk015
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨1354, 1354, .largeDivisor 33455850499931164561061⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨1355, 1355, .largeDivisor 9066535485481345596047531⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨1356, 1356, .largeDivisor 3808618995759821755960487⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨1357, 1357, .largeDivisor 7679488822059551445525083⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨1358, 1358, .largeDivisor 1659043242182130267741499⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨1359, 1359, .largeDivisor 743369523945108814329277⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨1360, 1360, .largeDivisor 9367888737632950217641⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨1361, 1371, .topPrime 1361⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1361) (hi := 1371) (p := 1361)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨1372, 1377, .topPrime 1367⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1372) (hi := 1377) (p := 1367)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨1378, 1383, .topPrime 1373⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1378) (hi := 1383) (p := 1373)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨1384, 1391, .topPrime 1381⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1384) (hi := 1391) (p := 1381)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨1392, 1392, .largeDivisor 19073557370537770189800737⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨1393, 1393, .largeDivisor 5492963700053569128466493⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨1394, 1394, .largeDivisor 8304979824159083910067561⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨1395, 1395, .largeDivisor 1488175575427350296023667⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨1396, 1396, .largeDivisor 1874993775538430517372779⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk015

#print axioms B699LowIndex.I11TerminalData.Chunk015.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk015.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk015.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk015.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk015.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk015.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk015.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk015.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk015.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk015.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk015.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk015.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk015.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk015.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk015.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk015.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk015.witnesses_check
