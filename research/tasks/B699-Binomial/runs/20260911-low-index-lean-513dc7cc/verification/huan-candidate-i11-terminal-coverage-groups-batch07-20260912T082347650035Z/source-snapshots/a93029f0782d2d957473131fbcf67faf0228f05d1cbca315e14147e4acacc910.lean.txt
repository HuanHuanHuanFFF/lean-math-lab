import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk242
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨130000, 130000, .largeDivisor 436136101939560452157515830408596429953377⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨130001, 130001, .largeDivisor 91596331806534407659013272163082301276848083⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨130002, 130002, .largeDivisor 15267347133664492239830761883188099343535071⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨130003, 130007, .topPrime 130003⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 130003) (hi := 130007) (p := 130003)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨133125, 133130, .topPrime 133121⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 133125) (hi := 133130) (p := 133121)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨134144, 134144, .largeDivisor 10916086620495618004880469828847438218003679⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨134145, 134145, .largeDivisor 3396394344608854740898515870973198343374279⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨134146, 134146, .largeDivisor 8491682181233448169243156335549458846876021⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨138752, 138752, .largeDivisor 143589910135298106163222429525323742470999569⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨138753, 138753, .largeDivisor 1181903658405604915875510043951505051836369⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨138754, 138754, .largeDivisor 84428383114520734892875172409443118346513⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨138755, 138755, .largeDivisor 1215865106284932493000611784916687066545969⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨138756, 138756, .largeDivisor 506650626111667967010201234963121285468703⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨138757, 138757, .largeDivisor 1013381588332300925409518007867294483556727⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨138758, 138758, .largeDivisor 10641350267429499909790668967432272434491019⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨138759, 138759, .largeDivisor 14189591890893321974444253228893963067215761⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk242

#print axioms B699LowIndex.I11TerminalData.Chunk242.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk242.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk242.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk242.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk242.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk242.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk242.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk242.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk242.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk242.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk242.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk242.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk242.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk242.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk242.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk242.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk242.witnesses_check
