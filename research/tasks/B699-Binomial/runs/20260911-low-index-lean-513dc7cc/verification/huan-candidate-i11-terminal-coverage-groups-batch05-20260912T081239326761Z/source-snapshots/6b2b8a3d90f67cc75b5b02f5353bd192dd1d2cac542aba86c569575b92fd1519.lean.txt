import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk183
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨19527, 19527, .largeDivisor 3640724837443079819790476956812265589⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨19528, 19528, .largeDivisor 455347098847084994625636842320988897⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨19529, 19529, .largeDivisor 2733622346567698389192764184963600421⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨19530, 19530, .largeDivisor 4341528395081646091755504366713029⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨19602, 19607, .topPrime 19597⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 19602) (hi := 19607) (p := 19597)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨19608, 19610, .topPrime 19603⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 19608) (hi := 19610) (p := 19603)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨19649, 19649, .largeDivisor 2685513511558866439041011056266490483⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨19650, 19650, .largeDivisor 17913451296614466292294538844692207⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨19651, 19651, .largeDivisor 716939371547394861730916461989911527⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨19652, 19652, .largeDivisor 538005671668298603281501844777216333⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨19653, 19653, .largeDivisor 2512099183962241019313698207509297361⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨19654, 19654, .largeDivisor 1256752974637119711693514854410928329⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨19655, 19655, .largeDivisor 3017896116859204390144903416425998327⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨19656, 19656, .largeDivisor 9985403288157204650517623928108419⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨19657, 19657, .largeDivisor 19981988438899131814641650570582021⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨19658, 19658, .largeDivisor 89969291967906352087087853164567423⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk183

#print axioms B699LowIndex.I11TerminalData.Chunk183.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk183.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk183.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk183.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk183.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk183.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk183.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk183.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk183.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk183.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk183.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk183.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk183.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk183.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk183.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk183.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk183.witnesses_check
