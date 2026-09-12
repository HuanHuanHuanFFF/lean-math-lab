import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk162
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨13378, 13378, .largeDivisor 37224260746055549735086821972227⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨13379, 13379, .largeDivisor 894117386932634111141340379113869⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨13380, 13380, .largeDivisor 14914217763929793311730039983723⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨13381, 13386, .topPrime 13381⟩
theorem w3_check : witnessCheck w3 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13381) (hi := 13386) (p := 13381)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w4 : Witness := .good ⟨13426, 13429, .topPrime 13421⟩
theorem w4_check : witnessCheck w4 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13426) (hi := 13429) (p := 13421)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w5 : Witness := .good ⟨13446, 13450, .topPrime 13441⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13446) (hi := 13450) (p := 13441)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨13473, 13479, .topPrime 13469⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13473) (hi := 13479) (p := 13469)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨13480, 13483, .topPrime 13477⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13480) (hi := 13483) (p := 13477)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨13500, 13509, .topPrime 13499⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13500) (hi := 13509) (p := 13499)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨13510, 13510, .largeDivisor 90315612020999930967653762633161⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨13527, 13533, .topPrime 13523⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13527) (hi := 13533) (p := 13523)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨13534, 13534, .largeDivisor 2631340051733702201601056567950471⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨13536, 13536, .largeDivisor 26905309285704990549505812592121713⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨13537, 13537, .topPrime 13537⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13537) (hi := 13537) (p := 13537)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨13573, 13577, .topPrime 13567⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13573) (hi := 13577) (p := 13567)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨13578, 13578, .topPrime 13577⟩
theorem w15_check : witnessCheck w15 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 13578) (hi := 13578) (p := 13577)
    (by decide) (by decide +kernel) (by decide) (by decide)

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk162

#print axioms B699LowIndex.I11TerminalData.Chunk162.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk162.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk162.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk162.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk162.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk162.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk162.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk162.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk162.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk162.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk162.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk162.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk162.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk162.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk162.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk162.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk162.witnesses_check
