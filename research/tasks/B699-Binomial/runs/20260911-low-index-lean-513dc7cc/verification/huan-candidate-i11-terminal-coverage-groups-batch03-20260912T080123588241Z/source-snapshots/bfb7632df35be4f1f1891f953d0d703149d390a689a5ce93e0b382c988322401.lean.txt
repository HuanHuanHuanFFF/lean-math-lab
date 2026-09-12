import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk151
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨11956, 11963, .topPrime 11953⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11956) (hi := 11963) (p := 11953)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨11964, 11966, .topPrime 11959⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11964) (hi := 11966) (p := 11959)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨11968, 11969, .topPrime 11959⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11968) (hi := 11969) (p := 11959)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨11970, 11971, .topPrime 11969⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11970) (hi := 11971) (p := 11969)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨11975, 11978, .topPrime 11971⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11975) (hi := 11978) (p := 11971)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨12000, 12000, .largeDivisor 220580748065269646809367665817713⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨12001, 12001, .largeDivisor 2207831157240451235495597462450687⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨12002, 12002, .largeDivisor 23203493475656651250803993646526397⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨12003, 12003, .largeDivisor 61932740090795371350544882308040103⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨12004, 12004, .largeDivisor 15497386226338439875175951955843271⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨12005, 12005, .largeDivisor 7752569397868154014595273614729⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨12006, 12006, .largeDivisor 2155466356139249157038369112557⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨12007, 12010, .topPrime 12007⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12007) (hi := 12010) (p := 12007)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨12015, 12015, .topPrime 12011⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12015) (hi := 12015) (p := 12011)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨12025, 12025, .largeDivisor 3510746739254749566324612683045911⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨12032, 12032, .largeDivisor 14906118445554780135529201132068521⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk151

#print axioms B699LowIndex.I11TerminalData.Chunk151.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk151.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk151.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk151.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk151.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk151.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk151.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk151.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk151.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk151.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk151.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk151.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk151.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk151.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk151.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk151.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk151.witnesses_check
