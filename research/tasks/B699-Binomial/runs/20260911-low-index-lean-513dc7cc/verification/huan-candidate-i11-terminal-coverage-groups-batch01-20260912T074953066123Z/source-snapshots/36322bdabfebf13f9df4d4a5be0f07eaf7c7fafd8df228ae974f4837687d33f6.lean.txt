import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk108
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨7805, 7805, .largeDivisor 155129795464456122962898376889837⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨7806, 7806, .largeDivisor 129457257151544205243573308745143⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨7807, 7807, .largeDivisor 518559675003645772363559169509149⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨7808, 7808, .largeDivisor 12170888870805075842315163270511⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨7809, 7809, .largeDivisor 56877600952792840965074272878169⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨7810, 7810, .largeDivisor 5695782323904501704541993475811⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨7811, 7811, .largeDivisor 3422288902462927908782885464581517⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨7812, 7812, .largeDivisor 13599661066062141414212209896427⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨7813, 7813, .largeDivisor 27237670317647657233847730305251⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨7825, 7833, .topPrime 7823⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7825) (hi := 7833) (p := 7823)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨7834, 7835, .topPrime 7829⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7834) (hi := 7835) (p := 7829)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨7840, 7840, .largeDivisor 808338147759940227275709832813⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨7841, 7850, .topPrime 7841⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7841) (hi := 7850) (p := 7841)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨7856, 7863, .topPrime 7853⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7856) (hi := 7863) (p := 7853)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨7864, 7864, .largeDivisor 58519726120785642293339948017291⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨7865, 7865, .largeDivisor 492254166780726285173388974498389⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk108

#print axioms B699LowIndex.I11TerminalData.Chunk108.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk108.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk108.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk108.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk108.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk108.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk108.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk108.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk108.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk108.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk108.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk108.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk108.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk108.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk108.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk108.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk108.witnesses_check
