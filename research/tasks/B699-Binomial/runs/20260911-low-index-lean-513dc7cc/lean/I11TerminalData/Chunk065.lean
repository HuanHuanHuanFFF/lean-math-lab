import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk065
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨4505, 4505, .largeDivisor 383866978184872430256746890139⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨4506, 4506, .largeDivisor 320671969540421796577104465511⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨4507, 4517, .topPrime 4507⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4507) (hi := 4517) (p := 4507)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨4518, 4519, .topPrime 4517⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4518) (hi := 4519) (p := 4517)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨4528, 4533, .topPrime 4523⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4528) (hi := 4533) (p := 4523)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨4534, 4534, .largeDivisor 3433107471013512334150666524863⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨4535, 4535, .largeDivisor 8259491979334895721683433787933⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨4536, 4536, .largeDivisor 45632552372015998462339413193⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨4537, 4537, .largeDivisor 91486915648182317730284541607⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨4538, 4538, .largeDivisor 412691474365259799065637425261⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨4544, 4544, .largeDivisor 104685036623237791009902872051⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨4545, 4545, .largeDivisor 4663956197153514288487071053⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨4546, 4546, .largeDivisor 11688172476438740879527136167⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨4550, 4554, .topPrime 4549⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4550) (hi := 4554) (p := 4549)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨4557, 4559, .topPrime 4549⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 4557) (hi := 4559) (p := 4549)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨4560, 4560, .largeDivisor 7461703692698611754926375471⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk065

#print axioms B699LowIndex.I11TerminalData.Chunk065.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk065.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk065.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk065.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk065.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk065.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk065.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk065.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk065.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk065.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk065.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk065.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk065.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk065.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk065.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk065.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk065.witnesses_check
