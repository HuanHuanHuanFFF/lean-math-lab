import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk040
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨3012, 3021, .topPrime 3011⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3012) (hi := 3021) (p := 3011)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨3022, 3029, .topPrime 3019⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3022) (hi := 3029) (p := 3019)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨3030, 3033, .topPrime 3023⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3030) (hi := 3033) (p := 3023)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨3034, 3034, .largeDivisor 326273569326872540330075833⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨3035, 3035, .largeDivisor 198048056581411631980356030631⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨3036, 3036, .largeDivisor 414100481942951594140744427683⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨3037, 3047, .topPrime 3037⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3037) (hi := 3047) (p := 3037)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨3048, 3051, .topPrime 3041⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3048) (hi := 3051) (p := 3041)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨3052, 3059, .topPrime 3049⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3052) (hi := 3059) (p := 3049)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨3060, 3060, .largeDivisor 143374951226272524023667961⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨3061, 3071, .topPrime 3061⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3061) (hi := 3071) (p := 3061)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨3072, 3077, .topPrime 3067⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3072) (hi := 3077) (p := 3067)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨3078, 3078, .largeDivisor 27880780746928268694555709⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨3079, 3089, .topPrime 3079⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3079) (hi := 3089) (p := 3079)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨3090, 3099, .topPrime 3089⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3090) (hi := 3099) (p := 3089)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨3100, 3100, .largeDivisor 20844319461184084697905807747⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk040

#print axioms B699LowIndex.I11TerminalData.Chunk040.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk040.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk040.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk040.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk040.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk040.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk040.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk040.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk040.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk040.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk040.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk040.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk040.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk040.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk040.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk040.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk040.witnesses_check
