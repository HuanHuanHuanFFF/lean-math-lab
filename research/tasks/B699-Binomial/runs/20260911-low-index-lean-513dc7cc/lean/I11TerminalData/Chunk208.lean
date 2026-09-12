import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk208
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨31430, 31430, .largeDivisor 14670397158577998676018898197716792959⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨31431, 31431, .largeDivisor 97836887988810752468905153671215047633⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨31432, 31432, .largeDivisor 12233892393877898426222219177435597917⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨31433, 31433, .largeDivisor 73429050910208894640336646057730217553⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨31434, 31434, .largeDivisor 85697214907236444424309130919235600303⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨31509, 31509, .largeDivisor 1915075259426073768741182017228404859⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨31510, 31510, .largeDivisor 191574403709691051947790867528705791⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨31556, 31557, .topPrime 31547⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 31556) (hi := 31557) (p := 31547)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨31558, 31558, .largeDivisor 4696303250404697133909815597712532231⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨31559, 31559, .largeDivisor 56375288809251364339695652509779309501⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨31560, 31560, .largeDivisor 3289705115782806483545586112729522609⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨31561, 31561, .largeDivisor 164542604055817995922634300006111668879⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨31562, 31562, .largeDivisor 246899955748299305282408661062703075647⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨31625, 31625, .largeDivisor 32977181757378380408763303593545818569⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨31626, 31626, .largeDivisor 1309073639269646288565489356631345953⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨31680, 31680, .largeDivisor 6224752893279194057108869654388986621⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk208

#print axioms B699LowIndex.I11TerminalData.Chunk208.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk208.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk208.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk208.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk208.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk208.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk208.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk208.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk208.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk208.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk208.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk208.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk208.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk208.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk208.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk208.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk208.witnesses_check
