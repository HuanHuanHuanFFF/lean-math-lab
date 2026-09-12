import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk113
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨8136, 8136, .largeDivisor 3038698938978869525289686499883⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨8137, 8137, .largeDivisor 6085624727164917875284809020317⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨8138, 8138, .largeDivisor 575869930577536065919392741945811⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨8154, 8157, .topPrime 8147⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8154) (hi := 8157) (p := 8147)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨8158, 8158, .largeDivisor 210361007943737485118028958536947⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨8159, 8159, .largeDivisor 17694180039308805578123693533020109⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨8160, 8160, .largeDivisor 36912634761105619686845354038697⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨8161, 8164, .topPrime 8161⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8161) (hi := 8164) (p := 8161)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨8181, 8189, .topPrime 8179⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8181) (hi := 8189) (p := 8179)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨8190, 8190, .largeDivisor 3486088049666992385512784060953⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨8191, 8193, .topPrime 8191⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8191) (hi := 8193) (p := 8191)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨8200, 8201, .topPrime 8191⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8200) (hi := 8201) (p := 8191)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨8202, 8202, .largeDivisor 2288584802924069824279584764717⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨8208, 8208, .largeDivisor 131247186662465835208919466201511⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨8209, 8210, .topPrime 8209⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8209) (hi := 8210) (p := 8209)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨8225, 8231, .topPrime 8221⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8225) (hi := 8231) (p := 8221)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk113

#print axioms B699LowIndex.I11TerminalData.Chunk113.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk113.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk113.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk113.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk113.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk113.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk113.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk113.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk113.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk113.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk113.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk113.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk113.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk113.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk113.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk113.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk113.witnesses_check
