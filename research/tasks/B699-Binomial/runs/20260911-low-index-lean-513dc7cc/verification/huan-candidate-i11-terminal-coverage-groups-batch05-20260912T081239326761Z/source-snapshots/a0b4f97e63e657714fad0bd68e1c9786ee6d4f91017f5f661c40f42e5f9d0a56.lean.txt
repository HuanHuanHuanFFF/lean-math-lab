import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk194
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨23430, 23430, .largeDivisor 124131646561813586760063281911507463⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨23431, 23432, .topPrime 23431⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 23431) (hi := 23432) (p := 23431)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨23490, 23490, .largeDivisor 1158525109990580293830032152291730837⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨23491, 23491, .largeDivisor 46362714410202251588349719402870611741⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨23492, 23492, .largeDivisor 14909282249965384853440174234959158011⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨23493, 23493, .largeDivisor 9944177608336507008541862229279036401⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨23494, 23494, .largeDivisor 4974417849726565934051920777044706409⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨23495, 23495, .largeDivisor 11944194928904002720546742836654611863⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨23496, 23496, .largeDivisor 17426776207745184297191149384627220587⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨23497, 23498, .topPrime 23497⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 23497) (hi := 23498) (p := 23497)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨23500, 23500, .topPrime 23497⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 23500) (hi := 23500) (p := 23497)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨23571, 23577, .topPrime 23567⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 23571) (hi := 23577) (p := 23567)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨23578, 23578, .largeDivisor 98545448699655435602843861473436417⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨23579, 23579, .largeDivisor 4732389276760031600976487596094006673⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨23618, 23619, .topPrime 23609⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 23618) (hi := 23619) (p := 23609)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨23620, 23620, .largeDivisor 1356670466083401992731873037205075013⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk194

#print axioms B699LowIndex.I11TerminalData.Chunk194.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk194.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk194.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk194.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk194.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk194.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk194.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk194.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk194.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk194.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk194.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk194.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk194.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk194.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk194.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk194.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk194.witnesses_check
