import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk186
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨20583, 20583, .largeDivisor 12631935013403019452110046484705451⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨20584, 20584, .largeDivisor 11058852939600533872160309494776157⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨20629, 20635, .topPrime 20627⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 20629) (hi := 20635) (p := 20627)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨20678, 20678, .largeDivisor 941817410044003894086621442905254909⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨20679, 20679, .largeDivisor 1256424890155471035792351772004242711⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨20680, 20680, .largeDivisor 31427338923526949804279155553059823⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨20681, 20682, .topPrime 20681⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 20681) (hi := 20682) (p := 20681)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨20736, 20741, .topPrime 20731⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 20736) (hi := 20741) (p := 20731)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨20742, 20742, .largeDivisor 315774936863783740837940597424901303⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨20743, 20746, .topPrime 20743⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 20743) (hi := 20746) (p := 20743)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨20825, 20825, .largeDivisor 90503134032887644402559913559453291⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨20826, 20826, .largeDivisor 25153044937797502900255061251089949⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨20827, 20827, .largeDivisor 402661388869722208227219185762067923⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨20874, 20883, .topPrime 20873⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 20874) (hi := 20883) (p := 20873)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨20884, 20884, .topPrime 20879⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 20884) (hi := 20884) (p := 20879)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨20928, 20931, .topPrime 20921⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 20928) (hi := 20931) (p := 20921)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk186

#print axioms B699LowIndex.I11TerminalData.Chunk186.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk186.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk186.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk186.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk186.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk186.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk186.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk186.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk186.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk186.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk186.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk186.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk186.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk186.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk186.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk186.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk186.witnesses_check
