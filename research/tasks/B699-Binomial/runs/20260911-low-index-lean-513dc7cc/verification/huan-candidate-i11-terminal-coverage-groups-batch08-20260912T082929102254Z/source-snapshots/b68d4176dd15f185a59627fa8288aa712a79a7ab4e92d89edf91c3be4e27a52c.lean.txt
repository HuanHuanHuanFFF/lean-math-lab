import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk250
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨725000, 725002, .topPrime 724993⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 725000) (hi := 725002) (p := 724993)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨784384, 784385, .topPrime 784379⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 784384) (hi := 784385) (p := 784379)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨785133, 785137, .topPrime 785129⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 785133) (hi := 785137) (p := 785129)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨818750, 818750, .largeDivisor 10278621368919428635443057645763735904051358695897⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨818751, 818751, .largeDivisor 68525063100407545860693577045433263593472522686277⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨966656, 966663, .topPrime 966653⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 966656) (hi := 966663) (p := 966653)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨966664, 966664, .topPrime 966661⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 966664) (hi := 966664) (p := 966661)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨1006020, 1006020, .largeDivisor 31851682264263907905996851902402736007384626515163⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨1006021, 1006029, .topPrime 1006021⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1006021) (hi := 1006029) (p := 1006021)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨1015625, 1015625, .largeDivisor 4949437035060914016052278517480515353454200500769⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨1015626, 1015626, .largeDivisor 4124575534832569312245217119343670162387055985613⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨1015627, 1015633, .topPrime 1015627⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1015627) (hi := 1015633) (p := 1015627)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨1146880, 1146885, .topPrime 1146877⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1146880) (hi := 1146885) (p := 1146877)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨1226911, 1226911, .largeDivisor 6462930598835919036166140229896994057712815215816119⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨1226912, 1226912, .largeDivisor 605905175943212953039355210944845547848034311300437⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨1226913, 1226913, .largeDivisor 403940405526556717027860644086201552445033817414677⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk250

#print axioms B699LowIndex.I11TerminalData.Chunk250.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk250.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk250.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk250.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk250.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk250.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk250.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk250.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk250.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk250.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk250.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk250.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk250.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk250.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk250.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk250.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk250.witnesses_check
