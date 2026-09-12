import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk039
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨2985, 2985, .largeDivisor 490841428053101851296230309⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨2986, 2986, .largeDivisor 43107426593134180234427755961⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨2987, 2987, .largeDivisor 4153609136570703108394700227597⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨2988, 2988, .largeDivisor 115804352816717621093973839063⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨2989, 2989, .largeDivisor 4744167576776208788940499787⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨2990, 2990, .largeDivisor 4285516934912647818408487723⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨2991, 2991, .largeDivisor 28675573047704093120491693019⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨2992, 2992, .largeDivisor 1798836685649334254790991813⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨2993, 2993, .largeDivisor 75829833804907851050555471779⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨2994, 2994, .largeDivisor 12684910180572919099640355487⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨2995, 2995, .largeDivisor 20370673453520585899958640581⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨2996, 2996, .largeDivisor 10953075676013581363294344433⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨2997, 2997, .largeDivisor 271442598802747830168714497⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨2998, 2998, .largeDivisor 136221110011824237503482769⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨2999, 3009, .topPrime 2999⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2999) (hi := 3009) (p := 2999)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨3010, 3011, .topPrime 3001⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3010) (hi := 3011) (p := 3001)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk039

#print axioms B699LowIndex.I11TerminalData.Chunk039.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk039.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk039.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk039.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk039.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk039.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk039.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk039.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk039.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk039.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk039.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk039.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk039.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk039.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk039.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk039.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk039.witnesses_check
