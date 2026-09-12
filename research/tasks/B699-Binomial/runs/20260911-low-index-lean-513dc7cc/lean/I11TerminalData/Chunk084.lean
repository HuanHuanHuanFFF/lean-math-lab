import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk084
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨5934, 5937, .topPrime 5927⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5934) (hi := 5937) (p := 5927)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨5938, 5938, .largeDivisor 3415262721376237900608136860449⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨5939, 5946, .topPrime 5939⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5939) (hi := 5946) (p := 5939)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨5950, 5950, .largeDivisor 434562503726936971033329927713⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨5952, 5952, .largeDivisor 1226737544185231432620766910903⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨5953, 5960, .topPrime 5953⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5953) (hi := 5960) (p := 5953)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨5968, 5968, .largeDivisor 19654987238886874079216130848807⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨5969, 5969, .largeDivisor 354442957187056650691362794672293⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨5970, 5970, .largeDivisor 11836574673640589610267024020773⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨5971, 5971, .largeDivisor 67762404004130355285622627447781⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨5972, 5972, .largeDivisor 50915585897416517585019920875459⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨5973, 5973, .largeDivisor 34006350728532803257891533868849⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨5974, 5974, .largeDivisor 17034541275553829168425626642001⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨5975, 5975, .largeDivisor 57341624857145988327517250245609⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨5976, 5976, .largeDivisor 3989400555861791308620227804179⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨5977, 5977, .largeDivisor 7993512277031822544962487960301⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk084

#print axioms B699LowIndex.I11TerminalData.Chunk084.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk084.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk084.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk084.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk084.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk084.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk084.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk084.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk084.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk084.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk084.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk084.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk084.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk084.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk084.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk084.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk084.witnesses_check
