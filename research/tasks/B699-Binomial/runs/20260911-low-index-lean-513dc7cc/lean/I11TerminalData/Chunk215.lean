import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk215
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨38404, 38404, .largeDivisor 3079279010246539043750338985296235873⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨38759, 38759, .topPrime 38749⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 38759) (hi := 38759) (p := 38749)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨38760, 38760, .largeDivisor 360582004863201876597362279594647189⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨38880, 38883, .topPrime 38873⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 38880) (hi := 38883) (p := 38873)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨38884, 38884, .largeDivisor 237227592689687306888862582577163981597⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨38885, 38885, .largeDivisor 40679094841525327666850799389292974773⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨39042, 39050, .topPrime 39041⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 39042) (hi := 39050) (p := 39041)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨39125, 39129, .topPrime 39119⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 39125) (hi := 39129) (p := 39119)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨39130, 39130, .largeDivisor 7264890418368218577523442899542658843⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨39131, 39131, .largeDivisor 1744063969086912645135397816576710326291⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨39132, 39132, .largeDivisor 48459843419070934926565717303210146077⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨39133, 39133, .topPrime 39133⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 39133) (hi := 39133) (p := 39133)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨39375, 39376, .topPrime 39373⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 39375) (hi := 39376) (p := 39373)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨39447, 39453, .topPrime 39443⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 39447) (hi := 39453) (p := 39443)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨39454, 39455, .topPrime 39451⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 39454) (hi := 39455) (p := 39451)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨39690, 39690, .largeDivisor 1896022249051167010086554893614525277⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk215

#print axioms B699LowIndex.I11TerminalData.Chunk215.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk215.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk215.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk215.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk215.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk215.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk215.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk215.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk215.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk215.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk215.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk215.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk215.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk215.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk215.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk215.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk215.witnesses_check
