import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk145
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨11367, 11367, .largeDivisor 94498078073229811446875891058713747⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨11368, 11368, .largeDivisor 241300014451322050890147119899859⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨11369, 11378, .topPrime 11369⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11369) (hi := 11378) (p := 11369)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨11394, 11403, .topPrime 11393⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11394) (hi := 11403) (p := 11393)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨11404, 11404, .topPrime 11399⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11404) (hi := 11404) (p := 11399)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨11421, 11421, .topPrime 11411⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11421) (hi := 11421) (p := 11411)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨11422, 11422, .largeDivisor 1581800852899644738575272926073973⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨11423, 11433, .topPrime 11423⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11423) (hi := 11433) (p := 11423)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨11434, 11434, .largeDivisor 3240375811160581501975594387028747⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨11450, 11457, .topPrime 11447⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11450) (hi := 11457) (p := 11447)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨11458, 11458, .largeDivisor 1289561994538944378845987670980899⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨11459, 11459, .largeDivisor 39830433680382112229639279573504371⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨11460, 11460, .largeDivisor 664478367800941867050493702379189⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨11466, 11466, .largeDivisor 397807690275448384501143449644457⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨11475, 11481, .topPrime 11471⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 11475) (hi := 11481) (p := 11471)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨11482, 11482, .largeDivisor 2262172727266327259758256241239803⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk145

#print axioms B699LowIndex.I11TerminalData.Chunk145.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk145.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk145.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk145.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk145.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk145.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk145.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk145.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk145.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk145.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk145.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk145.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk145.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk145.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk145.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk145.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk145.witnesses_check
