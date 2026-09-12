import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk056
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨3967, 3977, .topPrime 3967⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3967) (hi := 3977) (p := 3967)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨3978, 3978, .largeDivisor 38395993672692582777359977⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨3979, 3979, .largeDivisor 4928311574956251189390817693⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨3980, 3980, .largeDivisor 980734003416293986688772720907⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨3981, 3981, .largeDivisor 3278171341394010378680104283737⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨3982, 3982, .largeDivisor 1643626074216941491803597992677⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨3983, 3983, .largeDivisor 2825447843593473440592892017623⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨3984, 3984, .largeDivisor 59026471436762722267608869233⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨3985, 3985, .largeDivisor 23675942493759380798834559023⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨3986, 3986, .largeDivisor 890304780944574451548627851563⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨3987, 3987, .largeDivisor 5555000252935865944169607580879⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨3988, 3988, .largeDivisor 1392591212516232925908247110419⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨3989, 3999, .topPrime 3989⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 3989) (hi := 3999) (p := 3989)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨4000, 4000, .largeDivisor 411269842381564518434882657⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨4001, 4010, .topPrime 4001⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4001) (hi := 4010) (p := 4001)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨4016, 4023, .topPrime 4013⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4016) (hi := 4023) (p := 4013)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk056

#print axioms B699LowIndex.I11TerminalData.Chunk056.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk056.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk056.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk056.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk056.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk056.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk056.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk056.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk056.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk056.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk056.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk056.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk056.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk056.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk056.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk056.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk056.witnesses_check
