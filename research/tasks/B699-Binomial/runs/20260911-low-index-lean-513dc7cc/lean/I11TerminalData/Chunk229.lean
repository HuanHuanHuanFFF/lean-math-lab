import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk229
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨58755, 58755, .largeDivisor 1144432825218650814249040707239079439231⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨58756, 58756, .largeDivisor 1430808900301026624436476206369464455091⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨58757, 58760, .topPrime 58757⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 58757) (hi := 58760) (p := 58757)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨58880, 58880, .largeDivisor 1647427770579232396063245459784203681323⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨58881, 58881, .largeDivisor 38447163915765272577328559618530993642481⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨58882, 58882, .largeDivisor 19227173869036459206555521797305481201751⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨58883, 58883, .largeDivisor 461538393367498502837182547896754443376561⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨58884, 58884, .largeDivisor 5495531291943954792330354595071167849557⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨58885, 58885, .largeDivisor 2198623230126166239401929071106197770297⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨59000, 59006, .topPrime 58997⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 59000) (hi := 59006) (p := 58997)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨59008, 59008, .largeDivisor 78738669948469470543642674530869658325317⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨59009, 59010, .topPrime 59009⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 59009) (hi := 59010) (p := 59009)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨59778, 59781, .topPrime 59771⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 59778) (hi := 59781) (p := 59771)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨59782, 59786, .topPrime 59779⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 59782) (hi := 59786) (p := 59779)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨60025, 60027, .topPrime 60017⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 60025) (hi := 60027) (p := 60017)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨60028, 60028, .largeDivisor 234656062568834951115147694998118581089⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk229

#print axioms B699LowIndex.I11TerminalData.Chunk229.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk229.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk229.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk229.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk229.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk229.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk229.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk229.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk229.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk229.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk229.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk229.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk229.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk229.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk229.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk229.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk229.witnesses_check
