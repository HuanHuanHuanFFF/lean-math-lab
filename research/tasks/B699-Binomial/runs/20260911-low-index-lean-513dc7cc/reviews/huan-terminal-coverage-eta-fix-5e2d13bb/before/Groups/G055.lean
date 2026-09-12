import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk222
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk223
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk224
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk225

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G055
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0880_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk222.w6, B699LowIndex.I11TerminalData.Chunk222.w7, B699LowIndex.I11TerminalData.Chunk222.w8, B699LowIndex.I11TerminalData.Chunk222.w9, B699LowIndex.I11TerminalData.Chunk222.w10]
private def c0880_intervals : List NatInterval := [(48363, 48363), (48364, 48364), (48365, 48365), (48366, 48366), (48367, 48367)]

private theorem c0880_intervals_eq :
    witnessIntervals c0880_witnesses = c0880_intervals := by
  rfl

private theorem c0880_checks : witnessesCheck c0880_witnesses = true := by
  simp only [witnessesCheck, c0880_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk222.w6_check, B699LowIndex.I11TerminalData.Chunk222.w7_check, B699LowIndex.I11TerminalData.Chunk222.w8_check, B699LowIndex.I11TerminalData.Chunk222.w9_check, B699LowIndex.I11TerminalData.Chunk222.w10_check, Bool.and_self]

private theorem c0880_cover : coverCheck 48363 48367 c0880_intervals = true := by
  decide

private theorem c0880_sound : IntervalSound (48363, 48367) := by
  have hc : coverCheck 48363 48367 (witnessIntervals c0880_witnesses) = true := by
    rw [c0880_intervals_eq]
    exact c0880_cover
  exact interval_sound_of_witness_checks (witnesses := c0880_witnesses)
    (lo := 48363) (hi := 48367) c0880_checks hc

private def c0881_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk222.w11]
private def c0881_intervals : List NatInterval := [(48384, 48385)]

private theorem c0881_intervals_eq :
    witnessIntervals c0881_witnesses = c0881_intervals := by
  rfl

private theorem c0881_checks : witnessesCheck c0881_witnesses = true := by
  simp only [witnessesCheck, c0881_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk222.w11_check, Bool.and_self]

private theorem c0881_cover : coverCheck 48384 48385 c0881_intervals = true := by
  decide

private theorem c0881_sound : IntervalSound (48384, 48385) := by
  have hc : coverCheck 48384 48385 (witnessIntervals c0881_witnesses) = true := by
    rw [c0881_intervals_eq]
    exact c0881_cover
  exact interval_sound_of_witness_checks (witnesses := c0881_witnesses)
    (lo := 48384) (hi := 48385) c0881_checks hc

private def c0882_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk222.w12]
private def c0882_intervals : List NatInterval := [(50058, 50058)]

private theorem c0882_intervals_eq :
    witnessIntervals c0882_witnesses = c0882_intervals := by
  rfl

private theorem c0882_checks : witnessesCheck c0882_witnesses = true := by
  simp only [witnessesCheck, c0882_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk222.w12_check, Bool.and_self]

private theorem c0882_cover : coverCheck 50058 50058 c0882_intervals = true := by
  decide

private theorem c0882_sound : IntervalSound (50058, 50058) := by
  have hc : coverCheck 50058 50058 (witnessIntervals c0882_witnesses) = true := by
    rw [c0882_intervals_eq]
    exact c0882_cover
  exact interval_sound_of_witness_checks (witnesses := c0882_witnesses)
    (lo := 50058) (hi := 50058) c0882_checks hc

private def c0883_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk222.w13, B699LowIndex.I11TerminalData.Chunk222.w14, B699LowIndex.I11TerminalData.Chunk222.w15, B699LowIndex.I11TerminalData.Chunk223.w0, B699LowIndex.I11TerminalData.Chunk223.w1, B699LowIndex.I11TerminalData.Chunk223.w2, B699LowIndex.I11TerminalData.Chunk223.w3, B699LowIndex.I11TerminalData.Chunk223.w4]
private def c0883_intervals : List NatInterval := [(50304, 50304), (50305, 50305), (50306, 50306), (50307, 50307), (50308, 50308), (50309, 50309), (50310, 50310), (50311, 50311)]

private theorem c0883_intervals_eq :
    witnessIntervals c0883_witnesses = c0883_intervals := by
  rfl

private theorem c0883_checks : witnessesCheck c0883_witnesses = true := by
  simp only [witnessesCheck, c0883_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk222.w13_check, B699LowIndex.I11TerminalData.Chunk222.w14_check, B699LowIndex.I11TerminalData.Chunk222.w15_check, B699LowIndex.I11TerminalData.Chunk223.w0_check, B699LowIndex.I11TerminalData.Chunk223.w1_check, B699LowIndex.I11TerminalData.Chunk223.w2_check, B699LowIndex.I11TerminalData.Chunk223.w3_check, B699LowIndex.I11TerminalData.Chunk223.w4_check, Bool.and_self]

private theorem c0883_cover : coverCheck 50304 50311 c0883_intervals = true := by
  decide

private theorem c0883_sound : IntervalSound (50304, 50311) := by
  have hc : coverCheck 50304 50311 (witnessIntervals c0883_witnesses) = true := by
    rw [c0883_intervals_eq]
    exact c0883_cover
  exact interval_sound_of_witness_checks (witnesses := c0883_witnesses)
    (lo := 50304) (hi := 50311) c0883_checks hc

private def c0884_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk223.w5, B699LowIndex.I11TerminalData.Chunk223.w6]
private def c0884_intervals : List NatInterval := [(51456, 51459), (51460, 51460)]

private theorem c0884_intervals_eq :
    witnessIntervals c0884_witnesses = c0884_intervals := by
  rfl

private theorem c0884_checks : witnessesCheck c0884_witnesses = true := by
  simp only [witnessesCheck, c0884_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk223.w5_check, B699LowIndex.I11TerminalData.Chunk223.w6_check, Bool.and_self]

private theorem c0884_cover : coverCheck 51456 51460 c0884_intervals = true := by
  decide

private theorem c0884_sound : IntervalSound (51456, 51460) := by
  have hc : coverCheck 51456 51460 (witnessIntervals c0884_witnesses) = true := by
    rw [c0884_intervals_eq]
    exact c0884_cover
  exact interval_sound_of_witness_checks (witnesses := c0884_witnesses)
    (lo := 51456) (hi := 51460) c0884_checks hc

private def c0885_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk223.w7, B699LowIndex.I11TerminalData.Chunk223.w8]
private def c0885_intervals : List NatInterval := [(51759, 51759), (51760, 51760)]

private theorem c0885_intervals_eq :
    witnessIntervals c0885_witnesses = c0885_intervals := by
  rfl

private theorem c0885_checks : witnessesCheck c0885_witnesses = true := by
  simp only [witnessesCheck, c0885_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk223.w7_check, B699LowIndex.I11TerminalData.Chunk223.w8_check, Bool.and_self]

private theorem c0885_cover : coverCheck 51759 51760 c0885_intervals = true := by
  decide

private theorem c0885_sound : IntervalSound (51759, 51760) := by
  have hc : coverCheck 51759 51760 (witnessIntervals c0885_witnesses) = true := by
    rw [c0885_intervals_eq]
    exact c0885_cover
  exact interval_sound_of_witness_checks (witnesses := c0885_witnesses)
    (lo := 51759) (hi := 51760) c0885_checks hc

private def c0886_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk223.w9, B699LowIndex.I11TerminalData.Chunk223.w10, B699LowIndex.I11TerminalData.Chunk223.w11, B699LowIndex.I11TerminalData.Chunk223.w12, B699LowIndex.I11TerminalData.Chunk223.w13, B699LowIndex.I11TerminalData.Chunk223.w14, B699LowIndex.I11TerminalData.Chunk223.w15, B699LowIndex.I11TerminalData.Chunk224.w0]
private def c0886_intervals : List NatInterval := [(52002, 52002), (52003, 52003), (52004, 52004), (52005, 52005), (52006, 52006), (52007, 52007), (52008, 52008), (52009, 52010)]

private theorem c0886_intervals_eq :
    witnessIntervals c0886_witnesses = c0886_intervals := by
  rfl

private theorem c0886_checks : witnessesCheck c0886_witnesses = true := by
  simp only [witnessesCheck, c0886_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk223.w9_check, B699LowIndex.I11TerminalData.Chunk223.w10_check, B699LowIndex.I11TerminalData.Chunk223.w11_check, B699LowIndex.I11TerminalData.Chunk223.w12_check, B699LowIndex.I11TerminalData.Chunk223.w13_check, B699LowIndex.I11TerminalData.Chunk223.w14_check, B699LowIndex.I11TerminalData.Chunk223.w15_check, B699LowIndex.I11TerminalData.Chunk224.w0_check, Bool.and_self]

private theorem c0886_cover : coverCheck 52002 52010 c0886_intervals = true := by
  decide

private theorem c0886_sound : IntervalSound (52002, 52010) := by
  have hc : coverCheck 52002 52010 (witnessIntervals c0886_witnesses) = true := by
    rw [c0886_intervals_eq]
    exact c0886_cover
  exact interval_sound_of_witness_checks (witnesses := c0886_witnesses)
    (lo := 52002) (hi := 52010) c0886_checks hc

private def c0887_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk224.w1]
private def c0887_intervals : List NatInterval := [(52250, 52255)]

private theorem c0887_intervals_eq :
    witnessIntervals c0887_witnesses = c0887_intervals := by
  rfl

private theorem c0887_checks : witnessesCheck c0887_witnesses = true := by
  simp only [witnessesCheck, c0887_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk224.w1_check, Bool.and_self]

private theorem c0887_cover : coverCheck 52250 52255 c0887_intervals = true := by
  decide

private theorem c0887_sound : IntervalSound (52250, 52255) := by
  have hc : coverCheck 52250 52255 (witnessIntervals c0887_witnesses) = true := by
    rw [c0887_intervals_eq]
    exact c0887_cover
  exact interval_sound_of_witness_checks (witnesses := c0887_witnesses)
    (lo := 52250) (hi := 52255) c0887_checks hc

private def c0888_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk224.w2, B699LowIndex.I11TerminalData.Chunk224.w3, B699LowIndex.I11TerminalData.Chunk224.w4, B699LowIndex.I11TerminalData.Chunk224.w5, B699LowIndex.I11TerminalData.Chunk224.w6, B699LowIndex.I11TerminalData.Chunk224.w7, B699LowIndex.I11TerminalData.Chunk224.w8, B699LowIndex.I11TerminalData.Chunk224.w9, B699LowIndex.I11TerminalData.Chunk224.w10, B699LowIndex.I11TerminalData.Chunk224.w11]
private def c0888_intervals : List NatInterval := [(52480, 52480), (52481, 52481), (52482, 52482), (52483, 52483), (52484, 52484), (52485, 52485), (52486, 52486), (52487, 52487), (52488, 52488), (52489, 52490)]

private theorem c0888_intervals_eq :
    witnessIntervals c0888_witnesses = c0888_intervals := by
  rfl

private theorem c0888_checks : witnessesCheck c0888_witnesses = true := by
  simp only [witnessesCheck, c0888_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk224.w2_check, B699LowIndex.I11TerminalData.Chunk224.w3_check, B699LowIndex.I11TerminalData.Chunk224.w4_check, B699LowIndex.I11TerminalData.Chunk224.w5_check, B699LowIndex.I11TerminalData.Chunk224.w6_check, B699LowIndex.I11TerminalData.Chunk224.w7_check, B699LowIndex.I11TerminalData.Chunk224.w8_check, B699LowIndex.I11TerminalData.Chunk224.w9_check, B699LowIndex.I11TerminalData.Chunk224.w10_check, B699LowIndex.I11TerminalData.Chunk224.w11_check, Bool.and_self]

private theorem c0888_cover : coverCheck 52480 52490 c0888_intervals = true := by
  decide

private theorem c0888_sound : IntervalSound (52480, 52490) := by
  have hc : coverCheck 52480 52490 (witnessIntervals c0888_witnesses) = true := by
    rw [c0888_intervals_eq]
    exact c0888_cover
  exact interval_sound_of_witness_checks (witnesses := c0888_witnesses)
    (lo := 52480) (hi := 52490) c0888_checks hc

private def c0889_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk224.w12]
private def c0889_intervals : List NatInterval := [(52736, 52741)]

private theorem c0889_intervals_eq :
    witnessIntervals c0889_witnesses = c0889_intervals := by
  rfl

private theorem c0889_checks : witnessesCheck c0889_witnesses = true := by
  simp only [witnessesCheck, c0889_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk224.w12_check, Bool.and_self]

private theorem c0889_cover : coverCheck 52736 52741 c0889_intervals = true := by
  decide

private theorem c0889_sound : IntervalSound (52736, 52741) := by
  have hc : coverCheck 52736 52741 (witnessIntervals c0889_witnesses) = true := by
    rw [c0889_intervals_eq]
    exact c0889_cover
  exact interval_sound_of_witness_checks (witnesses := c0889_witnesses)
    (lo := 52736) (hi := 52741) c0889_checks hc

private def c0890_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk224.w13]
private def c0890_intervals : List NatInterval := [(53000, 53002)]

private theorem c0890_intervals_eq :
    witnessIntervals c0890_witnesses = c0890_intervals := by
  rfl

private theorem c0890_checks : witnessesCheck c0890_witnesses = true := by
  simp only [witnessesCheck, c0890_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk224.w13_check, Bool.and_self]

private theorem c0890_cover : coverCheck 53000 53002 c0890_intervals = true := by
  decide

private theorem c0890_sound : IntervalSound (53000, 53002) := by
  have hc : coverCheck 53000 53002 (witnessIntervals c0890_witnesses) = true := by
    rw [c0890_intervals_eq]
    exact c0890_cover
  exact interval_sound_of_witness_checks (witnesses := c0890_witnesses)
    (lo := 53000) (hi := 53002) c0890_checks hc

private def c0891_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk224.w14, B699LowIndex.I11TerminalData.Chunk224.w15, B699LowIndex.I11TerminalData.Chunk225.w0]
private def c0891_intervals : List NatInterval := [(53125, 53127), (53128, 53128), (53129, 53130)]

private theorem c0891_intervals_eq :
    witnessIntervals c0891_witnesses = c0891_intervals := by
  rfl

private theorem c0891_checks : witnessesCheck c0891_witnesses = true := by
  simp only [witnessesCheck, c0891_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk224.w14_check, B699LowIndex.I11TerminalData.Chunk224.w15_check, B699LowIndex.I11TerminalData.Chunk225.w0_check, Bool.and_self]

private theorem c0891_cover : coverCheck 53125 53130 c0891_intervals = true := by
  decide

private theorem c0891_sound : IntervalSound (53125, 53130) := by
  have hc : coverCheck 53125 53130 (witnessIntervals c0891_witnesses) = true := by
    rw [c0891_intervals_eq]
    exact c0891_cover
  exact interval_sound_of_witness_checks (witnesses := c0891_witnesses)
    (lo := 53125) (hi := 53130) c0891_checks hc

private def c0892_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk225.w1, B699LowIndex.I11TerminalData.Chunk225.w2, B699LowIndex.I11TerminalData.Chunk225.w3, B699LowIndex.I11TerminalData.Chunk225.w4, B699LowIndex.I11TerminalData.Chunk225.w5, B699LowIndex.I11TerminalData.Chunk225.w6, B699LowIndex.I11TerminalData.Chunk225.w7, B699LowIndex.I11TerminalData.Chunk225.w8, B699LowIndex.I11TerminalData.Chunk225.w9]
private def c0892_intervals : List NatInterval := [(53250, 53250), (53251, 53251), (53252, 53252), (53253, 53253), (53254, 53254), (53255, 53255), (53256, 53256), (53257, 53257), (53258, 53258)]

private theorem c0892_intervals_eq :
    witnessIntervals c0892_witnesses = c0892_intervals := by
  rfl

private theorem c0892_checks : witnessesCheck c0892_witnesses = true := by
  simp only [witnessesCheck, c0892_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk225.w1_check, B699LowIndex.I11TerminalData.Chunk225.w2_check, B699LowIndex.I11TerminalData.Chunk225.w3_check, B699LowIndex.I11TerminalData.Chunk225.w4_check, B699LowIndex.I11TerminalData.Chunk225.w5_check, B699LowIndex.I11TerminalData.Chunk225.w6_check, B699LowIndex.I11TerminalData.Chunk225.w7_check, B699LowIndex.I11TerminalData.Chunk225.w8_check, B699LowIndex.I11TerminalData.Chunk225.w9_check, Bool.and_self]

private theorem c0892_cover : coverCheck 53250 53258 c0892_intervals = true := by
  decide

private theorem c0892_sound : IntervalSound (53250, 53258) := by
  have hc : coverCheck 53250 53258 (witnessIntervals c0892_witnesses) = true := by
    rw [c0892_intervals_eq]
    exact c0892_cover
  exact interval_sound_of_witness_checks (witnesses := c0892_witnesses)
    (lo := 53250) (hi := 53258) c0892_checks hc

private def c0893_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk225.w10, B699LowIndex.I11TerminalData.Chunk225.w11]
private def c0893_intervals : List NatInterval := [(53376, 53376), (53377, 53385)]

private theorem c0893_intervals_eq :
    witnessIntervals c0893_witnesses = c0893_intervals := by
  rfl

private theorem c0893_checks : witnessesCheck c0893_witnesses = true := by
  simp only [witnessesCheck, c0893_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk225.w10_check, B699LowIndex.I11TerminalData.Chunk225.w11_check, Bool.and_self]

private theorem c0893_cover : coverCheck 53376 53385 c0893_intervals = true := by
  decide

private theorem c0893_sound : IntervalSound (53376, 53385) := by
  have hc : coverCheck 53376 53385 (witnessIntervals c0893_witnesses) = true := by
    rw [c0893_intervals_eq]
    exact c0893_cover
  exact interval_sound_of_witness_checks (witnesses := c0893_witnesses)
    (lo := 53376) (hi := 53385) c0893_checks hc

private def c0894_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk225.w12, B699LowIndex.I11TerminalData.Chunk225.w13]
private def c0894_intervals : List NatInterval := [(53504, 53513), (53514, 53514)]

private theorem c0894_intervals_eq :
    witnessIntervals c0894_witnesses = c0894_intervals := by
  rfl

private theorem c0894_checks : witnessesCheck c0894_witnesses = true := by
  simp only [witnessesCheck, c0894_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk225.w12_check, B699LowIndex.I11TerminalData.Chunk225.w13_check, Bool.and_self]

private theorem c0894_cover : coverCheck 53504 53514 c0894_intervals = true := by
  decide

private theorem c0894_sound : IntervalSound (53504, 53514) := by
  have hc : coverCheck 53504 53514 (witnessIntervals c0894_witnesses) = true := by
    rw [c0894_intervals_eq]
    exact c0894_cover
  exact interval_sound_of_witness_checks (witnesses := c0894_witnesses)
    (lo := 53504) (hi := 53514) c0894_checks hc

private def c0895_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk225.w14]
private def c0895_intervals : List NatInterval := [(53632, 53635)]

private theorem c0895_intervals_eq :
    witnessIntervals c0895_witnesses = c0895_intervals := by
  rfl

private theorem c0895_checks : witnessesCheck c0895_witnesses = true := by
  simp only [witnessesCheck, c0895_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk225.w14_check, Bool.and_self]

private theorem c0895_cover : coverCheck 53632 53635 c0895_intervals = true := by
  decide

private theorem c0895_sound : IntervalSound (53632, 53635) := by
  have hc : coverCheck 53632 53635 (witnessIntervals c0895_witnesses) = true := by
    rw [c0895_intervals_eq]
    exact c0895_cover
  exact interval_sound_of_witness_checks (witnesses := c0895_witnesses)
    (lo := 53632) (hi := 53635) c0895_checks hc

def intervals : List NatInterval := [(48363, 48367), (48384, 48385), (50058, 50058), (50304, 50311), (51456, 51460), (51759, 51760), (52002, 52010), (52250, 52255), (52480, 52490), (52736, 52741), (53000, 53002), (53125, 53130), (53250, 53258), (53376, 53385), (53504, 53514), (53632, 53635)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (48363, 48367)) (intervals := [(48384, 48385), (50058, 50058), (50304, 50311), (51456, 51460), (51759, 51760), (52002, 52010), (52250, 52255), (52480, 52490), (52736, 52741), (53000, 53002), (53125, 53130), (53250, 53258), (53376, 53385), (53504, 53514), (53632, 53635)]) c0880_sound (intervals_sound_cons (I := (48384, 48385)) (intervals := [(50058, 50058), (50304, 50311), (51456, 51460), (51759, 51760), (52002, 52010), (52250, 52255), (52480, 52490), (52736, 52741), (53000, 53002), (53125, 53130), (53250, 53258), (53376, 53385), (53504, 53514), (53632, 53635)]) c0881_sound (intervals_sound_cons (I := (50058, 50058)) (intervals := [(50304, 50311), (51456, 51460), (51759, 51760), (52002, 52010), (52250, 52255), (52480, 52490), (52736, 52741), (53000, 53002), (53125, 53130), (53250, 53258), (53376, 53385), (53504, 53514), (53632, 53635)]) c0882_sound (intervals_sound_cons (I := (50304, 50311)) (intervals := [(51456, 51460), (51759, 51760), (52002, 52010), (52250, 52255), (52480, 52490), (52736, 52741), (53000, 53002), (53125, 53130), (53250, 53258), (53376, 53385), (53504, 53514), (53632, 53635)]) c0883_sound (intervals_sound_cons (I := (51456, 51460)) (intervals := [(51759, 51760), (52002, 52010), (52250, 52255), (52480, 52490), (52736, 52741), (53000, 53002), (53125, 53130), (53250, 53258), (53376, 53385), (53504, 53514), (53632, 53635)]) c0884_sound (intervals_sound_cons (I := (51759, 51760)) (intervals := [(52002, 52010), (52250, 52255), (52480, 52490), (52736, 52741), (53000, 53002), (53125, 53130), (53250, 53258), (53376, 53385), (53504, 53514), (53632, 53635)]) c0885_sound (intervals_sound_cons (I := (52002, 52010)) (intervals := [(52250, 52255), (52480, 52490), (52736, 52741), (53000, 53002), (53125, 53130), (53250, 53258), (53376, 53385), (53504, 53514), (53632, 53635)]) c0886_sound (intervals_sound_cons (I := (52250, 52255)) (intervals := [(52480, 52490), (52736, 52741), (53000, 53002), (53125, 53130), (53250, 53258), (53376, 53385), (53504, 53514), (53632, 53635)]) c0887_sound (intervals_sound_cons (I := (52480, 52490)) (intervals := [(52736, 52741), (53000, 53002), (53125, 53130), (53250, 53258), (53376, 53385), (53504, 53514), (53632, 53635)]) c0888_sound (intervals_sound_cons (I := (52736, 52741)) (intervals := [(53000, 53002), (53125, 53130), (53250, 53258), (53376, 53385), (53504, 53514), (53632, 53635)]) c0889_sound (intervals_sound_cons (I := (53000, 53002)) (intervals := [(53125, 53130), (53250, 53258), (53376, 53385), (53504, 53514), (53632, 53635)]) c0890_sound (intervals_sound_cons (I := (53125, 53130)) (intervals := [(53250, 53258), (53376, 53385), (53504, 53514), (53632, 53635)]) c0891_sound (intervals_sound_cons (I := (53250, 53258)) (intervals := [(53376, 53385), (53504, 53514), (53632, 53635)]) c0892_sound (intervals_sound_cons (I := (53376, 53385)) (intervals := [(53504, 53514), (53632, 53635)]) c0893_sound (intervals_sound_cons (I := (53504, 53514)) (intervals := [(53632, 53635)]) c0894_sound (intervals_sound_cons (I := (53632, 53635)) (intervals := []) c0895_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G055
