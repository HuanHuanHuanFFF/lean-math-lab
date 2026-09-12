import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk142
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨11072, 11081, .topPrime 11071⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11072) (hi := 11081) (p := 11071)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨11082, 11082, .largeDivisor 164066716687582111806689580864401⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨11083, 11084, .topPrime 11083⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11083) (hi := 11084) (p := 11083)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨11100, 11103, .topPrime 11093⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11100) (hi := 11103) (p := 11093)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨11104, 11104, .largeDivisor 260846291454570305637061974659789⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨11105, 11105, .largeDivisor 313325913099297268155713707798481⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨11106, 11106, .largeDivisor 609848859250051780605915954926381⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨11107, 11107, .largeDivisor 4883627454715447099632233966378741⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨11108, 11108, .largeDivisor 98991484976239391209333676822144261⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨11109, 11109, .largeDivisor 9437104983317829870199588221105481⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨11110, 11110, .largeDivisor 944645791194351652021960763460509⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨11124, 11129, .topPrime 11119⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11124) (hi := 11129) (p := 11119)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨11130, 11130, .largeDivisor 9176471497742668010707706260123⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨11131, 11134, .topPrime 11131⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11131) (hi := 11134) (p := 11131)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨11151, 11159, .topPrime 11149⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11151) (hi := 11159) (p := 11149)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨11160, 11160, .topPrime 11159⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11160) (hi := 11160) (p := 11159)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk142

#print axioms B699LowIndex.I11TerminalData.Chunk142.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk142.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk142.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk142.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk142.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk142.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk142.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk142.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk142.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk142.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk142.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk142.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk142.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk142.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk142.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk142.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk142.witnesses_check
