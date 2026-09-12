import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk163
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨13608, 13608, .largeDivisor 271644887164494370407373478223043⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨13609, 13609, .largeDivisor 543729264512664198687151884856213⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨13610, 13610, .largeDivisor 489752170087184628996170559423763⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨13625, 13629, .topPrime 13619⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13625) (hi := 13629) (p := 13619)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨13630, 13635, .topPrime 13627⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13630) (hi := 13635) (p := 13627)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨13671, 13674, .topPrime 13669⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13671) (hi := 13674) (p := 13669)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨13696, 13699, .topPrime 13693⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13696) (hi := 13699) (p := 13693)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨13728, 13730, .topPrime 13723⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13728) (hi := 13730) (p := 13723)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨13760, 13760, .topPrime 13759⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13760) (hi := 13760) (p := 13759)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨13769, 13773, .topPrime 13763⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13769) (hi := 13773) (p := 13763)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨13774, 13774, .largeDivisor 111750315965826357816770457269218399⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨13775, 13775, .largeDivisor 53683020137027308768125999961063067⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨13776, 13776, .largeDivisor 799492853475524758261229930404499⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨13777, 13777, .largeDivisor 1600263408736351096115787411184481⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨13778, 13778, .largeDivisor 2402313057917786598636230001231181⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨13779, 13779, .largeDivisor 2137095462912336596462561378201591⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk163

#print axioms B699LowIndex.I11TerminalData.Chunk163.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk163.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk163.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk163.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk163.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk163.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk163.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk163.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk163.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk163.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk163.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk163.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk163.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk163.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk163.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk163.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk163.witnesses_check
