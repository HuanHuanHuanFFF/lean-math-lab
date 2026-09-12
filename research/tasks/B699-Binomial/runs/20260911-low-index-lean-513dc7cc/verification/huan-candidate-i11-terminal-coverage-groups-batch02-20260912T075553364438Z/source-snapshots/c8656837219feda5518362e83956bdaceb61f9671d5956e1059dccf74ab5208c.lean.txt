import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk121
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨8960, 8960, .topPrime 8951⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8960) (hi := 8960) (p := 8951)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨8964, 8973, .topPrime 8963⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8964) (hi := 8973) (p := 8963)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨8974, 8977, .topPrime 8971⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8974) (hi := 8977) (p := 8971)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨8992, 8992, .largeDivisor 99506143047369537043648474525901⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨8993, 8993, .largeDivisor 1793304097044076646560181826475807⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨8994, 8994, .largeDivisor 299250010182463641678026556594371⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨8995, 8995, .largeDivisor 68483751217180014168524332185889⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨8996, 8996, .largeDivisor 257128474937291906285494529359039⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨8997, 8997, .largeDivisor 171628821797671584008501690084077⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨8998, 8998, .largeDivisor 85919446897487977796177712661429⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨8999, 9002, .topPrime 8999⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8999) (hi := 9002) (p := 8999)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨9018, 9023, .topPrime 9013⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 9018) (hi := 9023) (p := 9013)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨9024, 9024, .largeDivisor 28508061107729202937342294468631⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨9025, 9025, .largeDivisor 2283428014175780399463183559613⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨9026, 9026, .largeDivisor 17146606702121958307449829292069⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨9027, 9027, .largeDivisor 747741153140361920972703425215009⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk121

#print axioms B699LowIndex.I11TerminalData.Chunk121.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk121.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk121.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk121.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk121.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk121.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk121.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk121.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk121.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk121.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk121.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk121.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk121.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk121.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk121.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk121.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk121.witnesses_check
