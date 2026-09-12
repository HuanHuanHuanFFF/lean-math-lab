import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk091
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk092
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk093
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk094
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk095

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G009
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0144_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk091.w15, B699LowIndex.I11TerminalData.Chunk092.w0]
private def c0144_intervals : List NatInterval := [(6560, 6563), (6564, 6571)]

private theorem c0144_intervals_eq :
    witnessIntervals c0144_witnesses = c0144_intervals := by
  rfl

private theorem c0144_checks : witnessesCheck c0144_witnesses = true := by
  simp only [witnessesCheck, c0144_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk091.w15_check, B699LowIndex.I11TerminalData.Chunk092.w0_check, Bool.and_self]

private theorem c0144_cover : coverCheck 6560 6571 c0144_intervals = true := by
  decide

private theorem c0144_sound : IntervalSound (6560, 6571) := by
  have hc : coverCheck 6560 6571 (witnessIntervals c0144_witnesses) = true := by
    rw [c0144_intervals_eq]
    exact c0144_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0144_witnesses)
    (lo := 6560) (hi := 6571) c0144_checks hc

private def c0145_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk092.w1, B699LowIndex.I11TerminalData.Chunk092.w2]
private def c0145_intervals : List NatInterval := [(6575, 6581), (6582, 6585)]

private theorem c0145_intervals_eq :
    witnessIntervals c0145_witnesses = c0145_intervals := by
  rfl

private theorem c0145_checks : witnessesCheck c0145_witnesses = true := by
  simp only [witnessesCheck, c0145_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk092.w1_check, B699LowIndex.I11TerminalData.Chunk092.w2_check, Bool.and_self]

private theorem c0145_cover : coverCheck 6575 6585 c0145_intervals = true := by
  decide

private theorem c0145_sound : IntervalSound (6575, 6585) := by
  have hc : coverCheck 6575 6585 (witnessIntervals c0145_witnesses) = true := by
    rw [c0145_intervals_eq]
    exact c0145_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0145_witnesses)
    (lo := 6575) (hi := 6585) c0145_checks hc

private def c0146_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk092.w3, B699LowIndex.I11TerminalData.Chunk092.w4, B699LowIndex.I11TerminalData.Chunk092.w5, B699LowIndex.I11TerminalData.Chunk092.w6, B699LowIndex.I11TerminalData.Chunk092.w7, B699LowIndex.I11TerminalData.Chunk092.w8, B699LowIndex.I11TerminalData.Chunk092.w9]
private def c0146_intervals : List NatInterval := [(6592, 6592), (6593, 6593), (6594, 6594), (6595, 6595), (6596, 6596), (6597, 6597), (6598, 6598)]

private theorem c0146_intervals_eq :
    witnessIntervals c0146_witnesses = c0146_intervals := by
  rfl

private theorem c0146_checks : witnessesCheck c0146_witnesses = true := by
  simp only [witnessesCheck, c0146_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk092.w3_check, B699LowIndex.I11TerminalData.Chunk092.w4_check, B699LowIndex.I11TerminalData.Chunk092.w5_check, B699LowIndex.I11TerminalData.Chunk092.w6_check, B699LowIndex.I11TerminalData.Chunk092.w7_check, B699LowIndex.I11TerminalData.Chunk092.w8_check, B699LowIndex.I11TerminalData.Chunk092.w9_check, Bool.and_self]

private theorem c0146_cover : coverCheck 6592 6598 c0146_intervals = true := by
  decide

private theorem c0146_sound : IntervalSound (6592, 6598) := by
  have hc : coverCheck 6592 6598 (witnessIntervals c0146_witnesses) = true := by
    rw [c0146_intervals_eq]
    exact c0146_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0146_witnesses)
    (lo := 6592) (hi := 6598) c0146_checks hc

private def c0147_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk092.w10]
private def c0147_intervals : List NatInterval := [(6600, 6602)]

private theorem c0147_intervals_eq :
    witnessIntervals c0147_witnesses = c0147_intervals := by
  rfl

private theorem c0147_checks : witnessesCheck c0147_witnesses = true := by
  simp only [witnessesCheck, c0147_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk092.w10_check, Bool.and_self]

private theorem c0147_cover : coverCheck 6600 6602 c0147_intervals = true := by
  decide

private theorem c0147_sound : IntervalSound (6600, 6602) := by
  have hc : coverCheck 6600 6602 (witnessIntervals c0147_witnesses) = true := by
    rw [c0147_intervals_eq]
    exact c0147_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0147_witnesses)
    (lo := 6600) (hi := 6602) c0147_checks hc

private def c0148_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk092.w11]
private def c0148_intervals : List NatInterval := [(6608, 6610)]

private theorem c0148_intervals_eq :
    witnessIntervals c0148_witnesses = c0148_intervals := by
  rfl

private theorem c0148_checks : witnessesCheck c0148_witnesses = true := by
  simp only [witnessesCheck, c0148_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk092.w11_check, Bool.and_self]

private theorem c0148_cover : coverCheck 6608 6610 c0148_intervals = true := by
  decide

private theorem c0148_sound : IntervalSound (6608, 6610) := by
  have hc : coverCheck 6608 6610 (witnessIntervals c0148_witnesses) = true := by
    rw [c0148_intervals_eq]
    exact c0148_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0148_witnesses)
    (lo := 6608) (hi := 6610) c0148_checks hc

private def c0149_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk092.w12, B699LowIndex.I11TerminalData.Chunk092.w13, B699LowIndex.I11TerminalData.Chunk092.w14, B699LowIndex.I11TerminalData.Chunk092.w15, B699LowIndex.I11TerminalData.Chunk093.w0, B699LowIndex.I11TerminalData.Chunk093.w1, B699LowIndex.I11TerminalData.Chunk093.w2, B699LowIndex.I11TerminalData.Chunk093.w3]
private def c0149_intervals : List NatInterval := [(6615, 6617), (6618, 6618), (6619, 6629), (6630, 6630), (6631, 6631), (6632, 6632), (6633, 6633), (6634, 6634)]

private theorem c0149_intervals_eq :
    witnessIntervals c0149_witnesses = c0149_intervals := by
  rfl

private theorem c0149_checks : witnessesCheck c0149_witnesses = true := by
  simp only [witnessesCheck, c0149_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk092.w12_check, B699LowIndex.I11TerminalData.Chunk092.w13_check, B699LowIndex.I11TerminalData.Chunk092.w14_check, B699LowIndex.I11TerminalData.Chunk092.w15_check, B699LowIndex.I11TerminalData.Chunk093.w0_check, B699LowIndex.I11TerminalData.Chunk093.w1_check, B699LowIndex.I11TerminalData.Chunk093.w2_check, B699LowIndex.I11TerminalData.Chunk093.w3_check, Bool.and_self]

private theorem c0149_cover : coverCheck 6615 6634 c0149_intervals = true := by
  decide

private theorem c0149_sound : IntervalSound (6615, 6634) := by
  have hc : coverCheck 6615 6634 (witnessIntervals c0149_witnesses) = true := by
    rw [c0149_intervals_eq]
    exact c0149_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0149_witnesses)
    (lo := 6615) (hi := 6634) c0149_checks hc

private def c0150_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk093.w4, B699LowIndex.I11TerminalData.Chunk093.w5, B699LowIndex.I11TerminalData.Chunk093.w6, B699LowIndex.I11TerminalData.Chunk093.w7, B699LowIndex.I11TerminalData.Chunk093.w8, B699LowIndex.I11TerminalData.Chunk093.w9]
private def c0150_intervals : List NatInterval := [(6642, 6647), (6648, 6648), (6649, 6649), (6650, 6650), (6651, 6651), (6652, 6652)]

private theorem c0150_intervals_eq :
    witnessIntervals c0150_witnesses = c0150_intervals := by
  rfl

private theorem c0150_checks : witnessesCheck c0150_witnesses = true := by
  simp only [witnessesCheck, c0150_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk093.w4_check, B699LowIndex.I11TerminalData.Chunk093.w5_check, B699LowIndex.I11TerminalData.Chunk093.w6_check, B699LowIndex.I11TerminalData.Chunk093.w7_check, B699LowIndex.I11TerminalData.Chunk093.w8_check, B699LowIndex.I11TerminalData.Chunk093.w9_check, Bool.and_self]

private theorem c0150_cover : coverCheck 6642 6652 c0150_intervals = true := by
  decide

private theorem c0150_sound : IntervalSound (6642, 6652) := by
  have hc : coverCheck 6642 6652 (witnessIntervals c0150_witnesses) = true := by
    rw [c0150_intervals_eq]
    exact c0150_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0150_witnesses)
    (lo := 6642) (hi := 6652) c0150_checks hc

private def c0151_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk093.w10]
private def c0151_intervals : List NatInterval := [(6656, 6660)]

private theorem c0151_intervals_eq :
    witnessIntervals c0151_witnesses = c0151_intervals := by
  rfl

private theorem c0151_checks : witnessesCheck c0151_witnesses = true := by
  simp only [witnessesCheck, c0151_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk093.w10_check, Bool.and_self]

private theorem c0151_cover : coverCheck 6656 6660 c0151_intervals = true := by
  decide

private theorem c0151_sound : IntervalSound (6656, 6660) := by
  have hc : coverCheck 6656 6660 (witnessIntervals c0151_witnesses) = true := by
    rw [c0151_intervals_eq]
    exact c0151_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0151_witnesses)
    (lo := 6656) (hi := 6660) c0151_checks hc

private def c0152_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk093.w11]
private def c0152_intervals : List NatInterval := [(6664, 6666)]

private theorem c0152_intervals_eq :
    witnessIntervals c0152_witnesses = c0152_intervals := by
  rfl

private theorem c0152_checks : witnessesCheck c0152_witnesses = true := by
  simp only [witnessesCheck, c0152_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk093.w11_check, Bool.and_self]

private theorem c0152_cover : coverCheck 6664 6666 c0152_intervals = true := by
  decide

private theorem c0152_sound : IntervalSound (6664, 6666) := by
  have hc : coverCheck 6664 6666 (witnessIntervals c0152_witnesses) = true := by
    rw [c0152_intervals_eq]
    exact c0152_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0152_witnesses)
    (lo := 6664) (hi := 6666) c0152_checks hc

private def c0153_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk093.w12, B699LowIndex.I11TerminalData.Chunk093.w13, B699LowIndex.I11TerminalData.Chunk093.w14]
private def c0153_intervals : List NatInterval := [(6669, 6671), (6672, 6672), (6673, 6682)]

private theorem c0153_intervals_eq :
    witnessIntervals c0153_witnesses = c0153_intervals := by
  rfl

private theorem c0153_checks : witnessesCheck c0153_witnesses = true := by
  simp only [witnessesCheck, c0153_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk093.w12_check, B699LowIndex.I11TerminalData.Chunk093.w13_check, B699LowIndex.I11TerminalData.Chunk093.w14_check, Bool.and_self]

private theorem c0153_cover : coverCheck 6669 6682 c0153_intervals = true := by
  decide

private theorem c0153_sound : IntervalSound (6669, 6682) := by
  have hc : coverCheck 6669 6682 (witnessIntervals c0153_witnesses) = true := by
    rw [c0153_intervals_eq]
    exact c0153_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0153_witnesses)
    (lo := 6669) (hi := 6682) c0153_checks hc

private def c0154_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk093.w15]
private def c0154_intervals : List NatInterval := [(6696, 6698)]

private theorem c0154_intervals_eq :
    witnessIntervals c0154_witnesses = c0154_intervals := by
  rfl

private theorem c0154_checks : witnessesCheck c0154_witnesses = true := by
  simp only [witnessesCheck, c0154_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk093.w15_check, Bool.and_self]

private theorem c0154_cover : coverCheck 6696 6698 c0154_intervals = true := by
  decide

private theorem c0154_sound : IntervalSound (6696, 6698) := by
  have hc : coverCheck 6696 6698 (witnessIntervals c0154_witnesses) = true := by
    rw [c0154_intervals_eq]
    exact c0154_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0154_witnesses)
    (lo := 6696) (hi := 6698) c0154_checks hc

private def c0155_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk094.w0, B699LowIndex.I11TerminalData.Chunk094.w1]
private def c0155_intervals : List NatInterval := [(6700, 6701), (6702, 6710)]

private theorem c0155_intervals_eq :
    witnessIntervals c0155_witnesses = c0155_intervals := by
  rfl

private theorem c0155_checks : witnessesCheck c0155_witnesses = true := by
  simp only [witnessesCheck, c0155_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk094.w0_check, B699LowIndex.I11TerminalData.Chunk094.w1_check, Bool.and_self]

private theorem c0155_cover : coverCheck 6700 6710 c0155_intervals = true := by
  decide

private theorem c0155_sound : IntervalSound (6700, 6710) := by
  have hc : coverCheck 6700 6710 (witnessIntervals c0155_witnesses) = true := by
    rw [c0155_intervals_eq]
    exact c0155_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0155_witnesses)
    (lo := 6700) (hi := 6710) c0155_checks hc

private def c0156_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk094.w2]
private def c0156_intervals : List NatInterval := [(6713, 6714)]

private theorem c0156_intervals_eq :
    witnessIntervals c0156_witnesses = c0156_intervals := by
  rfl

private theorem c0156_checks : witnessesCheck c0156_witnesses = true := by
  simp only [witnessesCheck, c0156_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk094.w2_check, Bool.and_self]

private theorem c0156_cover : coverCheck 6713 6714 c0156_intervals = true := by
  decide

private theorem c0156_sound : IntervalSound (6713, 6714) := by
  have hc : coverCheck 6713 6714 (witnessIntervals c0156_witnesses) = true := by
    rw [c0156_intervals_eq]
    exact c0156_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0156_witnesses)
    (lo := 6713) (hi := 6714) c0156_checks hc

private def c0157_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk094.w3, B699LowIndex.I11TerminalData.Chunk094.w4, B699LowIndex.I11TerminalData.Chunk094.w5, B699LowIndex.I11TerminalData.Chunk094.w6, B699LowIndex.I11TerminalData.Chunk094.w7]
private def c0157_intervals : List NatInterval := [(6720, 6729), (6730, 6730), (6731, 6731), (6732, 6732), (6733, 6733)]

private theorem c0157_intervals_eq :
    witnessIntervals c0157_witnesses = c0157_intervals := by
  rfl

private theorem c0157_checks : witnessesCheck c0157_witnesses = true := by
  simp only [witnessesCheck, c0157_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk094.w3_check, B699LowIndex.I11TerminalData.Chunk094.w4_check, B699LowIndex.I11TerminalData.Chunk094.w5_check, B699LowIndex.I11TerminalData.Chunk094.w6_check, B699LowIndex.I11TerminalData.Chunk094.w7_check, Bool.and_self]

private theorem c0157_cover : coverCheck 6720 6733 c0157_intervals = true := by
  decide

private theorem c0157_sound : IntervalSound (6720, 6733) := by
  have hc : coverCheck 6720 6733 (witnessIntervals c0157_witnesses) = true := by
    rw [c0157_intervals_eq]
    exact c0157_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0157_witnesses)
    (lo := 6720) (hi := 6733) c0157_checks hc

private def c0158_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk094.w8, B699LowIndex.I11TerminalData.Chunk094.w9, B699LowIndex.I11TerminalData.Chunk094.w10, B699LowIndex.I11TerminalData.Chunk094.w11, B699LowIndex.I11TerminalData.Chunk094.w12, B699LowIndex.I11TerminalData.Chunk094.w13, B699LowIndex.I11TerminalData.Chunk094.w14, B699LowIndex.I11TerminalData.Chunk094.w15, B699LowIndex.I11TerminalData.Chunk095.w0, B699LowIndex.I11TerminalData.Chunk095.w1, B699LowIndex.I11TerminalData.Chunk095.w2]
private def c0158_intervals : List NatInterval := [(6750, 6750), (6751, 6751), (6752, 6752), (6753, 6753), (6754, 6754), (6755, 6755), (6756, 6756), (6757, 6757), (6758, 6758), (6759, 6759), (6760, 6760)]

private theorem c0158_intervals_eq :
    witnessIntervals c0158_witnesses = c0158_intervals := by
  rfl

private theorem c0158_checks : witnessesCheck c0158_witnesses = true := by
  simp only [witnessesCheck, c0158_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk094.w8_check, B699LowIndex.I11TerminalData.Chunk094.w9_check, B699LowIndex.I11TerminalData.Chunk094.w10_check, B699LowIndex.I11TerminalData.Chunk094.w11_check, B699LowIndex.I11TerminalData.Chunk094.w12_check, B699LowIndex.I11TerminalData.Chunk094.w13_check, B699LowIndex.I11TerminalData.Chunk094.w14_check, B699LowIndex.I11TerminalData.Chunk094.w15_check, B699LowIndex.I11TerminalData.Chunk095.w0_check, B699LowIndex.I11TerminalData.Chunk095.w1_check, B699LowIndex.I11TerminalData.Chunk095.w2_check, Bool.and_self]

private theorem c0158_cover : coverCheck 6750 6760 c0158_intervals = true := by
  decide

private theorem c0158_sound : IntervalSound (6750, 6760) := by
  have hc : coverCheck 6750 6760 (witnessIntervals c0158_witnesses) = true := by
    rw [c0158_intervals_eq]
    exact c0158_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0158_witnesses)
    (lo := 6750) (hi := 6760) c0158_checks hc

private def c0159_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk095.w3]
private def c0159_intervals : List NatInterval := [(6762, 6762)]

private theorem c0159_intervals_eq :
    witnessIntervals c0159_witnesses = c0159_intervals := by
  rfl

private theorem c0159_checks : witnessesCheck c0159_witnesses = true := by
  simp only [witnessesCheck, c0159_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk095.w3_check, Bool.and_self]

private theorem c0159_cover : coverCheck 6762 6762 c0159_intervals = true := by
  decide

private theorem c0159_sound : IntervalSound (6762, 6762) := by
  have hc : coverCheck 6762 6762 (witnessIntervals c0159_witnesses) = true := by
    rw [c0159_intervals_eq]
    exact c0159_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0159_witnesses)
    (lo := 6762) (hi := 6762) c0159_checks hc

def intervals : List NatInterval := [(6560, 6571), (6575, 6585), (6592, 6598), (6600, 6602), (6608, 6610), (6615, 6634), (6642, 6652), (6656, 6660), (6664, 6666), (6669, 6682), (6696, 6698), (6700, 6710), (6713, 6714), (6720, 6733), (6750, 6760), (6762, 6762)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (6560, 6571)) (intervals := [(6575, 6585), (6592, 6598), (6600, 6602), (6608, 6610), (6615, 6634), (6642, 6652), (6656, 6660), (6664, 6666), (6669, 6682), (6696, 6698), (6700, 6710), (6713, 6714), (6720, 6733), (6750, 6760), (6762, 6762)]) c0144_sound (intervals_sound_cons (I := (6575, 6585)) (intervals := [(6592, 6598), (6600, 6602), (6608, 6610), (6615, 6634), (6642, 6652), (6656, 6660), (6664, 6666), (6669, 6682), (6696, 6698), (6700, 6710), (6713, 6714), (6720, 6733), (6750, 6760), (6762, 6762)]) c0145_sound (intervals_sound_cons (I := (6592, 6598)) (intervals := [(6600, 6602), (6608, 6610), (6615, 6634), (6642, 6652), (6656, 6660), (6664, 6666), (6669, 6682), (6696, 6698), (6700, 6710), (6713, 6714), (6720, 6733), (6750, 6760), (6762, 6762)]) c0146_sound (intervals_sound_cons (I := (6600, 6602)) (intervals := [(6608, 6610), (6615, 6634), (6642, 6652), (6656, 6660), (6664, 6666), (6669, 6682), (6696, 6698), (6700, 6710), (6713, 6714), (6720, 6733), (6750, 6760), (6762, 6762)]) c0147_sound (intervals_sound_cons (I := (6608, 6610)) (intervals := [(6615, 6634), (6642, 6652), (6656, 6660), (6664, 6666), (6669, 6682), (6696, 6698), (6700, 6710), (6713, 6714), (6720, 6733), (6750, 6760), (6762, 6762)]) c0148_sound (intervals_sound_cons (I := (6615, 6634)) (intervals := [(6642, 6652), (6656, 6660), (6664, 6666), (6669, 6682), (6696, 6698), (6700, 6710), (6713, 6714), (6720, 6733), (6750, 6760), (6762, 6762)]) c0149_sound (intervals_sound_cons (I := (6642, 6652)) (intervals := [(6656, 6660), (6664, 6666), (6669, 6682), (6696, 6698), (6700, 6710), (6713, 6714), (6720, 6733), (6750, 6760), (6762, 6762)]) c0150_sound (intervals_sound_cons (I := (6656, 6660)) (intervals := [(6664, 6666), (6669, 6682), (6696, 6698), (6700, 6710), (6713, 6714), (6720, 6733), (6750, 6760), (6762, 6762)]) c0151_sound (intervals_sound_cons (I := (6664, 6666)) (intervals := [(6669, 6682), (6696, 6698), (6700, 6710), (6713, 6714), (6720, 6733), (6750, 6760), (6762, 6762)]) c0152_sound (intervals_sound_cons (I := (6669, 6682)) (intervals := [(6696, 6698), (6700, 6710), (6713, 6714), (6720, 6733), (6750, 6760), (6762, 6762)]) c0153_sound (intervals_sound_cons (I := (6696, 6698)) (intervals := [(6700, 6710), (6713, 6714), (6720, 6733), (6750, 6760), (6762, 6762)]) c0154_sound (intervals_sound_cons (I := (6700, 6710)) (intervals := [(6713, 6714), (6720, 6733), (6750, 6760), (6762, 6762)]) c0155_sound (intervals_sound_cons (I := (6713, 6714)) (intervals := [(6720, 6733), (6750, 6760), (6762, 6762)]) c0156_sound (intervals_sound_cons (I := (6720, 6733)) (intervals := [(6750, 6760), (6762, 6762)]) c0157_sound (intervals_sound_cons (I := (6750, 6760)) (intervals := [(6762, 6762)]) c0158_sound (intervals_sound_cons (I := (6762, 6762)) (intervals := []) c0159_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G009
