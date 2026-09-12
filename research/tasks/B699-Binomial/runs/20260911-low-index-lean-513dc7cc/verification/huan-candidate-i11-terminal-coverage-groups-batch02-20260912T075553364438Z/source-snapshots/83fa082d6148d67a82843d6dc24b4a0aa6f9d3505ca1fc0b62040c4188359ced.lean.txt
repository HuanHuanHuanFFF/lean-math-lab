import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk120
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨8878, 8878, .largeDivisor 45740608782545554891696054040197⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨8879, 8879, .largeDivisor 549568153423845712968023361059417⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨8883, 8883, .largeDivisor 71594344638290415080088124256393⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨8884, 8884, .largeDivisor 17920775323074835105699957621261⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨8885, 8885, .largeDivisor 64594762168567914772472261040529⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨8900, 8903, .topPrime 8893⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8900) (hi := 8903) (p := 8893)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨8904, 8904, .largeDivisor 103330369351043730725625829380517⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨8905, 8905, .largeDivisor 41383266879741147835021273246391⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨8906, 8906, .largeDivisor 310758326164396848751011348678211⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨8910, 8910, .largeDivisor 86363875697644863864557117157259⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨8918, 8918, .largeDivisor 28607528321956182491523414435769⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨8919, 8919, .largeDivisor 12730157416730389245217648722877⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨8920, 8920, .largeDivisor 318646885613523044301665244719⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨8925, 8933, .topPrime 8923⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8925) (hi := 8933) (p := 8923)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨8934, 8935, .topPrime 8933⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8934) (hi := 8935) (p := 8933)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨8937, 8938, .topPrime 8933⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8937) (hi := 8938) (p := 8933)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk120

#print axioms B699LowIndex.I11TerminalData.Chunk120.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk120.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk120.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk120.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk120.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk120.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk120.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk120.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk120.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk120.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk120.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk120.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk120.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk120.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk120.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk120.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk120.witnesses_check
