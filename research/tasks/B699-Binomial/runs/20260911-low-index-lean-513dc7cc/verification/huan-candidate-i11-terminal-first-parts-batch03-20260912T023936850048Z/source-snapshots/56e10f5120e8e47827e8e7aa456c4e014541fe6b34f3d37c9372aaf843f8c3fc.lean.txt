import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk027
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨2179, 2189, .topPrime 2179⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2179) (hi := 2189) (p := 2179)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨2190, 2190, .largeDivisor 9312099530242515999359783⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨2191, 2191, .largeDivisor 26740249109778967961464331⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨2192, 2192, .largeDivisor 5039084082585582683247061⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨2193, 2193, .largeDivisor 3376324898597672723605501⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨2194, 2194, .largeDivisor 1696668993935706357212659⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨2195, 2195, .largeDivisor 57295206795213468524335177⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨2196, 2196, .largeDivisor 7997729094984031075479281⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨2197, 2197, .largeDivisor 16075947686806876736347649⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨2198, 2198, .largeDivisor 2523923786828679647606580893⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨2199, 2199, .largeDivisor 3382150156755799235275363427⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨2200, 2200, .largeDivisor 16995729430933664498871173⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨2201, 2201, .largeDivisor 512432883253219117287882901⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨2202, 2202, .largeDivisor 600839834357608357970137459⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨2203, 2213, .topPrime 2203⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2203) (hi := 2213) (p := 2203)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨2214, 2223, .topPrime 2213⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2214) (hi := 2223) (p := 2213)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk027

#print axioms B699LowIndex.I11TerminalData.Chunk027.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk027.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk027.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk027.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk027.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk027.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk027.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk027.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk027.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk027.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk027.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk027.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk027.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk027.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk027.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk027.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk027.witnesses_check
