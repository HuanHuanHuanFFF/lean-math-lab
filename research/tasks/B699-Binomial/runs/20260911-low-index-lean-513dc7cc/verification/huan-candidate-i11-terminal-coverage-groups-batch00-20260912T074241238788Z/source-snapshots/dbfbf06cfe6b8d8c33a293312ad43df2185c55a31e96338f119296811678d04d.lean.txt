import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk087
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨6154, 6154, .topPrime 6151⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6154) (hi := 6154) (p := 6151)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨6156, 6161, .topPrime 6151⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6156) (hi := 6161) (p := 6151)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨6162, 6162, .largeDivisor 3993213719428528737081307448873⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨6163, 6166, .topPrime 6163⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6163) (hi := 6166) (p := 6163)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨6175, 6183, .topPrime 6173⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6175) (hi := 6183) (p := 6173)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨6184, 6184, .largeDivisor 8475511877858623624572465907⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨6185, 6185, .largeDivisor 10484208192911117423596140326959⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨6186, 6186, .largeDivisor 43762018813325352484727209219007⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨6192, 6192, .largeDivisor 29487719545489179751820978287093⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨6193, 6193, .largeDivisor 59080377594698961566815696710439⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨6200, 6202, .topPrime 6199⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6200) (hi := 6202) (p := 6199)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨6208, 6213, .topPrime 6203⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6208) (hi := 6213) (p := 6203)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨6214, 6218, .topPrime 6211⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6214) (hi := 6218) (p := 6211)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨6224, 6231, .topPrime 6221⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6224) (hi := 6231) (p := 6221)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨6232, 6234, .topPrime 6229⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6232) (hi := 6234) (p := 6229)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨6240, 6240, .largeDivisor 458630482798491609388483482821⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk087

#print axioms B699LowIndex.I11TerminalData.Chunk087.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk087.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk087.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk087.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk087.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk087.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk087.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk087.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk087.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk087.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk087.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk087.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk087.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk087.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk087.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk087.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk087.witnesses_check
