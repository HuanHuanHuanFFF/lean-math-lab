import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk207
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk208
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk209
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk210

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G049
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0784_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk207.w2]
private def c0784_intervals : List NatInterval := [(30875, 30880)]

private theorem c0784_intervals_eq :
    witnessIntervals c0784_witnesses = c0784_intervals := by
  rfl

private theorem c0784_checks : witnessesCheck c0784_witnesses = true := by
  simp only [witnessesCheck, c0784_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk207.w2_check, Bool.and_self]

private theorem c0784_cover : coverCheck 30875 30880 c0784_intervals = true := by
  decide

private theorem c0784_sound : IntervalSound (30875, 30880) := by
  have hc : coverCheck 30875 30880 (witnessIntervals c0784_witnesses) = true := by
    rw [c0784_intervals_eq]
    exact c0784_cover
  exact interval_sound_of_witness_checks (witnesses := c0784_witnesses)
    (lo := 30875) (hi := 30880) c0784_checks hc

private def c0785_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk207.w3, B699LowIndex.I11TerminalData.Chunk207.w4, B699LowIndex.I11TerminalData.Chunk207.w5, B699LowIndex.I11TerminalData.Chunk207.w6, B699LowIndex.I11TerminalData.Chunk207.w7, B699LowIndex.I11TerminalData.Chunk207.w8, B699LowIndex.I11TerminalData.Chunk207.w9, B699LowIndex.I11TerminalData.Chunk207.w10, B699LowIndex.I11TerminalData.Chunk207.w11, B699LowIndex.I11TerminalData.Chunk207.w12, B699LowIndex.I11TerminalData.Chunk207.w13]
private def c0785_intervals : List NatInterval := [(31104, 31104), (31105, 31105), (31106, 31106), (31107, 31107), (31108, 31108), (31109, 31109), (31110, 31110), (31111, 31111), (31112, 31112), (31113, 31113), (31114, 31114)]

private theorem c0785_intervals_eq :
    witnessIntervals c0785_witnesses = c0785_intervals := by
  rfl

private theorem c0785_checks : witnessesCheck c0785_witnesses = true := by
  simp only [witnessesCheck, c0785_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk207.w3_check, B699LowIndex.I11TerminalData.Chunk207.w4_check, B699LowIndex.I11TerminalData.Chunk207.w5_check, B699LowIndex.I11TerminalData.Chunk207.w6_check, B699LowIndex.I11TerminalData.Chunk207.w7_check, B699LowIndex.I11TerminalData.Chunk207.w8_check, B699LowIndex.I11TerminalData.Chunk207.w9_check, B699LowIndex.I11TerminalData.Chunk207.w10_check, B699LowIndex.I11TerminalData.Chunk207.w11_check, B699LowIndex.I11TerminalData.Chunk207.w12_check, B699LowIndex.I11TerminalData.Chunk207.w13_check, Bool.and_self]

private theorem c0785_cover : coverCheck 31104 31114 c0785_intervals = true := by
  decide

private theorem c0785_sound : IntervalSound (31104, 31114) := by
  have hc : coverCheck 31104 31114 (witnessIntervals c0785_witnesses) = true := by
    rw [c0785_intervals_eq]
    exact c0785_cover
  exact interval_sound_of_witness_checks (witnesses := c0785_witnesses)
    (lo := 31104) (hi := 31114) c0785_checks hc

private def c0786_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk207.w14, B699LowIndex.I11TerminalData.Chunk207.w15, B699LowIndex.I11TerminalData.Chunk208.w0, B699LowIndex.I11TerminalData.Chunk208.w1, B699LowIndex.I11TerminalData.Chunk208.w2, B699LowIndex.I11TerminalData.Chunk208.w3, B699LowIndex.I11TerminalData.Chunk208.w4]
private def c0786_intervals : List NatInterval := [(31428, 31428), (31429, 31429), (31430, 31430), (31431, 31431), (31432, 31432), (31433, 31433), (31434, 31434)]

private theorem c0786_intervals_eq :
    witnessIntervals c0786_witnesses = c0786_intervals := by
  rfl

private theorem c0786_checks : witnessesCheck c0786_witnesses = true := by
  simp only [witnessesCheck, c0786_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk207.w14_check, B699LowIndex.I11TerminalData.Chunk207.w15_check, B699LowIndex.I11TerminalData.Chunk208.w0_check, B699LowIndex.I11TerminalData.Chunk208.w1_check, B699LowIndex.I11TerminalData.Chunk208.w2_check, B699LowIndex.I11TerminalData.Chunk208.w3_check, B699LowIndex.I11TerminalData.Chunk208.w4_check, Bool.and_self]

private theorem c0786_cover : coverCheck 31428 31434 c0786_intervals = true := by
  decide

private theorem c0786_sound : IntervalSound (31428, 31434) := by
  have hc : coverCheck 31428 31434 (witnessIntervals c0786_witnesses) = true := by
    rw [c0786_intervals_eq]
    exact c0786_cover
  exact interval_sound_of_witness_checks (witnesses := c0786_witnesses)
    (lo := 31428) (hi := 31434) c0786_checks hc

private def c0787_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk208.w5, B699LowIndex.I11TerminalData.Chunk208.w6]
private def c0787_intervals : List NatInterval := [(31509, 31509), (31510, 31510)]

private theorem c0787_intervals_eq :
    witnessIntervals c0787_witnesses = c0787_intervals := by
  rfl

private theorem c0787_checks : witnessesCheck c0787_witnesses = true := by
  simp only [witnessesCheck, c0787_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk208.w5_check, B699LowIndex.I11TerminalData.Chunk208.w6_check, Bool.and_self]

private theorem c0787_cover : coverCheck 31509 31510 c0787_intervals = true := by
  decide

private theorem c0787_sound : IntervalSound (31509, 31510) := by
  have hc : coverCheck 31509 31510 (witnessIntervals c0787_witnesses) = true := by
    rw [c0787_intervals_eq]
    exact c0787_cover
  exact interval_sound_of_witness_checks (witnesses := c0787_witnesses)
    (lo := 31509) (hi := 31510) c0787_checks hc

private def c0788_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk208.w7, B699LowIndex.I11TerminalData.Chunk208.w8, B699LowIndex.I11TerminalData.Chunk208.w9, B699LowIndex.I11TerminalData.Chunk208.w10, B699LowIndex.I11TerminalData.Chunk208.w11, B699LowIndex.I11TerminalData.Chunk208.w12]
private def c0788_intervals : List NatInterval := [(31556, 31557), (31558, 31558), (31559, 31559), (31560, 31560), (31561, 31561), (31562, 31562)]

private theorem c0788_intervals_eq :
    witnessIntervals c0788_witnesses = c0788_intervals := by
  rfl

private theorem c0788_checks : witnessesCheck c0788_witnesses = true := by
  simp only [witnessesCheck, c0788_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk208.w7_check, B699LowIndex.I11TerminalData.Chunk208.w8_check, B699LowIndex.I11TerminalData.Chunk208.w9_check, B699LowIndex.I11TerminalData.Chunk208.w10_check, B699LowIndex.I11TerminalData.Chunk208.w11_check, B699LowIndex.I11TerminalData.Chunk208.w12_check, Bool.and_self]

private theorem c0788_cover : coverCheck 31556 31562 c0788_intervals = true := by
  decide

private theorem c0788_sound : IntervalSound (31556, 31562) := by
  have hc : coverCheck 31556 31562 (witnessIntervals c0788_witnesses) = true := by
    rw [c0788_intervals_eq]
    exact c0788_cover
  exact interval_sound_of_witness_checks (witnesses := c0788_witnesses)
    (lo := 31556) (hi := 31562) c0788_checks hc

private def c0789_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk208.w13, B699LowIndex.I11TerminalData.Chunk208.w14]
private def c0789_intervals : List NatInterval := [(31625, 31625), (31626, 31626)]

private theorem c0789_intervals_eq :
    witnessIntervals c0789_witnesses = c0789_intervals := by
  rfl

private theorem c0789_checks : witnessesCheck c0789_witnesses = true := by
  simp only [witnessesCheck, c0789_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk208.w13_check, B699LowIndex.I11TerminalData.Chunk208.w14_check, Bool.and_self]

private theorem c0789_cover : coverCheck 31625 31626 c0789_intervals = true := by
  decide

private theorem c0789_sound : IntervalSound (31625, 31626) := by
  have hc : coverCheck 31625 31626 (witnessIntervals c0789_witnesses) = true := by
    rw [c0789_intervals_eq]
    exact c0789_cover
  exact interval_sound_of_witness_checks (witnesses := c0789_witnesses)
    (lo := 31625) (hi := 31626) c0789_checks hc

private def c0790_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk208.w15, B699LowIndex.I11TerminalData.Chunk209.w0]
private def c0790_intervals : List NatInterval := [(31680, 31680), (31681, 31681)]

private theorem c0790_intervals_eq :
    witnessIntervals c0790_witnesses = c0790_intervals := by
  rfl

private theorem c0790_checks : witnessesCheck c0790_witnesses = true := by
  simp only [witnessesCheck, c0790_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk208.w15_check, B699LowIndex.I11TerminalData.Chunk209.w0_check, Bool.and_self]

private theorem c0790_cover : coverCheck 31680 31681 c0790_intervals = true := by
  decide

private theorem c0790_sound : IntervalSound (31680, 31681) := by
  have hc : coverCheck 31680 31681 (witnessIntervals c0790_witnesses) = true := by
    rw [c0790_intervals_eq]
    exact c0790_cover
  exact interval_sound_of_witness_checks (witnesses := c0790_witnesses)
    (lo := 31680) (hi := 31681) c0790_checks hc

private def c0791_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk209.w1, B699LowIndex.I11TerminalData.Chunk209.w2]
private def c0791_intervals : List NatInterval := [(31750, 31751), (31752, 31760)]

private theorem c0791_intervals_eq :
    witnessIntervals c0791_witnesses = c0791_intervals := by
  rfl

private theorem c0791_checks : witnessesCheck c0791_witnesses = true := by
  simp only [witnessesCheck, c0791_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk209.w1_check, B699LowIndex.I11TerminalData.Chunk209.w2_check, Bool.and_self]

private theorem c0791_cover : coverCheck 31750 31760 c0791_intervals = true := by
  decide

private theorem c0791_sound : IntervalSound (31750, 31760) := by
  have hc : coverCheck 31750 31760 (witnessIntervals c0791_witnesses) = true := by
    rw [c0791_intervals_eq]
    exact c0791_cover
  exact interval_sound_of_witness_checks (witnesses := c0791_witnesses)
    (lo := 31750) (hi := 31760) c0791_checks hc

private def c0792_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk209.w3]
private def c0792_intervals : List NatInterval := [(31875, 31882)]

private theorem c0792_intervals_eq :
    witnessIntervals c0792_witnesses = c0792_intervals := by
  rfl

private theorem c0792_checks : witnessesCheck c0792_witnesses = true := by
  simp only [witnessesCheck, c0792_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk209.w3_check, Bool.and_self]

private theorem c0792_cover : coverCheck 31875 31882 c0792_intervals = true := by
  decide

private theorem c0792_sound : IntervalSound (31875, 31882) := by
  have hc : coverCheck 31875 31882 (witnessIntervals c0792_witnesses) = true := by
    rw [c0792_intervals_eq]
    exact c0792_cover
  exact interval_sound_of_witness_checks (witnesses := c0792_witnesses)
    (lo := 31875) (hi := 31882) c0792_checks hc

private def c0793_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk209.w4, B699LowIndex.I11TerminalData.Chunk209.w5, B699LowIndex.I11TerminalData.Chunk209.w6]
private def c0793_intervals : List NatInterval := [(32000, 32001), (32002, 32002), (32003, 32010)]

private theorem c0793_intervals_eq :
    witnessIntervals c0793_witnesses = c0793_intervals := by
  rfl

private theorem c0793_checks : witnessesCheck c0793_witnesses = true := by
  simp only [witnessesCheck, c0793_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk209.w4_check, B699LowIndex.I11TerminalData.Chunk209.w5_check, B699LowIndex.I11TerminalData.Chunk209.w6_check, Bool.and_self]

private theorem c0793_cover : coverCheck 32000 32010 c0793_intervals = true := by
  decide

private theorem c0793_sound : IntervalSound (32000, 32010) := by
  have hc : coverCheck 32000 32010 (witnessIntervals c0793_witnesses) = true := by
    rw [c0793_intervals_eq]
    exact c0793_cover
  exact interval_sound_of_witness_checks (witnesses := c0793_witnesses)
    (lo := 32000) (hi := 32010) c0793_checks hc

private def c0794_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk209.w7, B699LowIndex.I11TerminalData.Chunk209.w8, B699LowIndex.I11TerminalData.Chunk209.w9, B699LowIndex.I11TerminalData.Chunk209.w10, B699LowIndex.I11TerminalData.Chunk209.w11, B699LowIndex.I11TerminalData.Chunk209.w12, B699LowIndex.I11TerminalData.Chunk209.w13]
private def c0794_intervals : List NatInterval := [(32128, 32129), (32130, 32130), (32131, 32131), (32132, 32132), (32133, 32133), (32134, 32134), (32135, 32135)]

private theorem c0794_intervals_eq :
    witnessIntervals c0794_witnesses = c0794_intervals := by
  rfl

private theorem c0794_checks : witnessesCheck c0794_witnesses = true := by
  simp only [witnessesCheck, c0794_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk209.w7_check, B699LowIndex.I11TerminalData.Chunk209.w8_check, B699LowIndex.I11TerminalData.Chunk209.w9_check, B699LowIndex.I11TerminalData.Chunk209.w10_check, B699LowIndex.I11TerminalData.Chunk209.w11_check, B699LowIndex.I11TerminalData.Chunk209.w12_check, B699LowIndex.I11TerminalData.Chunk209.w13_check, Bool.and_self]

private theorem c0794_cover : coverCheck 32128 32135 c0794_intervals = true := by
  decide

private theorem c0794_sound : IntervalSound (32128, 32135) := by
  have hc : coverCheck 32128 32135 (witnessIntervals c0794_witnesses) = true := by
    rw [c0794_intervals_eq]
    exact c0794_cover
  exact interval_sound_of_witness_checks (witnesses := c0794_witnesses)
    (lo := 32128) (hi := 32135) c0794_checks hc

private def c0795_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk209.w14, B699LowIndex.I11TerminalData.Chunk209.w15]
private def c0795_intervals : List NatInterval := [(32242, 32247), (32248, 32248)]

private theorem c0795_intervals_eq :
    witnessIntervals c0795_witnesses = c0795_intervals := by
  rfl

private theorem c0795_checks : witnessesCheck c0795_witnesses = true := by
  simp only [witnessesCheck, c0795_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk209.w14_check, B699LowIndex.I11TerminalData.Chunk209.w15_check, Bool.and_self]

private theorem c0795_cover : coverCheck 32242 32248 c0795_intervals = true := by
  decide

private theorem c0795_sound : IntervalSound (32242, 32248) := by
  have hc : coverCheck 32242 32248 (witnessIntervals c0795_witnesses) = true := by
    rw [c0795_intervals_eq]
    exact c0795_cover
  exact interval_sound_of_witness_checks (witnesses := c0795_witnesses)
    (lo := 32242) (hi := 32248) c0795_checks hc

private def c0796_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk210.w0, B699LowIndex.I11TerminalData.Chunk210.w1]
private def c0796_intervals : List NatInterval := [(32250, 32250), (32251, 32252)]

private theorem c0796_intervals_eq :
    witnessIntervals c0796_witnesses = c0796_intervals := by
  rfl

private theorem c0796_checks : witnessesCheck c0796_witnesses = true := by
  simp only [witnessesCheck, c0796_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk210.w0_check, B699LowIndex.I11TerminalData.Chunk210.w1_check, Bool.and_self]

private theorem c0796_cover : coverCheck 32250 32252 c0796_intervals = true := by
  decide

private theorem c0796_sound : IntervalSound (32250, 32252) := by
  have hc : coverCheck 32250 32252 (witnessIntervals c0796_witnesses) = true := by
    rw [c0796_intervals_eq]
    exact c0796_cover
  exact interval_sound_of_witness_checks (witnesses := c0796_witnesses)
    (lo := 32250) (hi := 32252) c0796_checks hc

private def c0797_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk210.w2]
private def c0797_intervals : List NatInterval := [(32256, 32260)]

private theorem c0797_intervals_eq :
    witnessIntervals c0797_witnesses = c0797_intervals := by
  rfl

private theorem c0797_checks : witnessesCheck c0797_witnesses = true := by
  simp only [witnessesCheck, c0797_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk210.w2_check, Bool.and_self]

private theorem c0797_cover : coverCheck 32256 32260 c0797_intervals = true := by
  decide

private theorem c0797_sound : IntervalSound (32256, 32260) := by
  have hc : coverCheck 32256 32260 (witnessIntervals c0797_witnesses) = true := by
    rw [c0797_intervals_eq]
    exact c0797_cover
  exact interval_sound_of_witness_checks (witnesses := c0797_witnesses)
    (lo := 32256) (hi := 32260) c0797_checks hc

private def c0798_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk210.w3]
private def c0798_intervals : List NatInterval := [(32384, 32385)]

private theorem c0798_intervals_eq :
    witnessIntervals c0798_witnesses = c0798_intervals := by
  rfl

private theorem c0798_checks : witnessesCheck c0798_witnesses = true := by
  simp only [witnessesCheck, c0798_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk210.w3_check, Bool.and_self]

private theorem c0798_cover : coverCheck 32384 32385 c0798_intervals = true := by
  decide

private theorem c0798_sound : IntervalSound (32384, 32385) := by
  have hc : coverCheck 32384 32385 (witnessIntervals c0798_witnesses) = true := by
    rw [c0798_intervals_eq]
    exact c0798_cover
  exact interval_sound_of_witness_checks (witnesses := c0798_witnesses)
    (lo := 32384) (hi := 32385) c0798_checks hc

private def c0799_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk210.w4, B699LowIndex.I11TerminalData.Chunk210.w5, B699LowIndex.I11TerminalData.Chunk210.w6, B699LowIndex.I11TerminalData.Chunk210.w7, B699LowIndex.I11TerminalData.Chunk210.w8]
private def c0799_intervals : List NatInterval := [(32643, 32643), (32644, 32644), (32645, 32645), (32646, 32646), (32647, 32650)]

private theorem c0799_intervals_eq :
    witnessIntervals c0799_witnesses = c0799_intervals := by
  rfl

private theorem c0799_checks : witnessesCheck c0799_witnesses = true := by
  simp only [witnessesCheck, c0799_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk210.w4_check, B699LowIndex.I11TerminalData.Chunk210.w5_check, B699LowIndex.I11TerminalData.Chunk210.w6_check, B699LowIndex.I11TerminalData.Chunk210.w7_check, B699LowIndex.I11TerminalData.Chunk210.w8_check, Bool.and_self]

private theorem c0799_cover : coverCheck 32643 32650 c0799_intervals = true := by
  decide

private theorem c0799_sound : IntervalSound (32643, 32650) := by
  have hc : coverCheck 32643 32650 (witnessIntervals c0799_witnesses) = true := by
    rw [c0799_intervals_eq]
    exact c0799_cover
  exact interval_sound_of_witness_checks (witnesses := c0799_witnesses)
    (lo := 32643) (hi := 32650) c0799_checks hc

def intervals : List NatInterval := [(30875, 30880), (31104, 31114), (31428, 31434), (31509, 31510), (31556, 31562), (31625, 31626), (31680, 31681), (31750, 31760), (31875, 31882), (32000, 32010), (32128, 32135), (32242, 32248), (32250, 32252), (32256, 32260), (32384, 32385), (32643, 32650)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (30875, 30880)) (intervals := [(31104, 31114), (31428, 31434), (31509, 31510), (31556, 31562), (31625, 31626), (31680, 31681), (31750, 31760), (31875, 31882), (32000, 32010), (32128, 32135), (32242, 32248), (32250, 32252), (32256, 32260), (32384, 32385), (32643, 32650)]) c0784_sound (intervals_sound_cons (I := (31104, 31114)) (intervals := [(31428, 31434), (31509, 31510), (31556, 31562), (31625, 31626), (31680, 31681), (31750, 31760), (31875, 31882), (32000, 32010), (32128, 32135), (32242, 32248), (32250, 32252), (32256, 32260), (32384, 32385), (32643, 32650)]) c0785_sound (intervals_sound_cons (I := (31428, 31434)) (intervals := [(31509, 31510), (31556, 31562), (31625, 31626), (31680, 31681), (31750, 31760), (31875, 31882), (32000, 32010), (32128, 32135), (32242, 32248), (32250, 32252), (32256, 32260), (32384, 32385), (32643, 32650)]) c0786_sound (intervals_sound_cons (I := (31509, 31510)) (intervals := [(31556, 31562), (31625, 31626), (31680, 31681), (31750, 31760), (31875, 31882), (32000, 32010), (32128, 32135), (32242, 32248), (32250, 32252), (32256, 32260), (32384, 32385), (32643, 32650)]) c0787_sound (intervals_sound_cons (I := (31556, 31562)) (intervals := [(31625, 31626), (31680, 31681), (31750, 31760), (31875, 31882), (32000, 32010), (32128, 32135), (32242, 32248), (32250, 32252), (32256, 32260), (32384, 32385), (32643, 32650)]) c0788_sound (intervals_sound_cons (I := (31625, 31626)) (intervals := [(31680, 31681), (31750, 31760), (31875, 31882), (32000, 32010), (32128, 32135), (32242, 32248), (32250, 32252), (32256, 32260), (32384, 32385), (32643, 32650)]) c0789_sound (intervals_sound_cons (I := (31680, 31681)) (intervals := [(31750, 31760), (31875, 31882), (32000, 32010), (32128, 32135), (32242, 32248), (32250, 32252), (32256, 32260), (32384, 32385), (32643, 32650)]) c0790_sound (intervals_sound_cons (I := (31750, 31760)) (intervals := [(31875, 31882), (32000, 32010), (32128, 32135), (32242, 32248), (32250, 32252), (32256, 32260), (32384, 32385), (32643, 32650)]) c0791_sound (intervals_sound_cons (I := (31875, 31882)) (intervals := [(32000, 32010), (32128, 32135), (32242, 32248), (32250, 32252), (32256, 32260), (32384, 32385), (32643, 32650)]) c0792_sound (intervals_sound_cons (I := (32000, 32010)) (intervals := [(32128, 32135), (32242, 32248), (32250, 32252), (32256, 32260), (32384, 32385), (32643, 32650)]) c0793_sound (intervals_sound_cons (I := (32128, 32135)) (intervals := [(32242, 32248), (32250, 32252), (32256, 32260), (32384, 32385), (32643, 32650)]) c0794_sound (intervals_sound_cons (I := (32242, 32248)) (intervals := [(32250, 32252), (32256, 32260), (32384, 32385), (32643, 32650)]) c0795_sound (intervals_sound_cons (I := (32250, 32252)) (intervals := [(32256, 32260), (32384, 32385), (32643, 32650)]) c0796_sound (intervals_sound_cons (I := (32256, 32260)) (intervals := [(32384, 32385), (32643, 32650)]) c0797_sound (intervals_sound_cons (I := (32384, 32385)) (intervals := [(32643, 32650)]) c0798_sound (intervals_sound_cons (I := (32643, 32650)) (intervals := []) c0799_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G049
