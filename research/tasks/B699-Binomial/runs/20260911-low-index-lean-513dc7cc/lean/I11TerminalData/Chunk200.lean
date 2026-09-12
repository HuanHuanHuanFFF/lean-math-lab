import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk200
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨26568, 26570, .topPrime 26561⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 26568) (hi := 26570) (p := 26561)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨26625, 26625, .largeDivisor 103438051668642572662733705844261313⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨26626, 26626, .largeDivisor 258702006737673975175460046196628003⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨26627, 26634, .topPrime 26627⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 26627) (hi := 26634) (p := 26627)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨26752, 26752, .largeDivisor 13079732745630123620577867014632241129⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨26753, 26753, .largeDivisor 78510677618093492757756265703939050241⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨26754, 26754, .largeDivisor 38164708859709658821030978355128731⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨26755, 26755, .largeDivisor 61088650047354587003092062572029267⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨26756, 26756, .largeDivisor 229176657412649934079463155661415461⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨26757, 26757, .largeDivisor 16983030546319904634169444945820887⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨26758, 26758, .largeDivisor 59465052520076944281746402494147513⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨26759, 26762, .topPrime 26759⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 26759) (hi := 26762) (p := 26759)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨26816, 26821, .topPrime 26813⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 26816) (hi := 26821) (p := 26813)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨26880, 26885, .topPrime 26879⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 26880) (hi := 26885) (p := 26879)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨27008, 27008, .largeDivisor 296421101491466804567799990698645099⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨27009, 27009, .largeDivisor 65898194353351498667158142979971401⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk200

#print axioms B699LowIndex.I11TerminalData.Chunk200.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk200.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk200.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk200.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk200.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk200.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk200.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk200.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk200.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk200.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk200.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk200.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk200.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk200.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk200.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk200.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk200.witnesses_check
