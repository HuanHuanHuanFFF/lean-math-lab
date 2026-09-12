import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk037
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨2830, 2830, .largeDivisor 1091000545949506117980570919⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨2831, 2831, .largeDivisor 65715373310277698297936090887⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨2832, 2832, .largeDivisor 9620861104978620842625879311⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨2833, 2843, .topPrime 2833⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2833) (hi := 2843) (p := 2833)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨2844, 2853, .topPrime 2843⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2844) (hi := 2853) (p := 2843)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨2854, 2861, .topPrime 2851⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2854) (hi := 2861) (p := 2851)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨2862, 2871, .topPrime 2861⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2862) (hi := 2871) (p := 2861)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨2872, 2872, .largeDivisor 891177496820765581901144003⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨2873, 2873, .largeDivisor 48308546195586028618905409823⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨2874, 2874, .largeDivisor 56576512537128869702825651113⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨2875, 2875, .largeDivisor 7269607756167396665726200981⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨2876, 2876, .largeDivisor 27365696213007111008676117829⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨2877, 2877, .largeDivisor 2616259861257483746119070581⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨2878, 2878, .largeDivisor 1313148915364324768282295977⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨2879, 2889, .topPrime 2879⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2879) (hi := 2889) (p := 2879)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨2890, 2897, .topPrime 2887⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2890) (hi := 2897) (p := 2887)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk037

#print axioms B699LowIndex.I11TerminalData.Chunk037.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk037.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk037.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk037.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk037.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk037.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk037.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk037.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk037.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk037.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk037.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk037.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk037.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk037.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk037.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk037.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk037.witnesses_check
