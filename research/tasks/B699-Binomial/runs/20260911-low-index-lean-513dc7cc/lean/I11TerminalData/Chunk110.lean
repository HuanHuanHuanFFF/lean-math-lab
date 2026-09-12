import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk110
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨7952, 7960, .topPrime 7951⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7952) (hi := 7960) (p := 7951)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨7968, 7973, .topPrime 7963⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7968) (hi := 7973) (p := 7963)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨7974, 7974, .largeDivisor 68187413041427852001882036356671⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨7975, 7975, .largeDivisor 10925055128184572972677232344439⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨7976, 7976, .largeDivisor 184614914623729139894223739786537⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨7977, 7977, .largeDivisor 862725936703859021052268759389107⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨7978, 7978, .largeDivisor 431958549204429978031567727024369⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨7984, 7984, .largeDivisor 290365173786388907111190760740707⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨7985, 7985, .largeDivisor 1046756619722038565816188814679253⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨7987, 7987, .largeDivisor 714044921342571391194019714035863⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨7988, 7988, .largeDivisor 536272172967700288911040755520729⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨7989, 7989, .largeDivisor 358007720384303301421434327388243⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨7990, 7990, .largeDivisor 35850127658485817500404314774183⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨7991, 7991, .largeDivisor 15077808953629482507670046282131387⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨7992, 7992, .largeDivisor 69900881002918287530859755975299⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨7993, 7997, .topPrime 7993⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7993) (hi := 7997) (p := 7993)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk110

#print axioms B699LowIndex.I11TerminalData.Chunk110.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk110.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk110.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk110.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk110.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk110.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk110.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk110.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk110.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk110.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk110.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk110.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk110.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk110.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk110.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk110.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk110.witnesses_check
