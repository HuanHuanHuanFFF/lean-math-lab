import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Append
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.I11TerminalData.Chunk227
open B699LowIndex B699LowIndex.I11TerminalCover

def w0 : Witness := .good ⟨57348, 57354, .topPrime 57347⟩
theorem w0_check : witnessCheck w0 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 57348) (hi := 57354) (p := 57347)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w1 : Witness := .good ⟨57600, 57601, .topPrime 57593⟩
theorem w1_check : witnessCheck w1 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 57600) (hi := 57601) (p := 57593)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w2 : Witness := .good ⟨57625, 57625, .largeDivisor 26947308770034878673748451552576889883⟩
theorem w2_check : witnessCheck w2 = true := by
  decide +kernel

def w3 : Witness := .good ⟨57626, 57626, .largeDivisor 202143402132521468166288501584066109919⟩
theorem w3_check : witnessCheck w3 = true := by
  decide +kernel

def w4 : Witness := .good ⟨57627, 57627, .largeDivisor 359434658110118011849137816062975646157⟩
theorem w4_check : witnessCheck w4 = true := by
  decide +kernel

def w5 : Witness := .good ⟨57628, 57628, .largeDivisor 629130739811987631722819647189805629229⟩
theorem w5_check : witnessCheck w5 = true := by
  decide +kernel

def w6 : Witness := .good ⟨57629, 57629, .largeDivisor 33979545833762919614390228161107130840523⟩
theorem w6_check : witnessCheck w6 = true := by
  decide +kernel

def w7 : Witness := .good ⟨57630, 57630, .largeDivisor 1132867761444290400375633528827067431657⟩
theorem w7_check : witnessCheck w7 = true := by
  decide +kernel

def w8 : Witness := .good ⟨57631, 57631, .largeDivisor 3237382950354336295138004457769262813201⟩
theorem w8_check : witnessCheck w8 = true := by
  decide +kernel

def w9 : Witness := .good ⟨57632, 57632, .largeDivisor 303562591429591277531293071715647541343⟩
theorem w9_check : witnessCheck w9 = true := by
  decide +kernel

def w10 : Witness := .good ⟨57633, 57633, .largeDivisor 202413694212414634433156474982794936543⟩
theorem w10_check : witnessCheck w10 = true := by
  decide +kernel

def w11 : Witness := .good ⟨57634, 57634, .largeDivisor 101226167088127180474120926358905327497⟩
theorem w11_check : witnessCheck w11 = true := by
  decide +kernel

def w12 : Witness := .good ⟨58250, 58250, .topPrime 58243⟩
theorem w12_check : witnessCheck w12 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 58250) (hi := 58250) (p := 58243)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w13 : Witness := .good ⟨58320, 58320, .topPrime 58313⟩
theorem w13_check : witnessCheck w13 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 58320) (hi := 58320) (p := 58313)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w14 : Witness := .good ⟨58375, 58378, .topPrime 58369⟩
theorem w14_check : witnessCheck w14 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 58375) (hi := 58378) (p := 58369)
    (by decide) (by decide +kernel) (by decide) (by decide)

def w15 : Witness := .good ⟨58500, 58500, .largeDivisor 1363703442866619898636795596455088470209⟩
theorem w15_check : witnessCheck w15 = true := by
  decide +kernel

def witnesses : List Witness := [w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15]

theorem witnesses_check : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    w0_check, w1_check, w2_check, w3_check, w4_check, w5_check, w6_check, w7_check, w8_check, w9_check, w10_check, w11_check, w12_check, w13_check, w14_check, w15_check, Bool.and_self]

end B699LowIndex.I11TerminalData.Chunk227

#print axioms B699LowIndex.I11TerminalData.Chunk227.w0_check
#print axioms B699LowIndex.I11TerminalData.Chunk227.w1_check
#print axioms B699LowIndex.I11TerminalData.Chunk227.w2_check
#print axioms B699LowIndex.I11TerminalData.Chunk227.w3_check
#print axioms B699LowIndex.I11TerminalData.Chunk227.w4_check
#print axioms B699LowIndex.I11TerminalData.Chunk227.w5_check
#print axioms B699LowIndex.I11TerminalData.Chunk227.w6_check
#print axioms B699LowIndex.I11TerminalData.Chunk227.w7_check
#print axioms B699LowIndex.I11TerminalData.Chunk227.w8_check
#print axioms B699LowIndex.I11TerminalData.Chunk227.w9_check
#print axioms B699LowIndex.I11TerminalData.Chunk227.w10_check
#print axioms B699LowIndex.I11TerminalData.Chunk227.w11_check
#print axioms B699LowIndex.I11TerminalData.Chunk227.w12_check
#print axioms B699LowIndex.I11TerminalData.Chunk227.w13_check
#print axioms B699LowIndex.I11TerminalData.Chunk227.w14_check
#print axioms B699LowIndex.I11TerminalData.Chunk227.w15_check
#print axioms B699LowIndex.I11TerminalData.Chunk227.witnesses_check
