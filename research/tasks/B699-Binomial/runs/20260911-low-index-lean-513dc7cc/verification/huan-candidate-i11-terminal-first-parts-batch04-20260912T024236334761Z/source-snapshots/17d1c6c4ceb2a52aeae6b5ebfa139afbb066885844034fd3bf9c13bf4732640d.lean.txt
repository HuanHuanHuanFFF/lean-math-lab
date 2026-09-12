import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk033
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨2521, 2531, .topPrime 2521⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2521) (hi := 2531) (p := 2521)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨2532, 2541, .topPrime 2531⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2532) (hi := 2541) (p := 2531)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨2542, 2549, .topPrime 2539⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2542) (hi := 2549) (p := 2539)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨2550, 2559, .topPrime 2549⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2550) (hi := 2559) (p := 2549)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨2560, 2567, .topPrime 2557⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2560) (hi := 2567) (p := 2557)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨2568, 2568, .largeDivisor 170436592692350867720854003⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨2569, 2569, .largeDivisor 48905574290924760323341219⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨2570, 2570, .largeDivisor 14734739264674869171276311⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨2571, 2571, .largeDivisor 12627671549826362879783798527⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨2572, 2572, .largeDivisor 3170477472291429649238962301⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨2573, 2573, .largeDivisor 133731779282063089958882786893⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨2574, 2574, .largeDivisor 7461429745351159525602902273⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨2575, 2575, .largeDivisor 1198950489502604416750544359⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨2576, 2576, .largeDivisor 1451361118871573767645395803⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨2577, 2577, .largeDivisor 971721902658364665944968819⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨2578, 2578, .largeDivisor 487942942160744859525930973⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk033

#print axioms B699LowIndex.I11TerminalData.Chunk033.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk033.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk033.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk033.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk033.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk033.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk033.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk033.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk033.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk033.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk033.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk033.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk033.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk033.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk033.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk033.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk033.witnesses_check
