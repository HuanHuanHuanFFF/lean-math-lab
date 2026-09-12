import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk180
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨18823, 18823, .largeDivisor 372043523302333393277268654943982993⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨18824, 18824, .largeDivisor 139597896719883666780643142255332799⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨18825, 18825, .largeDivisor 3724787081608461822253792782618107⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨18826, 18826, .largeDivisor 9317411852027757409746200229280957⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨18873, 18879, .topPrime 18869⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 18873) (hi := 18879) (p := 18869)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨18880, 18880, .largeDivisor 1794936078623173652029747596303877⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨18881, 18881, .largeDivisor 53879472337812625952263377370132753⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨18882, 18882, .largeDivisor 2995048830605979790362157959899807⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨18883, 18883, .largeDivisor 167820495751729128728215515598777613⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨18884, 18884, .largeDivisor 3400345752978168312128349567132313781⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨18885, 18885, .largeDivisor 453643668856576656243466366961914067⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨18954, 18954, .topPrime 18947⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 18954) (hi := 18954) (p := 18947)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨18963, 18964, .topPrime 18959⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 18963) (hi := 18964) (p := 18959)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨19008, 19010, .topPrime 19001⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 19008) (hi := 19010) (p := 19001)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨19012, 19018, .topPrime 19009⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 19012) (hi := 19018) (p := 19009)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨19116, 19116, .largeDivisor 1371888146741544122908963950060553801⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk180

#print axioms B699LowIndex.I11TerminalData.Chunk180.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk180.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk180.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk180.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk180.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk180.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk180.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk180.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk180.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk180.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk180.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk180.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk180.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk180.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk180.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk180.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk180.witnesses_check
