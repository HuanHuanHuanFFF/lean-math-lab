import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk038
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨2898, 2907, .topPrime 2897⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2898) (hi := 2907) (p := 2897)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨2908, 2913, .topPrime 2903⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2908) (hi := 2913) (p := 2903)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨2914, 2919, .topPrime 2909⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2914) (hi := 2919) (p := 2909)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨2920, 2927, .topPrime 2917⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2920) (hi := 2927) (p := 2917)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨2928, 2937, .topPrime 2927⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2928) (hi := 2937) (p := 2927)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨2938, 2938, .largeDivisor 72116220959864124632306975101⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨2939, 2949, .topPrime 2939⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2939) (hi := 2949) (p := 2939)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨2950, 2950, .largeDivisor 5131227216327537803066317⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨2951, 2951, .largeDivisor 15142251515382564056848701467⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨2952, 2952, .largeDivisor 211095651863544755637809167⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨2953, 2963, .topPrime 2953⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2953) (hi := 2963) (p := 2953)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨2964, 2973, .topPrime 2963⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2964) (hi := 2973) (p := 2963)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨2974, 2981, .topPrime 2971⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2974) (hi := 2981) (p := 2971)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨2982, 2982, .largeDivisor 2427166035314501326538822519⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨2983, 2983, .largeDivisor 9744597958739108286763536439⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨2984, 2984, .largeDivisor 3667744741281218356168313917⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk038

#print axioms B699LowIndex.I11TerminalData.Chunk038.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk038.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk038.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk038.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk038.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk038.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk038.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk038.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk038.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk038.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk038.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk038.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk038.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk038.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk038.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk038.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk038.witnesses_check
