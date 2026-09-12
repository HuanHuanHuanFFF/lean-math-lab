import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk060
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨4196, 4196, .largeDivisor 1567181038900827808178553611623⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨4197, 4197, .largeDivisor 7332730011445679276393968236323⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨4198, 4198, .largeDivisor 3675997204209333843121791098171⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨4199, 4199, .largeDivisor 44227828826575910622545561092321⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨4200, 4200, .largeDivisor 10558087569008333879815125589⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨4201, 4211, .topPrime 4201⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4201) (hi := 4211) (p := 4201)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨4212, 4221, .topPrime 4211⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4212) (hi := 4221) (p := 4211)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨4222, 4229, .topPrime 4219⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4222) (hi := 4229) (p := 4219)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨4230, 4235, .topPrime 4229⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4230) (hi := 4235) (p := 4229)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨4240, 4241, .topPrime 4231⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4240) (hi := 4241) (p := 4231)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨4242, 4251, .topPrime 4241⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4242) (hi := 4251) (p := 4241)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨4252, 4253, .topPrime 4243⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4252) (hi := 4253) (p := 4243)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨4254, 4263, .topPrime 4253⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4254) (hi := 4263) (p := 4253)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨4264, 4271, .topPrime 4261⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4264) (hi := 4271) (p := 4261)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨4272, 4281, .topPrime 4271⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4272) (hi := 4281) (p := 4271)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨4282, 4283, .topPrime 4273⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4282) (hi := 4283) (p := 4273)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk060

#print axioms B699LowIndex.I11TerminalData.Chunk060.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk060.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk060.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk060.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk060.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk060.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk060.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk060.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk060.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk060.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk060.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk060.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk060.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk060.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk060.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk060.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk060.witnesses_check
