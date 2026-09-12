import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk235
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨86784, 86789, .topPrime 86783⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 86784) (hi := 86789) (p := 86783)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨87808, 87813, .topPrime 87803⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 87808) (hi := 87813) (p := 87803)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨87814, 87818, .topPrime 87811⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 87814) (hi := 87818) (p := 87811)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨88837, 88837, .largeDivisor 49237214613627350130864071102620690245257⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨88838, 88838, .largeDivisor 73864967946324200934271713813614388868387⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨88839, 88839, .largeDivisor 32832940000818038790570364617201226303411⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨88840, 88840, .largeDivisor 820925145412161165316020441689132193539⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨88841, 88841, .largeDivisor 1551740656245995959315756852342642408642517⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨88842, 88842, .largeDivisor 258655468215312921948288454623245332651549⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨89181, 89181, .largeDivisor 85245557358222759900464802220126085620037⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨89182, 89182, .largeDivisor 42628036560771002755622635114528740104777⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨89183, 89183, .largeDivisor 1534798621154315841241297322333070903820883⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨89184, 89184, .largeDivisor 111926204494258530223185902539243493967313⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨89185, 89185, .largeDivisor 44776004430979644371475249368481535019063⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨89186, 89186, .largeDivisor 1679307288133452717794109163236919336505531⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨89187, 89187, .largeDivisor 639815022221474270428956814951753514141831⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk235

#print axioms B699LowIndex.I11TerminalData.Chunk235.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk235.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk235.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk235.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk235.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk235.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk235.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk235.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk235.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk235.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk235.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk235.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk235.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk235.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk235.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk235.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk235.witnesses_check
