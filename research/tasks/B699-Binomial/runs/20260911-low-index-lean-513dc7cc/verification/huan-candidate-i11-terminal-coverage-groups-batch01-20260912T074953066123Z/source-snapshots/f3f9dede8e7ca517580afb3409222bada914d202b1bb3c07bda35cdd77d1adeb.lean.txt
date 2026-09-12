import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk103
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨7385, 7385, .largeDivisor 12658020172055097338067389898649⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨7398, 7403, .topPrime 7393⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7398) (hi := 7403) (p := 7393)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨7404, 7404, .largeDivisor 72339682960654153845896687789509⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨7405, 7405, .largeDivisor 28978920872255559060257775119357⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨7406, 7406, .largeDivisor 31095028684428378788795868231521⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨7407, 7407, .largeDivisor 13840567121300462814050297217167⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨7408, 7408, .largeDivisor 866321830088159291997470273293⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨7409, 7409, .largeDivisor 46850937511847972221965381422101⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨7410, 7410, .largeDivisor 76636964009446683038579133849397⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨7425, 7427, .topPrime 7417⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7425) (hi := 7427) (p := 7417)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨7428, 7428, .largeDivisor 2342595966117541672069473978413⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨7429, 7429, .largeDivisor 4692139507222220836291216550453⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨7430, 7430, .largeDivisor 1409728934034011355181712048923⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨7431, 7431, .largeDivisor 65884878671740492958209448022307⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨7432, 7432, .largeDivisor 8247817313845427564772480422143⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨7433, 7435, .topPrime 7433⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7433) (hi := 7435) (p := 7433)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk103

#print axioms B699LowIndex.I11TerminalData.Chunk103.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk103.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk103.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk103.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk103.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk103.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk103.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk103.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk103.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk103.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk103.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk103.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk103.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk103.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk103.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk103.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk103.witnesses_check
