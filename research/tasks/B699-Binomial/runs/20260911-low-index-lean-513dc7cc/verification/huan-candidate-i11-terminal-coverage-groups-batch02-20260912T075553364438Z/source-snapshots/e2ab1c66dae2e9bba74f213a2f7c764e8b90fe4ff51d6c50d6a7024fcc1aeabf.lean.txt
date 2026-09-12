import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk137
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨10559, 10567, .topPrime 10559⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10559) (hi := 10567) (p := 10559)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨10584, 10584, .largeDivisor 43962767694058335582093234834467⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨10585, 10585, .largeDivisor 17603400644660771028426589397497⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨10586, 10586, .largeDivisor 1982442544940201299009828461296843⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨10587, 10587, .largeDivisor 10584023814060469567633410952975127⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨10588, 10588, .largeDivisor 18541304457854442717091753006303879⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨10589, 10594, .topPrime 10589⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10589) (hi := 10594) (p := 10589)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨10600, 10602, .topPrime 10597⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10600) (hi := 10602) (p := 10597)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨10625, 10625, .largeDivisor 121381852989092597298755002955323⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨10626, 10626, .largeDivisor 14465194915798599678089974445453⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨10627, 10635, .topPrime 10627⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10627) (hi := 10635) (p := 10627)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨10638, 10641, .topPrime 10631⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10638) (hi := 10641) (p := 10631)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨10642, 10643, .topPrime 10639⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10642) (hi := 10643) (p := 10639)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨10656, 10660, .topPrime 10651⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10656) (hi := 10660) (p := 10651)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨10665, 10666, .topPrime 10663⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10665) (hi := 10666) (p := 10663)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨10675, 10675, .topPrime 10667⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10675) (hi := 10675) (p := 10667)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk137

#print axioms B699LowIndex.I11TerminalData.Chunk137.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk137.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk137.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk137.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk137.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk137.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk137.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk137.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk137.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk137.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk137.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk137.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk137.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk137.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk137.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk137.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk137.witnesses_check
