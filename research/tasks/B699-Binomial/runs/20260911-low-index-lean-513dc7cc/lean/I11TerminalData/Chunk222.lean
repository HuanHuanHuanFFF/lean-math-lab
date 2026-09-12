import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk222
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨48010, 48010, .largeDivisor 542791444673129429989139154793434416497⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨48128, 48131, .topPrime 48121⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 48128) (hi := 48131) (p := 48121)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨48132, 48135, .topPrime 48131⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 48132) (hi := 48135) (p := 48131)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨48256, 48257, .topPrime 48247⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 48256) (hi := 48257) (p := 48247)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨48258, 48258, .largeDivisor 136772884096463688250552139402076285067⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨48259, 48260, .topPrime 48259⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 48259) (hi := 48260) (p := 48259)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨48363, 48363, .topPrime 48353⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 48363) (hi := 48363) (p := 48353)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨48364, 48364, .largeDivisor 762527603255155528843435978885923887137⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨48365, 48365, .largeDivisor 915241283817734139533758062261265884139⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨48366, 48366, .largeDivisor 254291524104875569530266561192846802883⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨48367, 48367, .largeDivisor 7121782366172852733914535474935970651443⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨48384, 48385, .topPrime 48383⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 48384) (hi := 48385) (p := 48383)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨50058, 50058, .topPrime 50053⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 50058) (hi := 50058) (p := 50053)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨50304, 50304, .largeDivisor 39993700495664264106386663623389475649⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨50305, 50305, .largeDivisor 16000979070540349193715203511946614487⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨50306, 50306, .largeDivisor 840235128520462219769349715941530676809⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk222

#print axioms B699LowIndex.I11TerminalData.Chunk222.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk222.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk222.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk222.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk222.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk222.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk222.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk222.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk222.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk222.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk222.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk222.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk222.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk222.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk222.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk222.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk222.witnesses_check
