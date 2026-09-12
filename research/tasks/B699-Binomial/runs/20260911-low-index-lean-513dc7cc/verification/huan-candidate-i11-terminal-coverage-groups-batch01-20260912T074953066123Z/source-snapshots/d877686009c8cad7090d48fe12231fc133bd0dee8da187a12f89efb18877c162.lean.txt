import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk091
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨6510, 6510, .largeDivisor 701864818407061570374642339941⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨6512, 6512, .largeDivisor 66022705118309247065304163290967⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨6513, 6513, .largeDivisor 44089600987957359390579925716607⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨6514, 6514, .largeDivisor 154574629082644908003357177673831⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨6515, 6515, .largeDivisor 743213068984082343647138016638383⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨6516, 6516, .largeDivisor 103398589920152885626542644897423⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨6517, 6517, .largeDivisor 603926593446942768799357593929⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨6518, 6518, .largeDivisor 8166791568645587068535711197571⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨6519, 6519, .largeDivisor 10907460404835194038062753799829⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨6520, 6520, .largeDivisor 273147341525293689999113361403⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨6521, 6522, .topPrime 6521⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6521) (hi := 6522) (p := 6521)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨6525, 6531, .topPrime 6521⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6525) (hi := 6531) (p := 6521)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨6532, 6538, .topPrime 6529⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6532) (hi := 6538) (p := 6529)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨6544, 6544, .largeDivisor 54198178070277672562469982065851⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨6550, 6554, .topPrime 6547⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6550) (hi := 6554) (p := 6547)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨6560, 6563, .topPrime 6553⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6560) (hi := 6563) (p := 6553)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk091

#print axioms B699LowIndex.I11TerminalData.Chunk091.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk091.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk091.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk091.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk091.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk091.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk091.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk091.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk091.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk091.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk091.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk091.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk091.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk091.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk091.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk091.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk091.witnesses_check
