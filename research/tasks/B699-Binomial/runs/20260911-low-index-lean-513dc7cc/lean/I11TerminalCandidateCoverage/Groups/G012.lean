import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk101
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk102
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk103
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk104

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G012
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0192_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk101.w10]
private def c0192_intervals : List NatInterval := [(7290, 7290)]

private theorem c0192_intervals_eq :
    witnessIntervals c0192_witnesses = c0192_intervals := by
  rfl

private theorem c0192_checks : witnessesCheck c0192_witnesses = true := by
  simp only [witnessesCheck, c0192_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk101.w10_check, Bool.and_self]

private theorem c0192_cover : coverCheck 7290 7290 c0192_intervals = true := by
  decide

private theorem c0192_sound : IntervalSound (7290, 7290) := by
  have hc : coverCheck 7290 7290 (witnessIntervals c0192_witnesses) = true := by
    rw [c0192_intervals_eq]
    exact c0192_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0192_witnesses)
    (lo := 7290) (hi := 7290) c0192_checks hc

private def c0193_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk101.w11, B699LowIndex.I11TerminalData.Chunk101.w12, B699LowIndex.I11TerminalData.Chunk101.w13]
private def c0193_intervals : List NatInterval := [(7296, 7296), (7297, 7307), (7308, 7310)]

private theorem c0193_intervals_eq :
    witnessIntervals c0193_witnesses = c0193_intervals := by
  rfl

private theorem c0193_checks : witnessesCheck c0193_witnesses = true := by
  simp only [witnessesCheck, c0193_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk101.w11_check, B699LowIndex.I11TerminalData.Chunk101.w12_check, B699LowIndex.I11TerminalData.Chunk101.w13_check, Bool.and_self]

private theorem c0193_cover : coverCheck 7296 7310 c0193_intervals = true := by
  decide

private theorem c0193_sound : IntervalSound (7296, 7310) := by
  have hc : coverCheck 7296 7310 (witnessIntervals c0193_witnesses) = true := by
    rw [c0193_intervals_eq]
    exact c0193_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0193_witnesses)
    (lo := 7296) (hi := 7310) c0193_checks hc

private def c0194_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk101.w14, B699LowIndex.I11TerminalData.Chunk101.w15, B699LowIndex.I11TerminalData.Chunk102.w0]
private def c0194_intervals : List NatInterval := [(7317, 7319), (7320, 7320), (7321, 7322)]

private theorem c0194_intervals_eq :
    witnessIntervals c0194_witnesses = c0194_intervals := by
  rfl

private theorem c0194_checks : witnessesCheck c0194_witnesses = true := by
  simp only [witnessesCheck, c0194_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk101.w14_check, B699LowIndex.I11TerminalData.Chunk101.w15_check, B699LowIndex.I11TerminalData.Chunk102.w0_check, Bool.and_self]

private theorem c0194_cover : coverCheck 7317 7322 c0194_intervals = true := by
  decide

private theorem c0194_sound : IntervalSound (7317, 7322) := by
  have hc : coverCheck 7317 7322 (witnessIntervals c0194_witnesses) = true := by
    rw [c0194_intervals_eq]
    exact c0194_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0194_witnesses)
    (lo := 7317) (hi := 7322) c0194_checks hc

private def c0195_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk102.w1, B699LowIndex.I11TerminalData.Chunk102.w2]
private def c0195_intervals : List NatInterval := [(7325, 7331), (7332, 7335)]

private theorem c0195_intervals_eq :
    witnessIntervals c0195_witnesses = c0195_intervals := by
  rfl

private theorem c0195_checks : witnessesCheck c0195_witnesses = true := by
  simp only [witnessesCheck, c0195_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk102.w1_check, B699LowIndex.I11TerminalData.Chunk102.w2_check, Bool.and_self]

private theorem c0195_cover : coverCheck 7325 7335 c0195_intervals = true := by
  decide

private theorem c0195_sound : IntervalSound (7325, 7335) := by
  have hc : coverCheck 7325 7335 (witnessIntervals c0195_witnesses) = true := by
    rw [c0195_intervals_eq]
    exact c0195_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0195_witnesses)
    (lo := 7325) (hi := 7335) c0195_checks hc

private def c0196_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk102.w3, B699LowIndex.I11TerminalData.Chunk102.w4, B699LowIndex.I11TerminalData.Chunk102.w5, B699LowIndex.I11TerminalData.Chunk102.w6, B699LowIndex.I11TerminalData.Chunk102.w7, B699LowIndex.I11TerminalData.Chunk102.w8, B699LowIndex.I11TerminalData.Chunk102.w9]
private def c0196_intervals : List NatInterval := [(7344, 7344), (7345, 7345), (7346, 7346), (7347, 7347), (7348, 7348), (7349, 7359), (7360, 7360)]

private theorem c0196_intervals_eq :
    witnessIntervals c0196_witnesses = c0196_intervals := by
  rfl

private theorem c0196_checks : witnessesCheck c0196_witnesses = true := by
  simp only [witnessesCheck, c0196_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk102.w3_check, B699LowIndex.I11TerminalData.Chunk102.w4_check, B699LowIndex.I11TerminalData.Chunk102.w5_check, B699LowIndex.I11TerminalData.Chunk102.w6_check, B699LowIndex.I11TerminalData.Chunk102.w7_check, B699LowIndex.I11TerminalData.Chunk102.w8_check, B699LowIndex.I11TerminalData.Chunk102.w9_check, Bool.and_self]

private theorem c0196_cover : coverCheck 7344 7360 c0196_intervals = true := by
  decide

private theorem c0196_sound : IntervalSound (7344, 7360) := by
  have hc : coverCheck 7344 7360 (witnessIntervals c0196_witnesses) = true := by
    rw [c0196_intervals_eq]
    exact c0196_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0196_witnesses)
    (lo := 7344) (hi := 7360) c0196_checks hc

private def c0197_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk102.w10, B699LowIndex.I11TerminalData.Chunk102.w11, B699LowIndex.I11TerminalData.Chunk102.w12, B699LowIndex.I11TerminalData.Chunk102.w13, B699LowIndex.I11TerminalData.Chunk102.w14, B699LowIndex.I11TerminalData.Chunk102.w15, B699LowIndex.I11TerminalData.Chunk103.w0]
private def c0197_intervals : List NatInterval := [(7375, 7379), (7380, 7380), (7381, 7381), (7382, 7382), (7383, 7383), (7384, 7384), (7385, 7385)]

private theorem c0197_intervals_eq :
    witnessIntervals c0197_witnesses = c0197_intervals := by
  rfl

private theorem c0197_checks : witnessesCheck c0197_witnesses = true := by
  simp only [witnessesCheck, c0197_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk102.w10_check, B699LowIndex.I11TerminalData.Chunk102.w11_check, B699LowIndex.I11TerminalData.Chunk102.w12_check, B699LowIndex.I11TerminalData.Chunk102.w13_check, B699LowIndex.I11TerminalData.Chunk102.w14_check, B699LowIndex.I11TerminalData.Chunk102.w15_check, B699LowIndex.I11TerminalData.Chunk103.w0_check, Bool.and_self]

private theorem c0197_cover : coverCheck 7375 7385 c0197_intervals = true := by
  decide

private theorem c0197_sound : IntervalSound (7375, 7385) := by
  have hc : coverCheck 7375 7385 (witnessIntervals c0197_witnesses) = true := by
    rw [c0197_intervals_eq]
    exact c0197_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0197_witnesses)
    (lo := 7375) (hi := 7385) c0197_checks hc

private def c0198_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk103.w1, B699LowIndex.I11TerminalData.Chunk103.w2, B699LowIndex.I11TerminalData.Chunk103.w3, B699LowIndex.I11TerminalData.Chunk103.w4, B699LowIndex.I11TerminalData.Chunk103.w5, B699LowIndex.I11TerminalData.Chunk103.w6, B699LowIndex.I11TerminalData.Chunk103.w7, B699LowIndex.I11TerminalData.Chunk103.w8]
private def c0198_intervals : List NatInterval := [(7398, 7403), (7404, 7404), (7405, 7405), (7406, 7406), (7407, 7407), (7408, 7408), (7409, 7409), (7410, 7410)]

private theorem c0198_intervals_eq :
    witnessIntervals c0198_witnesses = c0198_intervals := by
  rfl

private theorem c0198_checks : witnessesCheck c0198_witnesses = true := by
  simp only [witnessesCheck, c0198_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk103.w1_check, B699LowIndex.I11TerminalData.Chunk103.w2_check, B699LowIndex.I11TerminalData.Chunk103.w3_check, B699LowIndex.I11TerminalData.Chunk103.w4_check, B699LowIndex.I11TerminalData.Chunk103.w5_check, B699LowIndex.I11TerminalData.Chunk103.w6_check, B699LowIndex.I11TerminalData.Chunk103.w7_check, B699LowIndex.I11TerminalData.Chunk103.w8_check, Bool.and_self]

private theorem c0198_cover : coverCheck 7398 7410 c0198_intervals = true := by
  decide

private theorem c0198_sound : IntervalSound (7398, 7410) := by
  have hc : coverCheck 7398 7410 (witnessIntervals c0198_witnesses) = true := by
    rw [c0198_intervals_eq]
    exact c0198_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0198_witnesses)
    (lo := 7398) (hi := 7410) c0198_checks hc

private def c0199_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk103.w9, B699LowIndex.I11TerminalData.Chunk103.w10, B699LowIndex.I11TerminalData.Chunk103.w11, B699LowIndex.I11TerminalData.Chunk103.w12, B699LowIndex.I11TerminalData.Chunk103.w13, B699LowIndex.I11TerminalData.Chunk103.w14, B699LowIndex.I11TerminalData.Chunk103.w15]
private def c0199_intervals : List NatInterval := [(7425, 7427), (7428, 7428), (7429, 7429), (7430, 7430), (7431, 7431), (7432, 7432), (7433, 7435)]

private theorem c0199_intervals_eq :
    witnessIntervals c0199_witnesses = c0199_intervals := by
  rfl

private theorem c0199_checks : witnessesCheck c0199_witnesses = true := by
  simp only [witnessesCheck, c0199_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk103.w9_check, B699LowIndex.I11TerminalData.Chunk103.w10_check, B699LowIndex.I11TerminalData.Chunk103.w11_check, B699LowIndex.I11TerminalData.Chunk103.w12_check, B699LowIndex.I11TerminalData.Chunk103.w13_check, B699LowIndex.I11TerminalData.Chunk103.w14_check, B699LowIndex.I11TerminalData.Chunk103.w15_check, Bool.and_self]

private theorem c0199_cover : coverCheck 7425 7435 c0199_intervals = true := by
  decide

private theorem c0199_sound : IntervalSound (7425, 7435) := by
  have hc : coverCheck 7425 7435 (witnessIntervals c0199_witnesses) = true := by
    rw [c0199_intervals_eq]
    exact c0199_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0199_witnesses)
    (lo := 7425) (hi := 7435) c0199_checks hc

private def c0200_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk104.w0, B699LowIndex.I11TerminalData.Chunk104.w1, B699LowIndex.I11TerminalData.Chunk104.w2, B699LowIndex.I11TerminalData.Chunk104.w3, B699LowIndex.I11TerminalData.Chunk104.w4]
private def c0200_intervals : List NatInterval := [(7448, 7448), (7449, 7449), (7450, 7450), (7451, 7461), (7462, 7462)]

private theorem c0200_intervals_eq :
    witnessIntervals c0200_witnesses = c0200_intervals := by
  rfl

private theorem c0200_checks : witnessesCheck c0200_witnesses = true := by
  simp only [witnessesCheck, c0200_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk104.w0_check, B699LowIndex.I11TerminalData.Chunk104.w1_check, B699LowIndex.I11TerminalData.Chunk104.w2_check, B699LowIndex.I11TerminalData.Chunk104.w3_check, B699LowIndex.I11TerminalData.Chunk104.w4_check, Bool.and_self]

private theorem c0200_cover : coverCheck 7448 7462 c0200_intervals = true := by
  decide

private theorem c0200_sound : IntervalSound (7448, 7462) := by
  have hc : coverCheck 7448 7462 (witnessIntervals c0200_witnesses) = true := by
    rw [c0200_intervals_eq]
    exact c0200_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0200_witnesses)
    (lo := 7448) (hi := 7462) c0200_checks hc

private def c0201_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk104.w5, B699LowIndex.I11TerminalData.Chunk104.w6, B699LowIndex.I11TerminalData.Chunk104.w7]
private def c0201_intervals : List NatInterval := [(7475, 7475), (7476, 7476), (7477, 7485)]

private theorem c0201_intervals_eq :
    witnessIntervals c0201_witnesses = c0201_intervals := by
  rfl

private theorem c0201_checks : witnessesCheck c0201_witnesses = true := by
  simp only [witnessesCheck, c0201_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk104.w5_check, B699LowIndex.I11TerminalData.Chunk104.w6_check, B699LowIndex.I11TerminalData.Chunk104.w7_check, Bool.and_self]

private theorem c0201_cover : coverCheck 7475 7485 c0201_intervals = true := by
  decide

private theorem c0201_sound : IntervalSound (7475, 7485) := by
  have hc : coverCheck 7475 7485 (witnessIntervals c0201_witnesses) = true := by
    rw [c0201_intervals_eq]
    exact c0201_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0201_witnesses)
    (lo := 7475) (hi := 7485) c0201_checks hc

private def c0202_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk104.w8]
private def c0202_intervals : List NatInterval := [(7488, 7489)]

private theorem c0202_intervals_eq :
    witnessIntervals c0202_witnesses = c0202_intervals := by
  rfl

private theorem c0202_checks : witnessesCheck c0202_witnesses = true := by
  simp only [witnessesCheck, c0202_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk104.w8_check, Bool.and_self]

private theorem c0202_cover : coverCheck 7488 7489 c0202_intervals = true := by
  decide

private theorem c0202_sound : IntervalSound (7488, 7489) := by
  have hc : coverCheck 7488 7489 (witnessIntervals c0202_witnesses) = true := by
    rw [c0202_intervals_eq]
    exact c0202_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0202_witnesses)
    (lo := 7488) (hi := 7489) c0202_checks hc

private def c0203_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk104.w9]
private def c0203_intervals : List NatInterval := [(7497, 7498)]

private theorem c0203_intervals_eq :
    witnessIntervals c0203_witnesses = c0203_intervals := by
  rfl

private theorem c0203_checks : witnessesCheck c0203_witnesses = true := by
  simp only [witnessesCheck, c0203_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk104.w9_check, Bool.and_self]

private theorem c0203_cover : coverCheck 7497 7498 c0203_intervals = true := by
  decide

private theorem c0203_sound : IntervalSound (7497, 7498) := by
  have hc : coverCheck 7497 7498 (witnessIntervals c0203_witnesses) = true := by
    rw [c0203_intervals_eq]
    exact c0203_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0203_witnesses)
    (lo := 7497) (hi := 7498) c0203_checks hc

private def c0204_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk104.w10, B699LowIndex.I11TerminalData.Chunk104.w11]
private def c0204_intervals : List NatInterval := [(7500, 7509), (7510, 7514)]

private theorem c0204_intervals_eq :
    witnessIntervals c0204_witnesses = c0204_intervals := by
  rfl

private theorem c0204_checks : witnessesCheck c0204_witnesses = true := by
  simp only [witnessesCheck, c0204_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk104.w10_check, B699LowIndex.I11TerminalData.Chunk104.w11_check, Bool.and_self]

private theorem c0204_cover : coverCheck 7500 7514 c0204_intervals = true := by
  decide

private theorem c0204_sound : IntervalSound (7500, 7514) := by
  have hc : coverCheck 7500 7514 (witnessIntervals c0204_witnesses) = true := by
    rw [c0204_intervals_eq]
    exact c0204_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0204_witnesses)
    (lo := 7500) (hi := 7514) c0204_checks hc

private def c0205_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk104.w12]
private def c0205_intervals : List NatInterval := [(7525, 7530)]

private theorem c0205_intervals_eq :
    witnessIntervals c0205_witnesses = c0205_intervals := by
  rfl

private theorem c0205_checks : witnessesCheck c0205_witnesses = true := by
  simp only [witnessesCheck, c0205_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk104.w12_check, Bool.and_self]

private theorem c0205_cover : coverCheck 7525 7530 c0205_intervals = true := by
  decide

private theorem c0205_sound : IntervalSound (7525, 7530) := by
  have hc : coverCheck 7525 7530 (witnessIntervals c0205_witnesses) = true := by
    rw [c0205_intervals_eq]
    exact c0205_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0205_witnesses)
    (lo := 7525) (hi := 7530) c0205_checks hc

private def c0206_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk104.w13, B699LowIndex.I11TerminalData.Chunk104.w14]
private def c0206_intervals : List NatInterval := [(7533, 7539), (7540, 7543)]

private theorem c0206_intervals_eq :
    witnessIntervals c0206_witnesses = c0206_intervals := by
  rfl

private theorem c0206_checks : witnessesCheck c0206_witnesses = true := by
  simp only [witnessesCheck, c0206_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk104.w13_check, B699LowIndex.I11TerminalData.Chunk104.w14_check, Bool.and_self]

private theorem c0206_cover : coverCheck 7533 7543 c0206_intervals = true := by
  decide

private theorem c0206_sound : IntervalSound (7533, 7543) := by
  have hc : coverCheck 7533 7543 (witnessIntervals c0206_witnesses) = true := by
    rw [c0206_intervals_eq]
    exact c0206_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0206_witnesses)
    (lo := 7533) (hi := 7543) c0206_checks hc

private def c0207_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk104.w15]
private def c0207_intervals : List NatInterval := [(7546, 7546)]

private theorem c0207_intervals_eq :
    witnessIntervals c0207_witnesses = c0207_intervals := by
  rfl

private theorem c0207_checks : witnessesCheck c0207_witnesses = true := by
  simp only [witnessesCheck, c0207_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk104.w15_check, Bool.and_self]

private theorem c0207_cover : coverCheck 7546 7546 c0207_intervals = true := by
  decide

private theorem c0207_sound : IntervalSound (7546, 7546) := by
  have hc : coverCheck 7546 7546 (witnessIntervals c0207_witnesses) = true := by
    rw [c0207_intervals_eq]
    exact c0207_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0207_witnesses)
    (lo := 7546) (hi := 7546) c0207_checks hc

def intervals : List NatInterval := [(7290, 7290), (7296, 7310), (7317, 7322), (7325, 7335), (7344, 7360), (7375, 7385), (7398, 7410), (7425, 7435), (7448, 7462), (7475, 7485), (7488, 7489), (7497, 7498), (7500, 7514), (7525, 7530), (7533, 7543), (7546, 7546)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (7290, 7290)) (intervals := [(7296, 7310), (7317, 7322), (7325, 7335), (7344, 7360), (7375, 7385), (7398, 7410), (7425, 7435), (7448, 7462), (7475, 7485), (7488, 7489), (7497, 7498), (7500, 7514), (7525, 7530), (7533, 7543), (7546, 7546)]) c0192_sound (intervals_sound_cons (I := (7296, 7310)) (intervals := [(7317, 7322), (7325, 7335), (7344, 7360), (7375, 7385), (7398, 7410), (7425, 7435), (7448, 7462), (7475, 7485), (7488, 7489), (7497, 7498), (7500, 7514), (7525, 7530), (7533, 7543), (7546, 7546)]) c0193_sound (intervals_sound_cons (I := (7317, 7322)) (intervals := [(7325, 7335), (7344, 7360), (7375, 7385), (7398, 7410), (7425, 7435), (7448, 7462), (7475, 7485), (7488, 7489), (7497, 7498), (7500, 7514), (7525, 7530), (7533, 7543), (7546, 7546)]) c0194_sound (intervals_sound_cons (I := (7325, 7335)) (intervals := [(7344, 7360), (7375, 7385), (7398, 7410), (7425, 7435), (7448, 7462), (7475, 7485), (7488, 7489), (7497, 7498), (7500, 7514), (7525, 7530), (7533, 7543), (7546, 7546)]) c0195_sound (intervals_sound_cons (I := (7344, 7360)) (intervals := [(7375, 7385), (7398, 7410), (7425, 7435), (7448, 7462), (7475, 7485), (7488, 7489), (7497, 7498), (7500, 7514), (7525, 7530), (7533, 7543), (7546, 7546)]) c0196_sound (intervals_sound_cons (I := (7375, 7385)) (intervals := [(7398, 7410), (7425, 7435), (7448, 7462), (7475, 7485), (7488, 7489), (7497, 7498), (7500, 7514), (7525, 7530), (7533, 7543), (7546, 7546)]) c0197_sound (intervals_sound_cons (I := (7398, 7410)) (intervals := [(7425, 7435), (7448, 7462), (7475, 7485), (7488, 7489), (7497, 7498), (7500, 7514), (7525, 7530), (7533, 7543), (7546, 7546)]) c0198_sound (intervals_sound_cons (I := (7425, 7435)) (intervals := [(7448, 7462), (7475, 7485), (7488, 7489), (7497, 7498), (7500, 7514), (7525, 7530), (7533, 7543), (7546, 7546)]) c0199_sound (intervals_sound_cons (I := (7448, 7462)) (intervals := [(7475, 7485), (7488, 7489), (7497, 7498), (7500, 7514), (7525, 7530), (7533, 7543), (7546, 7546)]) c0200_sound (intervals_sound_cons (I := (7475, 7485)) (intervals := [(7488, 7489), (7497, 7498), (7500, 7514), (7525, 7530), (7533, 7543), (7546, 7546)]) c0201_sound (intervals_sound_cons (I := (7488, 7489)) (intervals := [(7497, 7498), (7500, 7514), (7525, 7530), (7533, 7543), (7546, 7546)]) c0202_sound (intervals_sound_cons (I := (7497, 7498)) (intervals := [(7500, 7514), (7525, 7530), (7533, 7543), (7546, 7546)]) c0203_sound (intervals_sound_cons (I := (7500, 7514)) (intervals := [(7525, 7530), (7533, 7543), (7546, 7546)]) c0204_sound (intervals_sound_cons (I := (7525, 7530)) (intervals := [(7533, 7543), (7546, 7546)]) c0205_sound (intervals_sound_cons (I := (7533, 7543)) (intervals := [(7546, 7546)]) c0206_sound (intervals_sound_cons (I := (7546, 7546)) (intervals := []) c0207_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G012
