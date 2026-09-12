import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk025
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨2038, 2039, .topPrime 2029⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2038) (hi := 2039) (p := 2029)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨2040, 2049, .topPrime 2039⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2040) (hi := 2049) (p := 2039)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨2050, 2050, .largeDivisor 426652004520453460482253⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨2051, 2051, .largeDivisor 7353472783793697877723537⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨2052, 2052, .largeDivisor 68454670696756619145883⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨2053, 2063, .topPrime 2053⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2053) (hi := 2063) (p := 2053)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨2064, 2073, .topPrime 2063⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2064) (hi := 2073) (p := 2063)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨2074, 2079, .topPrime 2069⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2074) (hi := 2079) (p := 2069)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨2080, 2080, .largeDivisor 508728483924638938550707⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨2081, 2091, .topPrime 2081⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2081) (hi := 2091) (p := 2081)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨2092, 2099, .topPrime 2089⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2092) (hi := 2099) (p := 2089)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨2100, 2109, .topPrime 2099⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2100) (hi := 2109) (p := 2099)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨2110, 2110, .largeDivisor 680851108667062287789367⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨2111, 2121, .topPrime 2111⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2111) (hi := 2121) (p := 2111)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨2122, 2123, .topPrime 2113⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2122) (hi := 2123) (p := 2113)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨2124, 2124, .largeDivisor 384484596367630091351380037⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk025

#print axioms B699LowIndex.I11TerminalData.Chunk025.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk025.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk025.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk025.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk025.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk025.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk025.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk025.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk025.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk025.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk025.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk025.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk025.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk025.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk025.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk025.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk025.witnesses_check
