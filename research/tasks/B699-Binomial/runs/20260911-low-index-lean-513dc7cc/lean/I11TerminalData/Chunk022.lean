import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk022
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨1846, 1846, .largeDivisor 95493795851968097626400891⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨1847, 1857, .topPrime 1847⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1847) (hi := 1857) (p := 1847)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨1858, 1858, .largeDivisor 3296838436545217624630259⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨1859, 1859, .largeDivisor 557165695776141778562513771⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨1860, 1860, .largeDivisor 9341339409983988715758749⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨1861, 1871, .topPrime 1861⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1861) (hi := 1871) (p := 1861)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨1872, 1881, .topPrime 1871⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1872) (hi := 1881) (p := 1871)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨1882, 1889, .topPrime 1879⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1882) (hi := 1889) (p := 1879)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨1890, 1899, .topPrime 1889⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1890) (hi := 1899) (p := 1889)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨1900, 1900, .largeDivisor 1499951385481258625219291⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨1901, 1911, .topPrime 1901⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1901) (hi := 1911) (p := 1901)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨1912, 1917, .topPrime 1907⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1912) (hi := 1917) (p := 1907)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨1918, 1923, .topPrime 1913⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1918) (hi := 1923) (p := 1913)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨1924, 1924, .largeDivisor 56524930146410059166746589⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨1925, 1925, .largeDivisor 1949135522290002040232641⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨1926, 1926, .largeDivisor 544536555835588037349589⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk022

#print axioms B699LowIndex.I11TerminalData.Chunk022.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk022.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk022.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk022.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk022.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk022.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk022.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk022.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk022.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk022.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk022.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk022.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk022.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk022.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk022.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk022.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk022.witnesses_check
