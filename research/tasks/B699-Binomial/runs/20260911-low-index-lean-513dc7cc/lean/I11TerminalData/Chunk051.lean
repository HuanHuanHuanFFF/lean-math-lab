import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk051
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨3657, 3657, .largeDivisor 11490572601134955085357721953⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨3658, 3658, .largeDivisor 40338305734118681096198221597⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨3659, 3669, .topPrime 3659⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3659) (hi := 3669) (p := 3659)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨3670, 3670, .largeDivisor 47794396966102807853274253799⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨3671, 3681, .topPrime 3671⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3671) (hi := 3681) (p := 3671)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨3682, 3687, .topPrime 3677⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3682) (hi := 3687) (p := 3677)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨3688, 3688, .largeDivisor 441357179296244377574011897163⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨3689, 3689, .largeDivisor 379437575023035541568522462977⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨3690, 3690, .largeDivisor 4228578574597569231940587383⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨3691, 3701, .topPrime 3691⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3691) (hi := 3701) (p := 3691)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨3702, 3711, .topPrime 3701⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3702) (hi := 3711) (p := 3701)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨3712, 3719, .topPrime 3709⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3712) (hi := 3719) (p := 3709)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨3720, 3729, .topPrime 3719⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3720) (hi := 3729) (p := 3719)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨3730, 3737, .topPrime 3727⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3730) (hi := 3737) (p := 3727)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨3738, 3743, .topPrime 3733⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3738) (hi := 3743) (p := 3733)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨3744, 3749, .topPrime 3739⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3744) (hi := 3749) (p := 3739)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk051

#print axioms B699LowIndex.I11TerminalData.Chunk051.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk051.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk051.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk051.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk051.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk051.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk051.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk051.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk051.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk051.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk051.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk051.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk051.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk051.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk051.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk051.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk051.witnesses_check
