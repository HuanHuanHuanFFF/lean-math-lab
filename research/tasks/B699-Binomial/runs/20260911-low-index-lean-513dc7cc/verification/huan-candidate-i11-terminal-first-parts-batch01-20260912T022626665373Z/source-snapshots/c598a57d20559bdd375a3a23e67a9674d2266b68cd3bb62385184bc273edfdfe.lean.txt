import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk014
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨1338, 1338, .largeDivisor 1760448015894400033328303⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨1339, 1339, .largeDivisor 28400480641959055959356599⟩
theorem w1_check : witnessCheck w1 = true := by
  decide +kernel

def w2 : Witness := .good ⟨1340, 1340, .largeDivisor 4295332286707125844868831⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨1341, 1341, .largeDivisor 33684447932597986888708201⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨1342, 1342, .largeDivisor 16981415899904770249679341⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨1343, 1343, .largeDivisor 616379501447894768792414999⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨1344, 1344, .largeDivisor 462400226142456690767003⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨1345, 1345, .largeDivisor 186485248624169190129421⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨1346, 1346, .largeDivisor 1410163733978268145585397⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨1347, 1347, .largeDivisor 3791398302731990403400259⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨1348, 1348, .largeDivisor 6689535225239166313852813⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨1349, 1349, .largeDivisor 40467188425325719091423519⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨1350, 1350, .largeDivisor 30221948039825032928621⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨1351, 1351, .largeDivisor 87057253308749721719759⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨1352, 1352, .largeDivisor 98742790665628878997579⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨1353, 1353, .largeDivisor 66368105201488262932799⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk014

#print axioms B699LowIndex.I11TerminalData.Chunk014.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk014.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk014.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk014.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk014.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk014.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk014.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk014.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk014.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk014.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk014.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk014.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk014.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk014.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk014.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk014.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk014.witnesses_check
