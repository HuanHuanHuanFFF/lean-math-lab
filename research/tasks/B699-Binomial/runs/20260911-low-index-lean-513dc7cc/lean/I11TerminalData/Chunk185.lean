import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk185
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨20260, 20260, .largeDivisor 5200988480873578546812972228073561⟩
theorem w0_check : witnessCheck w0 = true := by
  decide +kernel

def w1 : Witness := .good ⟨20288, 20296, .topPrime 20287⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 20288) (hi := 20296) (p := 20287)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨20335, 20341, .topPrime 20333⟩
theorem w2_check : witnessCheck w2 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 20335) (hi := 20341) (p := 20333)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w3 : Witness := .good ⟨20384, 20384, .largeDivisor 160905066750946520016743420159126347⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨20385, 20385, .largeDivisor 2385065777892698981302469465399831⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨20416, 20421, .topPrime 20411⟩
theorem w5_check : witnessCheck w5 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 20416) (hi := 20421) (p := 20411)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w6 : Witness := .good ⟨20422, 20422, .largeDivisor 39425743726810079391103073598558427⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨20482, 20489, .topPrime 20479⟩
theorem w7_check : witnessCheck w7 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 20482) (hi := 20489) (p := 20479)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w8 : Witness := .good ⟨20490, 20490, .topPrime 20483⟩
theorem w8_check : witnessCheck w8 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 20490) (hi := 20490) (p := 20483)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w9 : Witness := .good ⟨20500, 20500, .largeDivisor 248660962364754726842884195989550189⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨20501, 20501, .largeDivisor 7463833659501957035147831481671696083⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨20502, 20502, .largeDivisor 414880022359705678738635501323706107⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨20503, 20503, .largeDivisor 237201558752991983803525938586206361⟩
theorem w12_check : witnessCheck w12 = true := by
  decide +kernel

def w13 : Witness := .good ⟨20580, 20580, .largeDivisor 1891753877198083119293813174489341⟩
theorem w13_check : witnessCheck w13 = true := by
  decide +kernel

def w14 : Witness := .good ⟨20581, 20581, .largeDivisor 18927655102874938589297991708393353⟩
theorem w14_check : witnessCheck w14 = true := by
  decide +kernel

def w15 : Witness := .good ⟨20582, 20582, .largeDivisor 28406664527298526035068635361101939⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk185

#print axioms B699LowIndex.I11TerminalData.Chunk185.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk185.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk185.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk185.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk185.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk185.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk185.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk185.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk185.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk185.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk185.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk185.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk185.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk185.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk185.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk185.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk185.witnesses_check
