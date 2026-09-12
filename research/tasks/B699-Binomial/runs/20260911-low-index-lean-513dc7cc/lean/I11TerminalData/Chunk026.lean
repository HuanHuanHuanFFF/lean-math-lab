import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk026
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨2125, 2125, .largeDivisor 43286345286421930814393779⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨2126, 2126, .largeDivisor 979008192329074733100012491⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨2127, 2127, .largeDivisor 1312130072516661598805120711⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨2128, 2128, .largeDivisor 11776320915359740376616577⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨2129, 2139, .topPrime 2129⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2129) (hi := 2139) (p := 2129)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨2140, 2147, .topPrime 2137⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2140) (hi := 2147) (p := 2137)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨2148, 2153, .topPrime 2143⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2148) (hi := 2153) (p := 2143)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨2154, 2163, .topPrime 2153⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2154) (hi := 2163) (p := 2153)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨2164, 2171, .topPrime 2161⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2164) (hi := 2171) (p := 2161)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨2172, 2172, .largeDivisor 1475733492073042261436656513⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨2173, 2173, .largeDivisor 2966483698681517885385619429⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨2174, 2174, .largeDivisor 31306483305503009139943381741⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨2175, 2175, .largeDivisor 1678166387910512504728942829⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨2176, 2176, .largeDivisor 65886440172006264619843021⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨2177, 2177, .largeDivisor 56760894441811491126789971⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨2178, 2178, .largeDivisor 3169390044974245697434973⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk026

#print axioms B699LowIndex.I11TerminalData.Chunk026.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk026.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk026.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk026.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk026.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk026.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk026.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk026.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk026.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk026.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk026.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk026.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk026.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk026.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk026.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk026.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk026.witnesses_check
