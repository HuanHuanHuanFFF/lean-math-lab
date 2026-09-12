import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk217
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨42375, 42378, .topPrime 42373⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 42375) (hi := 42378) (p := 42373)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨42500, 42506, .topPrime 42499⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 42500) (hi := 42506) (p := 42499)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨42532, 42532, .largeDivisor 9274432864098661787660433534185672057⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨42533, 42535, .topPrime 42533⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 42533) (hi := 42535) (p := 42533)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨42625, 42625, .largeDivisor 41894945667323161378659143369308175783⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨42626, 42626, .largeDivisor 942879595573029079686760636356985375357⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨42627, 42627, .largeDivisor 17604962120232812343323497873845473322533⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨42628, 42628, .largeDivisor 4402376547277402941145517442372086472493⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨42629, 42629, .largeDivisor 26421076986328088128691012677865644690399⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨42630, 42630, .largeDivisor 17978160740597258399587962356181602009⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨42631, 42631, .largeDivisor 359656016204787293680354023090745131509⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨42632, 42632, .largeDivisor 134905814764222671079229013095697952123⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨42633, 42633, .largeDivisor 9995602342110065113514270173999674647⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨42634, 42634, .largeDivisor 34993636907006118907009968352627864091⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨42752, 42760, .topPrime 42751⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 42752) (hi := 42760) (p := 42751)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨42875, 42875, .largeDivisor 525204519380860329889664097834553007041⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk217

#print axioms B699LowIndex.I11TerminalData.Chunk217.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk217.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk217.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk217.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk217.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk217.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk217.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk217.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk217.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk217.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk217.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk217.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk217.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk217.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk217.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk217.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk217.witnesses_check
