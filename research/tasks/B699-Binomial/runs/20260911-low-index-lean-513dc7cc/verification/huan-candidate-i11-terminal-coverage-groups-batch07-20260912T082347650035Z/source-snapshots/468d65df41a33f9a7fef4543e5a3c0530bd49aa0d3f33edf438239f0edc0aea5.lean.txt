import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk234
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨81162, 81162, .topPrime 81157⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 81162) (hi := 81162) (p := 81157)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨81408, 81411, .topPrime 81401⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 81408) (hi := 81411) (p := 81401)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨81412, 81415, .topPrime 81409⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 81412) (hi := 81415) (p := 81409)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨83349, 83351, .topPrime 83341⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 83349) (hi := 83351) (p := 83341)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨83352, 83352, .largeDivisor 15197244445777580315686920509995614865307⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨83353, 83353, .largeDivisor 212789503828136847312859379349851249095907⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨83354, 83354, .largeDivisor 319226383177180784905440421624986519872219⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨83355, 83355, .largeDivisor 340553083377921601405170363403733939514287⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨83356, 83356, .largeDivisor 60821076802212046756445627923265699078171⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨83357, 83359, .topPrime 83357⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 83357) (hi := 83359) (p := 83357)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨84378, 84385, .topPrime 84377⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 84378) (hi := 84385) (p := 84377)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨85000, 85001, .topPrime 84991⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 85000) (hi := 85001) (p := 84991)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨85002, 85002, .largeDivisor 5196768023971699887629220543500881300147⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨85760, 85760, .topPrime 85751⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 85760) (hi := 85760) (p := 85751)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨86022, 86026, .topPrime 86017⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 86022) (hi := 86026) (p := 86017)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨86272, 86275, .topPrime 86269⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 86272) (hi := 86275) (p := 86269)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk234

#print axioms B699LowIndex.I11TerminalData.Chunk234.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk234.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk234.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk234.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk234.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk234.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk234.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk234.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk234.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk234.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk234.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk234.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk234.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk234.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk234.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk234.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk234.witnesses_check
