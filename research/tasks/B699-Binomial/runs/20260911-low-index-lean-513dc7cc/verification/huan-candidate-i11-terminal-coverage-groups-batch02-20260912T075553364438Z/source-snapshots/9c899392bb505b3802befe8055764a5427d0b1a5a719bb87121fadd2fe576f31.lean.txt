import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk122
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨9028, 9028, .largeDivisor 187163333995541405748629436698489⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨9029, 9034, .topPrime 9029⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9029) (hi := 9034) (p := 9029)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨9050, 9059, .topPrime 9049⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9050) (hi := 9059) (p := 9049)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨9060, 9060, .topPrime 9059⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9060) (hi := 9060) (p := 9059)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨9065, 9066, .topPrime 9059⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9065) (hi := 9066) (p := 9059)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨9072, 9077, .topPrime 9067⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9072) (hi := 9077) (p := 9067)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨9078, 9078, .largeDivisor 795573403490950856241640877893043⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨9079, 9079, .largeDivisor 455164845314408143160744692821913⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨9080, 9080, .largeDivisor 34178769396748477835755555828837⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨9081, 9081, .largeDivisor 38022467829458890999203258909919⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨9082, 9082, .largeDivisor 19034287996204698933676771988749⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨9100, 9101, .topPrime 9091⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9100) (hi := 9101) (p := 9091)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨9102, 9102, .largeDivisor 702026635625656604109239186543633⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨9103, 9109, .topPrime 9103⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9103) (hi := 9109) (p := 9103)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨9120, 9120, .largeDivisor 269046979033582025261679676668491⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨9121, 9121, .largeDivisor 384816919517845640961546233478643⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk122

#print axioms B699LowIndex.I11TerminalData.Chunk122.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk122.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk122.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk122.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk122.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk122.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk122.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk122.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk122.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk122.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk122.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk122.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk122.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk122.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk122.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk122.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk122.witnesses_check
