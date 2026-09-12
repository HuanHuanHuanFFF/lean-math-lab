import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk109
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨7866, 7866, .largeDivisor 136928752949189934195271153313683⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨7875, 7882, .topPrime 7873⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7875) (hi := 7882) (p := 7873)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨7884, 7885, .topPrime 7883⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7884) (hi := 7885) (p := 7883)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨7888, 7893, .topPrime 7883⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7888) (hi := 7893) (p := 7883)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨7894, 7894, .largeDivisor 17435547270571195591255103826373⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨7895, 7895, .largeDivisor 377133275893587915597148067696479⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨7896, 7896, .largeDivisor 11239863010144979095159137084169⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨7897, 7897, .largeDivisor 22511082473019249280870328570551⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨7898, 7898, .largeDivisor 33813718024325985321474677643631⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨7904, 7911, .topPrime 7901⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7904) (hi := 7911) (p := 7901)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨7912, 7914, .topPrime 7907⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7912) (hi := 7914) (p := 7907)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨7920, 7921, .topPrime 7919⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7920) (hi := 7921) (p := 7919)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨7925, 7929, .topPrime 7919⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7925) (hi := 7929) (p := 7919)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨7930, 7930, .topPrime 7927⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7930) (hi := 7930) (p := 7927)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨7938, 7947, .topPrime 7937⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7938) (hi := 7947) (p := 7937)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨7948, 7948, .largeDivisor 12529478671438157958906047858083⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk109

#print axioms B699LowIndex.I11TerminalData.Chunk109.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk109.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk109.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk109.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk109.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk109.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk109.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk109.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk109.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk109.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk109.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk109.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk109.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk109.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk109.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk109.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk109.witnesses_check
