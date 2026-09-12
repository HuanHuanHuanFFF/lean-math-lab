import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk165
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨14112, 14117, .topPrime 14107⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 14112) (hi := 14117) (p := 14107)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨14118, 14118, .largeDivisor 329850875788525138946569014307946359⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨14119, 14119, .largeDivisor 188633177336392176142679246345088689⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨14120, 14120, .largeDivisor 14158518307409406374306989997834639⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨14121, 14121, .largeDivisor 5247983752498312922581542004867127⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨14122, 14122, .largeDivisor 2626037366337650595021491609125277⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨14176, 14183, .topPrime 14173⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 14176) (hi := 14183) (p := 14173)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨14184, 14185, .topPrime 14177⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 14184) (hi := 14185) (p := 14177)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨14210, 14217, .topPrime 14207⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 14210) (hi := 14217) (p := 14207)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨14218, 14218, .largeDivisor 6365905329555329281100630287665839⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨14250, 14250, .topPrime 14249⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 14250) (hi := 14250) (p := 14249)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨14256, 14261, .topPrime 14251⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 14256) (hi := 14261) (p := 14251)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨14262, 14262, .largeDivisor 11708573293973245480763033362793843⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨14263, 14263, .largeDivisor 328093086231710020220281227610075801⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨14264, 14264, .largeDivisor 123129861660942741749686682557096433⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨14265, 14265, .largeDivisor 5476661448929261840136197329956443⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk165

#print axioms B699LowIndex.I11TerminalData.Chunk165.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk165.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk165.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk165.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk165.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk165.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk165.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk165.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk165.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk165.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk165.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk165.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk165.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk165.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk165.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk165.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk165.witnesses_check
