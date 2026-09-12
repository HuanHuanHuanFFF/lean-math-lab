import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk240
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨118341, 118341, .largeDivisor 8379298861982010834652686883345311780182489⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨118342, 118342, .largeDivisor 598576985577185501561882872830601621535207⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨118343, 118345, .topPrime 118343⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 118343) (hi := 118345) (p := 118343)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨119556, 119561, .topPrime 119551⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 119556) (hi := 119561) (p := 119551)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨119562, 119562, .topPrime 119557⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 119562) (hi := 119562) (p := 119557)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨119808, 119808, .largeDivisor 29985865810455148267316207050877316369041⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨119809, 119809, .topPrime 119809⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 119809) (hi := 119809) (p := 119809)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨120050, 120052, .topPrime 120049⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 120050) (hi := 120052) (p := 120049)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨121088, 121089, .topPrime 121081⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 121088) (hi := 121089) (p := 121081)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨121257, 121257, .largeDivisor 613321219103997134656771438193465461935169⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨121258, 121258, .largeDivisor 2146819016976862899203590758399146555722381⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨121259, 121260, .topPrime 121259⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 121259) (hi := 121260) (p := 121259)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨122112, 122112, .largeDivisor 19966957821699626963858918739588316099529807⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨122113, 122113, .largeDivisor 39937513234528616196912485365470640020014141⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨122114, 122114, .largeDivisor 179735000041321863281114883095713191398393411⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨122115, 122115, .largeDivisor 13695328903102753521321929439842392818995711⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk240

#print axioms B699LowIndex.I11TerminalData.Chunk240.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk240.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk240.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk240.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk240.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk240.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk240.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk240.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk240.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk240.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk240.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk240.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk240.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk240.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk240.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk240.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk240.witnesses_check
