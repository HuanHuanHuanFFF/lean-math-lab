import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk138
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨10682, 10682, .largeDivisor 1313710512982606207049275993585703⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨10683, 10683, .largeDivisor 2337892622054503100101185313922383⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨10684, 10684, .largeDivisor 585075535791958941288322493533841⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨10685, 10685, .largeDivisor 2108442529489740737829924399126169⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨10688, 10697, .topPrime 10687⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10688) (hi := 10697) (p := 10687)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨10698, 10698, .topPrime 10691⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10698) (hi := 10698) (p := 10691)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨10700, 10701, .topPrime 10691⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10700) (hi := 10701) (p := 10691)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨10702, 10702, .largeDivisor 1081657479728563762195558682168861⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨10720, 10721, .topPrime 10711⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10720) (hi := 10721) (p := 10711)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨10722, 10722, .largeDivisor 18631899118782854088711633336631349⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨10723, 10733, .topPrime 10723⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10723) (hi := 10733) (p := 10723)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨10734, 10735, .topPrime 10733⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10734) (hi := 10735) (p := 10733)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨10750, 10750, .largeDivisor 1227162793578166428729599474994041⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨10751, 10751, .largeDivisor 73705179853401493157943709249502429⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨10752, 10752, .largeDivisor 6862040764677543353313817079369⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨10753, 10760, .topPrime 10753⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10753) (hi := 10760) (p := 10753)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk138

#print axioms B699LowIndex.I11TerminalData.Chunk138.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk138.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk138.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk138.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk138.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk138.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk138.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk138.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk138.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk138.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk138.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk138.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk138.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk138.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk138.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk138.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk138.witnesses_check
