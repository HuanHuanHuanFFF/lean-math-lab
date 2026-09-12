import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk097
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨6883, 6890, .topPrime 6883⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6883) (hi := 6890) (p := 6883)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨6900, 6906, .topPrime 6899⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6900) (hi := 6906) (p := 6899)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨6909, 6910, .topPrime 6907⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6909) (hi := 6910) (p := 6907)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨6912, 6921, .topPrime 6911⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6912) (hi := 6921) (p := 6911)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨6922, 6922, .topPrime 6917⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6922) (hi := 6922) (p := 6917)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨6928, 6928, .largeDivisor 182755387957791001869991891080719⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨6929, 6929, .largeDivisor 1098275874379474286172743983779967⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨6930, 6930, .largeDivisor 1746066572940340677540133519523⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨6931, 6931, .largeDivisor 69953684491615614081102112276381⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨6932, 6932, .largeDivisor 157645949576033627051430377860817⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨6933, 6933, .largeDivisor 105264313629070705609897602784267⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨6934, 6934, .largeDivisor 369010490750240784984342759204301⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨6935, 6935, .largeDivisor 887032150208984347960629821518831⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨6944, 6944, .largeDivisor 66948411246401473778947457891131⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨6945, 6945, .largeDivisor 8940615635155431889141238247359⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨6946, 6946, .largeDivisor 22386992141957328731786244003661⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk097

#print axioms B699LowIndex.I11TerminalData.Chunk097.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk097.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk097.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk097.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk097.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk097.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk097.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk097.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk097.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk097.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk097.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk097.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk097.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk097.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk097.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk097.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk097.witnesses_check
