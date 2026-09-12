import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk160
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨13088, 13088, .largeDivisor 214969516372122026801538382620072817⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨13089, 13089, .largeDivisor 143433552520502890799068965189077489⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨13090, 13090, .largeDivisor 2050774089864212904612424228943917⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨13091, 13091, .largeDivisor 246299849636811111323681152120227683⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨13092, 13092, .largeDivisor 20542247225270309796967826386604113⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨13093, 13093, .topPrime 13093⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13093) (hi := 13093) (p := 13093)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨13095, 13098, .topPrime 13093⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13095) (hi := 13098) (p := 13093)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨13122, 13131, .topPrime 13121⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13122) (hi := 13131) (p := 13121)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨13132, 13135, .topPrime 13127⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13132) (hi := 13135) (p := 13127)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨13152, 13159, .topPrime 13151⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13152) (hi := 13159) (p := 13151)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨13181, 13187, .topPrime 13177⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13181) (hi := 13187) (p := 13177)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨13188, 13191, .topPrime 13187⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13188) (hi := 13191) (p := 13187)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨13230, 13239, .topPrime 13229⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13230) (hi := 13239) (p := 13229)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨13240, 13240, .largeDivisor 516603942777590823650264000611081⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨13250, 13259, .topPrime 13249⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13250) (hi := 13259) (p := 13249)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨13260, 13260, .topPrime 13259⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13260) (hi := 13260) (p := 13259)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk160

#print axioms B699LowIndex.I11TerminalData.Chunk160.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk160.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk160.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk160.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk160.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk160.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk160.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk160.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk160.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk160.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk160.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk160.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk160.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk160.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk160.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk160.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk160.witnesses_check
