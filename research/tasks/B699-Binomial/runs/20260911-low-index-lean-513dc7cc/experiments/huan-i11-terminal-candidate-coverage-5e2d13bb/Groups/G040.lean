import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk182
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk183
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk184
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk185

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G040
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0640_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk182.w7, B699LowIndex.I11TerminalData.Chunk182.w8]
private def c0640_intervals : List NatInterval := [(19456, 19457), (19458, 19463)]

private theorem c0640_intervals_eq :
    witnessIntervals c0640_witnesses = c0640_intervals := by
  rfl

private theorem c0640_checks : witnessesCheck c0640_witnesses = true := by
  simp only [witnessesCheck, c0640_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk182.w7_check, B699LowIndex.I11TerminalData.Chunk182.w8_check, Bool.and_self]

private theorem c0640_cover : coverCheck 19456 19463 c0640_intervals = true := by
  decide

private theorem c0640_sound : IntervalSound (19456, 19463) := by
  have hc : coverCheck 19456 19463 (witnessIntervals c0640_witnesses) = true := by
    rw [c0640_intervals_eq]
    exact c0640_cover
  exact interval_sound_of_witness_checks (witnesses := c0640_witnesses)
    (lo := 19456) (hi := 19463) c0640_checks hc

private def c0641_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk182.w9]
private def c0641_intervals : List NatInterval := [(19502, 19510)]

private theorem c0641_intervals_eq :
    witnessIntervals c0641_witnesses = c0641_intervals := by
  rfl

private theorem c0641_checks : witnessesCheck c0641_witnesses = true := by
  simp only [witnessesCheck, c0641_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk182.w9_check, Bool.and_self]

private theorem c0641_cover : coverCheck 19502 19510 c0641_intervals = true := by
  decide

private theorem c0641_sound : IntervalSound (19502, 19510) := by
  have hc : coverCheck 19502 19510 (witnessIntervals c0641_witnesses) = true := by
    rw [c0641_intervals_eq]
    exact c0641_cover
  exact interval_sound_of_witness_checks (witnesses := c0641_witnesses)
    (lo := 19502) (hi := 19510) c0641_checks hc

private def c0642_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk182.w10, B699LowIndex.I11TerminalData.Chunk182.w11, B699LowIndex.I11TerminalData.Chunk182.w12, B699LowIndex.I11TerminalData.Chunk182.w13, B699LowIndex.I11TerminalData.Chunk182.w14, B699LowIndex.I11TerminalData.Chunk182.w15, B699LowIndex.I11TerminalData.Chunk183.w0, B699LowIndex.I11TerminalData.Chunk183.w1, B699LowIndex.I11TerminalData.Chunk183.w2, B699LowIndex.I11TerminalData.Chunk183.w3]
private def c0642_intervals : List NatInterval := [(19521, 19521), (19522, 19522), (19523, 19523), (19524, 19524), (19525, 19525), (19526, 19526), (19527, 19527), (19528, 19528), (19529, 19529), (19530, 19530)]

private theorem c0642_intervals_eq :
    witnessIntervals c0642_witnesses = c0642_intervals := by
  rfl

private theorem c0642_checks : witnessesCheck c0642_witnesses = true := by
  simp only [witnessesCheck, c0642_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk182.w10_check, B699LowIndex.I11TerminalData.Chunk182.w11_check, B699LowIndex.I11TerminalData.Chunk182.w12_check, B699LowIndex.I11TerminalData.Chunk182.w13_check, B699LowIndex.I11TerminalData.Chunk182.w14_check, B699LowIndex.I11TerminalData.Chunk182.w15_check, B699LowIndex.I11TerminalData.Chunk183.w0_check, B699LowIndex.I11TerminalData.Chunk183.w1_check, B699LowIndex.I11TerminalData.Chunk183.w2_check, B699LowIndex.I11TerminalData.Chunk183.w3_check, Bool.and_self]

private theorem c0642_cover : coverCheck 19521 19530 c0642_intervals = true := by
  decide

private theorem c0642_sound : IntervalSound (19521, 19530) := by
  have hc : coverCheck 19521 19530 (witnessIntervals c0642_witnesses) = true := by
    rw [c0642_intervals_eq]
    exact c0642_cover
  exact interval_sound_of_witness_checks (witnesses := c0642_witnesses)
    (lo := 19521) (hi := 19530) c0642_checks hc

private def c0643_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk183.w4, B699LowIndex.I11TerminalData.Chunk183.w5]
private def c0643_intervals : List NatInterval := [(19602, 19607), (19608, 19610)]

private theorem c0643_intervals_eq :
    witnessIntervals c0643_witnesses = c0643_intervals := by
  rfl

private theorem c0643_checks : witnessesCheck c0643_witnesses = true := by
  simp only [witnessesCheck, c0643_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk183.w4_check, B699LowIndex.I11TerminalData.Chunk183.w5_check, Bool.and_self]

private theorem c0643_cover : coverCheck 19602 19610 c0643_intervals = true := by
  decide

private theorem c0643_sound : IntervalSound (19602, 19610) := by
  have hc : coverCheck 19602 19610 (witnessIntervals c0643_witnesses) = true := by
    rw [c0643_intervals_eq]
    exact c0643_cover
  exact interval_sound_of_witness_checks (witnesses := c0643_witnesses)
    (lo := 19602) (hi := 19610) c0643_checks hc

private def c0644_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk183.w6, B699LowIndex.I11TerminalData.Chunk183.w7, B699LowIndex.I11TerminalData.Chunk183.w8, B699LowIndex.I11TerminalData.Chunk183.w9, B699LowIndex.I11TerminalData.Chunk183.w10, B699LowIndex.I11TerminalData.Chunk183.w11, B699LowIndex.I11TerminalData.Chunk183.w12, B699LowIndex.I11TerminalData.Chunk183.w13, B699LowIndex.I11TerminalData.Chunk183.w14, B699LowIndex.I11TerminalData.Chunk183.w15]
private def c0644_intervals : List NatInterval := [(19649, 19649), (19650, 19650), (19651, 19651), (19652, 19652), (19653, 19653), (19654, 19654), (19655, 19655), (19656, 19656), (19657, 19657), (19658, 19658)]

private theorem c0644_intervals_eq :
    witnessIntervals c0644_witnesses = c0644_intervals := by
  rfl

private theorem c0644_checks : witnessesCheck c0644_witnesses = true := by
  simp only [witnessesCheck, c0644_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk183.w6_check, B699LowIndex.I11TerminalData.Chunk183.w7_check, B699LowIndex.I11TerminalData.Chunk183.w8_check, B699LowIndex.I11TerminalData.Chunk183.w9_check, B699LowIndex.I11TerminalData.Chunk183.w10_check, B699LowIndex.I11TerminalData.Chunk183.w11_check, B699LowIndex.I11TerminalData.Chunk183.w12_check, B699LowIndex.I11TerminalData.Chunk183.w13_check, B699LowIndex.I11TerminalData.Chunk183.w14_check, B699LowIndex.I11TerminalData.Chunk183.w15_check, Bool.and_self]

private theorem c0644_cover : coverCheck 19649 19658 c0644_intervals = true := by
  decide

private theorem c0644_sound : IntervalSound (19649, 19658) := by
  have hc : coverCheck 19649 19658 (witnessIntervals c0644_witnesses) = true := by
    rw [c0644_intervals_eq]
    exact c0644_cover
  exact interval_sound_of_witness_checks (witnesses := c0644_witnesses)
    (lo := 19649) (hi := 19658) c0644_checks hc

private def c0645_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk184.w0, B699LowIndex.I11TerminalData.Chunk184.w1]
private def c0645_intervals : List NatInterval := [(19750, 19750), (19751, 19757)]

private theorem c0645_intervals_eq :
    witnessIntervals c0645_witnesses = c0645_intervals := by
  rfl

private theorem c0645_checks : witnessesCheck c0645_witnesses = true := by
  simp only [witnessesCheck, c0645_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk184.w0_check, B699LowIndex.I11TerminalData.Chunk184.w1_check, Bool.and_self]

private theorem c0645_cover : coverCheck 19750 19757 c0645_intervals = true := by
  decide

private theorem c0645_sound : IntervalSound (19750, 19757) := by
  have hc : coverCheck 19750 19757 (witnessIntervals c0645_witnesses) = true := by
    rw [c0645_intervals_eq]
    exact c0645_cover
  exact interval_sound_of_witness_checks (witnesses := c0645_witnesses)
    (lo := 19750) (hi := 19757) c0645_checks hc

private def c0646_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk184.w2, B699LowIndex.I11TerminalData.Chunk184.w3]
private def c0646_intervals : List NatInterval := [(19845, 19853), (19854, 19855)]

private theorem c0646_intervals_eq :
    witnessIntervals c0646_witnesses = c0646_intervals := by
  rfl

private theorem c0646_checks : witnessesCheck c0646_witnesses = true := by
  simp only [witnessesCheck, c0646_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk184.w2_check, B699LowIndex.I11TerminalData.Chunk184.w3_check, Bool.and_self]

private theorem c0646_cover : coverCheck 19845 19855 c0646_intervals = true := by
  decide

private theorem c0646_sound : IntervalSound (19845, 19855) := by
  have hc : coverCheck 19845 19855 (witnessIntervals c0646_witnesses) = true := by
    rw [c0646_intervals_eq]
    exact c0646_cover
  exact interval_sound_of_witness_checks (witnesses := c0646_witnesses)
    (lo := 19845) (hi := 19855) c0646_checks hc

private def c0647_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk184.w4]
private def c0647_intervals : List NatInterval := [(19904, 19904)]

private theorem c0647_intervals_eq :
    witnessIntervals c0647_witnesses = c0647_intervals := by
  rfl

private theorem c0647_checks : witnessesCheck c0647_witnesses = true := by
  simp only [witnessesCheck, c0647_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk184.w4_check, Bool.and_self]

private theorem c0647_cover : coverCheck 19904 19904 c0647_intervals = true := by
  decide

private theorem c0647_sound : IntervalSound (19904, 19904) := by
  have hc : coverCheck 19904 19904 (witnessIntervals c0647_witnesses) = true := by
    rw [c0647_intervals_eq]
    exact c0647_cover
  exact interval_sound_of_witness_checks (witnesses := c0647_witnesses)
    (lo := 19904) (hi := 19904) c0647_checks hc

private def c0648_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk184.w5]
private def c0648_intervals : List NatInterval := [(20000, 20002)]

private theorem c0648_intervals_eq :
    witnessIntervals c0648_witnesses = c0648_intervals := by
  rfl

private theorem c0648_checks : witnessesCheck c0648_witnesses = true := by
  simp only [witnessesCheck, c0648_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk184.w5_check, Bool.and_self]

private theorem c0648_cover : coverCheck 20000 20002 c0648_intervals = true := by
  decide

private theorem c0648_sound : IntervalSound (20000, 20002) := by
  have hc : coverCheck 20000 20002 (witnessIntervals c0648_witnesses) = true := by
    rw [c0648_intervals_eq]
    exact c0648_cover
  exact interval_sound_of_witness_checks (witnesses := c0648_witnesses)
    (lo := 20000) (hi := 20002) c0648_checks hc

private def c0649_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk184.w6, B699LowIndex.I11TerminalData.Chunk184.w7, B699LowIndex.I11TerminalData.Chunk184.w8, B699LowIndex.I11TerminalData.Chunk184.w9]
private def c0649_intervals : List NatInterval := [(20007, 20007), (20008, 20008), (20009, 20009), (20010, 20010)]

private theorem c0649_intervals_eq :
    witnessIntervals c0649_witnesses = c0649_intervals := by
  rfl

private theorem c0649_checks : witnessesCheck c0649_witnesses = true := by
  simp only [witnessesCheck, c0649_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk184.w6_check, B699LowIndex.I11TerminalData.Chunk184.w7_check, B699LowIndex.I11TerminalData.Chunk184.w8_check, B699LowIndex.I11TerminalData.Chunk184.w9_check, Bool.and_self]

private theorem c0649_cover : coverCheck 20007 20010 c0649_intervals = true := by
  decide

private theorem c0649_sound : IntervalSound (20007, 20010) := by
  have hc : coverCheck 20007 20010 (witnessIntervals c0649_witnesses) = true := by
    rw [c0649_intervals_eq]
    exact c0649_cover
  exact interval_sound_of_witness_checks (witnesses := c0649_witnesses)
    (lo := 20007) (hi := 20010) c0649_checks hc

private def c0650_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk184.w10, B699LowIndex.I11TerminalData.Chunk184.w11]
private def c0650_intervals : List NatInterval := [(20041, 20041), (20042, 20042)]

private theorem c0650_intervals_eq :
    witnessIntervals c0650_witnesses = c0650_intervals := by
  rfl

private theorem c0650_checks : witnessesCheck c0650_witnesses = true := by
  simp only [witnessesCheck, c0650_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk184.w10_check, B699LowIndex.I11TerminalData.Chunk184.w11_check, Bool.and_self]

private theorem c0650_cover : coverCheck 20041 20042 c0650_intervals = true := by
  decide

private theorem c0650_sound : IntervalSound (20041, 20042) := by
  have hc : coverCheck 20041 20042 (witnessIntervals c0650_witnesses) = true := by
    rw [c0650_intervals_eq]
    exact c0650_cover
  exact interval_sound_of_witness_checks (witnesses := c0650_witnesses)
    (lo := 20041) (hi := 20042) c0650_checks hc

private def c0651_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk184.w12, B699LowIndex.I11TerminalData.Chunk184.w13]
private def c0651_intervals : List NatInterval := [(20090, 20099), (20100, 20100)]

private theorem c0651_intervals_eq :
    witnessIntervals c0651_witnesses = c0651_intervals := by
  rfl

private theorem c0651_checks : witnessesCheck c0651_witnesses = true := by
  simp only [witnessesCheck, c0651_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk184.w12_check, B699LowIndex.I11TerminalData.Chunk184.w13_check, Bool.and_self]

private theorem c0651_cover : coverCheck 20090 20100 c0651_intervals = true := by
  decide

private theorem c0651_sound : IntervalSound (20090, 20100) := by
  have hc : coverCheck 20090 20100 (witnessIntervals c0651_witnesses) = true := by
    rw [c0651_intervals_eq]
    exact c0651_cover
  exact interval_sound_of_witness_checks (witnesses := c0651_witnesses)
    (lo := 20090) (hi := 20100) c0651_checks hc

private def c0652_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk184.w14]
private def c0652_intervals : List NatInterval := [(20169, 20170)]

private theorem c0652_intervals_eq :
    witnessIntervals c0652_witnesses = c0652_intervals := by
  rfl

private theorem c0652_checks : witnessesCheck c0652_witnesses = true := by
  simp only [witnessesCheck, c0652_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk184.w14_check, Bool.and_self]

private theorem c0652_cover : coverCheck 20169 20170 c0652_intervals = true := by
  decide

private theorem c0652_sound : IntervalSound (20169, 20170) := by
  have hc : coverCheck 20169 20170 (witnessIntervals c0652_witnesses) = true := by
    rw [c0652_intervals_eq]
    exact c0652_cover
  exact interval_sound_of_witness_checks (witnesses := c0652_witnesses)
    (lo := 20169) (hi := 20170) c0652_checks hc

private def c0653_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk184.w15, B699LowIndex.I11TerminalData.Chunk185.w0]
private def c0653_intervals : List NatInterval := [(20250, 20259), (20260, 20260)]

private theorem c0653_intervals_eq :
    witnessIntervals c0653_witnesses = c0653_intervals := by
  rfl

private theorem c0653_checks : witnessesCheck c0653_witnesses = true := by
  simp only [witnessesCheck, c0653_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk184.w15_check, B699LowIndex.I11TerminalData.Chunk185.w0_check, Bool.and_self]

private theorem c0653_cover : coverCheck 20250 20260 c0653_intervals = true := by
  decide

private theorem c0653_sound : IntervalSound (20250, 20260) := by
  have hc : coverCheck 20250 20260 (witnessIntervals c0653_witnesses) = true := by
    rw [c0653_intervals_eq]
    exact c0653_cover
  exact interval_sound_of_witness_checks (witnesses := c0653_witnesses)
    (lo := 20250) (hi := 20260) c0653_checks hc

private def c0654_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk185.w1]
private def c0654_intervals : List NatInterval := [(20288, 20296)]

private theorem c0654_intervals_eq :
    witnessIntervals c0654_witnesses = c0654_intervals := by
  rfl

private theorem c0654_checks : witnessesCheck c0654_witnesses = true := by
  simp only [witnessesCheck, c0654_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk185.w1_check, Bool.and_self]

private theorem c0654_cover : coverCheck 20288 20296 c0654_intervals = true := by
  decide

private theorem c0654_sound : IntervalSound (20288, 20296) := by
  have hc : coverCheck 20288 20296 (witnessIntervals c0654_witnesses) = true := by
    rw [c0654_intervals_eq]
    exact c0654_cover
  exact interval_sound_of_witness_checks (witnesses := c0654_witnesses)
    (lo := 20288) (hi := 20296) c0654_checks hc

private def c0655_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk185.w2]
private def c0655_intervals : List NatInterval := [(20335, 20341)]

private theorem c0655_intervals_eq :
    witnessIntervals c0655_witnesses = c0655_intervals := by
  rfl

private theorem c0655_checks : witnessesCheck c0655_witnesses = true := by
  simp only [witnessesCheck, c0655_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk185.w2_check, Bool.and_self]

private theorem c0655_cover : coverCheck 20335 20341 c0655_intervals = true := by
  decide

private theorem c0655_sound : IntervalSound (20335, 20341) := by
  have hc : coverCheck 20335 20341 (witnessIntervals c0655_witnesses) = true := by
    rw [c0655_intervals_eq]
    exact c0655_cover
  exact interval_sound_of_witness_checks (witnesses := c0655_witnesses)
    (lo := 20335) (hi := 20341) c0655_checks hc

def intervals : List NatInterval := [(19456, 19463), (19502, 19510), (19521, 19530), (19602, 19610), (19649, 19658), (19750, 19757), (19845, 19855), (19904, 19904), (20000, 20002), (20007, 20010), (20041, 20042), (20090, 20100), (20169, 20170), (20250, 20260), (20288, 20296), (20335, 20341)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (19456, 19463)) (intervals := [(19502, 19510), (19521, 19530), (19602, 19610), (19649, 19658), (19750, 19757), (19845, 19855), (19904, 19904), (20000, 20002), (20007, 20010), (20041, 20042), (20090, 20100), (20169, 20170), (20250, 20260), (20288, 20296), (20335, 20341)]) c0640_sound (intervals_sound_cons (I := (19502, 19510)) (intervals := [(19521, 19530), (19602, 19610), (19649, 19658), (19750, 19757), (19845, 19855), (19904, 19904), (20000, 20002), (20007, 20010), (20041, 20042), (20090, 20100), (20169, 20170), (20250, 20260), (20288, 20296), (20335, 20341)]) c0641_sound (intervals_sound_cons (I := (19521, 19530)) (intervals := [(19602, 19610), (19649, 19658), (19750, 19757), (19845, 19855), (19904, 19904), (20000, 20002), (20007, 20010), (20041, 20042), (20090, 20100), (20169, 20170), (20250, 20260), (20288, 20296), (20335, 20341)]) c0642_sound (intervals_sound_cons (I := (19602, 19610)) (intervals := [(19649, 19658), (19750, 19757), (19845, 19855), (19904, 19904), (20000, 20002), (20007, 20010), (20041, 20042), (20090, 20100), (20169, 20170), (20250, 20260), (20288, 20296), (20335, 20341)]) c0643_sound (intervals_sound_cons (I := (19649, 19658)) (intervals := [(19750, 19757), (19845, 19855), (19904, 19904), (20000, 20002), (20007, 20010), (20041, 20042), (20090, 20100), (20169, 20170), (20250, 20260), (20288, 20296), (20335, 20341)]) c0644_sound (intervals_sound_cons (I := (19750, 19757)) (intervals := [(19845, 19855), (19904, 19904), (20000, 20002), (20007, 20010), (20041, 20042), (20090, 20100), (20169, 20170), (20250, 20260), (20288, 20296), (20335, 20341)]) c0645_sound (intervals_sound_cons (I := (19845, 19855)) (intervals := [(19904, 19904), (20000, 20002), (20007, 20010), (20041, 20042), (20090, 20100), (20169, 20170), (20250, 20260), (20288, 20296), (20335, 20341)]) c0646_sound (intervals_sound_cons (I := (19904, 19904)) (intervals := [(20000, 20002), (20007, 20010), (20041, 20042), (20090, 20100), (20169, 20170), (20250, 20260), (20288, 20296), (20335, 20341)]) c0647_sound (intervals_sound_cons (I := (20000, 20002)) (intervals := [(20007, 20010), (20041, 20042), (20090, 20100), (20169, 20170), (20250, 20260), (20288, 20296), (20335, 20341)]) c0648_sound (intervals_sound_cons (I := (20007, 20010)) (intervals := [(20041, 20042), (20090, 20100), (20169, 20170), (20250, 20260), (20288, 20296), (20335, 20341)]) c0649_sound (intervals_sound_cons (I := (20041, 20042)) (intervals := [(20090, 20100), (20169, 20170), (20250, 20260), (20288, 20296), (20335, 20341)]) c0650_sound (intervals_sound_cons (I := (20090, 20100)) (intervals := [(20169, 20170), (20250, 20260), (20288, 20296), (20335, 20341)]) c0651_sound (intervals_sound_cons (I := (20169, 20170)) (intervals := [(20250, 20260), (20288, 20296), (20335, 20341)]) c0652_sound (intervals_sound_cons (I := (20250, 20260)) (intervals := [(20288, 20296), (20335, 20341)]) c0653_sound (intervals_sound_cons (I := (20288, 20296)) (intervals := [(20335, 20341)]) c0654_sound (intervals_sound_cons (I := (20335, 20341)) (intervals := []) c0655_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G040
