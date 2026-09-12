import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk029
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨2284, 2291, .topPrime 2281⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2284) (hi := 2291) (p := 2281)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨2292, 2297, .topPrime 2287⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2292) (hi := 2297) (p := 2287)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨2298, 2307, .topPrime 2297⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2298) (hi := 2307) (p := 2297)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨2308, 2308, .largeDivisor 18016641098855713886394251⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨2309, 2319, .topPrime 2309⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2309) (hi := 2319) (p := 2309)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨2320, 2321, .topPrime 2311⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2320) (hi := 2321) (p := 2311)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨2322, 2322, .largeDivisor 599159510783167599634542511⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨2323, 2323, .largeDivisor 4816081465568506345851357277⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨2324, 2324, .largeDivisor 1555388177596054578621255463⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨2325, 2325, .largeDivisor 41674186262297054396939429⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨2326, 2326, .largeDivisor 104680515384560419575897529⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨2327, 2327, .largeDivisor 1262132431605554903384008031⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨2328, 2328, .largeDivisor 369869624972020621233379997⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨2329, 2329, .largeDivisor 743249660534802439044471107⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨2330, 2330, .largeDivisor 224032562619157785636949247⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨2331, 2331, .largeDivisor 285834648858925450640245591⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk029

#print axioms B699LowIndex.I11TerminalData.Chunk029.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk029.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk029.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk029.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk029.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk029.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk029.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk029.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk029.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk029.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk029.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk029.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk029.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk029.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk029.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk029.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk029.witnesses_check
