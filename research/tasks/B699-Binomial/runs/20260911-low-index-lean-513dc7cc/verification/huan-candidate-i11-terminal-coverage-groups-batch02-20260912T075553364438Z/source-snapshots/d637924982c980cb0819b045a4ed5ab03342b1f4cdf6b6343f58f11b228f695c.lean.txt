import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk134
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨10152, 10160, .topPrime 10151⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10152) (hi := 10160) (p := 10151)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨10176, 10179, .topPrime 10169⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10176) (hi := 10179) (p := 10169)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨10180, 10186, .topPrime 10177⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10180) (hi := 10186) (p := 10177)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨10200, 10202, .topPrime 10193⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10200) (hi := 10202) (p := 10193)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨10206, 10206, .largeDivisor 30553341315160080321388208509187⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨10207, 10207, .largeDivisor 122345215693934460510164552472841⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨10208, 10208, .largeDivisor 34446711214797081114512349725363⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨10209, 10209, .largeDivisor 22989244609522350859518636225811⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨10210, 10210, .largeDivisor 16109827554099053004508255035383⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨10211, 10216, .topPrime 10211⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10211) (hi := 10216) (p := 10211)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨10233, 10233, .topPrime 10223⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10233) (hi := 10233) (p := 10223)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨10234, 10234, .largeDivisor 212548100054620038713378113977887⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨10235, 10235, .largeDivisor 6127971279039538299243450694545559⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨10240, 10240, .largeDivisor 35096831031418145382482490271819⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨10241, 10241, .largeDivisor 21510960954740153621521526295631⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨10242, 10242, .largeDivisor 1196338264416689220080710435169⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk134

#print axioms B699LowIndex.I11TerminalData.Chunk134.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk134.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk134.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk134.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk134.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk134.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk134.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk134.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk134.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk134.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk134.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk134.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk134.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk134.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk134.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk134.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk134.witnesses_check
