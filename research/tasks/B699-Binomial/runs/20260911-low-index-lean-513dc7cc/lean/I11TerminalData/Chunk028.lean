import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk028
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨2224, 2231, .topPrime 2221⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2224) (hi := 2231) (p := 2221)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨2232, 2232, .largeDivisor 232503425977815963337910491⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨2233, 2233, .largeDivisor 66758409439174880562370339⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨2234, 2234, .largeDivisor 301899365763394095498654529⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨2235, 2235, .largeDivisor 323618744595292951289924639⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨2236, 2236, .largeDivisor 2032616609312008536753571609⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨2237, 2247, .topPrime 2237⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2237) (hi := 2247) (p := 2237)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨2248, 2253, .topPrime 2243⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2248) (hi := 2253) (p := 2243)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨2254, 2261, .topPrime 2251⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2254) (hi := 2261) (p := 2251)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨2262, 2262, .largeDivisor 164922314509051502728650637⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨2263, 2263, .largeDivisor 662911541268176821802728937⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨2264, 2264, .largeDivisor 249805547508514035379723421⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨2265, 2265, .largeDivisor 1640027724947200840971227677⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨2266, 2266, .largeDivisor 4120069650477114307805767091⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨2267, 2277, .topPrime 2267⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2267) (hi := 2277) (p := 2267)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨2278, 2283, .topPrime 2273⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2278) (hi := 2283) (p := 2273)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk028

#print axioms B699LowIndex.I11TerminalData.Chunk028.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk028.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk028.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk028.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk028.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk028.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk028.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk028.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk028.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk028.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk028.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk028.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk028.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk028.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk028.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk028.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk028.witnesses_check
