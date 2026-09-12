import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk143
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨11172, 11181, .topPrime 11171⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11172) (hi := 11181) (p := 11171)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨11182, 11185, .topPrime 11177⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11182) (hi := 11185) (p := 11177)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨11200, 11207, .topPrime 11197⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11200) (hi := 11207) (p := 11197)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨11208, 11208, .largeDivisor 433542082677727313431567920186251⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨11209, 11209, .largeDivisor 867935917973681988972038724302141⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨11210, 11210, .largeDivisor 260636529345967722913917870330217⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨11225, 11225, .largeDivisor 6348008252428997165174876248625869⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨11226, 11226, .largeDivisor 5295195470483572757932319866776193⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨11227, 11227, .largeDivisor 84806219040112797936242732017541111⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨11228, 11228, .largeDivisor 9095291210239430856494606990915749⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨11229, 11229, .largeDivisor 6069473168109500748058355137635523⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨11230, 11230, .largeDivisor 607542416239145141284386560260691⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨11231, 11231, .largeDivisor 36488282763539246426550510472127383⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨11232, 11232, .largeDivisor 2071387231117948487096753869596751⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨11233, 11233, .largeDivisor 4146835281972538826511822530240653⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨11234, 11234, .largeDivisor 18679048740047915467936573498285283⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk143

#print axioms B699LowIndex.I11TerminalData.Chunk143.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk143.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk143.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk143.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk143.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk143.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk143.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk143.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk143.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk143.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk143.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk143.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk143.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk143.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk143.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk143.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk143.witnesses_check
