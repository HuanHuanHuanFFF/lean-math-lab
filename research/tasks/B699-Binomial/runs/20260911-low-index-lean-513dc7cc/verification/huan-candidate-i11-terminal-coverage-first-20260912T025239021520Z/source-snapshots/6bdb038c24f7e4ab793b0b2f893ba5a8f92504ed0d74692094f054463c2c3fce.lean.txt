import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk024
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨1965, 1965, .largeDivisor 195630044792248368780501179⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨1966, 1966, .largeDivisor 491826941255192190565812427⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨1967, 1967, .largeDivisor 847873438605576721159468049⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨1968, 1968, .largeDivisor 17763316802671765747336837⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨1969, 1969, .largeDivisor 35726221434587034480598807⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨1970, 1970, .largeDivisor 10778048426667145164897343⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨1971, 1971, .largeDivisor 786797535146701597037506039⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨1972, 1972, .largeDivisor 197802745959879595787603507⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨1973, 1983, .topPrime 1973⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1973) (hi := 1983) (p := 1973)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨1984, 1989, .topPrime 1979⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1984) (hi := 1989) (p := 1979)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨1990, 1997, .topPrime 1987⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1990) (hi := 1997) (p := 1987)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨1998, 2007, .topPrime 1997⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1998) (hi := 2007) (p := 1997)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨2008, 2013, .topPrime 2003⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2008) (hi := 2013) (p := 2003)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨2014, 2021, .topPrime 2011⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2014) (hi := 2021) (p := 2011)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨2022, 2027, .topPrime 2017⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2022) (hi := 2027) (p := 2017)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨2028, 2037, .topPrime 2027⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2028) (hi := 2037) (p := 2027)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk024

#print axioms B699LowIndex.I11TerminalData.Chunk024.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk024.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk024.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk024.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk024.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk024.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk024.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk024.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk024.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk024.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk024.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk024.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk024.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk024.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk024.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk024.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk024.witnesses_check
