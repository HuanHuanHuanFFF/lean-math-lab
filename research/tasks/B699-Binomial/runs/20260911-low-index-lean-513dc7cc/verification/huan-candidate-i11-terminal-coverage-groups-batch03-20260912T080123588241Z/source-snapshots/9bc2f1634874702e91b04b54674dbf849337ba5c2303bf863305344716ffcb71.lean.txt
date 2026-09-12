import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk155
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨12322, 12322, .largeDivisor 1366675606844156175343030984467533⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨12325, 12330, .topPrime 12323⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12325) (hi := 12330) (p := 12323)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨12348, 12357, .topPrime 12347⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12348) (hi := 12357) (p := 12347)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨12358, 12358, .largeDivisor 51842312893311736326139967743489⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨12359, 12359, .largeDivisor 640719145048439749254763861341780551⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨12360, 12360, .largeDivisor 5344082269008769469045321703636197⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨12375, 12376, .topPrime 12373⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12375) (hi := 12376) (p := 12373)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨12384, 12385, .topPrime 12379⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12384) (hi := 12385) (p := 12379)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨12393, 12394, .topPrime 12391⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12393) (hi := 12394) (p := 12391)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨12397, 12401, .topPrime 12391⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12397) (hi := 12401) (p := 12391)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨12402, 12407, .topPrime 12401⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12402) (hi := 12407) (p := 12401)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨12420, 12423, .topPrime 12413⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12420) (hi := 12423) (p := 12413)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨12424, 12430, .topPrime 12421⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12424) (hi := 12430) (p := 12421)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨12447, 12447, .topPrime 12437⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12447) (hi := 12447) (p := 12437)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨12448, 12448, .largeDivisor 655104250926130176315128456287153⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨12449, 12449, .largeDivisor 11802305093747314855205548700895467⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk155

#print axioms B699LowIndex.I11TerminalData.Chunk155.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk155.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk155.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk155.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk155.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk155.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk155.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk155.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk155.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk155.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk155.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk155.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk155.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk155.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk155.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk155.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk155.witnesses_check
