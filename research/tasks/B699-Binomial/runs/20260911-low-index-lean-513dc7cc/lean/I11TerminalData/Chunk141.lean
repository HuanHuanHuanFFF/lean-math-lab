import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk141
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨10944, 10945, .topPrime 10939⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10944) (hi := 10945) (p := 10939)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨10950, 10954, .topPrime 10949⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10950) (hi := 10954) (p := 10949)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨10976, 10983, .topPrime 10973⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10976) (hi := 10983) (p := 10973)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨10984, 10986, .topPrime 10979⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10984) (hi := 10986) (p := 10979)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨11008, 11010, .topPrime 11003⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11008) (hi := 11010) (p := 11003)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨11016, 11016, .largeDivisor 348508592221440061243995235457813⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨11017, 11017, .largeDivisor 697713821643395448796128567879107⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨11018, 11018, .largeDivisor 448978558980664119544197205985983⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨11025, 11025, .largeDivisor 9186086495313886074303519752243⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨11026, 11026, .largeDivisor 22988150180964799785581164046353⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨11027, 11035, .topPrime 11027⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11027) (hi := 11035) (p := 11027)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨11043, 11043, .largeDivisor 68740805592799707823765700285668553⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨11044, 11044, .largeDivisor 17202335198198132266964297878068601⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨11045, 11045, .largeDivisor 61990144294974998658603807524720293⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨11046, 11046, .largeDivisor 7387135455178262187228274299502237⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨11047, 11053, .topPrime 11047⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11047) (hi := 11053) (p := 11047)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk141

#print axioms B699LowIndex.I11TerminalData.Chunk141.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk141.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk141.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk141.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk141.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk141.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk141.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk141.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk141.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk141.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk141.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk141.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk141.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk141.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk141.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk141.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk141.witnesses_check
