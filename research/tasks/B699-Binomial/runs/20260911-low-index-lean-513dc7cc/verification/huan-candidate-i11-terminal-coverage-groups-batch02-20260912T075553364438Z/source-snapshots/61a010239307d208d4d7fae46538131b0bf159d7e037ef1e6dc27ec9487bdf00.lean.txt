import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk136
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨10427, 10435, .topPrime 10427⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10427) (hi := 10435) (p := 10427)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨10437, 10442, .topPrime 10433⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10437) (hi := 10442) (p := 10433)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨10450, 10450, .largeDivisor 41607410300192221032657784182091⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨10451, 10451, .largeDivisor 2142064261316792620750278337374547⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨10452, 10452, .largeDivisor 178693417451099164129249346983357⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨10453, 10459, .topPrime 10453⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10453) (hi := 10459) (p := 10453)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨10476, 10476, .largeDivisor 7696974713401741102091071436883361⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨10477, 10486, .topPrime 10477⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10477) (hi := 10486) (p := 10477)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨10496, 10496, .topPrime 10487⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10496) (hi := 10496) (p := 10487)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨10500, 10509, .topPrime 10499⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10500) (hi := 10509) (p := 10499)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨10510, 10510, .topPrime 10501⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10510) (hi := 10510) (p := 10501)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨10528, 10528, .largeDivisor 1306291386698995555656339700942223⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨10529, 10539, .topPrime 10529⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10529) (hi := 10539) (p := 10529)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨10540, 10540, .topPrime 10531⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10540) (hi := 10540) (p := 10531)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨10557, 10557, .largeDivisor 2393673276106339932050543131032449⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨10558, 10558, .largeDivisor 1198084879545403290157847462664293⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk136

#print axioms B699LowIndex.I11TerminalData.Chunk136.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk136.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk136.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk136.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk136.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk136.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk136.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk136.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk136.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk136.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk136.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk136.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk136.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk136.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk136.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk136.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk136.witnesses_check
