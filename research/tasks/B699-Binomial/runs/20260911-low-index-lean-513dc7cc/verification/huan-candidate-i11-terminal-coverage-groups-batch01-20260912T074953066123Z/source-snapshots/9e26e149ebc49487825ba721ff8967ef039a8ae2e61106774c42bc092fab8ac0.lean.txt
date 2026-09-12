import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk092
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨6564, 6571, .topPrime 6563⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6564) (hi := 6571) (p := 6563)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨6575, 6581, .topPrime 6571⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6575) (hi := 6581) (p := 6571)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨6582, 6585, .topPrime 6581⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6582) (hi := 6585) (p := 6581)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨6592, 6592, .largeDivisor 44054020127363937198463531965701⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨6593, 6593, .largeDivisor 264765865724439779352297234503069⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨6594, 6594, .largeDivisor 6314482898182750320265937386751⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨6595, 6595, .largeDivisor 10120052178254006892382468302703⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨6596, 6596, .largeDivisor 38013590072758217233573326266873⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨6597, 6597, .largeDivisor 8461573496304820295235119390713⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨6598, 6598, .largeDivisor 29664963830297133001042145451607⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨6600, 6602, .topPrime 6599⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6600) (hi := 6602) (p := 6599)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨6608, 6610, .topPrime 6607⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6608) (hi := 6610) (p := 6607)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨6615, 6617, .topPrime 6607⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6615) (hi := 6617) (p := 6607)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨6618, 6618, .largeDivisor 3755509919145902684530373944529⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨6619, 6629, .topPrime 6619⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6619) (hi := 6629) (p := 6619)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨6630, 6630, .largeDivisor 643634264365329895359396495541⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk092

#print axioms B699LowIndex.I11TerminalData.Chunk092.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk092.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk092.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk092.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk092.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk092.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk092.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk092.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk092.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk092.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk092.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk092.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk092.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk092.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk092.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk092.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk092.witnesses_check
