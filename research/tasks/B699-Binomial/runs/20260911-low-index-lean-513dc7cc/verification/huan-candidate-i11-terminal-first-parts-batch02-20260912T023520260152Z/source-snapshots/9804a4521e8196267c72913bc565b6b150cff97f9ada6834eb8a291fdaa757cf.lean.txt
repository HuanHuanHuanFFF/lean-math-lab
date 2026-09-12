import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk023
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨1927, 1927, .largeDivisor 2190651238194526404953357⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨1928, 1928, .largeDivisor 7435872512744800895686747⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨1929, 1929, .largeDivisor 34899752012371583765887433⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨1930, 1930, .largeDivisor 3509980270134296856079351⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨1931, 1941, .topPrime 1931⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1931) (hi := 1941) (p := 1931)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨1942, 1943, .topPrime 1933⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1942) (hi := 1943) (p := 1933)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨1944, 1944, .largeDivisor 9385719533671432280239339⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨1945, 1945, .largeDivisor 3775641053359035322660913⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨1946, 1946, .largeDivisor 12204979218997811856973649⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨1947, 1947, .largeDivisor 65463070356442809051040481⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨1948, 1948, .largeDivisor 16458706899115977288516631⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨1949, 1959, .topPrime 1949⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1949) (hi := 1959) (p := 1949)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨1960, 1961, .topPrime 1951⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1960) (hi := 1961) (p := 1951)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨1962, 1962, .largeDivisor 2862520196686320624123811⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨1963, 1963, .largeDivisor 92116838460577825986148213⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨1964, 1964, .largeDivisor 1459011860778829437393508793⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk023

#print axioms B699LowIndex.I11TerminalData.Chunk023.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk023.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk023.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk023.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk023.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk023.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk023.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk023.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk023.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk023.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk023.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk023.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk023.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk023.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk023.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk023.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk023.witnesses_check
