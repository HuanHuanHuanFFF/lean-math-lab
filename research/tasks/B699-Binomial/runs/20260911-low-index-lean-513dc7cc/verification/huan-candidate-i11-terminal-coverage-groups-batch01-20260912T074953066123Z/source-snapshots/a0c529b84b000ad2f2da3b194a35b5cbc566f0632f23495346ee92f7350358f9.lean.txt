import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk096
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨6819, 6819, .largeDivisor 62645497564566417386304901080989⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨6820, 6820, .largeDivisor 3137335096125297155049195369161⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨6821, 6821, .largeDivisor 94272082337756175747094985079503⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨6825, 6826, .topPrime 6823⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6825) (hi := 6826) (p := 6823)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨6831, 6839, .topPrime 6829⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6831) (hi := 6839) (p := 6829)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨6840, 6841, .topPrime 6833⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6840) (hi := 6841) (p := 6833)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨6850, 6851, .topPrime 6841⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6850) (hi := 6851) (p := 6841)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨6852, 6852, .largeDivisor 80929366648647059051347367642711⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨6853, 6853, .largeDivisor 23159850905882920435916127717689⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨6854, 6854, .largeDivisor 34795619927426904135854699556563⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨6855, 6855, .largeDivisor 9293745357588600344877614083781⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨6856, 6856, .largeDivisor 5817925326116457630065825617093⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨6857, 6867, .topPrime 6857⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6857) (hi := 6867) (p := 6857)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨6868, 6870, .topPrime 6863⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6868) (hi := 6870) (p := 6863)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨6880, 6881, .topPrime 6871⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 6880) (hi := 6881) (p := 6871)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨6882, 6882, .largeDivisor 485236831935182067121235941333⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk096

#print axioms B699LowIndex.I11TerminalData.Chunk096.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk096.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk096.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk096.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk096.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk096.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk096.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk096.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk096.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk096.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk096.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk096.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk096.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk096.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk096.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk096.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk096.witnesses_check
