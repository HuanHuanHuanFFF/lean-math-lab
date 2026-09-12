import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk251
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨1226914, 1226914, .largeDivisor 201972013560244700646881055094974049096198404054563⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨1226915, 1226915, .largeDivisor 6786320498898195998744846493546490084810687797086243⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨1226916, 1226916, .largeDivisor 942552964259455368725464128626739350562729187722343⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨1226917, 1226917, .largeDivisor 1885122829703853763255767389355554808232043867766127⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨1384375, 1384375, .largeDivisor 65597827181909361618446725160382258311459496062185187⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨1384376, 1384376, .largeDivisor 17570986182444456432042360497662933630772125149291697⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨1384377, 1384377, .largeDivisor 11714083866209711045596086053675169269286408506517781⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨1384378, 1384378, .largeDivisor 5857088472397733894942677201498852357314274190094127⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨1384379, 1384379, .largeDivisor 281142480577285893406846105250642478678491646926539213⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨1384380, 1384380, .largeDivisor 10933405563718445474685126413823799236051915923849849⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨1384381, 1384381, .largeDivisor 109334924389477562101822995224512269192519250045689937⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨1449984, 1449991, .topPrime 1449983⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1449984) (hi := 1449991) (p := 1449983)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨2453822, 2453824, .topPrime 2453821⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 2453822) (hi := 2453824) (p := 2453821)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨2703132, 2703132, .largeDivisor 17198682785635699681936501720602786550568978454783155197⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨2703133, 2703133, .largeDivisor 34397505546833465739490901043695528516137395528143646241⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨2703134, 2703134, .largeDivisor 3158967445981839290861495282084568059812875709938125549⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk251

#print axioms B699LowIndex.I11TerminalData.Chunk251.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk251.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk251.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk251.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk251.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk251.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk251.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk251.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk251.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk251.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk251.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk251.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk251.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk251.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk251.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk251.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk251.witnesses_check
