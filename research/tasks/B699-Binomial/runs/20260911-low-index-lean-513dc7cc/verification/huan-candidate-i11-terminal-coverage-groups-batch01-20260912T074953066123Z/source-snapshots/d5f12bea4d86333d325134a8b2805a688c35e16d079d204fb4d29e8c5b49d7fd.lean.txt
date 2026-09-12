import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk100
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨7188, 7192, .topPrime 7187⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7188) (hi := 7192) (p := 7187)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨7200, 7203, .topPrime 7193⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7200) (hi := 7203) (p := 7193)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨7204, 7204, .largeDivisor 117013057792470430735253953493⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨7205, 7205, .largeDivisor 140630372209299325012094200987⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨7206, 7206, .largeDivisor 117371144561062188561171046133⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨7207, 7213, .topPrime 7207⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7207) (hi := 7213) (p := 7207)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨7216, 7219, .topPrime 7213⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7216) (hi := 7219) (p := 7213)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨7225, 7226, .topPrime 7219⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7225) (hi := 7226) (p := 7219)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨7232, 7239, .topPrime 7229⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7232) (hi := 7239) (p := 7229)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨7240, 7242, .topPrime 7237⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7240) (hi := 7242) (p := 7237)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨7250, 7257, .topPrime 7247⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7250) (hi := 7257) (p := 7247)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨7258, 7260, .topPrime 7253⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7258) (hi := 7260) (p := 7253)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨7264, 7264, .largeDivisor 85501719072650156864822974433551⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨7265, 7265, .largeDivisor 308272947425708878224783577796401⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨7266, 7266, .largeDivisor 36754803518020424488551039944023⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨7267, 7267, .largeDivisor 294484186510975109987100779794063⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk100

#print axioms B699LowIndex.I11TerminalData.Chunk100.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk100.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk100.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk100.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk100.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk100.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk100.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk100.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk100.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk100.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk100.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk100.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk100.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk100.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk100.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk100.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk100.witnesses_check
