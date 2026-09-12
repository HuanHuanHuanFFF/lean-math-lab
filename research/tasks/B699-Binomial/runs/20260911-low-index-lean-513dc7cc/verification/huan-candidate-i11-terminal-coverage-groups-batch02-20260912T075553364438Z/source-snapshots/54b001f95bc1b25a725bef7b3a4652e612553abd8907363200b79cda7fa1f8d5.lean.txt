import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk126
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨9452, 9452, .largeDivisor 3190272592148723604771625007683663⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨9453, 9453, .largeDivisor 2129326188913498851649097733363953⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨9454, 9454, .largeDivisor 7461323124532326962005400285849819⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨9455, 9455, .largeDivisor 17928033073050356143776635248465067⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨9456, 9456, .largeDivisor 1869678409418168427911062543116791⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨9457, 9457, .largeDivisor 76402272500043723605088941524781⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨9458, 9458, .largeDivisor 114736851906226347706721373283801⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨9459, 9459, .largeDivisor 102107054490638350076006912211071⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨9460, 9460, .largeDivisor 5111296092080848723245980471567⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨9475, 9483, .topPrime 9473⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9475) (hi := 9483) (p := 9473)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨9484, 9485, .topPrime 9479⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9484) (hi := 9485) (p := 9479)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨9504, 9507, .topPrime 9497⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9504) (hi := 9507) (p := 9497)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨9508, 9508, .largeDivisor 8106128025834577831874341736579⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨9509, 9509, .largeDivisor 48693096271421983956597040791617⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨9510, 9510, .largeDivisor 11374879526927611580133575483377⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨9511, 9514, .topPrime 9511⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9511) (hi := 9514) (p := 9511)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk126

#print axioms B699LowIndex.I11TerminalData.Chunk126.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk126.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk126.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk126.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk126.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk126.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk126.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk126.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk126.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk126.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk126.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk126.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk126.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk126.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk126.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk126.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk126.witnesses_check
