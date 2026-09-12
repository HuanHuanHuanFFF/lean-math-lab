import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk139
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨10775, 10781, .topPrime 10771⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10775) (hi := 10781) (p := 10771)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨10782, 10790, .topPrime 10781⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10782) (hi := 10790) (p := 10781)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨10800, 10809, .topPrime 10799⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10800) (hi := 10809) (p := 10799)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨10810, 10810, .largeDivisor 77659531329866018646711252086783⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨10825, 10825, .largeDivisor 354841710996976102807591812822109⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨10826, 10826, .largeDivisor 18648137685695452859198975561224039⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨10827, 10827, .largeDivisor 44247947999786252050525379881957631⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨10828, 10828, .largeDivisor 11073236131591142118958325167833901⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨10829, 10829, .largeDivisor 4071855549220702842412295943579521⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨10830, 10830, .largeDivisor 135866517540315530650784622944099⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨10831, 10837, .topPrime 10831⟩
theorem w10_check : witnessCheck w10 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10831) (hi := 10837) (p := 10831)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w11 : Witness := .good ⟨10850, 10857, .topPrime 10847⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10850) (hi := 10857) (p := 10847)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨10858, 10860, .topPrime 10853⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 10858) (hi := 10860) (p := 10853)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨10878, 10878, .largeDivisor 427927319661673787990857173835159⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨10879, 10879, .largeDivisor 1713441777916580470943148764870333⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨10880, 10880, .largeDivisor 8039886896103192935697910296107⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk139

#print axioms B699LowIndex.I11TerminalData.Chunk139.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk139.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk139.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk139.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk139.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk139.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk139.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk139.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk139.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk139.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk139.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk139.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk139.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk139.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk139.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk139.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk139.witnesses_check
