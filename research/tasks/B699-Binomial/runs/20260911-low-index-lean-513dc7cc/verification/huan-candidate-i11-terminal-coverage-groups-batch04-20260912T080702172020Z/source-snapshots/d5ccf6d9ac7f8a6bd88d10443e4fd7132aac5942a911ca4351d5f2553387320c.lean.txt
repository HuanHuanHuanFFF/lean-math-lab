import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk164
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨13824, 13824, .largeDivisor 908563272138639145042639273363013⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨13825, 13825, .largeDivisor 10391848631671129645051180338161⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨13826, 13826, .largeDivisor 234002767396555437251592213933899⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨13827, 13827, .largeDivisor 624504200886348587314758838460533⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨13828, 13828, .largeDivisor 156250345405233195798445487772893⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨13856, 13856, .largeDivisor 994107929340178811363221226579653⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨13857, 13857, .largeDivisor 4642855940972988806558866375704163⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨13858, 13858, .largeDivisor 2323272103343817392983778805319141⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨13859, 13861, .topPrime 13859⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13859) (hi := 13861) (p := 13859)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨13875, 13877, .topPrime 13873⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13875) (hi := 13877) (p := 13873)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨13920, 13923, .topPrime 13913⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13920) (hi := 13923) (p := 13913)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨13924, 13926, .topPrime 13921⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13924) (hi := 13926) (p := 13921)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨14014, 14021, .topPrime 14011⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 14014) (hi := 14021) (p := 14011)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨14022, 14022, .largeDivisor 809503796536288184707218515737129⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨14023, 14023, .largeDivisor 3240557162097736001755445402849489⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨14024, 14024, .largeDivisor 32836397139637752665186680873960429⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk164

#print axioms B699LowIndex.I11TerminalData.Chunk164.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk164.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk164.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk164.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk164.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk164.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk164.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk164.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk164.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk164.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk164.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk164.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk164.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk164.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk164.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk164.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk164.witnesses_check
