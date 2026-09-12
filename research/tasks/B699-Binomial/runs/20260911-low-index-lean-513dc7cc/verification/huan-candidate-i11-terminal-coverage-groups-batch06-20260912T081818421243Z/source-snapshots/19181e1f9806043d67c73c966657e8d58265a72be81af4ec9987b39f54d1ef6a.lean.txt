import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk225
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨53129, 53130, .topPrime 53129⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 53129) (hi := 53130) (p := 53129)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨53250, 53250, .largeDivisor 7573574610600725706325317988380009217⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨53251, 53251, .largeDivisor 303005575949736472267114581667335740657⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨53252, 53252, .largeDivisor 227301134423781013990651739772200412203⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨53253, 53253, .largeDivisor 353652593317252763550535457331609213517⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨53254, 53254, .largeDivisor 176862828958895804801759998917580875013⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨53255, 53255, .largeDivisor 3821026351402026809216117136858324340291⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨53256, 53256, .largeDivisor 113744516235744435958447660098045714703⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨53257, 53257, .largeDivisor 227536029041319213681367503055313849977⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨53258, 53258, .largeDivisor 341374551655940579250725969849566314217⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨53376, 53376, .largeDivisor 3731072965182730950528294402999285783743⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨53377, 53385, .topPrime 53377⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 53377) (hi := 53385) (p := 53377)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨53504, 53513, .topPrime 53503⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 53504) (hi := 53513) (p := 53503)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨53514, 53514, .topPrime 53507⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 53514) (hi := 53514) (p := 53507)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨53632, 53635, .topPrime 53629⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 53632) (hi := 53635) (p := 53629)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨53760, 53760, .topPrime 53759⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 53760) (hi := 53760) (p := 53759)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk225

#print axioms B699LowIndex.I11TerminalData.Chunk225.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk225.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk225.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk225.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk225.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk225.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk225.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk225.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk225.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk225.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk225.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk225.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk225.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk225.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk225.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk225.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk225.witnesses_check
