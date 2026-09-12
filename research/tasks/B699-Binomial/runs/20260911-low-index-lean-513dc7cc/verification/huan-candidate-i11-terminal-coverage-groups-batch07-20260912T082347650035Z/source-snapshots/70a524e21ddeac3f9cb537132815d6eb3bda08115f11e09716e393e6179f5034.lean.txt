import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk243
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨138760, 138760, .largeDivisor 354767920990485941731811504594866686463841⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨139264, 139264, .largeDivisor 1135259009002424953000535751123420765240823⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨139265, 139265, .largeDivisor 194631203275481446335005030536433763837013⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨139266, 139266, .largeDivisor 18022831253723982984380380372462844312077⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨139267, 139268, .topPrime 139267⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 139267) (hi := 139268) (p := 139267)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨140288, 140291, .topPrime 140281⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 140288) (hi := 140291) (p := 140281)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨140292, 140292, .largeDivisor 5106048426737822680311916769919790644417667⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨140293, 140293, .largeDivisor 10212897619542483815300605058416007597229691⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨140294, 140294, .largeDivisor 6565948998873114153661856886532803755170253⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨140295, 140295, .largeDivisor 1751057026787380932371456401577979342536779⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨140296, 140296, .largeDivisor 1094496456455440688990206754623552900526339⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨140297, 140297, .topPrime 140297⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 140297) (hi := 140297) (p := 140297)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨140630, 140635, .topPrime 140629⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 140630) (hi := 140635) (p := 140629)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨141316, 141321, .topPrime 141311⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 141316) (hi := 141321) (p := 141311)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨141322, 141322, .topPrime 141319⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 141322) (hi := 141322) (p := 141319)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨142345, 142345, .largeDivisor 513503026586703953366191455499856538195091⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk243

#print axioms B699LowIndex.I11TerminalData.Chunk243.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk243.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk243.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk243.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk243.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk243.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk243.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk243.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk243.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk243.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk243.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk243.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk243.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk243.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk243.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk243.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk243.witnesses_check
