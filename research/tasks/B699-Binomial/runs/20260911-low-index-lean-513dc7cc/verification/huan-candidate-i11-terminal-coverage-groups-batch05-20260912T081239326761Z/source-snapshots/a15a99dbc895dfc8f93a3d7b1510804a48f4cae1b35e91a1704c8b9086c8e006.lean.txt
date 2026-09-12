import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk193
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨23128, 23128, .largeDivisor 86095980807635003953878506261115971⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨23129, 23129, .largeDivisor 516821681832283936270245515523838903⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨23130, 23130, .largeDivisor 5745195390410353891667161100810009⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨23131, 23135, .topPrime 23131⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 23131) (hi := 23135) (p := 23131)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨23168, 23177, .topPrime 23167⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 23168) (hi := 23177) (p := 23167)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨23178, 23178, .topPrime 23173⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 23178) (hi := 23178) (p := 23173)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨23232, 23236, .topPrime 23227⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 23232) (hi := 23236) (p := 23227)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨23250, 23250, .largeDivisor 70954099658871885945901893690663649⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨23251, 23257, .topPrime 23251⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 23251) (hi := 23257) (p := 23251)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨23328, 23334, .topPrime 23327⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 23328) (hi := 23334) (p := 23327)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨23375, 23381, .topPrime 23371⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 23375) (hi := 23381) (p := 23371)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨23382, 23382, .largeDivisor 107877517459389963444325057348529813⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨23383, 23383, .largeDivisor 431713159464815251620512205370643953⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨23424, 23427, .topPrime 23417⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 23424) (hi := 23427) (p := 23417)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨23428, 23428, .largeDivisor 1446843018825610343515695451775896871⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨23429, 23429, .largeDivisor 3722201063804241214255982073092949137⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk193

#print axioms B699LowIndex.I11TerminalData.Chunk193.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk193.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk193.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk193.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk193.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk193.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk193.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk193.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk193.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk193.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk193.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk193.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk193.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk193.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk193.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk193.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk193.witnesses_check
