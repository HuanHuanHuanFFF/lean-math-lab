import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk031
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨2434, 2434, .largeDivisor 8392240158891295793957273⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨2435, 2435, .largeDivisor 40465554033465951006506851⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨2436, 2436, .largeDivisor 12097949144025902878234007⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨2437, 2447, .topPrime 2437⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2437) (hi := 2447) (p := 2437)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨2448, 2457, .topPrime 2447⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2448) (hi := 2457) (p := 2447)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨2458, 2458, .largeDivisor 4579979260586926768931099⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨2459, 2469, .topPrime 2459⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2459) (hi := 2469) (p := 2459)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨2470, 2477, .topPrime 2467⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2470) (hi := 2477) (p := 2467)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨2478, 2487, .topPrime 2477⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2478) (hi := 2487) (p := 2477)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨2488, 2488, .largeDivisor 549697536489869117540914321⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨2489, 2489, .largeDivisor 23189782513953970060327724491⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨2490, 2490, .largeDivisor 776422730398620215815732607⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨2491, 2491, .largeDivisor 62389323271708482503128707227⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨2492, 2492, .largeDivisor 6714207703968627500336704889⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨2493, 2493, .largeDivisor 1498658770345938612081601333⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨2494, 2494, .largeDivisor 752649007902289750006345897⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk031

#print axioms B699LowIndex.I11TerminalData.Chunk031.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk031.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk031.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk031.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk031.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk031.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk031.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk031.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk031.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk031.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk031.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk031.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk031.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk031.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk031.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk031.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk031.witnesses_check
