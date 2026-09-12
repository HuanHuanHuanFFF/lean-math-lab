import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk020
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨1692, 1692, .largeDivisor 219179179423054084500247241⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨1693, 1703, .topPrime 1693⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1693) (hi := 1703) (p := 1693)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨1704, 1709, .topPrime 1699⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1704) (hi := 1709) (p := 1699)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨1710, 1719, .topPrime 1709⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1710) (hi := 1719) (p := 1709)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨1720, 1720, .largeDivisor 268048235354732155298027⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨1721, 1731, .topPrime 1721⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1721) (hi := 1731) (p := 1721)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨1732, 1733, .topPrime 1723⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1732) (hi := 1733) (p := 1723)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨1734, 1743, .topPrime 1733⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1734) (hi := 1743) (p := 1733)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨1744, 1751, .topPrime 1741⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1744) (hi := 1751) (p := 1741)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨1752, 1757, .topPrime 1747⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1752) (hi := 1757) (p := 1747)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨1758, 1763, .topPrime 1753⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1758) (hi := 1763) (p := 1753)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨1764, 1769, .topPrime 1759⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1764) (hi := 1769) (p := 1759)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨1770, 1770, .largeDivisor 3860905251431273224875761⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨1771, 1771, .largeDivisor 88800820782919284172142503⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨1772, 1772, .largeDivisor 67016633061044706794308567⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨1773, 1773, .largeDivisor 14985558130562777796230179⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk020

#print axioms B699LowIndex.I11TerminalData.Chunk020.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk020.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk020.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk020.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk020.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk020.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk020.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk020.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk020.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk020.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk020.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk020.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk020.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk020.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk020.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk020.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk020.witnesses_check
