import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk016
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨1397, 1397, .largeDivisor 238124209493380675706342933⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨1398, 1398, .largeDivisor 40002120268174259148938647⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨1399, 1409, .topPrime 1399⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1399) (hi := 1409) (p := 1399)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨1410, 1419, .topPrime 1409⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1410) (hi := 1419) (p := 1409)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨1420, 1420, .largeDivisor 19010867728115816840795261⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨1421, 1421, .largeDivisor 11730109874794865710277927⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨1422, 1422, .largeDivisor 656753139694397158832003⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨1423, 1433, .topPrime 1423⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1423) (hi := 1433) (p := 1423)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨1434, 1443, .topPrime 1433⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1434) (hi := 1443) (p := 1433)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨1444, 1449, .topPrime 1439⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1444) (hi := 1449) (p := 1439)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨1450, 1457, .topPrime 1447⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1450) (hi := 1457) (p := 1447)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨1458, 1463, .topPrime 1453⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1458) (hi := 1463) (p := 1453)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨1464, 1469, .topPrime 1459⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1464) (hi := 1469) (p := 1459)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨1470, 1470, .largeDivisor 568459715922064580343899⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨1471, 1481, .topPrime 1471⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1471) (hi := 1481) (p := 1471)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨1482, 1491, .topPrime 1481⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1482) (hi := 1491) (p := 1481)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk016

#print axioms B699LowIndex.I11TerminalData.Chunk016.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk016.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk016.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk016.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk016.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk016.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk016.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk016.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk016.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk016.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk016.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk016.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk016.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk016.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk016.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk016.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk016.witnesses_check
