import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk166
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨14266, 14266, .largeDivisor 1957459844426137430760710304884467⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨14308, 14313, .topPrime 14303⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 14308) (hi := 14313) (p := 14303)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨14314, 14314, .largeDivisor 63981697473368885496862571273181839⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨14337, 14337, .topPrime 14327⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 14337) (hi := 14337) (p := 14327)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨14338, 14338, .largeDivisor 37715338451196162233693714408821⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨14339, 14339, .largeDivisor 2717589135938199850597659150291881⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨14340, 14340, .largeDivisor 317295458470556797407347599863097⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨14341, 14346, .topPrime 14341⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 14341) (hi := 14346) (p := 14341)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨14375, 14378, .topPrime 14369⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 14375) (hi := 14378) (p := 14369)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨14406, 14410, .topPrime 14401⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 14406) (hi := 14410) (p := 14401)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨14464, 14465, .topPrime 14461⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 14464) (hi := 14465) (p := 14461)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨14499, 14499, .topPrime 14489⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 14499) (hi := 14499) (p := 14489)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨14500, 14500, .largeDivisor 131108705775401462422518448547173⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨14501, 14501, .largeDivisor 82661188802134635069084348799241551⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨14502, 14502, .largeDivisor 13787322706145843141396513080378637⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨14503, 14510, .topPrime 14503⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 14503) (hi := 14510) (p := 14503)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk166

#print axioms B699LowIndex.I11TerminalData.Chunk166.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk166.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk166.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk166.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk166.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk166.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk166.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk166.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk166.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk166.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk166.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk166.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk166.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk166.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk166.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk166.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk166.witnesses_check
