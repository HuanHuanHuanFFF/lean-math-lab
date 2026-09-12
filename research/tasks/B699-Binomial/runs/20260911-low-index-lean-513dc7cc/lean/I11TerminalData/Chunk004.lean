import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk004
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨468, 477, .topPrime 467⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 468) (hi := 477) (p := 467)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨478, 478, .largeDivisor 5270350720880731187⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨479, 489, .topPrime 479⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 479) (hi := 489) (p := 479)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨490, 497, .topPrime 487⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 490) (hi := 497) (p := 487)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨498, 501, .topPrime 491⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 498) (hi := 501) (p := 491)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨502, 509, .topPrime 499⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 502) (hi := 509) (p := 499)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨510, 519, .topPrime 509⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 510) (hi := 519) (p := 509)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨520, 520, .largeDivisor 104967105969199357⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨521, 531, .topPrime 521⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 521) (hi := 531) (p := 521)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨532, 533, .topPrime 523⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 532) (hi := 533) (p := 523)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨534, 534, .largeDivisor 27070235206345472219⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨535, 535, .largeDivisor 22110802802129507843⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨536, 536, .largeDivisor 1481423787742677025481⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨537, 537, .largeDivisor 1008269422075814401373⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨538, 538, .largeDivisor 514657446941924239031⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨539, 539, .largeDivisor 514657446941924239031⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk004

#print axioms B699LowIndex.I11TerminalData.Chunk004.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk004.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk004.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk004.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk004.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk004.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk004.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk004.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk004.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk004.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk004.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk004.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk004.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk004.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk004.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk004.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk004.witnesses_check
