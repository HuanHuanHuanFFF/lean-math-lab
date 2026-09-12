import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk231
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨61062, 61064, .topPrime 61057⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 61062) (hi := 61064) (p := 61057)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨61750, 61750, .largeDivisor 134525971200998122208921756143412766433⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨62083, 62090, .topPrime 62081⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 62083) (hi := 62090) (p := 62081)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨62208, 62217, .topPrime 62207⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 62208) (hi := 62217) (p := 62207)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨62218, 62218, .topPrime 62213⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 62218) (hi := 62218) (p := 62213)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨63112, 63113, .topPrime 63103⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 63112) (hi := 63113) (p := 63103)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨63114, 63114, .topPrime 63113⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 63114) (hi := 63114) (p := 63113)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨63750, 63753, .topPrime 63743⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 63750) (hi := 63753) (p := 63743)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨63754, 63754, .largeDivisor 292711399459153325277918268418895179219⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨65856, 65861, .topPrime 65851⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 65856) (hi := 65861) (p := 65851)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨65862, 65862, .largeDivisor 6645280552652611460051397930471512248253⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨65863, 65863, .largeDivisor 3797937479190209635402028981826304971379⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨66825, 66826, .topPrime 66821⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 66825) (hi := 66826) (p := 66821)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨66885, 66885, .topPrime 66883⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 66885) (hi := 66885) (p := 66883)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨67072, 67072, .largeDivisor 24863698111434079007077969996635170924147⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨67073, 67078, .topPrime 67073⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 67073) (hi := 67078) (p := 67073)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk231

#print axioms B699LowIndex.I11TerminalData.Chunk231.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk231.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk231.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk231.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk231.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk231.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk231.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk231.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk231.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk231.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk231.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk231.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk231.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk231.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk231.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk231.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk231.witnesses_check
