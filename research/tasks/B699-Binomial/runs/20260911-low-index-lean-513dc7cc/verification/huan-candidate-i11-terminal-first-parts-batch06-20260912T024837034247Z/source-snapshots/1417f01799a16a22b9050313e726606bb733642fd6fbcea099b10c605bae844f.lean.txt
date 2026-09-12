import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk055
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨3907, 3917, .topPrime 3907⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3907) (hi := 3917) (p := 3907)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨3918, 3927, .topPrime 3917⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3918) (hi := 3927) (p := 3917)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨3928, 3933, .topPrime 3923⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3928) (hi := 3933) (p := 3923)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨3934, 3941, .topPrime 3931⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3934) (hi := 3941) (p := 3931)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨3942, 3942, .largeDivisor 29179679455891872917619769549⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨3943, 3953, .topPrime 3943⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3943) (hi := 3953) (p := 3943)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨3954, 3957, .topPrime 3947⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3954) (hi := 3957) (p := 3947)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨3958, 3958, .largeDivisor 109839469092244534207396452829⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨3959, 3959, .largeDivisor 9252222513536087466533671420213⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨3960, 3960, .largeDivisor 25772207558596343917921090307⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨3961, 3961, .largeDivisor 1292198913159495167833992895013⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨3962, 3962, .largeDivisor 833012055635847682225558062161⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨3963, 3963, .largeDivisor 4455096864352043677003895547023⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨3964, 3964, .largeDivisor 1116873511908139459628348213281⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨3965, 3965, .largeDivisor 1343976775331038833816813555587⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨3966, 3966, .largeDivisor 7861669455697492647370918232239⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk055

#print axioms B699LowIndex.I11TerminalData.Chunk055.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk055.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk055.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk055.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk055.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk055.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk055.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk055.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk055.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk055.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk055.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk055.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk055.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk055.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk055.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk055.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk055.witnesses_check
