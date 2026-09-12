import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk125
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk126
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk127
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk128
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk129

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G020
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0320_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk125.w14, B699LowIndex.I11TerminalData.Chunk125.w15, B699LowIndex.I11TerminalData.Chunk126.w0, B699LowIndex.I11TerminalData.Chunk126.w1, B699LowIndex.I11TerminalData.Chunk126.w2, B699LowIndex.I11TerminalData.Chunk126.w3, B699LowIndex.I11TerminalData.Chunk126.w4, B699LowIndex.I11TerminalData.Chunk126.w5, B699LowIndex.I11TerminalData.Chunk126.w6, B699LowIndex.I11TerminalData.Chunk126.w7, B699LowIndex.I11TerminalData.Chunk126.w8]
private def c0320_intervals : List NatInterval := [(9450, 9450), (9451, 9451), (9452, 9452), (9453, 9453), (9454, 9454), (9455, 9455), (9456, 9456), (9457, 9457), (9458, 9458), (9459, 9459), (9460, 9460)]

private theorem c0320_intervals_eq :
    witnessIntervals c0320_witnesses = c0320_intervals := by
  rfl

private theorem c0320_checks : witnessesCheck c0320_witnesses = true := by
  simp only [witnessesCheck, c0320_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk125.w14_check, B699LowIndex.I11TerminalData.Chunk125.w15_check, B699LowIndex.I11TerminalData.Chunk126.w0_check, B699LowIndex.I11TerminalData.Chunk126.w1_check, B699LowIndex.I11TerminalData.Chunk126.w2_check, B699LowIndex.I11TerminalData.Chunk126.w3_check, B699LowIndex.I11TerminalData.Chunk126.w4_check, B699LowIndex.I11TerminalData.Chunk126.w5_check, B699LowIndex.I11TerminalData.Chunk126.w6_check, B699LowIndex.I11TerminalData.Chunk126.w7_check, B699LowIndex.I11TerminalData.Chunk126.w8_check, Bool.and_self]

private theorem c0320_cover : coverCheck 9450 9460 c0320_intervals = true := by
  decide

private theorem c0320_sound : IntervalSound (9450, 9460) := by
  have hc : coverCheck 9450 9460 (witnessIntervals c0320_witnesses) = true := by
    rw [c0320_intervals_eq]
    exact c0320_cover
  exact interval_sound_of_witness_checks (witnesses := c0320_witnesses)
    (lo := 9450) (hi := 9460) c0320_checks hc

private def c0321_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk126.w9, B699LowIndex.I11TerminalData.Chunk126.w10]
private def c0321_intervals : List NatInterval := [(9475, 9483), (9484, 9485)]

private theorem c0321_intervals_eq :
    witnessIntervals c0321_witnesses = c0321_intervals := by
  rfl

private theorem c0321_checks : witnessesCheck c0321_witnesses = true := by
  simp only [witnessesCheck, c0321_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk126.w9_check, B699LowIndex.I11TerminalData.Chunk126.w10_check, Bool.and_self]

private theorem c0321_cover : coverCheck 9475 9485 c0321_intervals = true := by
  decide

private theorem c0321_sound : IntervalSound (9475, 9485) := by
  have hc : coverCheck 9475 9485 (witnessIntervals c0321_witnesses) = true := by
    rw [c0321_intervals_eq]
    exact c0321_cover
  exact interval_sound_of_witness_checks (witnesses := c0321_witnesses)
    (lo := 9475) (hi := 9485) c0321_checks hc

private def c0322_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk126.w11, B699LowIndex.I11TerminalData.Chunk126.w12, B699LowIndex.I11TerminalData.Chunk126.w13, B699LowIndex.I11TerminalData.Chunk126.w14, B699LowIndex.I11TerminalData.Chunk126.w15]
private def c0322_intervals : List NatInterval := [(9504, 9507), (9508, 9508), (9509, 9509), (9510, 9510), (9511, 9514)]

private theorem c0322_intervals_eq :
    witnessIntervals c0322_witnesses = c0322_intervals := by
  rfl

private theorem c0322_checks : witnessesCheck c0322_witnesses = true := by
  simp only [witnessesCheck, c0322_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk126.w11_check, B699LowIndex.I11TerminalData.Chunk126.w12_check, B699LowIndex.I11TerminalData.Chunk126.w13_check, B699LowIndex.I11TerminalData.Chunk126.w14_check, B699LowIndex.I11TerminalData.Chunk126.w15_check, Bool.and_self]

private theorem c0322_cover : coverCheck 9504 9514 c0322_intervals = true := by
  decide

private theorem c0322_sound : IntervalSound (9504, 9514) := by
  have hc : coverCheck 9504 9514 (witnessIntervals c0322_witnesses) = true := by
    rw [c0322_intervals_eq]
    exact c0322_cover
  exact interval_sound_of_witness_checks (witnesses := c0322_witnesses)
    (lo := 9504) (hi := 9514) c0322_checks hc

private def c0323_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk127.w0, B699LowIndex.I11TerminalData.Chunk127.w1, B699LowIndex.I11TerminalData.Chunk127.w2]
private def c0323_intervals : List NatInterval := [(9531, 9531), (9532, 9532), (9533, 9541)]

private theorem c0323_intervals_eq :
    witnessIntervals c0323_witnesses = c0323_intervals := by
  rfl

private theorem c0323_checks : witnessesCheck c0323_witnesses = true := by
  simp only [witnessesCheck, c0323_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk127.w0_check, B699LowIndex.I11TerminalData.Chunk127.w1_check, B699LowIndex.I11TerminalData.Chunk127.w2_check, Bool.and_self]

private theorem c0323_cover : coverCheck 9531 9541 c0323_intervals = true := by
  decide

private theorem c0323_sound : IntervalSound (9531, 9541) := by
  have hc : coverCheck 9531 9541 (witnessIntervals c0323_witnesses) = true := by
    rw [c0323_intervals_eq]
    exact c0323_cover
  exact interval_sound_of_witness_checks (witnesses := c0323_witnesses)
    (lo := 9531) (hi := 9541) c0323_checks hc

private def c0324_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk127.w3, B699LowIndex.I11TerminalData.Chunk127.w4, B699LowIndex.I11TerminalData.Chunk127.w5, B699LowIndex.I11TerminalData.Chunk127.w6, B699LowIndex.I11TerminalData.Chunk127.w7]
private def c0324_intervals : List NatInterval := [(9555, 9561), (9562, 9562), (9563, 9563), (9564, 9564), (9565, 9565)]

private theorem c0324_intervals_eq :
    witnessIntervals c0324_witnesses = c0324_intervals := by
  rfl

private theorem c0324_checks : witnessesCheck c0324_witnesses = true := by
  simp only [witnessesCheck, c0324_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk127.w3_check, B699LowIndex.I11TerminalData.Chunk127.w4_check, B699LowIndex.I11TerminalData.Chunk127.w5_check, B699LowIndex.I11TerminalData.Chunk127.w6_check, B699LowIndex.I11TerminalData.Chunk127.w7_check, Bool.and_self]

private theorem c0324_cover : coverCheck 9555 9565 c0324_intervals = true := by
  decide

private theorem c0324_sound : IntervalSound (9555, 9565) := by
  have hc : coverCheck 9555 9565 (witnessIntervals c0324_witnesses) = true := by
    rw [c0324_intervals_eq]
    exact c0324_cover
  exact interval_sound_of_witness_checks (witnesses := c0324_witnesses)
    (lo := 9555) (hi := 9565) c0324_checks hc

private def c0325_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk127.w8]
private def c0325_intervals : List NatInterval := [(9568, 9568)]

private theorem c0325_intervals_eq :
    witnessIntervals c0325_witnesses = c0325_intervals := by
  rfl

private theorem c0325_checks : witnessesCheck c0325_witnesses = true := by
  simp only [witnessesCheck, c0325_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk127.w8_check, Bool.and_self]

private theorem c0325_cover : coverCheck 9568 9568 c0325_intervals = true := by
  decide

private theorem c0325_sound : IntervalSound (9568, 9568) := by
  have hc : coverCheck 9568 9568 (witnessIntervals c0325_witnesses) = true := by
    rw [c0325_intervals_eq]
    exact c0325_cover
  exact interval_sound_of_witness_checks (witnesses := c0325_witnesses)
    (lo := 9568) (hi := 9568) c0325_checks hc

private def c0326_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk127.w9, B699LowIndex.I11TerminalData.Chunk127.w10, B699LowIndex.I11TerminalData.Chunk127.w11, B699LowIndex.I11TerminalData.Chunk127.w12]
private def c0326_intervals : List NatInterval := [(9575, 9575), (9576, 9576), (9577, 9577), (9578, 9578)]

private theorem c0326_intervals_eq :
    witnessIntervals c0326_witnesses = c0326_intervals := by
  rfl

private theorem c0326_checks : witnessesCheck c0326_witnesses = true := by
  simp only [witnessesCheck, c0326_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk127.w9_check, B699LowIndex.I11TerminalData.Chunk127.w10_check, B699LowIndex.I11TerminalData.Chunk127.w11_check, B699LowIndex.I11TerminalData.Chunk127.w12_check, Bool.and_self]

private theorem c0326_cover : coverCheck 9575 9578 c0326_intervals = true := by
  decide

private theorem c0326_sound : IntervalSound (9575, 9578) := by
  have hc : coverCheck 9575 9578 (witnessIntervals c0326_witnesses) = true := by
    rw [c0326_intervals_eq]
    exact c0326_cover
  exact interval_sound_of_witness_checks (witnesses := c0326_witnesses)
    (lo := 9575) (hi := 9578) c0326_checks hc

private def c0327_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk127.w13]
private def c0327_intervals : List NatInterval := [(9585, 9585)]

private theorem c0327_intervals_eq :
    witnessIntervals c0327_witnesses = c0327_intervals := by
  rfl

private theorem c0327_checks : witnessesCheck c0327_witnesses = true := by
  simp only [witnessesCheck, c0327_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk127.w13_check, Bool.and_self]

private theorem c0327_cover : coverCheck 9585 9585 c0327_intervals = true := by
  decide

private theorem c0327_sound : IntervalSound (9585, 9585) := by
  have hc : coverCheck 9585 9585 (witnessIntervals c0327_witnesses) = true := by
    rw [c0327_intervals_eq]
    exact c0327_cover
  exact interval_sound_of_witness_checks (witnesses := c0327_witnesses)
    (lo := 9585) (hi := 9585) c0327_checks hc

private def c0328_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk127.w14, B699LowIndex.I11TerminalData.Chunk127.w15]
private def c0328_intervals : List NatInterval := [(9600, 9600), (9601, 9610)]

private theorem c0328_intervals_eq :
    witnessIntervals c0328_witnesses = c0328_intervals := by
  rfl

private theorem c0328_checks : witnessesCheck c0328_witnesses = true := by
  simp only [witnessesCheck, c0328_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk127.w14_check, B699LowIndex.I11TerminalData.Chunk127.w15_check, Bool.and_self]

private theorem c0328_cover : coverCheck 9600 9610 c0328_intervals = true := by
  decide

private theorem c0328_sound : IntervalSound (9600, 9610) := by
  have hc : coverCheck 9600 9610 (witnessIntervals c0328_witnesses) = true := by
    rw [c0328_intervals_eq]
    exact c0328_cover
  exact interval_sound_of_witness_checks (witnesses := c0328_witnesses)
    (lo := 9600) (hi := 9610) c0328_checks hc

private def c0329_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk128.w0, B699LowIndex.I11TerminalData.Chunk128.w1]
private def c0329_intervals : List NatInterval := [(9612, 9612), (9613, 9614)]

private theorem c0329_intervals_eq :
    witnessIntervals c0329_witnesses = c0329_intervals := by
  rfl

private theorem c0329_checks : witnessesCheck c0329_witnesses = true := by
  simp only [witnessesCheck, c0329_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk128.w0_check, B699LowIndex.I11TerminalData.Chunk128.w1_check, Bool.and_self]

private theorem c0329_cover : coverCheck 9612 9614 c0329_intervals = true := by
  decide

private theorem c0329_sound : IntervalSound (9612, 9614) := by
  have hc : coverCheck 9612 9614 (witnessIntervals c0329_witnesses) = true := by
    rw [c0329_intervals_eq]
    exact c0329_cover
  exact interval_sound_of_witness_checks (witnesses := c0329_witnesses)
    (lo := 9612) (hi := 9614) c0329_checks hc

private def c0330_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk128.w2]
private def c0330_intervals : List NatInterval := [(9632, 9635)]

private theorem c0330_intervals_eq :
    witnessIntervals c0330_witnesses = c0330_intervals := by
  rfl

private theorem c0330_checks : witnessesCheck c0330_witnesses = true := by
  simp only [witnessesCheck, c0330_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk128.w2_check, Bool.and_self]

private theorem c0330_cover : coverCheck 9632 9635 c0330_intervals = true := by
  decide

private theorem c0330_sound : IntervalSound (9632, 9635) := by
  have hc : coverCheck 9632 9635 (witnessIntervals c0330_witnesses) = true := by
    rw [c0330_intervals_eq]
    exact c0330_cover
  exact interval_sound_of_witness_checks (witnesses := c0330_witnesses)
    (lo := 9632) (hi := 9635) c0330_checks hc

private def c0331_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk128.w3, B699LowIndex.I11TerminalData.Chunk128.w4]
private def c0331_intervals : List NatInterval := [(9639, 9641), (9642, 9642)]

private theorem c0331_intervals_eq :
    witnessIntervals c0331_witnesses = c0331_intervals := by
  rfl

private theorem c0331_checks : witnessesCheck c0331_witnesses = true := by
  simp only [witnessesCheck, c0331_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk128.w3_check, B699LowIndex.I11TerminalData.Chunk128.w4_check, Bool.and_self]

private theorem c0331_cover : coverCheck 9639 9642 c0331_intervals = true := by
  decide

private theorem c0331_sound : IntervalSound (9639, 9642) := by
  have hc : coverCheck 9639 9642 (witnessIntervals c0331_witnesses) = true := by
    rw [c0331_intervals_eq]
    exact c0331_cover
  exact interval_sound_of_witness_checks (witnesses := c0331_witnesses)
    (lo := 9639) (hi := 9642) c0331_checks hc

private def c0332_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk128.w5, B699LowIndex.I11TerminalData.Chunk128.w6]
private def c0332_intervals : List NatInterval := [(9653, 9659), (9660, 9660)]

private theorem c0332_intervals_eq :
    witnessIntervals c0332_witnesses = c0332_intervals := by
  rfl

private theorem c0332_checks : witnessesCheck c0332_witnesses = true := by
  simp only [witnessesCheck, c0332_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk128.w5_check, B699LowIndex.I11TerminalData.Chunk128.w6_check, Bool.and_self]

private theorem c0332_cover : coverCheck 9653 9660 c0332_intervals = true := by
  decide

private theorem c0332_sound : IntervalSound (9653, 9660) := by
  have hc : coverCheck 9653 9660 (witnessIntervals c0332_witnesses) = true := by
    rw [c0332_intervals_eq]
    exact c0332_cover
  exact interval_sound_of_witness_checks (witnesses := c0332_witnesses)
    (lo := 9653) (hi := 9660) c0332_checks hc

private def c0333_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk128.w7, B699LowIndex.I11TerminalData.Chunk128.w8, B699LowIndex.I11TerminalData.Chunk128.w9, B699LowIndex.I11TerminalData.Chunk128.w10, B699LowIndex.I11TerminalData.Chunk128.w11, B699LowIndex.I11TerminalData.Chunk128.w12]
private def c0333_intervals : List NatInterval := [(9666, 9671), (9672, 9672), (9673, 9673), (9674, 9674), (9675, 9675), (9676, 9676)]

private theorem c0333_intervals_eq :
    witnessIntervals c0333_witnesses = c0333_intervals := by
  rfl

private theorem c0333_checks : witnessesCheck c0333_witnesses = true := by
  simp only [witnessesCheck, c0333_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk128.w7_check, B699LowIndex.I11TerminalData.Chunk128.w8_check, B699LowIndex.I11TerminalData.Chunk128.w9_check, B699LowIndex.I11TerminalData.Chunk128.w10_check, B699LowIndex.I11TerminalData.Chunk128.w11_check, B699LowIndex.I11TerminalData.Chunk128.w12_check, Bool.and_self]

private theorem c0333_cover : coverCheck 9666 9676 c0333_intervals = true := by
  decide

private theorem c0333_sound : IntervalSound (9666, 9676) := by
  have hc : coverCheck 9666 9676 (witnessIntervals c0333_witnesses) = true := by
    rw [c0333_intervals_eq]
    exact c0333_cover
  exact interval_sound_of_witness_checks (witnesses := c0333_witnesses)
    (lo := 9666) (hi := 9676) c0333_checks hc

private def c0334_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk128.w13, B699LowIndex.I11TerminalData.Chunk128.w14, B699LowIndex.I11TerminalData.Chunk128.w15, B699LowIndex.I11TerminalData.Chunk129.w0, B699LowIndex.I11TerminalData.Chunk129.w1]
private def c0334_intervals : List NatInterval := [(9696, 9699), (9700, 9707), (9708, 9708), (9709, 9709), (9710, 9710)]

private theorem c0334_intervals_eq :
    witnessIntervals c0334_witnesses = c0334_intervals := by
  rfl

private theorem c0334_checks : witnessesCheck c0334_witnesses = true := by
  simp only [witnessesCheck, c0334_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk128.w13_check, B699LowIndex.I11TerminalData.Chunk128.w14_check, B699LowIndex.I11TerminalData.Chunk128.w15_check, B699LowIndex.I11TerminalData.Chunk129.w0_check, B699LowIndex.I11TerminalData.Chunk129.w1_check, Bool.and_self]

private theorem c0334_cover : coverCheck 9696 9710 c0334_intervals = true := by
  decide

private theorem c0334_sound : IntervalSound (9696, 9710) := by
  have hc : coverCheck 9696 9710 (witnessIntervals c0334_witnesses) = true := by
    rw [c0334_intervals_eq]
    exact c0334_cover
  exact interval_sound_of_witness_checks (witnesses := c0334_witnesses)
    (lo := 9696) (hi := 9710) c0334_checks hc

private def c0335_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk129.w2, B699LowIndex.I11TerminalData.Chunk129.w3, B699LowIndex.I11TerminalData.Chunk129.w4]
private def c0335_intervals : List NatInterval := [(9725, 9731), (9732, 9732), (9733, 9735)]

private theorem c0335_intervals_eq :
    witnessIntervals c0335_witnesses = c0335_intervals := by
  rfl

private theorem c0335_checks : witnessesCheck c0335_witnesses = true := by
  simp only [witnessesCheck, c0335_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk129.w2_check, B699LowIndex.I11TerminalData.Chunk129.w3_check, B699LowIndex.I11TerminalData.Chunk129.w4_check, Bool.and_self]

private theorem c0335_cover : coverCheck 9725 9735 c0335_intervals = true := by
  decide

private theorem c0335_sound : IntervalSound (9725, 9735) := by
  have hc : coverCheck 9725 9735 (witnessIntervals c0335_witnesses) = true := by
    rw [c0335_intervals_eq]
    exact c0335_cover
  exact interval_sound_of_witness_checks (witnesses := c0335_witnesses)
    (lo := 9725) (hi := 9735) c0335_checks hc

def intervals : List NatInterval := [(9450, 9460), (9475, 9485), (9504, 9514), (9531, 9541), (9555, 9565), (9568, 9568), (9575, 9578), (9585, 9585), (9600, 9610), (9612, 9614), (9632, 9635), (9639, 9642), (9653, 9660), (9666, 9676), (9696, 9710), (9725, 9735)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (9450, 9460)) (intervals := [(9475, 9485), (9504, 9514), (9531, 9541), (9555, 9565), (9568, 9568), (9575, 9578), (9585, 9585), (9600, 9610), (9612, 9614), (9632, 9635), (9639, 9642), (9653, 9660), (9666, 9676), (9696, 9710), (9725, 9735)]) c0320_sound (intervals_sound_cons (I := (9475, 9485)) (intervals := [(9504, 9514), (9531, 9541), (9555, 9565), (9568, 9568), (9575, 9578), (9585, 9585), (9600, 9610), (9612, 9614), (9632, 9635), (9639, 9642), (9653, 9660), (9666, 9676), (9696, 9710), (9725, 9735)]) c0321_sound (intervals_sound_cons (I := (9504, 9514)) (intervals := [(9531, 9541), (9555, 9565), (9568, 9568), (9575, 9578), (9585, 9585), (9600, 9610), (9612, 9614), (9632, 9635), (9639, 9642), (9653, 9660), (9666, 9676), (9696, 9710), (9725, 9735)]) c0322_sound (intervals_sound_cons (I := (9531, 9541)) (intervals := [(9555, 9565), (9568, 9568), (9575, 9578), (9585, 9585), (9600, 9610), (9612, 9614), (9632, 9635), (9639, 9642), (9653, 9660), (9666, 9676), (9696, 9710), (9725, 9735)]) c0323_sound (intervals_sound_cons (I := (9555, 9565)) (intervals := [(9568, 9568), (9575, 9578), (9585, 9585), (9600, 9610), (9612, 9614), (9632, 9635), (9639, 9642), (9653, 9660), (9666, 9676), (9696, 9710), (9725, 9735)]) c0324_sound (intervals_sound_cons (I := (9568, 9568)) (intervals := [(9575, 9578), (9585, 9585), (9600, 9610), (9612, 9614), (9632, 9635), (9639, 9642), (9653, 9660), (9666, 9676), (9696, 9710), (9725, 9735)]) c0325_sound (intervals_sound_cons (I := (9575, 9578)) (intervals := [(9585, 9585), (9600, 9610), (9612, 9614), (9632, 9635), (9639, 9642), (9653, 9660), (9666, 9676), (9696, 9710), (9725, 9735)]) c0326_sound (intervals_sound_cons (I := (9585, 9585)) (intervals := [(9600, 9610), (9612, 9614), (9632, 9635), (9639, 9642), (9653, 9660), (9666, 9676), (9696, 9710), (9725, 9735)]) c0327_sound (intervals_sound_cons (I := (9600, 9610)) (intervals := [(9612, 9614), (9632, 9635), (9639, 9642), (9653, 9660), (9666, 9676), (9696, 9710), (9725, 9735)]) c0328_sound (intervals_sound_cons (I := (9612, 9614)) (intervals := [(9632, 9635), (9639, 9642), (9653, 9660), (9666, 9676), (9696, 9710), (9725, 9735)]) c0329_sound (intervals_sound_cons (I := (9632, 9635)) (intervals := [(9639, 9642), (9653, 9660), (9666, 9676), (9696, 9710), (9725, 9735)]) c0330_sound (intervals_sound_cons (I := (9639, 9642)) (intervals := [(9653, 9660), (9666, 9676), (9696, 9710), (9725, 9735)]) c0331_sound (intervals_sound_cons (I := (9653, 9660)) (intervals := [(9666, 9676), (9696, 9710), (9725, 9735)]) c0332_sound (intervals_sound_cons (I := (9666, 9676)) (intervals := [(9696, 9710), (9725, 9735)]) c0333_sound (intervals_sound_cons (I := (9696, 9710)) (intervals := [(9725, 9735)]) c0334_sound (intervals_sound_cons (I := (9725, 9735)) (intervals := []) c0335_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G020
