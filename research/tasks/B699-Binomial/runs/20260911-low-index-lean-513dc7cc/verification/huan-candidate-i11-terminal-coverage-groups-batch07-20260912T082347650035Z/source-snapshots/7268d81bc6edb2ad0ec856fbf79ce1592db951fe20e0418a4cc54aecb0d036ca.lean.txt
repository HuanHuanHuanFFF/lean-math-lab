import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk233
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨71688, 71688, .largeDivisor 113061068462678656226888247386767859147⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨71689, 71689, .largeDivisor 226156838556348396614006851946482911197⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨71690, 71690, .largeDivisor 67857463508578313954958151827076381801⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨71691, 71691, .largeDivisor 1621589805464495968581634954211644295898497⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨71692, 71692, .largeDivisor 405459662718714321017963522890798129426051⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨71693, 71695, .topPrime 71693⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 71693) (hi := 71695) (p := 71693)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨71936, 71938, .topPrime 71933⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 71936) (hi := 71938) (p := 71933)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨73750, 73750, .largeDivisor 11956809721906953740318688293764697681713⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨73751, 73755, .topPrime 73751⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 73751) (hi := 73755) (p := 73751)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨75008, 75008, .largeDivisor 1050143693624359776219104562596209582817⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨75009, 75009, .largeDivisor 4901389354431560105433315545751918648343⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨75010, 75010, .largeDivisor 490210823445527705047471298399780554157⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨76545, 76553, .topPrime 76543⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 76545) (hi := 76553) (p := 76543)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨76554, 76554, .largeDivisor 676117572261700022803882896690915433729⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨77518, 77523, .topPrime 77513⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 77518) (hi := 77523) (p := 77513)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨77524, 77527, .topPrime 77521⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 77524) (hi := 77527) (p := 77521)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk233

#print axioms B699LowIndex.I11TerminalData.Chunk233.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk233.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk233.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk233.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk233.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk233.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk233.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk233.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk233.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk233.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk233.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk233.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk233.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk233.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk233.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk233.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk233.witnesses_check
