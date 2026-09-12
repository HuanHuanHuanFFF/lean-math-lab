import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk163
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk164
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk165
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk166

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G033
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0528_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk163.w6]
private def c0528_intervals : List NatInterval := [(13696, 13699)]

private theorem c0528_intervals_eq :
    witnessIntervals c0528_witnesses = c0528_intervals := by
  rfl

private theorem c0528_checks : witnessesCheck c0528_witnesses = true := by
  simp only [witnessesCheck, c0528_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk163.w6_check, Bool.and_self]

private theorem c0528_cover : coverCheck 13696 13699 c0528_intervals = true := by
  decide

private theorem c0528_sound : IntervalSound (13696, 13699) := by
  have hc : coverCheck 13696 13699 (witnessIntervals c0528_witnesses) = true := by
    rw [c0528_intervals_eq]
    exact c0528_cover
  exact interval_sound_of_witness_checks (witnesses := c0528_witnesses)
    (lo := 13696) (hi := 13699) c0528_checks hc

private def c0529_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk163.w7]
private def c0529_intervals : List NatInterval := [(13728, 13730)]

private theorem c0529_intervals_eq :
    witnessIntervals c0529_witnesses = c0529_intervals := by
  rfl

private theorem c0529_checks : witnessesCheck c0529_witnesses = true := by
  simp only [witnessesCheck, c0529_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk163.w7_check, Bool.and_self]

private theorem c0529_cover : coverCheck 13728 13730 c0529_intervals = true := by
  decide

private theorem c0529_sound : IntervalSound (13728, 13730) := by
  have hc : coverCheck 13728 13730 (witnessIntervals c0529_witnesses) = true := by
    rw [c0529_intervals_eq]
    exact c0529_cover
  exact interval_sound_of_witness_checks (witnesses := c0529_witnesses)
    (lo := 13728) (hi := 13730) c0529_checks hc

private def c0530_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk163.w8]
private def c0530_intervals : List NatInterval := [(13760, 13760)]

private theorem c0530_intervals_eq :
    witnessIntervals c0530_witnesses = c0530_intervals := by
  rfl

private theorem c0530_checks : witnessesCheck c0530_witnesses = true := by
  simp only [witnessesCheck, c0530_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk163.w8_check, Bool.and_self]

private theorem c0530_cover : coverCheck 13760 13760 c0530_intervals = true := by
  decide

private theorem c0530_sound : IntervalSound (13760, 13760) := by
  have hc : coverCheck 13760 13760 (witnessIntervals c0530_witnesses) = true := by
    rw [c0530_intervals_eq]
    exact c0530_cover
  exact interval_sound_of_witness_checks (witnesses := c0530_witnesses)
    (lo := 13760) (hi := 13760) c0530_checks hc

private def c0531_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk163.w9, B699LowIndex.I11TerminalData.Chunk163.w10, B699LowIndex.I11TerminalData.Chunk163.w11, B699LowIndex.I11TerminalData.Chunk163.w12, B699LowIndex.I11TerminalData.Chunk163.w13, B699LowIndex.I11TerminalData.Chunk163.w14, B699LowIndex.I11TerminalData.Chunk163.w15]
private def c0531_intervals : List NatInterval := [(13769, 13773), (13774, 13774), (13775, 13775), (13776, 13776), (13777, 13777), (13778, 13778), (13779, 13779)]

private theorem c0531_intervals_eq :
    witnessIntervals c0531_witnesses = c0531_intervals := by
  rfl

private theorem c0531_checks : witnessesCheck c0531_witnesses = true := by
  simp only [witnessesCheck, c0531_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk163.w9_check, B699LowIndex.I11TerminalData.Chunk163.w10_check, B699LowIndex.I11TerminalData.Chunk163.w11_check, B699LowIndex.I11TerminalData.Chunk163.w12_check, B699LowIndex.I11TerminalData.Chunk163.w13_check, B699LowIndex.I11TerminalData.Chunk163.w14_check, B699LowIndex.I11TerminalData.Chunk163.w15_check, Bool.and_self]

private theorem c0531_cover : coverCheck 13769 13779 c0531_intervals = true := by
  decide

private theorem c0531_sound : IntervalSound (13769, 13779) := by
  have hc : coverCheck 13769 13779 (witnessIntervals c0531_witnesses) = true := by
    rw [c0531_intervals_eq]
    exact c0531_cover
  exact interval_sound_of_witness_checks (witnesses := c0531_witnesses)
    (lo := 13769) (hi := 13779) c0531_checks hc

private def c0532_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk164.w0, B699LowIndex.I11TerminalData.Chunk164.w1, B699LowIndex.I11TerminalData.Chunk164.w2, B699LowIndex.I11TerminalData.Chunk164.w3, B699LowIndex.I11TerminalData.Chunk164.w4]
private def c0532_intervals : List NatInterval := [(13824, 13824), (13825, 13825), (13826, 13826), (13827, 13827), (13828, 13828)]

private theorem c0532_intervals_eq :
    witnessIntervals c0532_witnesses = c0532_intervals := by
  rfl

private theorem c0532_checks : witnessesCheck c0532_witnesses = true := by
  simp only [witnessesCheck, c0532_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk164.w0_check, B699LowIndex.I11TerminalData.Chunk164.w1_check, B699LowIndex.I11TerminalData.Chunk164.w2_check, B699LowIndex.I11TerminalData.Chunk164.w3_check, B699LowIndex.I11TerminalData.Chunk164.w4_check, Bool.and_self]

private theorem c0532_cover : coverCheck 13824 13828 c0532_intervals = true := by
  decide

private theorem c0532_sound : IntervalSound (13824, 13828) := by
  have hc : coverCheck 13824 13828 (witnessIntervals c0532_witnesses) = true := by
    rw [c0532_intervals_eq]
    exact c0532_cover
  exact interval_sound_of_witness_checks (witnesses := c0532_witnesses)
    (lo := 13824) (hi := 13828) c0532_checks hc

private def c0533_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk164.w5, B699LowIndex.I11TerminalData.Chunk164.w6, B699LowIndex.I11TerminalData.Chunk164.w7, B699LowIndex.I11TerminalData.Chunk164.w8]
private def c0533_intervals : List NatInterval := [(13856, 13856), (13857, 13857), (13858, 13858), (13859, 13861)]

private theorem c0533_intervals_eq :
    witnessIntervals c0533_witnesses = c0533_intervals := by
  rfl

private theorem c0533_checks : witnessesCheck c0533_witnesses = true := by
  simp only [witnessesCheck, c0533_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk164.w5_check, B699LowIndex.I11TerminalData.Chunk164.w6_check, B699LowIndex.I11TerminalData.Chunk164.w7_check, B699LowIndex.I11TerminalData.Chunk164.w8_check, Bool.and_self]

private theorem c0533_cover : coverCheck 13856 13861 c0533_intervals = true := by
  decide

private theorem c0533_sound : IntervalSound (13856, 13861) := by
  have hc : coverCheck 13856 13861 (witnessIntervals c0533_witnesses) = true := by
    rw [c0533_intervals_eq]
    exact c0533_cover
  exact interval_sound_of_witness_checks (witnesses := c0533_witnesses)
    (lo := 13856) (hi := 13861) c0533_checks hc

private def c0534_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk164.w9]
private def c0534_intervals : List NatInterval := [(13875, 13877)]

private theorem c0534_intervals_eq :
    witnessIntervals c0534_witnesses = c0534_intervals := by
  rfl

private theorem c0534_checks : witnessesCheck c0534_witnesses = true := by
  simp only [witnessesCheck, c0534_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk164.w9_check, Bool.and_self]

private theorem c0534_cover : coverCheck 13875 13877 c0534_intervals = true := by
  decide

private theorem c0534_sound : IntervalSound (13875, 13877) := by
  have hc : coverCheck 13875 13877 (witnessIntervals c0534_witnesses) = true := by
    rw [c0534_intervals_eq]
    exact c0534_cover
  exact interval_sound_of_witness_checks (witnesses := c0534_witnesses)
    (lo := 13875) (hi := 13877) c0534_checks hc

private def c0535_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk164.w10, B699LowIndex.I11TerminalData.Chunk164.w11]
private def c0535_intervals : List NatInterval := [(13920, 13923), (13924, 13926)]

private theorem c0535_intervals_eq :
    witnessIntervals c0535_witnesses = c0535_intervals := by
  rfl

private theorem c0535_checks : witnessesCheck c0535_witnesses = true := by
  simp only [witnessesCheck, c0535_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk164.w10_check, B699LowIndex.I11TerminalData.Chunk164.w11_check, Bool.and_self]

private theorem c0535_cover : coverCheck 13920 13926 c0535_intervals = true := by
  decide

private theorem c0535_sound : IntervalSound (13920, 13926) := by
  have hc : coverCheck 13920 13926 (witnessIntervals c0535_witnesses) = true := by
    rw [c0535_intervals_eq]
    exact c0535_cover
  exact interval_sound_of_witness_checks (witnesses := c0535_witnesses)
    (lo := 13920) (hi := 13926) c0535_checks hc

private def c0536_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk164.w12, B699LowIndex.I11TerminalData.Chunk164.w13, B699LowIndex.I11TerminalData.Chunk164.w14, B699LowIndex.I11TerminalData.Chunk164.w15]
private def c0536_intervals : List NatInterval := [(14014, 14021), (14022, 14022), (14023, 14023), (14024, 14024)]

private theorem c0536_intervals_eq :
    witnessIntervals c0536_witnesses = c0536_intervals := by
  rfl

private theorem c0536_checks : witnessesCheck c0536_witnesses = true := by
  simp only [witnessesCheck, c0536_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk164.w12_check, B699LowIndex.I11TerminalData.Chunk164.w13_check, B699LowIndex.I11TerminalData.Chunk164.w14_check, B699LowIndex.I11TerminalData.Chunk164.w15_check, Bool.and_self]

private theorem c0536_cover : coverCheck 14014 14024 c0536_intervals = true := by
  decide

private theorem c0536_sound : IntervalSound (14014, 14024) := by
  have hc : coverCheck 14014 14024 (witnessIntervals c0536_witnesses) = true := by
    rw [c0536_intervals_eq]
    exact c0536_cover
  exact interval_sound_of_witness_checks (witnesses := c0536_witnesses)
    (lo := 14014) (hi := 14024) c0536_checks hc

private def c0537_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk165.w0, B699LowIndex.I11TerminalData.Chunk165.w1, B699LowIndex.I11TerminalData.Chunk165.w2, B699LowIndex.I11TerminalData.Chunk165.w3, B699LowIndex.I11TerminalData.Chunk165.w4, B699LowIndex.I11TerminalData.Chunk165.w5]
private def c0537_intervals : List NatInterval := [(14112, 14117), (14118, 14118), (14119, 14119), (14120, 14120), (14121, 14121), (14122, 14122)]

private theorem c0537_intervals_eq :
    witnessIntervals c0537_witnesses = c0537_intervals := by
  rfl

private theorem c0537_checks : witnessesCheck c0537_witnesses = true := by
  simp only [witnessesCheck, c0537_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk165.w0_check, B699LowIndex.I11TerminalData.Chunk165.w1_check, B699LowIndex.I11TerminalData.Chunk165.w2_check, B699LowIndex.I11TerminalData.Chunk165.w3_check, B699LowIndex.I11TerminalData.Chunk165.w4_check, B699LowIndex.I11TerminalData.Chunk165.w5_check, Bool.and_self]

private theorem c0537_cover : coverCheck 14112 14122 c0537_intervals = true := by
  decide

private theorem c0537_sound : IntervalSound (14112, 14122) := by
  have hc : coverCheck 14112 14122 (witnessIntervals c0537_witnesses) = true := by
    rw [c0537_intervals_eq]
    exact c0537_cover
  exact interval_sound_of_witness_checks (witnesses := c0537_witnesses)
    (lo := 14112) (hi := 14122) c0537_checks hc

private def c0538_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk165.w6, B699LowIndex.I11TerminalData.Chunk165.w7]
private def c0538_intervals : List NatInterval := [(14176, 14183), (14184, 14185)]

private theorem c0538_intervals_eq :
    witnessIntervals c0538_witnesses = c0538_intervals := by
  rfl

private theorem c0538_checks : witnessesCheck c0538_witnesses = true := by
  simp only [witnessesCheck, c0538_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk165.w6_check, B699LowIndex.I11TerminalData.Chunk165.w7_check, Bool.and_self]

private theorem c0538_cover : coverCheck 14176 14185 c0538_intervals = true := by
  decide

private theorem c0538_sound : IntervalSound (14176, 14185) := by
  have hc : coverCheck 14176 14185 (witnessIntervals c0538_witnesses) = true := by
    rw [c0538_intervals_eq]
    exact c0538_cover
  exact interval_sound_of_witness_checks (witnesses := c0538_witnesses)
    (lo := 14176) (hi := 14185) c0538_checks hc

private def c0539_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk165.w8, B699LowIndex.I11TerminalData.Chunk165.w9]
private def c0539_intervals : List NatInterval := [(14210, 14217), (14218, 14218)]

private theorem c0539_intervals_eq :
    witnessIntervals c0539_witnesses = c0539_intervals := by
  rfl

private theorem c0539_checks : witnessesCheck c0539_witnesses = true := by
  simp only [witnessesCheck, c0539_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk165.w8_check, B699LowIndex.I11TerminalData.Chunk165.w9_check, Bool.and_self]

private theorem c0539_cover : coverCheck 14210 14218 c0539_intervals = true := by
  decide

private theorem c0539_sound : IntervalSound (14210, 14218) := by
  have hc : coverCheck 14210 14218 (witnessIntervals c0539_witnesses) = true := by
    rw [c0539_intervals_eq]
    exact c0539_cover
  exact interval_sound_of_witness_checks (witnesses := c0539_witnesses)
    (lo := 14210) (hi := 14218) c0539_checks hc

private def c0540_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk165.w10]
private def c0540_intervals : List NatInterval := [(14250, 14250)]

private theorem c0540_intervals_eq :
    witnessIntervals c0540_witnesses = c0540_intervals := by
  rfl

private theorem c0540_checks : witnessesCheck c0540_witnesses = true := by
  simp only [witnessesCheck, c0540_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk165.w10_check, Bool.and_self]

private theorem c0540_cover : coverCheck 14250 14250 c0540_intervals = true := by
  decide

private theorem c0540_sound : IntervalSound (14250, 14250) := by
  have hc : coverCheck 14250 14250 (witnessIntervals c0540_witnesses) = true := by
    rw [c0540_intervals_eq]
    exact c0540_cover
  exact interval_sound_of_witness_checks (witnesses := c0540_witnesses)
    (lo := 14250) (hi := 14250) c0540_checks hc

private def c0541_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk165.w11, B699LowIndex.I11TerminalData.Chunk165.w12, B699LowIndex.I11TerminalData.Chunk165.w13, B699LowIndex.I11TerminalData.Chunk165.w14, B699LowIndex.I11TerminalData.Chunk165.w15, B699LowIndex.I11TerminalData.Chunk166.w0]
private def c0541_intervals : List NatInterval := [(14256, 14261), (14262, 14262), (14263, 14263), (14264, 14264), (14265, 14265), (14266, 14266)]

private theorem c0541_intervals_eq :
    witnessIntervals c0541_witnesses = c0541_intervals := by
  rfl

private theorem c0541_checks : witnessesCheck c0541_witnesses = true := by
  simp only [witnessesCheck, c0541_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk165.w11_check, B699LowIndex.I11TerminalData.Chunk165.w12_check, B699LowIndex.I11TerminalData.Chunk165.w13_check, B699LowIndex.I11TerminalData.Chunk165.w14_check, B699LowIndex.I11TerminalData.Chunk165.w15_check, B699LowIndex.I11TerminalData.Chunk166.w0_check, Bool.and_self]

private theorem c0541_cover : coverCheck 14256 14266 c0541_intervals = true := by
  decide

private theorem c0541_sound : IntervalSound (14256, 14266) := by
  have hc : coverCheck 14256 14266 (witnessIntervals c0541_witnesses) = true := by
    rw [c0541_intervals_eq]
    exact c0541_cover
  exact interval_sound_of_witness_checks (witnesses := c0541_witnesses)
    (lo := 14256) (hi := 14266) c0541_checks hc

private def c0542_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk166.w1, B699LowIndex.I11TerminalData.Chunk166.w2]
private def c0542_intervals : List NatInterval := [(14308, 14313), (14314, 14314)]

private theorem c0542_intervals_eq :
    witnessIntervals c0542_witnesses = c0542_intervals := by
  rfl

private theorem c0542_checks : witnessesCheck c0542_witnesses = true := by
  simp only [witnessesCheck, c0542_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk166.w1_check, B699LowIndex.I11TerminalData.Chunk166.w2_check, Bool.and_self]

private theorem c0542_cover : coverCheck 14308 14314 c0542_intervals = true := by
  decide

private theorem c0542_sound : IntervalSound (14308, 14314) := by
  have hc : coverCheck 14308 14314 (witnessIntervals c0542_witnesses) = true := by
    rw [c0542_intervals_eq]
    exact c0542_cover
  exact interval_sound_of_witness_checks (witnesses := c0542_witnesses)
    (lo := 14308) (hi := 14314) c0542_checks hc

private def c0543_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk166.w3, B699LowIndex.I11TerminalData.Chunk166.w4, B699LowIndex.I11TerminalData.Chunk166.w5, B699LowIndex.I11TerminalData.Chunk166.w6, B699LowIndex.I11TerminalData.Chunk166.w7]
private def c0543_intervals : List NatInterval := [(14337, 14337), (14338, 14338), (14339, 14339), (14340, 14340), (14341, 14346)]

private theorem c0543_intervals_eq :
    witnessIntervals c0543_witnesses = c0543_intervals := by
  rfl

private theorem c0543_checks : witnessesCheck c0543_witnesses = true := by
  simp only [witnessesCheck, c0543_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk166.w3_check, B699LowIndex.I11TerminalData.Chunk166.w4_check, B699LowIndex.I11TerminalData.Chunk166.w5_check, B699LowIndex.I11TerminalData.Chunk166.w6_check, B699LowIndex.I11TerminalData.Chunk166.w7_check, Bool.and_self]

private theorem c0543_cover : coverCheck 14337 14346 c0543_intervals = true := by
  decide

private theorem c0543_sound : IntervalSound (14337, 14346) := by
  have hc : coverCheck 14337 14346 (witnessIntervals c0543_witnesses) = true := by
    rw [c0543_intervals_eq]
    exact c0543_cover
  exact interval_sound_of_witness_checks (witnesses := c0543_witnesses)
    (lo := 14337) (hi := 14346) c0543_checks hc

def intervals : List NatInterval := [(13696, 13699), (13728, 13730), (13760, 13760), (13769, 13779), (13824, 13828), (13856, 13861), (13875, 13877), (13920, 13926), (14014, 14024), (14112, 14122), (14176, 14185), (14210, 14218), (14250, 14250), (14256, 14266), (14308, 14314), (14337, 14346)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (13696, 13699)) (intervals := [(13728, 13730), (13760, 13760), (13769, 13779), (13824, 13828), (13856, 13861), (13875, 13877), (13920, 13926), (14014, 14024), (14112, 14122), (14176, 14185), (14210, 14218), (14250, 14250), (14256, 14266), (14308, 14314), (14337, 14346)]) c0528_sound (intervals_sound_cons (I := (13728, 13730)) (intervals := [(13760, 13760), (13769, 13779), (13824, 13828), (13856, 13861), (13875, 13877), (13920, 13926), (14014, 14024), (14112, 14122), (14176, 14185), (14210, 14218), (14250, 14250), (14256, 14266), (14308, 14314), (14337, 14346)]) c0529_sound (intervals_sound_cons (I := (13760, 13760)) (intervals := [(13769, 13779), (13824, 13828), (13856, 13861), (13875, 13877), (13920, 13926), (14014, 14024), (14112, 14122), (14176, 14185), (14210, 14218), (14250, 14250), (14256, 14266), (14308, 14314), (14337, 14346)]) c0530_sound (intervals_sound_cons (I := (13769, 13779)) (intervals := [(13824, 13828), (13856, 13861), (13875, 13877), (13920, 13926), (14014, 14024), (14112, 14122), (14176, 14185), (14210, 14218), (14250, 14250), (14256, 14266), (14308, 14314), (14337, 14346)]) c0531_sound (intervals_sound_cons (I := (13824, 13828)) (intervals := [(13856, 13861), (13875, 13877), (13920, 13926), (14014, 14024), (14112, 14122), (14176, 14185), (14210, 14218), (14250, 14250), (14256, 14266), (14308, 14314), (14337, 14346)]) c0532_sound (intervals_sound_cons (I := (13856, 13861)) (intervals := [(13875, 13877), (13920, 13926), (14014, 14024), (14112, 14122), (14176, 14185), (14210, 14218), (14250, 14250), (14256, 14266), (14308, 14314), (14337, 14346)]) c0533_sound (intervals_sound_cons (I := (13875, 13877)) (intervals := [(13920, 13926), (14014, 14024), (14112, 14122), (14176, 14185), (14210, 14218), (14250, 14250), (14256, 14266), (14308, 14314), (14337, 14346)]) c0534_sound (intervals_sound_cons (I := (13920, 13926)) (intervals := [(14014, 14024), (14112, 14122), (14176, 14185), (14210, 14218), (14250, 14250), (14256, 14266), (14308, 14314), (14337, 14346)]) c0535_sound (intervals_sound_cons (I := (14014, 14024)) (intervals := [(14112, 14122), (14176, 14185), (14210, 14218), (14250, 14250), (14256, 14266), (14308, 14314), (14337, 14346)]) c0536_sound (intervals_sound_cons (I := (14112, 14122)) (intervals := [(14176, 14185), (14210, 14218), (14250, 14250), (14256, 14266), (14308, 14314), (14337, 14346)]) c0537_sound (intervals_sound_cons (I := (14176, 14185)) (intervals := [(14210, 14218), (14250, 14250), (14256, 14266), (14308, 14314), (14337, 14346)]) c0538_sound (intervals_sound_cons (I := (14210, 14218)) (intervals := [(14250, 14250), (14256, 14266), (14308, 14314), (14337, 14346)]) c0539_sound (intervals_sound_cons (I := (14250, 14250)) (intervals := [(14256, 14266), (14308, 14314), (14337, 14346)]) c0540_sound (intervals_sound_cons (I := (14256, 14266)) (intervals := [(14308, 14314), (14337, 14346)]) c0541_sound (intervals_sound_cons (I := (14308, 14314)) (intervals := [(14337, 14346)]) c0542_sound (intervals_sound_cons (I := (14337, 14346)) (intervals := []) c0543_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G033
