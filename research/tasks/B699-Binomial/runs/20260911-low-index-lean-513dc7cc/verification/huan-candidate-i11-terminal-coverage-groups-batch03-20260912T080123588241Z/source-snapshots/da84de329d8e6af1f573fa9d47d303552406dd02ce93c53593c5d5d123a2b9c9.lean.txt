import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk158
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨12880, 12880, .largeDivisor 11866685798530924880204715823261⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨12881, 12881, .largeDivisor 1068914543852285618055363248387587⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨12882, 12882, .largeDivisor 178304679174178946621464135986959⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨12883, 12883, .largeDivisor 1427656421256026954210268778073333⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨12884, 12884, .largeDivisor 7501600869275143261845474280871461⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨12885, 12885, .largeDivisor 1001068066911192801293345099777627⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨12887, 12887, .largeDivisor 15348662664280516495143684901954297⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨12888, 12888, .largeDivisor 213357972890130655636461877568519⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨12889, 12889, .topPrime 12889⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12889) (hi := 12889) (p := 12889)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨12896, 12897, .topPrime 12893⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12896) (hi := 12897) (p := 12893)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨12906, 12906, .topPrime 12899⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12906) (hi := 12906) (p := 12899)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨12933, 12933, .topPrime 12923⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 12933) (hi := 12933) (p := 12923)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨12934, 12934, .largeDivisor 4892656053710362376198478141862993⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨12935, 12935, .largeDivisor 35257106437183029156616888448466749⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨12936, 12936, .largeDivisor 750151200791128279928018903158867⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨12937, 12937, .largeDivisor 1501579155908220107910998073675733⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk158

#print axioms B699LowIndex.I11TerminalData.Chunk158.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk158.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk158.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk158.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk158.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk158.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk158.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk158.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk158.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk158.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk158.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk158.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk158.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk158.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk158.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk158.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk158.witnesses_check
