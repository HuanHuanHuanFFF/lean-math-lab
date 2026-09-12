import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk094
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨6700, 6701, .topPrime 6691⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6700) (hi := 6701) (p := 6691)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨6702, 6710, .topPrime 6701⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6702) (hi := 6710) (p := 6701)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨6713, 6714, .topPrime 6709⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6713) (hi := 6714) (p := 6709)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨6720, 6729, .topPrime 6719⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6720) (hi := 6729) (p := 6719)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨6730, 6730, .largeDivisor 105408866298120184922597634263⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨6731, 6731, .largeDivisor 709507079052646964714004676224253⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨6732, 6732, .largeDivisor 19740786160220946645070506539791⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨6733, 6733, .topPrime 6733⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6733) (hi := 6733) (p := 6733)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨6750, 6750, .largeDivisor 348508554295813415532777340969⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨6751, 6751, .largeDivisor 6981546736056487739649198305287⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨6752, 6752, .largeDivisor 13767349171102045916504493854351⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨6753, 6753, .largeDivisor 9193207648813617727099263027631⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨6754, 6754, .largeDivisor 4604102362456412140651670064409⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨6755, 6755, .largeDivisor 3162248241829493036105951325377⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨6756, 6756, .largeDivisor 1319752231393628301947850701399⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨6757, 6757, .largeDivisor 2643808427965237603398051345791⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk094

#print axioms B699LowIndex.I11TerminalData.Chunk094.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk094.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk094.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk094.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk094.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk094.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk094.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk094.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk094.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk094.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk094.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk094.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk094.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk094.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk094.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk094.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk094.witnesses_check
