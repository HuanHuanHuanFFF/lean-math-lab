import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk237
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨95748, 95752, .topPrime 95747⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 95748) (hi := 95752) (p := 95747)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨96256, 96256, .largeDivisor 23806650888285751674604143111700413521827⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨96257, 96257, .largeDivisor 61224098815189334445012450332708506889591⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨96258, 96258, .largeDivisor 10205182678858379923543951922528936756779⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨96259, 96260, .topPrime 96259⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 96259) (hi := 96260) (p := 96259)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨100359, 100362, .topPrime 100357⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 100359) (hi := 100362) (p := 100357)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨100608, 100608, .largeDivisor 286831622682191905769030800633145340983479⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨100609, 100612, .topPrime 100609⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 100609) (hi := 100612) (p := 100609)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨100845, 100845, .largeDivisor 6725258979161042789350523340096829879331⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨100846, 100846, .largeDivisor 117704871053883117170226115368865828880773⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨100847, 100852, .topPrime 100847⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 100847) (hi := 100852) (p := 100847)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨101875, 101881, .topPrime 101873⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 101875) (hi := 101881) (p := 101873)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨103936, 103936, .largeDivisor 726699915802995943036542213133746742087117⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨103937, 103937, .largeDivisor 4360660998141908049846376537525676065602949⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨103938, 103938, .largeDivisor 726853757645388331689443366589599300320801⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨103939, 103939, .largeDivisor 5815445517350782680892083294585202191982429⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk237

#print axioms B699LowIndex.I11TerminalData.Chunk237.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk237.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk237.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk237.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk237.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk237.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk237.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk237.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk237.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk237.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk237.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk237.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk237.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk237.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk237.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk237.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk237.witnesses_check
