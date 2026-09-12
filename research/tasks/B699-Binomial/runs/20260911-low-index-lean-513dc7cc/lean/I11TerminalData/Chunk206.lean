import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk206
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨30379, 30379, .largeDivisor 251154580560855631939163838158202431269⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨30380, 30380, .largeDivisor 769119035600763073210913660269117393⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨30381, 30381, .largeDivisor 2564658700536360764704287993923395403⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨30382, 30382, .largeDivisor 1282793794074869328524672843030861663⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨30383, 30383, .largeDivisor 15399100689599666064229606870725669659⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨30384, 30384, .largeDivisor 748838498618467282680905058705488891⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨30385, 30385, .largeDivisor 299643876743558680243093437924096661⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨30464, 30464, .largeDivisor 32518895872688296091484364340507026843⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨30465, 30465, .largeDivisor 1445806298404805703942662025252725893⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨30466, 30466, .largeDivisor 3615821268034871989518727734472955759⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨30528, 30528, .largeDivisor 543321676401741815636112716538237517⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨30529, 30538, .topPrime 30529⟩
theorem w11_check : witnessCheck w11 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 30529) (hi := 30538) (p := 30529)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w12 : Witness := .good ⟨30625, 30625, .largeDivisor 1555885731770662459012944355621169⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨30626, 30626, .largeDivisor 11673335722980967288028033766598217⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨30627, 30627, .largeDivisor 10380026513013909506443532507900113⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨30628, 30628, .largeDivisor 2595938955813682107679985903680673⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk206

#print axioms B699LowIndex.I11TerminalData.Chunk206.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk206.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk206.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk206.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk206.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk206.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk206.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk206.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk206.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk206.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk206.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk206.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk206.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk206.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk206.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk206.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk206.witnesses_check
