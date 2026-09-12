import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk190
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨21960, 21960, .largeDivisor 321968190400921455115919281489519⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨21961, 21962, .topPrime 21961⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 21961) (hi := 21962) (p := 21961)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨22001, 22007, .topPrime 21997⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 22001) (hi := 22007) (p := 21997)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨22008, 22010, .topPrime 22003⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 22008) (hi := 22010) (p := 22003)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨22148, 22154, .topPrime 22147⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 22148) (hi := 22154) (p := 22147)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨22197, 22203, .topPrime 22193⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 22197) (hi := 22203) (p := 22193)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨22204, 22204, .largeDivisor 203610730513690397670512895442235689⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨22250, 22256, .topPrime 22247⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 22250) (hi := 22256) (p := 22247)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨22275, 22282, .topPrime 22273⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 22275) (hi := 22282) (p := 22273)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨22344, 22346, .topPrime 22343⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 22344) (hi := 22346) (p := 22343)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨22400, 22403, .topPrime 22397⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 22400) (hi := 22403) (p := 22397)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨22442, 22447, .topPrime 22441⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 22442) (hi := 22447) (p := 22441)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨22500, 22500, .largeDivisor 1413286996536987482849972204690207⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨22501, 22501, .topPrime 22501⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 22501) (hi := 22501) (p := 22501)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨22528, 22528, .largeDivisor 3264749202676099712087472964562971⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨22592, 22592, .largeDivisor 6236088237333625640101038518967564491⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk190

#print axioms B699LowIndex.I11TerminalData.Chunk190.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk190.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk190.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk190.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk190.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk190.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk190.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk190.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk190.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk190.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk190.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk190.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk190.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk190.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk190.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk190.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk190.witnesses_check
