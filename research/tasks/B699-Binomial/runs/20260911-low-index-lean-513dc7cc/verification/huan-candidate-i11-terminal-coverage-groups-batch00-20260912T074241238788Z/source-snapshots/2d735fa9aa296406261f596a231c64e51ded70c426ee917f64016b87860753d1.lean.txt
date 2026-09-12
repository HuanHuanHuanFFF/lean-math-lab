import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk057
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨4024, 4031, .topPrime 4021⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4024) (hi := 4031) (p := 4021)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨4032, 4037, .topPrime 4027⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4032) (hi := 4037) (p := 4027)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨4038, 4038, .largeDivisor 1198069528274995891534856472103⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨4039, 4039, .largeDivisor 686480752546844716400806538633⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨4040, 4040, .largeDivisor 51626623981557197584870782131⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨4041, 4041, .largeDivisor 57519489249923527830290275873⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨4042, 4042, .largeDivisor 28838225694392321941209786043⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨4048, 4048, .largeDivisor 351758578797191899651923166913⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨4049, 4059, .topPrime 4049⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4049) (hi := 4059) (p := 4049)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨4060, 4060, .topPrime 4057⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4060) (hi := 4060) (p := 4057)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨4064, 4067, .topPrime 4057⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4064) (hi := 4067) (p := 4057)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨4068, 4068, .largeDivisor 17684765623694650580237137229⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨4069, 4069, .largeDivisor 35465407256191982854107891269⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨4070, 4070, .largeDivisor 32005367523880569892731511633⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨4071, 4071, .largeDivisor 1497630473445032184290919354689⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨4072, 4072, .largeDivisor 187710886723349269097285878241⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk057

#print axioms B699LowIndex.I11TerminalData.Chunk057.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk057.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk057.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk057.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk057.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk057.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk057.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk057.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk057.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk057.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk057.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk057.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk057.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk057.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk057.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk057.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk057.witnesses_check
