import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk095
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨6758, 6758, .largeDivisor 3972178158334609987497561359461⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨6759, 6759, .largeDivisor 12378032352320714110417711954171⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨6760, 6760, .largeDivisor 309955173735694278361326614351⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨6762, 6762, .topPrime 6761⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6762) (hi := 6762) (p := 6761)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨6768, 6772, .topPrime 6763⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6768) (hi := 6772) (p := 6763)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨6775, 6775, .largeDivisor 228679828208940478079223817652011⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨6776, 6776, .largeDivisor 61353124641423055094425902296881⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨6777, 6777, .largeDivisor 4552064524090211891427993342157⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨6778, 6778, .largeDivisor 2279732033713865538650726974519⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨6779, 6787, .topPrime 6779⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6779) (hi := 6787) (p := 6779)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨6800, 6803, .topPrime 6793⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6800) (hi := 6803) (p := 6793)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨6804, 6813, .topPrime 6803⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6804) (hi := 6813) (p := 6803)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨6814, 6814, .largeDivisor 767181457886126177165121507683⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨6816, 6816, .largeDivisor 54549927423963327364291185645119⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨6817, 6817, .largeDivisor 109276184322409051613979727458941⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨6818, 6818, .largeDivisor 23454165608203264934335886854343⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk095

#print axioms B699LowIndex.I11TerminalData.Chunk095.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk095.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk095.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk095.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk095.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk095.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk095.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk095.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk095.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk095.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk095.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk095.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk095.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk095.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk095.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk095.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk095.witnesses_check
