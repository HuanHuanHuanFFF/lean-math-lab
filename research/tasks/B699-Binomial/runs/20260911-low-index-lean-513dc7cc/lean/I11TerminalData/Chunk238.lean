import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk238
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨104960, 104968, .topPrime 104959⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 104960) (hi := 104968) (p := 104959)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨105219, 105221, .topPrime 105211⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 105219) (hi := 105221) (p := 105211)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨105222, 105222, .largeDivisor 42276045266749658511591117308543335498574009⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨105223, 105223, .largeDivisor 169121861046390119665633278962736394752174769⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨105224, 105224, .largeDivisor 9061046930688233436506655959937888447416281⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨105225, 105225, .largeDivisor 241653180066447269591857325294977046623549⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨105226, 105226, .largeDivisor 604196110955471662549845053259736128594059⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨105472, 105472, .topPrime 105467⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 105472) (hi := 105472) (p := 105467)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨105987, 105993, .topPrime 105983⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 105987) (hi := 105993) (p := 105983)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨105994, 105994, .largeDivisor 300542870679226979364807309464864787860003⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨106250, 106250, .topPrime 106243⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 106250) (hi := 106250) (p := 106243)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨106677, 106679, .topPrime 106669⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 106677) (hi := 106679) (p := 106669)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨106680, 106680, .largeDivisor 45887491436200125485736380769475914219313⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨106681, 106683, .topPrime 106681⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 106681) (hi := 106683) (p := 106681)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨107016, 107016, .largeDivisor 1002008928781267541529111403288038469133491⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨107017, 107017, .largeDivisor 2004223866538042885292804423035643101344949⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk238

#print axioms B699LowIndex.I11TerminalData.Chunk238.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk238.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk238.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk238.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk238.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk238.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk238.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk238.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk238.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk238.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk238.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk238.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk238.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk238.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk238.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk238.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk238.witnesses_check
