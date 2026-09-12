import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk244
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨142346, 142346, .largeDivisor 11554711005771571442596251805972585960467661⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨144384, 144385, .topPrime 144383⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 144384) (hi := 144385) (p := 144383)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨147500, 147500, .largeDivisor 20997153953850231775866601748260973222462633⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨153090, 153098, .topPrime 153089⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 153090) (hi := 153098) (p := 153089)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨158125, 158125, .largeDivisor 30086644578008799385136095171682939773204231⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨158126, 158126, .largeDivisor 225665532707628280598331760986506808394729733⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨158127, 158127, .largeDivisor 2106358166014942277679735928783033002245052151⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨158128, 158128, .largeDivisor 131656543918273648818968423282523164246651849⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨158129, 158133, .topPrime 158129⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 158129) (hi := 158133) (p := 158129)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨168756, 168756, .largeDivisor 5129175431181448227632897103905218623336727⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨168757, 168757, .largeDivisor 10259019570714418813490628714917485205201143⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨168758, 168758, .largeDivisor 15389532478040710858211270606340067985736053⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨168759, 168759, .largeDivisor 6840238070868783494970477520076862891424769⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨168760, 168760, .largeDivisor 1197119692246874250851638306599920543365873⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨175625, 175626, .topPrime 175621⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 175625) (hi := 175626) (p := 175621)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨177152, 177152, .largeDivisor 191450633972752917178955090827821124015151⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk244

#print axioms B699LowIndex.I11TerminalData.Chunk244.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk244.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk244.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk244.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk244.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk244.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk244.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk244.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk244.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk244.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk244.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk244.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk244.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk244.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk244.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk244.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk244.witnesses_check
