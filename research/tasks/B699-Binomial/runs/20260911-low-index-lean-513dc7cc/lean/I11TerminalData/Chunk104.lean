import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk104
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨7448, 7448, .largeDivisor 124095489653996401129776794676137⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨7449, 7449, .largeDivisor 82852675668425131488366706421309⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨7450, 7450, .largeDivisor 1659503787417037853443559518319⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨7451, 7461, .topPrime 7451⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7451) (hi := 7461) (p := 7451)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨7462, 7462, .topPrime 7459⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7462) (hi := 7462) (p := 7459)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨7475, 7475, .largeDivisor 2024885495732782518967424082585757⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨7476, 7476, .largeDivisor 120706503094586499791092259444161⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨7477, 7485, .topPrime 7477⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7477) (hi := 7485) (p := 7477)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨7488, 7489, .topPrime 7487⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7488) (hi := 7489) (p := 7487)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨7497, 7498, .topPrime 7489⟩
theorem w9_check : witnessCheck w9 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7497) (hi := 7498) (p := 7489)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w10 : Witness := .good ⟨7500, 7509, .topPrime 7499⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7500) (hi := 7509) (p := 7499)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨7510, 7514, .topPrime 7507⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7510) (hi := 7514) (p := 7507)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨7525, 7530, .topPrime 7523⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7525) (hi := 7530) (p := 7523)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨7533, 7539, .topPrime 7529⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7533) (hi := 7539) (p := 7529)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨7540, 7543, .topPrime 7537⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7540) (hi := 7543) (p := 7537)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨7546, 7546, .topPrime 7541⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 7546) (hi := 7546) (p := 7541)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk104

#print axioms B699LowIndex.I11TerminalData.Chunk104.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk104.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk104.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk104.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk104.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk104.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk104.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk104.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk104.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk104.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk104.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk104.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk104.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk104.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk104.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk104.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk104.witnesses_check
