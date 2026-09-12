import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk054
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨3847, 3857, .topPrime 3847⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3847) (hi := 3857) (p := 3847)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨3858, 3863, .topPrime 3853⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3858) (hi := 3863) (p := 3853)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨3864, 3873, .topPrime 3863⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3864) (hi := 3873) (p := 3863)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨3874, 3874, .largeDivisor 15486789670270016761493282881⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨3875, 3875, .largeDivisor 20873499120798718243751816057⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨3876, 3876, .largeDivisor 8722044263930124182059297007⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨3877, 3887, .topPrime 3877⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3877) (hi := 3887) (p := 3877)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨3888, 3891, .topPrime 3881⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3888) (hi := 3891) (p := 3881)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨3892, 3899, .topPrime 3889⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3892) (hi := 3899) (p := 3889)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨3900, 3900, .largeDivisor 37342681014190267080584149489⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨3901, 3901, .largeDivisor 374482772844103423859534105801⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨3902, 3902, .largeDivisor 563312174108593508057016993383⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨3903, 3903, .largeDivisor 5272439845433670172533662650297⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨3904, 3904, .largeDivisor 82614649517455402138338921569⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨3905, 3905, .largeDivisor 99417629080327687319018024261⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨3906, 3906, .largeDivisor 3956285624505979854800460529⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk054

#print axioms B699LowIndex.I11TerminalData.Chunk054.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk054.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk054.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk054.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk054.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk054.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk054.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk054.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk054.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk054.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk054.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk054.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk054.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk054.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk054.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk054.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk054.witnesses_check
