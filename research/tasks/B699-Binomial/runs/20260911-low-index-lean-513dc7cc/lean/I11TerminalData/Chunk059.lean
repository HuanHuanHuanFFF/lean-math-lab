import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk059
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨4151, 4151, .largeDivisor 2226727782077939483240348418383⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨4152, 4152, .largeDivisor 93026782492026933252977608399⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨4153, 4163, .topPrime 4153⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4153) (hi := 4163) (p := 4153)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨4164, 4169, .topPrime 4159⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4164) (hi := 4169) (p := 4159)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨4170, 4170, .largeDivisor 24391510461291247777030778003⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨4171, 4171, .largeDivisor 7825922318003522652153490388501⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨4172, 4172, .largeDivisor 840708309576441871067678491627⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨4173, 4173, .largeDivisor 561953512071518809541153667397⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨4174, 4174, .largeDivisor 281719188011832754146622076353⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨4175, 4175, .largeDivisor 135582433423562161217538578533⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨4176, 4176, .largeDivisor 231287680546076627959330516321⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨4177, 4186, .topPrime 4177⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4177) (hi := 4186) (p := 4177)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨4192, 4192, .largeDivisor 603091213860626847135990872077⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨4193, 4193, .largeDivisor 518295031710926085271819989059⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨4194, 4194, .largeDivisor 28869888211485961718463795709⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨4195, 4195, .largeDivisor 46313262350739429984304253537⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk059

#print axioms B699LowIndex.I11TerminalData.Chunk059.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk059.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk059.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk059.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk059.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk059.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk059.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk059.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk059.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk059.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk059.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk059.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk059.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk059.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk059.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk059.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk059.witnesses_check
