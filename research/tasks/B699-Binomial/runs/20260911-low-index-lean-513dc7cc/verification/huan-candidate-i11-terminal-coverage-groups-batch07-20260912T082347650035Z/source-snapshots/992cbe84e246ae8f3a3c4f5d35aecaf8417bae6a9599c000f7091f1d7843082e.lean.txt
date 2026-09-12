import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk246
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨208896, 208897, .topPrime 208891⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 208896) (hi := 208897) (p := 208891)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨220160, 220161, .topPrime 220151⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 220160) (hi := 220161) (p := 220151)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨220162, 220162, .largeDivisor 847027471690076689643551325392800088918326373⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨220163, 220168, .topPrime 220163⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 220163) (hi := 220168) (p := 220163)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨220892, 220897, .topPrime 220889⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 220892) (hi := 220897) (p := 220889)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨223750, 223754, .topPrime 223747⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 223750) (hi := 223754) (p := 223747)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨229376, 229383, .topPrime 229373⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 229376) (hi := 229383) (p := 229373)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨229384, 229384, .largeDivisor 8979124425921283803639179429575723817615971⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨229385, 229385, .largeDivisor 32326398123518067728129532660334731349036169⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨235008, 235010, .topPrime 235007⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 235008) (hi := 235010) (p := 235007)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨239112, 239112, .largeDivisor 9803067388875825052089634829299981376472581989⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨239113, 239113, .largeDivisor 2801005252458024675279419127686577810632507701⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨239114, 239114, .largeDivisor 12605103510675802917242500570212074502419946671⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨242501, 242501, .topPrime 242491⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 242501) (hi := 242501) (p := 242491)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨242502, 242502, .largeDivisor 148265787124970981686623365582581683059804297⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨242503, 242503, .largeDivisor 593090051220936574764548538077508633473297617⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk246

#print axioms B699LowIndex.I11TerminalData.Chunk246.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk246.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk246.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk246.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk246.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk246.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk246.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk246.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk246.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk246.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk246.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk246.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk246.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk246.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk246.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk246.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk246.witnesses_check
