import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk111
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨8000, 8003, .topPrime 7993⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8000) (hi := 8003) (p := 7993)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨8004, 8004, .largeDivisor 12791671315430090986154631833051⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨8005, 8005, .largeDivisor 35865964581442339174839869640481⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨8006, 8006, .largeDivisor 269364833432483459131114443097271⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨8007, 8007, .largeDivisor 359647193812555453937440944785701⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨8008, 8008, .largeDivisor 6431105253869629850325628998919⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨8009, 8010, .topPrime 8009⟩
theorem w6_check : witnessCheck w6 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8009) (hi := 8010) (p := 8009)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w7 : Witness := .good ⟨8025, 8027, .topPrime 8017⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 8025) (hi := 8027) (p := 8017)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨8028, 8028, .largeDivisor 15233198493723830497469863765741⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨8029, 8029, .largeDivisor 4358313462784044295484642988103⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨8032, 8032, .largeDivisor 66464620078618719622600402360853⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨8033, 8033, .largeDivisor 2795341848646828139939000168401739⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨8034, 8034, .largeDivisor 466529070838601879518673965535327⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨8035, 8035, .largeDivisor 747469807415387059208882415369163⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨8036, 8036, .largeDivisor 286413664523652985304338121776969⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨8037, 8037, .largeDivisor 63734712788343412877342123784409⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk111

#print axioms B699LowIndex.I11TerminalData.Chunk111.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk111.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk111.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk111.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk111.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk111.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk111.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk111.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk111.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk111.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk111.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk111.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk111.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk111.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk111.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk111.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk111.witnesses_check
