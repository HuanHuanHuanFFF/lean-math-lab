import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk090
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨6432, 6436, .topPrime 6427⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6432) (hi := 6436) (p := 6427)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨6450, 6459, .topPrime 6449⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6450) (hi := 6459) (p := 6449)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨6460, 6460, .topPrime 6451⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6460) (hi := 6460) (p := 6451)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨6468, 6468, .largeDivisor 4376753746780062258668624287981⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨6469, 6478, .topPrime 6469⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6469) (hi := 6478) (p := 6469)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨6480, 6483, .topPrime 6473⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6480) (hi := 6483) (p := 6473)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨6484, 6490, .topPrime 6481⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6484) (hi := 6490) (p := 6481)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨6500, 6501, .topPrime 6491⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6500) (hi := 6501) (p := 6491)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨6502, 6502, .largeDivisor 18176238156196509558121842545851⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨6503, 6503, .largeDivisor 31212061454910457263392221303319⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨6504, 6504, .largeDivisor 1302705783810370232308531029293⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨6505, 6505, .largeDivisor 521964959882134792803633775519⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨6506, 6506, .largeDivisor 3921367239022135060023604322779⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨6507, 6507, .largeDivisor 32587913951873605153989263509991⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨6508, 6508, .largeDivisor 8160772048591404584506777240381⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨6509, 6509, .largeDivisor 147142563058951391802090340879889⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk090

#print axioms B699LowIndex.I11TerminalData.Chunk090.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk090.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk090.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk090.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk090.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk090.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk090.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk090.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk090.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk090.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk090.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk090.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk090.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk090.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk090.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk090.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk090.witnesses_check
