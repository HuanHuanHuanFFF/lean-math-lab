import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk049
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨3487, 3487, .largeDivisor 17274238133829653815171273889⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨3488, 3488, .largeDivisor 1624583223975351394179179339⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨3489, 3489, .largeDivisor 1086480902520605906515460363⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨3490, 3490, .largeDivisor 5340589225066076920759093897⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨3491, 3501, .topPrime 3491⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3491) (hi := 3501) (p := 3491)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨3502, 3509, .topPrime 3499⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3502) (hi := 3509) (p := 3499)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨3510, 3510, .largeDivisor 130001624350871421302340329⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨3511, 3521, .topPrime 3511⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3511) (hi := 3521) (p := 3511)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨3522, 3527, .topPrime 3517⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3522) (hi := 3527) (p := 3517)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨3528, 3537, .topPrime 3527⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3528) (hi := 3537) (p := 3527)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨3538, 3543, .topPrime 3533⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3538) (hi := 3543) (p := 3533)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨3544, 3551, .topPrime 3541⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3544) (hi := 3551) (p := 3541)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨3552, 3557, .topPrime 3547⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3552) (hi := 3557) (p := 3547)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨3558, 3567, .topPrime 3557⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3558) (hi := 3567) (p := 3557)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨3568, 3569, .topPrime 3559⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3568) (hi := 3569) (p := 3559)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨3570, 3570, .largeDivisor 1958598815072653965686656103⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk049

#print axioms B699LowIndex.I11TerminalData.Chunk049.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk049.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk049.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk049.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk049.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk049.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk049.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk049.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk049.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk049.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk049.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk049.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk049.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk049.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk049.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk049.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk049.witnesses_check
