import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk021
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨1774, 1774, .largeDivisor 7539529246630280150457271⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨1775, 1775, .largeDivisor 535306576510749890682466241⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨1776, 1776, .largeDivisor 56108621333987948881731589⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨1777, 1787, .topPrime 1777⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1777) (hi := 1787) (p := 1777)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨1788, 1797, .topPrime 1787⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1788) (hi := 1797) (p := 1787)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨1798, 1799, .topPrime 1789⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1798) (hi := 1799) (p := 1789)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨1800, 1800, .largeDivisor 38728022964284306792399⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨1801, 1811, .topPrime 1801⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1801) (hi := 1811) (p := 1801)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨1812, 1821, .topPrime 1811⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1812) (hi := 1821) (p := 1811)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨1822, 1822, .largeDivisor 30364345282514714939103779⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨1823, 1833, .topPrime 1823⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1823) (hi := 1833) (p := 1823)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨1834, 1841, .topPrime 1831⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1834) (hi := 1841) (p := 1831)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨1842, 1842, .largeDivisor 19979167637811908034859597⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨1843, 1843, .largeDivisor 160793039111298456367887499⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨1844, 1844, .largeDivisor 121318479591339751858586149⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨1845, 1845, .largeDivisor 37969905826297174245817039⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk021

#print axioms B699LowIndex.I11TerminalData.Chunk021.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk021.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk021.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk021.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk021.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk021.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk021.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk021.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk021.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk021.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk021.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk021.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk021.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk021.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk021.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk021.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk021.witnesses_check
