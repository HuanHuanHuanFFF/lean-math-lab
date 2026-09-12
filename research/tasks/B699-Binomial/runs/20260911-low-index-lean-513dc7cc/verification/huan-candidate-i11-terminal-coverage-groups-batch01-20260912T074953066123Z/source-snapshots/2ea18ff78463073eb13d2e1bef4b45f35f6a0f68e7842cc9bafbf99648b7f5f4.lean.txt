import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk102
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨7321, 7322, .topPrime 7321⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7321) (hi := 7322) (p := 7321)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨7325, 7331, .topPrime 7321⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7325) (hi := 7331) (p := 7321)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨7332, 7335, .topPrime 7331⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7332) (hi := 7335) (p := 7331)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨7344, 7344, .largeDivisor 27559276771890682494344508186043⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨7345, 7345, .largeDivisor 11040244771722774088953390380501⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨7346, 7346, .largeDivisor 248778030960354289746784066672271⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨7347, 7347, .largeDivisor 4650819830701585157174612055575509⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨7348, 7348, .largeDivisor 1164448143518987588078201219312009⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨7349, 7359, .topPrime 7349⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7349) (hi := 7359) (p := 7349)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨7360, 7360, .topPrime 7351⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7360) (hi := 7360) (p := 7351)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨7375, 7379, .topPrime 7369⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7375) (hi := 7379) (p := 7369)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨7380, 7380, .largeDivisor 155111163333196188772474237573⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨7381, 7381, .largeDivisor 1553426725322009592034779304649⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨7382, 7382, .largeDivisor 441053695627964415707720801035343⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨7383, 7383, .largeDivisor 588949074845588945771405801056961⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨7384, 7384, .largeDivisor 73728468205951254163435176234311⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk102

#print axioms B699LowIndex.I11TerminalData.Chunk102.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk102.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk102.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk102.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk102.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk102.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk102.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk102.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk102.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk102.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk102.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk102.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk102.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk102.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk102.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk102.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk102.witnesses_check
