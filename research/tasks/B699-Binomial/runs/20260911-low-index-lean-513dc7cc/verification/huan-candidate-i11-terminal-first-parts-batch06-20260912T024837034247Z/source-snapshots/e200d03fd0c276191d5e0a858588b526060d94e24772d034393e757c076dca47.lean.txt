import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk053
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨3792, 3792, .largeDivisor 1199084351669285337867280026487⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨3793, 3803, .topPrime 3793⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3793) (hi := 3803) (p := 3793)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨3804, 3813, .topPrime 3803⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3804) (hi := 3813) (p := 3803)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨3814, 3814, .largeDivisor 141997136998969511981726424407⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨3815, 3815, .largeDivisor 48825513983872797495293944039⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨3816, 3816, .largeDivisor 3400462866156712571945570347⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨3817, 3817, .largeDivisor 6820581587031094002688513933⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨3818, 3818, .largeDivisor 277031707439199115981539853151⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨3819, 3819, .largeDivisor 20744786092358851449676484297719⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨3820, 3820, .largeDivisor 1040234744983077087657707666281⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨3821, 3831, .topPrime 3821⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3821) (hi := 3831) (p := 3821)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨3832, 3833, .topPrime 3823⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3832) (hi := 3833) (p := 3823)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨3834, 3843, .topPrime 3833⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3834) (hi := 3843) (p := 3833)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨3844, 3844, .largeDivisor 2764204188475767665399084521⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨3845, 3845, .largeDivisor 29939056632927680770308394319⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨3846, 3846, .largeDivisor 25020776143033433342591500337⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk053

#print axioms B699LowIndex.I11TerminalData.Chunk053.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk053.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk053.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk053.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk053.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk053.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk053.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk053.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk053.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk053.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk053.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk053.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk053.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk053.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk053.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk053.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk053.witnesses_check
