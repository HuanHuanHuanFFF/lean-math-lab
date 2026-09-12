import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk190
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk191
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk192

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G043
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0688_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk190.w7]
private def c0688_intervals : List NatInterval := [(22250, 22256)]

private theorem c0688_intervals_eq :
    witnessIntervals c0688_witnesses = c0688_intervals := by
  rfl

private theorem c0688_checks : witnessesCheck c0688_witnesses = true := by
  simp only [witnessesCheck, c0688_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk190.w7_check, Bool.and_self]

private theorem c0688_cover : coverCheck 22250 22256 c0688_intervals = true := by
  decide

private theorem c0688_sound : IntervalSound (22250, 22256) := by
  have hc : coverCheck 22250 22256 (witnessIntervals c0688_witnesses) = true := by
    rw [c0688_intervals_eq]
    exact c0688_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0688_witnesses)
    (lo := 22250) (hi := 22256) c0688_checks hc

private def c0689_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk190.w8]
private def c0689_intervals : List NatInterval := [(22275, 22282)]

private theorem c0689_intervals_eq :
    witnessIntervals c0689_witnesses = c0689_intervals := by
  rfl

private theorem c0689_checks : witnessesCheck c0689_witnesses = true := by
  simp only [witnessesCheck, c0689_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk190.w8_check, Bool.and_self]

private theorem c0689_cover : coverCheck 22275 22282 c0689_intervals = true := by
  decide

private theorem c0689_sound : IntervalSound (22275, 22282) := by
  have hc : coverCheck 22275 22282 (witnessIntervals c0689_witnesses) = true := by
    rw [c0689_intervals_eq]
    exact c0689_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0689_witnesses)
    (lo := 22275) (hi := 22282) c0689_checks hc

private def c0690_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk190.w9]
private def c0690_intervals : List NatInterval := [(22344, 22346)]

private theorem c0690_intervals_eq :
    witnessIntervals c0690_witnesses = c0690_intervals := by
  rfl

private theorem c0690_checks : witnessesCheck c0690_witnesses = true := by
  simp only [witnessesCheck, c0690_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk190.w9_check, Bool.and_self]

private theorem c0690_cover : coverCheck 22344 22346 c0690_intervals = true := by
  decide

private theorem c0690_sound : IntervalSound (22344, 22346) := by
  have hc : coverCheck 22344 22346 (witnessIntervals c0690_witnesses) = true := by
    rw [c0690_intervals_eq]
    exact c0690_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0690_witnesses)
    (lo := 22344) (hi := 22346) c0690_checks hc

private def c0691_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk190.w10]
private def c0691_intervals : List NatInterval := [(22400, 22403)]

private theorem c0691_intervals_eq :
    witnessIntervals c0691_witnesses = c0691_intervals := by
  rfl

private theorem c0691_checks : witnessesCheck c0691_witnesses = true := by
  simp only [witnessesCheck, c0691_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk190.w10_check, Bool.and_self]

private theorem c0691_cover : coverCheck 22400 22403 c0691_intervals = true := by
  decide

private theorem c0691_sound : IntervalSound (22400, 22403) := by
  have hc : coverCheck 22400 22403 (witnessIntervals c0691_witnesses) = true := by
    rw [c0691_intervals_eq]
    exact c0691_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0691_witnesses)
    (lo := 22400) (hi := 22403) c0691_checks hc

private def c0692_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk190.w11]
private def c0692_intervals : List NatInterval := [(22442, 22447)]

private theorem c0692_intervals_eq :
    witnessIntervals c0692_witnesses = c0692_intervals := by
  rfl

private theorem c0692_checks : witnessesCheck c0692_witnesses = true := by
  simp only [witnessesCheck, c0692_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk190.w11_check, Bool.and_self]

private theorem c0692_cover : coverCheck 22442 22447 c0692_intervals = true := by
  decide

private theorem c0692_sound : IntervalSound (22442, 22447) := by
  have hc : coverCheck 22442 22447 (witnessIntervals c0692_witnesses) = true := by
    rw [c0692_intervals_eq]
    exact c0692_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0692_witnesses)
    (lo := 22442) (hi := 22447) c0692_checks hc

private def c0693_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk190.w12, B699LowIndex.I11TerminalData.Chunk190.w13]
private def c0693_intervals : List NatInterval := [(22500, 22500), (22501, 22501)]

private theorem c0693_intervals_eq :
    witnessIntervals c0693_witnesses = c0693_intervals := by
  rfl

private theorem c0693_checks : witnessesCheck c0693_witnesses = true := by
  simp only [witnessesCheck, c0693_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk190.w12_check, B699LowIndex.I11TerminalData.Chunk190.w13_check, Bool.and_self]

private theorem c0693_cover : coverCheck 22500 22501 c0693_intervals = true := by
  decide

private theorem c0693_sound : IntervalSound (22500, 22501) := by
  have hc : coverCheck 22500 22501 (witnessIntervals c0693_witnesses) = true := by
    rw [c0693_intervals_eq]
    exact c0693_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0693_witnesses)
    (lo := 22500) (hi := 22501) c0693_checks hc

private def c0694_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk190.w14]
private def c0694_intervals : List NatInterval := [(22528, 22528)]

private theorem c0694_intervals_eq :
    witnessIntervals c0694_witnesses = c0694_intervals := by
  rfl

private theorem c0694_checks : witnessesCheck c0694_witnesses = true := by
  simp only [witnessesCheck, c0694_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk190.w14_check, Bool.and_self]

private theorem c0694_cover : coverCheck 22528 22528 c0694_intervals = true := by
  decide

private theorem c0694_sound : IntervalSound (22528, 22528) := by
  have hc : coverCheck 22528 22528 (witnessIntervals c0694_witnesses) = true := by
    rw [c0694_intervals_eq]
    exact c0694_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0694_witnesses)
    (lo := 22528) (hi := 22528) c0694_checks hc

private def c0695_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk190.w15, B699LowIndex.I11TerminalData.Chunk191.w0, B699LowIndex.I11TerminalData.Chunk191.w1, B699LowIndex.I11TerminalData.Chunk191.w2, B699LowIndex.I11TerminalData.Chunk191.w3, B699LowIndex.I11TerminalData.Chunk191.w4, B699LowIndex.I11TerminalData.Chunk191.w5, B699LowIndex.I11TerminalData.Chunk191.w6, B699LowIndex.I11TerminalData.Chunk191.w7, B699LowIndex.I11TerminalData.Chunk191.w8, B699LowIndex.I11TerminalData.Chunk191.w9]
private def c0695_intervals : List NatInterval := [(22592, 22592), (22593, 22593), (22594, 22594), (22595, 22595), (22596, 22596), (22597, 22597), (22598, 22598), (22599, 22599), (22600, 22600), (22601, 22601), (22602, 22602)]

private theorem c0695_intervals_eq :
    witnessIntervals c0695_witnesses = c0695_intervals := by
  rfl

private theorem c0695_checks : witnessesCheck c0695_witnesses = true := by
  simp only [witnessesCheck, c0695_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk190.w15_check, B699LowIndex.I11TerminalData.Chunk191.w0_check, B699LowIndex.I11TerminalData.Chunk191.w1_check, B699LowIndex.I11TerminalData.Chunk191.w2_check, B699LowIndex.I11TerminalData.Chunk191.w3_check, B699LowIndex.I11TerminalData.Chunk191.w4_check, B699LowIndex.I11TerminalData.Chunk191.w5_check, B699LowIndex.I11TerminalData.Chunk191.w6_check, B699LowIndex.I11TerminalData.Chunk191.w7_check, B699LowIndex.I11TerminalData.Chunk191.w8_check, B699LowIndex.I11TerminalData.Chunk191.w9_check, Bool.and_self]

private theorem c0695_cover : coverCheck 22592 22602 c0695_intervals = true := by
  decide

private theorem c0695_sound : IntervalSound (22592, 22602) := by
  have hc : coverCheck 22592 22602 (witnessIntervals c0695_witnesses) = true := by
    rw [c0695_intervals_eq]
    exact c0695_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0695_witnesses)
    (lo := 22592) (hi := 22602) c0695_checks hc

private def c0696_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk191.w10, B699LowIndex.I11TerminalData.Chunk191.w11]
private def c0696_intervals : List NatInterval := [(22687, 22689), (22690, 22690)]

private theorem c0696_intervals_eq :
    witnessIntervals c0696_witnesses = c0696_intervals := by
  rfl

private theorem c0696_checks : witnessesCheck c0696_witnesses = true := by
  simp only [witnessesCheck, c0696_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk191.w10_check, B699LowIndex.I11TerminalData.Chunk191.w11_check, Bool.and_self]

private theorem c0696_cover : coverCheck 22687 22690 c0696_intervals = true := by
  decide

private theorem c0696_sound : IntervalSound (22687, 22690) := by
  have hc : coverCheck 22687 22690 (witnessIntervals c0696_witnesses) = true := by
    rw [c0696_intervals_eq]
    exact c0696_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0696_witnesses)
    (lo := 22687) (hi := 22690) c0696_checks hc

private def c0697_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk191.w12, B699LowIndex.I11TerminalData.Chunk191.w13]
private def c0697_intervals : List NatInterval := [(22785, 22793), (22794, 22794)]

private theorem c0697_intervals_eq :
    witnessIntervals c0697_witnesses = c0697_intervals := by
  rfl

private theorem c0697_checks : witnessesCheck c0697_witnesses = true := by
  simp only [witnessesCheck, c0697_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk191.w12_check, B699LowIndex.I11TerminalData.Chunk191.w13_check, Bool.and_self]

private theorem c0697_cover : coverCheck 22785 22794 c0697_intervals = true := by
  decide

private theorem c0697_sound : IntervalSound (22785, 22794) := by
  have hc : coverCheck 22785 22794 (witnessIntervals c0697_witnesses) = true := by
    rw [c0697_intervals_eq]
    exact c0697_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0697_witnesses)
    (lo := 22785) (hi := 22794) c0697_checks hc

private def c0698_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk191.w14, B699LowIndex.I11TerminalData.Chunk191.w15, B699LowIndex.I11TerminalData.Chunk192.w0]
private def c0698_intervals : List NatInterval := [(22842, 22842), (22843, 22843), (22844, 22844)]

private theorem c0698_intervals_eq :
    witnessIntervals c0698_witnesses = c0698_intervals := by
  rfl

private theorem c0698_checks : witnessesCheck c0698_witnesses = true := by
  simp only [witnessesCheck, c0698_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk191.w14_check, B699LowIndex.I11TerminalData.Chunk191.w15_check, B699LowIndex.I11TerminalData.Chunk192.w0_check, Bool.and_self]

private theorem c0698_cover : coverCheck 22842 22844 c0698_intervals = true := by
  decide

private theorem c0698_sound : IntervalSound (22842, 22844) := by
  have hc : coverCheck 22842 22844 (witnessIntervals c0698_witnesses) = true := by
    rw [c0698_intervals_eq]
    exact c0698_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0698_witnesses)
    (lo := 22842) (hi := 22844) c0698_checks hc

private def c0699_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk192.w1, B699LowIndex.I11TerminalData.Chunk192.w2, B699LowIndex.I11TerminalData.Chunk192.w3, B699LowIndex.I11TerminalData.Chunk192.w4, B699LowIndex.I11TerminalData.Chunk192.w5]
private def c0699_intervals : List NatInterval := [(22848, 22848), (22849, 22849), (22850, 22850), (22851, 22851), (22852, 22852)]

private theorem c0699_intervals_eq :
    witnessIntervals c0699_witnesses = c0699_intervals := by
  rfl

private theorem c0699_checks : witnessesCheck c0699_witnesses = true := by
  simp only [witnessesCheck, c0699_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk192.w1_check, B699LowIndex.I11TerminalData.Chunk192.w2_check, B699LowIndex.I11TerminalData.Chunk192.w3_check, B699LowIndex.I11TerminalData.Chunk192.w4_check, B699LowIndex.I11TerminalData.Chunk192.w5_check, Bool.and_self]

private theorem c0699_cover : coverCheck 22848 22852 c0699_intervals = true := by
  decide

private theorem c0699_sound : IntervalSound (22848, 22852) := by
  have hc : coverCheck 22848 22852 (witnessIntervals c0699_witnesses) = true := by
    rw [c0699_intervals_eq]
    exact c0699_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0699_witnesses)
    (lo := 22848) (hi := 22852) c0699_checks hc

private def c0700_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk192.w6]
private def c0700_intervals : List NatInterval := [(22883, 22885)]

private theorem c0700_intervals_eq :
    witnessIntervals c0700_witnesses = c0700_intervals := by
  rfl

private theorem c0700_checks : witnessesCheck c0700_witnesses = true := by
  simp only [witnessesCheck, c0700_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk192.w6_check, Bool.and_self]

private theorem c0700_cover : coverCheck 22883 22885 c0700_intervals = true := by
  decide

private theorem c0700_sound : IntervalSound (22883, 22885) := by
  have hc : coverCheck 22883 22885 (witnessIntervals c0700_witnesses) = true := by
    rw [c0700_intervals_eq]
    exact c0700_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0700_witnesses)
    (lo := 22883) (hi := 22885) c0700_checks hc

private def c0701_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk192.w7, B699LowIndex.I11TerminalData.Chunk192.w8]
private def c0701_intervals : List NatInterval := [(22932, 22932), (22933, 22933)]

private theorem c0701_intervals_eq :
    witnessIntervals c0701_witnesses = c0701_intervals := by
  rfl

private theorem c0701_checks : witnessesCheck c0701_witnesses = true := by
  simp only [witnessesCheck, c0701_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk192.w7_check, B699LowIndex.I11TerminalData.Chunk192.w8_check, Bool.and_self]

private theorem c0701_cover : coverCheck 22932 22933 c0701_intervals = true := by
  decide

private theorem c0701_sound : IntervalSound (22932, 22933) := by
  have hc : coverCheck 22932 22933 (witnessIntervals c0701_witnesses) = true := by
    rw [c0701_intervals_eq]
    exact c0701_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0701_witnesses)
    (lo := 22932) (hi := 22933) c0701_checks hc

private def c0702_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk192.w9, B699LowIndex.I11TerminalData.Chunk192.w10, B699LowIndex.I11TerminalData.Chunk192.w11, B699LowIndex.I11TerminalData.Chunk192.w12]
private def c0702_intervals : List NatInterval := [(22981, 22983), (22984, 22984), (22985, 22985), (22986, 22986)]

private theorem c0702_intervals_eq :
    witnessIntervals c0702_witnesses = c0702_intervals := by
  rfl

private theorem c0702_checks : witnessesCheck c0702_witnesses = true := by
  simp only [witnessesCheck, c0702_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk192.w9_check, B699LowIndex.I11TerminalData.Chunk192.w10_check, B699LowIndex.I11TerminalData.Chunk192.w11_check, B699LowIndex.I11TerminalData.Chunk192.w12_check, Bool.and_self]

private theorem c0702_cover : coverCheck 22981 22986 c0702_intervals = true := by
  decide

private theorem c0702_sound : IntervalSound (22981, 22986) := by
  have hc : coverCheck 22981 22986 (witnessIntervals c0702_witnesses) = true := by
    rw [c0702_intervals_eq]
    exact c0702_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0702_witnesses)
    (lo := 22981) (hi := 22986) c0702_checks hc

private def c0703_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk192.w13]
private def c0703_intervals : List NatInterval := [(23004, 23010)]

private theorem c0703_intervals_eq :
    witnessIntervals c0703_witnesses = c0703_intervals := by
  rfl

private theorem c0703_checks : witnessesCheck c0703_witnesses = true := by
  simp only [witnessesCheck, c0703_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk192.w13_check, Bool.and_self]

private theorem c0703_cover : coverCheck 23004 23010 c0703_intervals = true := by
  decide

private theorem c0703_sound : IntervalSound (23004, 23010) := by
  have hc : coverCheck 23004 23010 (witnessIntervals c0703_witnesses) = true := by
    rw [c0703_intervals_eq]
    exact c0703_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0703_witnesses)
    (lo := 23004) (hi := 23010) c0703_checks hc

def intervals : List NatInterval := [(22250, 22256), (22275, 22282), (22344, 22346), (22400, 22403), (22442, 22447), (22500, 22501), (22528, 22528), (22592, 22602), (22687, 22690), (22785, 22794), (22842, 22844), (22848, 22852), (22883, 22885), (22932, 22933), (22981, 22986), (23004, 23010)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (22250, 22256)) (intervals := [(22275, 22282), (22344, 22346), (22400, 22403), (22442, 22447), (22500, 22501), (22528, 22528), (22592, 22602), (22687, 22690), (22785, 22794), (22842, 22844), (22848, 22852), (22883, 22885), (22932, 22933), (22981, 22986), (23004, 23010)]) c0688_sound (intervals_sound_cons (I := (22275, 22282)) (intervals := [(22344, 22346), (22400, 22403), (22442, 22447), (22500, 22501), (22528, 22528), (22592, 22602), (22687, 22690), (22785, 22794), (22842, 22844), (22848, 22852), (22883, 22885), (22932, 22933), (22981, 22986), (23004, 23010)]) c0689_sound (intervals_sound_cons (I := (22344, 22346)) (intervals := [(22400, 22403), (22442, 22447), (22500, 22501), (22528, 22528), (22592, 22602), (22687, 22690), (22785, 22794), (22842, 22844), (22848, 22852), (22883, 22885), (22932, 22933), (22981, 22986), (23004, 23010)]) c0690_sound (intervals_sound_cons (I := (22400, 22403)) (intervals := [(22442, 22447), (22500, 22501), (22528, 22528), (22592, 22602), (22687, 22690), (22785, 22794), (22842, 22844), (22848, 22852), (22883, 22885), (22932, 22933), (22981, 22986), (23004, 23010)]) c0691_sound (intervals_sound_cons (I := (22442, 22447)) (intervals := [(22500, 22501), (22528, 22528), (22592, 22602), (22687, 22690), (22785, 22794), (22842, 22844), (22848, 22852), (22883, 22885), (22932, 22933), (22981, 22986), (23004, 23010)]) c0692_sound (intervals_sound_cons (I := (22500, 22501)) (intervals := [(22528, 22528), (22592, 22602), (22687, 22690), (22785, 22794), (22842, 22844), (22848, 22852), (22883, 22885), (22932, 22933), (22981, 22986), (23004, 23010)]) c0693_sound (intervals_sound_cons (I := (22528, 22528)) (intervals := [(22592, 22602), (22687, 22690), (22785, 22794), (22842, 22844), (22848, 22852), (22883, 22885), (22932, 22933), (22981, 22986), (23004, 23010)]) c0694_sound (intervals_sound_cons (I := (22592, 22602)) (intervals := [(22687, 22690), (22785, 22794), (22842, 22844), (22848, 22852), (22883, 22885), (22932, 22933), (22981, 22986), (23004, 23010)]) c0695_sound (intervals_sound_cons (I := (22687, 22690)) (intervals := [(22785, 22794), (22842, 22844), (22848, 22852), (22883, 22885), (22932, 22933), (22981, 22986), (23004, 23010)]) c0696_sound (intervals_sound_cons (I := (22785, 22794)) (intervals := [(22842, 22844), (22848, 22852), (22883, 22885), (22932, 22933), (22981, 22986), (23004, 23010)]) c0697_sound (intervals_sound_cons (I := (22842, 22844)) (intervals := [(22848, 22852), (22883, 22885), (22932, 22933), (22981, 22986), (23004, 23010)]) c0698_sound (intervals_sound_cons (I := (22848, 22852)) (intervals := [(22883, 22885), (22932, 22933), (22981, 22986), (23004, 23010)]) c0699_sound (intervals_sound_cons (I := (22883, 22885)) (intervals := [(22932, 22933), (22981, 22986), (23004, 23010)]) c0700_sound (intervals_sound_cons (I := (22932, 22933)) (intervals := [(22981, 22986), (23004, 23010)]) c0701_sound (intervals_sound_cons (I := (22981, 22986)) (intervals := [(23004, 23010)]) c0702_sound (intervals_sound_cons (I := (23004, 23010)) (intervals := []) c0703_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G043
