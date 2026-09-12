import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk170
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨15488, 15488, .largeDivisor 342722347860170080729639137952402733⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨15489, 15489, .largeDivisor 76214647973556365025934740459501887⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨15490, 15490, .largeDivisor 7626880916792997572528775306658597⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨15491, 15491, .largeDivisor 392518313229369851814097203572918027⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨15492, 15492, .largeDivisor 32733101374531133563206478251575297⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨15493, 15494, .topPrime 15493⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 15493) (hi := 15494) (p := 15493)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨15552, 15561, .topPrime 15551⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 15552) (hi := 15561) (p := 15551)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨15562, 15562, .topPrime 15559⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 15562) (hi := 15562) (p := 15559)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨15584, 15592, .topPrime 15583⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 15584) (hi := 15592) (p := 15583)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨15625, 15626, .topPrime 15619⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 15625) (hi := 15626) (p := 15619)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨15631, 15639, .topPrime 15629⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 15631) (hi := 15639) (p := 15629)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨15640, 15640, .largeDivisor 3230510035037646002392556808620111⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨15641, 15641, .topPrime 15641⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 15641) (hi := 15641) (p := 15641)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨15680, 15689, .topPrime 15679⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 15680) (hi := 15689) (p := 15679)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨15690, 15690, .topPrime 15683⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 15690) (hi := 15690) (p := 15683)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨15714, 15714, .largeDivisor 138945064484179231521276567144937937⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk170

#print axioms B699LowIndex.I11TerminalData.Chunk170.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk170.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk170.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk170.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk170.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk170.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk170.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk170.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk170.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk170.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk170.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk170.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk170.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk170.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk170.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk170.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk170.witnesses_check
