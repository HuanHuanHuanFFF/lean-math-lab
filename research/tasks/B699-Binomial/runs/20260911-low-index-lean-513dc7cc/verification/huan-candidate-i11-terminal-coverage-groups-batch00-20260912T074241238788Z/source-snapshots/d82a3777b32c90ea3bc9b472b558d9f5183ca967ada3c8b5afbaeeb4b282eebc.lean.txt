import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk081
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨5697, 5703, .topPrime 5693⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5697) (hi := 5703) (p := 5693)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨5704, 5707, .topPrime 5701⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5704) (hi := 5707) (p := 5701)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨5725, 5727, .topPrime 5717⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5725) (hi := 5727) (p := 5717)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨5728, 5728, .largeDivisor 536098047569339251060923041599⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨5729, 5729, .largeDivisor 3222776195723761352915034738007⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨5730, 5730, .largeDivisor 753427482721222054353453653561⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨5731, 5731, .largeDivisor 30195055269058206947549950269637⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨5732, 5732, .largeDivisor 22689834399874363165096527916303⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨5733, 5733, .largeDivisor 103099562110579070655803866799⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨5734, 5734, .largeDivisor 51648863283423064052103736871⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨5735, 5735, .largeDivisor 1117759362001627442787980871529⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨5736, 5736, .largeDivisor 1166569814490781479590949468539⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨5737, 5738, .topPrime 5737⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5737) (hi := 5738) (p := 5737)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨5750, 5759, .topPrime 5749⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 5750) (hi := 5759) (p := 5749)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨5760, 5760, .largeDivisor 4433402551159111770507546227⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨5761, 5761, .largeDivisor 158638708678432564657726545427⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk081

#print axioms B699LowIndex.I11TerminalData.Chunk081.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk081.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk081.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk081.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk081.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk081.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk081.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk081.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk081.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk081.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk081.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk081.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk081.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk081.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk081.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk081.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk081.witnesses_check
