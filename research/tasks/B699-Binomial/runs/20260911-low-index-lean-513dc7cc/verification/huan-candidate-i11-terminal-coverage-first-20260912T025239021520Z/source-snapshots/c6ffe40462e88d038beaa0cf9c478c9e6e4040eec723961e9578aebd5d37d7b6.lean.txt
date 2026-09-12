import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk019
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨1656, 1656, .largeDivisor 2881373606341143098274869⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨1657, 1667, .topPrime 1657⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1657) (hi := 1667) (p := 1657)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨1668, 1677, .topPrime 1667⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1668) (hi := 1677) (p := 1667)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨1678, 1679, .topPrime 1669⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1678) (hi := 1679) (p := 1669)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨1680, 1680, .largeDivisor 289466395068644229119983⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨1681, 1681, .largeDivisor 2913730599463418857189769⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨1682, 1682, .largeDivisor 4399367027197011236798197⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨1683, 1683, .largeDivisor 3936275761176273211872071⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨1684, 1684, .largeDivisor 6933774457971594235138669⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨1685, 1685, .largeDivisor 75376838462465395394894563⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨1686, 1686, .largeDivisor 316132710566459344865154809⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨1687, 1687, .largeDivisor 181832895576412176879480451⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨1688, 1688, .largeDivisor 68634599224728030986709079⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨1689, 1689, .largeDivisor 46056352042338356907648643⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨1690, 1690, .largeDivisor 4635809109681466538053973⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨1691, 1691, .largeDivisor 7839153204471359915849268343⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk019

#print axioms B699LowIndex.I11TerminalData.Chunk019.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk019.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk019.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk019.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk019.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk019.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk019.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk019.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk019.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk019.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk019.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk019.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk019.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk019.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk019.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk019.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk019.witnesses_check
