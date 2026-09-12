import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk216
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨39936, 39939, .topPrime 39929⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 39936) (hi := 39939) (p := 39929)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨39940, 39943, .topPrime 39937⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 39940) (hi := 39943) (p := 39937)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨40131, 40135, .topPrime 40129⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 40131) (hi := 40135) (p := 40129)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨40257, 40260, .topPrime 40253⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 40257) (hi := 40260) (p := 40253)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨40500, 40509, .topPrime 40499⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 40500) (hi := 40509) (p := 40499)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨40510, 40510, .topPrime 40507⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 40510) (hi := 40510) (p := 40507)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨40581, 40586, .topPrime 40577⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 40581) (hi := 40586) (p := 40577)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨40824, 40827, .topPrime 40823⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 40824) (hi := 40827) (p := 40823)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨40832, 40834, .topPrime 40829⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 40832) (hi := 40834) (p := 40829)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨41503, 41503, .largeDivisor 204017048245313927155554621470462835101⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨41504, 41504, .largeDivisor 19131668829019750091877257179321111787⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨41505, 41505, .largeDivisor 2551565414271829590023828534977660207⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨41506, 41506, .largeDivisor 6380604535773379862846669910397804829⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨41507, 41510, .topPrime 41507⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 41507) (hi := 41510) (p := 41507)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨41856, 41856, .topPrime 41851⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 41856) (hi := 41856) (p := 41851)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨42250, 42250, .largeDivisor 199572866154807154690633322619236127881⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk216

#print axioms B699LowIndex.I11TerminalData.Chunk216.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk216.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk216.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk216.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk216.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk216.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk216.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk216.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk216.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk216.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk216.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk216.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk216.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk216.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk216.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk216.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk216.witnesses_check
