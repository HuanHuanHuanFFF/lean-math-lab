import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk185
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk186
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk187

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G041
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0656_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk185.w3, B699LowIndex.I11TerminalData.Chunk185.w4]
private def c0656_intervals : List NatInterval := [(20384, 20384), (20385, 20385)]

private theorem c0656_intervals_eq :
    witnessIntervals c0656_witnesses = c0656_intervals := by
  rfl

private theorem c0656_checks : witnessesCheck c0656_witnesses = true := by
  simp only [witnessesCheck, c0656_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk185.w3_check, B699LowIndex.I11TerminalData.Chunk185.w4_check, Bool.and_self]

private theorem c0656_cover : coverCheck 20384 20385 c0656_intervals = true := by
  decide

private theorem c0656_sound : IntervalSound (20384, 20385) := by
  have hc : coverCheck 20384 20385 (witnessIntervals c0656_witnesses) = true := by
    rw [c0656_intervals_eq]
    exact c0656_cover
  exact interval_sound_of_witness_checks (witnesses := c0656_witnesses)
    (lo := 20384) (hi := 20385) c0656_checks hc

private def c0657_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk185.w5, B699LowIndex.I11TerminalData.Chunk185.w6]
private def c0657_intervals : List NatInterval := [(20416, 20421), (20422, 20422)]

private theorem c0657_intervals_eq :
    witnessIntervals c0657_witnesses = c0657_intervals := by
  rfl

private theorem c0657_checks : witnessesCheck c0657_witnesses = true := by
  simp only [witnessesCheck, c0657_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk185.w5_check, B699LowIndex.I11TerminalData.Chunk185.w6_check, Bool.and_self]

private theorem c0657_cover : coverCheck 20416 20422 c0657_intervals = true := by
  decide

private theorem c0657_sound : IntervalSound (20416, 20422) := by
  have hc : coverCheck 20416 20422 (witnessIntervals c0657_witnesses) = true := by
    rw [c0657_intervals_eq]
    exact c0657_cover
  exact interval_sound_of_witness_checks (witnesses := c0657_witnesses)
    (lo := 20416) (hi := 20422) c0657_checks hc

private def c0658_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk185.w7, B699LowIndex.I11TerminalData.Chunk185.w8]
private def c0658_intervals : List NatInterval := [(20482, 20489), (20490, 20490)]

private theorem c0658_intervals_eq :
    witnessIntervals c0658_witnesses = c0658_intervals := by
  rfl

private theorem c0658_checks : witnessesCheck c0658_witnesses = true := by
  simp only [witnessesCheck, c0658_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk185.w7_check, B699LowIndex.I11TerminalData.Chunk185.w8_check, Bool.and_self]

private theorem c0658_cover : coverCheck 20482 20490 c0658_intervals = true := by
  decide

private theorem c0658_sound : IntervalSound (20482, 20490) := by
  have hc : coverCheck 20482 20490 (witnessIntervals c0658_witnesses) = true := by
    rw [c0658_intervals_eq]
    exact c0658_cover
  exact interval_sound_of_witness_checks (witnesses := c0658_witnesses)
    (lo := 20482) (hi := 20490) c0658_checks hc

private def c0659_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk185.w9, B699LowIndex.I11TerminalData.Chunk185.w10, B699LowIndex.I11TerminalData.Chunk185.w11, B699LowIndex.I11TerminalData.Chunk185.w12]
private def c0659_intervals : List NatInterval := [(20500, 20500), (20501, 20501), (20502, 20502), (20503, 20503)]

private theorem c0659_intervals_eq :
    witnessIntervals c0659_witnesses = c0659_intervals := by
  rfl

private theorem c0659_checks : witnessesCheck c0659_witnesses = true := by
  simp only [witnessesCheck, c0659_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk185.w9_check, B699LowIndex.I11TerminalData.Chunk185.w10_check, B699LowIndex.I11TerminalData.Chunk185.w11_check, B699LowIndex.I11TerminalData.Chunk185.w12_check, Bool.and_self]

private theorem c0659_cover : coverCheck 20500 20503 c0659_intervals = true := by
  decide

private theorem c0659_sound : IntervalSound (20500, 20503) := by
  have hc : coverCheck 20500 20503 (witnessIntervals c0659_witnesses) = true := by
    rw [c0659_intervals_eq]
    exact c0659_cover
  exact interval_sound_of_witness_checks (witnesses := c0659_witnesses)
    (lo := 20500) (hi := 20503) c0659_checks hc

private def c0660_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk185.w13, B699LowIndex.I11TerminalData.Chunk185.w14, B699LowIndex.I11TerminalData.Chunk185.w15, B699LowIndex.I11TerminalData.Chunk186.w0, B699LowIndex.I11TerminalData.Chunk186.w1]
private def c0660_intervals : List NatInterval := [(20580, 20580), (20581, 20581), (20582, 20582), (20583, 20583), (20584, 20584)]

private theorem c0660_intervals_eq :
    witnessIntervals c0660_witnesses = c0660_intervals := by
  rfl

private theorem c0660_checks : witnessesCheck c0660_witnesses = true := by
  simp only [witnessesCheck, c0660_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk185.w13_check, B699LowIndex.I11TerminalData.Chunk185.w14_check, B699LowIndex.I11TerminalData.Chunk185.w15_check, B699LowIndex.I11TerminalData.Chunk186.w0_check, B699LowIndex.I11TerminalData.Chunk186.w1_check, Bool.and_self]

private theorem c0660_cover : coverCheck 20580 20584 c0660_intervals = true := by
  decide

private theorem c0660_sound : IntervalSound (20580, 20584) := by
  have hc : coverCheck 20580 20584 (witnessIntervals c0660_witnesses) = true := by
    rw [c0660_intervals_eq]
    exact c0660_cover
  exact interval_sound_of_witness_checks (witnesses := c0660_witnesses)
    (lo := 20580) (hi := 20584) c0660_checks hc

private def c0661_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk186.w2]
private def c0661_intervals : List NatInterval := [(20629, 20635)]

private theorem c0661_intervals_eq :
    witnessIntervals c0661_witnesses = c0661_intervals := by
  rfl

private theorem c0661_checks : witnessesCheck c0661_witnesses = true := by
  simp only [witnessesCheck, c0661_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk186.w2_check, Bool.and_self]

private theorem c0661_cover : coverCheck 20629 20635 c0661_intervals = true := by
  decide

private theorem c0661_sound : IntervalSound (20629, 20635) := by
  have hc : coverCheck 20629 20635 (witnessIntervals c0661_witnesses) = true := by
    rw [c0661_intervals_eq]
    exact c0661_cover
  exact interval_sound_of_witness_checks (witnesses := c0661_witnesses)
    (lo := 20629) (hi := 20635) c0661_checks hc

private def c0662_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk186.w3, B699LowIndex.I11TerminalData.Chunk186.w4, B699LowIndex.I11TerminalData.Chunk186.w5, B699LowIndex.I11TerminalData.Chunk186.w6]
private def c0662_intervals : List NatInterval := [(20678, 20678), (20679, 20679), (20680, 20680), (20681, 20682)]

private theorem c0662_intervals_eq :
    witnessIntervals c0662_witnesses = c0662_intervals := by
  rfl

private theorem c0662_checks : witnessesCheck c0662_witnesses = true := by
  simp only [witnessesCheck, c0662_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk186.w3_check, B699LowIndex.I11TerminalData.Chunk186.w4_check, B699LowIndex.I11TerminalData.Chunk186.w5_check, B699LowIndex.I11TerminalData.Chunk186.w6_check, Bool.and_self]

private theorem c0662_cover : coverCheck 20678 20682 c0662_intervals = true := by
  decide

private theorem c0662_sound : IntervalSound (20678, 20682) := by
  have hc : coverCheck 20678 20682 (witnessIntervals c0662_witnesses) = true := by
    rw [c0662_intervals_eq]
    exact c0662_cover
  exact interval_sound_of_witness_checks (witnesses := c0662_witnesses)
    (lo := 20678) (hi := 20682) c0662_checks hc

private def c0663_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk186.w7, B699LowIndex.I11TerminalData.Chunk186.w8, B699LowIndex.I11TerminalData.Chunk186.w9]
private def c0663_intervals : List NatInterval := [(20736, 20741), (20742, 20742), (20743, 20746)]

private theorem c0663_intervals_eq :
    witnessIntervals c0663_witnesses = c0663_intervals := by
  rfl

private theorem c0663_checks : witnessesCheck c0663_witnesses = true := by
  simp only [witnessesCheck, c0663_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk186.w7_check, B699LowIndex.I11TerminalData.Chunk186.w8_check, B699LowIndex.I11TerminalData.Chunk186.w9_check, Bool.and_self]

private theorem c0663_cover : coverCheck 20736 20746 c0663_intervals = true := by
  decide

private theorem c0663_sound : IntervalSound (20736, 20746) := by
  have hc : coverCheck 20736 20746 (witnessIntervals c0663_witnesses) = true := by
    rw [c0663_intervals_eq]
    exact c0663_cover
  exact interval_sound_of_witness_checks (witnesses := c0663_witnesses)
    (lo := 20736) (hi := 20746) c0663_checks hc

private def c0664_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk186.w10, B699LowIndex.I11TerminalData.Chunk186.w11, B699LowIndex.I11TerminalData.Chunk186.w12]
private def c0664_intervals : List NatInterval := [(20825, 20825), (20826, 20826), (20827, 20827)]

private theorem c0664_intervals_eq :
    witnessIntervals c0664_witnesses = c0664_intervals := by
  rfl

private theorem c0664_checks : witnessesCheck c0664_witnesses = true := by
  simp only [witnessesCheck, c0664_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk186.w10_check, B699LowIndex.I11TerminalData.Chunk186.w11_check, B699LowIndex.I11TerminalData.Chunk186.w12_check, Bool.and_self]

private theorem c0664_cover : coverCheck 20825 20827 c0664_intervals = true := by
  decide

private theorem c0664_sound : IntervalSound (20825, 20827) := by
  have hc : coverCheck 20825 20827 (witnessIntervals c0664_witnesses) = true := by
    rw [c0664_intervals_eq]
    exact c0664_cover
  exact interval_sound_of_witness_checks (witnesses := c0664_witnesses)
    (lo := 20825) (hi := 20827) c0664_checks hc

private def c0665_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk186.w13, B699LowIndex.I11TerminalData.Chunk186.w14]
private def c0665_intervals : List NatInterval := [(20874, 20883), (20884, 20884)]

private theorem c0665_intervals_eq :
    witnessIntervals c0665_witnesses = c0665_intervals := by
  rfl

private theorem c0665_checks : witnessesCheck c0665_witnesses = true := by
  simp only [witnessesCheck, c0665_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk186.w13_check, B699LowIndex.I11TerminalData.Chunk186.w14_check, Bool.and_self]

private theorem c0665_cover : coverCheck 20874 20884 c0665_intervals = true := by
  decide

private theorem c0665_sound : IntervalSound (20874, 20884) := by
  have hc : coverCheck 20874 20884 (witnessIntervals c0665_witnesses) = true := by
    rw [c0665_intervals_eq]
    exact c0665_cover
  exact interval_sound_of_witness_checks (witnesses := c0665_witnesses)
    (lo := 20874) (hi := 20884) c0665_checks hc

private def c0666_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk186.w15, B699LowIndex.I11TerminalData.Chunk187.w0]
private def c0666_intervals : List NatInterval := [(20928, 20931), (20932, 20933)]

private theorem c0666_intervals_eq :
    witnessIntervals c0666_witnesses = c0666_intervals := by
  rfl

private theorem c0666_checks : witnessesCheck c0666_witnesses = true := by
  simp only [witnessesCheck, c0666_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk186.w15_check, B699LowIndex.I11TerminalData.Chunk187.w0_check, Bool.and_self]

private theorem c0666_cover : coverCheck 20928 20933 c0666_intervals = true := by
  decide

private theorem c0666_sound : IntervalSound (20928, 20933) := by
  have hc : coverCheck 20928 20933 (witnessIntervals c0666_witnesses) = true := by
    rw [c0666_intervals_eq]
    exact c0666_cover
  exact interval_sound_of_witness_checks (witnesses := c0666_witnesses)
    (lo := 20928) (hi := 20933) c0666_checks hc

private def c0667_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk187.w1, B699LowIndex.I11TerminalData.Chunk187.w2, B699LowIndex.I11TerminalData.Chunk187.w3]
private def c0667_intervals : List NatInterval := [(20979, 20979), (20980, 20980), (20981, 20982)]

private theorem c0667_intervals_eq :
    witnessIntervals c0667_witnesses = c0667_intervals := by
  rfl

private theorem c0667_checks : witnessesCheck c0667_witnesses = true := by
  simp only [witnessesCheck, c0667_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk187.w1_check, B699LowIndex.I11TerminalData.Chunk187.w2_check, B699LowIndex.I11TerminalData.Chunk187.w3_check, Bool.and_self]

private theorem c0667_cover : coverCheck 20979 20982 c0667_intervals = true := by
  decide

private theorem c0667_sound : IntervalSound (20979, 20982) := by
  have hc : coverCheck 20979 20982 (witnessIntervals c0667_witnesses) = true := by
    rw [c0667_intervals_eq]
    exact c0667_cover
  exact interval_sound_of_witness_checks (witnesses := c0667_witnesses)
    (lo := 20979) (hi := 20982) c0667_checks hc

private def c0668_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk187.w4, B699LowIndex.I11TerminalData.Chunk187.w5]
private def c0668_intervals : List NatInterval := [(21000, 21000), (21001, 21002)]

private theorem c0668_intervals_eq :
    witnessIntervals c0668_witnesses = c0668_intervals := by
  rfl

private theorem c0668_checks : witnessesCheck c0668_witnesses = true := by
  simp only [witnessesCheck, c0668_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk187.w4_check, B699LowIndex.I11TerminalData.Chunk187.w5_check, Bool.and_self]

private theorem c0668_cover : coverCheck 21000 21002 c0668_intervals = true := by
  decide

private theorem c0668_sound : IntervalSound (21000, 21002) := by
  have hc : coverCheck 21000 21002 (witnessIntervals c0668_witnesses) = true := by
    rw [c0668_intervals_eq]
    exact c0668_cover
  exact interval_sound_of_witness_checks (witnesses := c0668_witnesses)
    (lo := 21000) (hi := 21002) c0668_checks hc

private def c0669_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk187.w6]
private def c0669_intervals : List NatInterval := [(21060, 21066)]

private theorem c0669_intervals_eq :
    witnessIntervals c0669_witnesses = c0669_intervals := by
  rfl

private theorem c0669_checks : witnessesCheck c0669_witnesses = true := by
  simp only [witnessesCheck, c0669_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk187.w6_check, Bool.and_self]

private theorem c0669_cover : coverCheck 21060 21066 c0669_intervals = true := by
  decide

private theorem c0669_sound : IntervalSound (21060, 21066) := by
  have hc : coverCheck 21060 21066 (witnessIntervals c0669_witnesses) = true := by
    rw [c0669_intervals_eq]
    exact c0669_cover
  exact interval_sound_of_witness_checks (witnesses := c0669_witnesses)
    (lo := 21060) (hi := 21066) c0669_checks hc

private def c0670_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk187.w7]
private def c0670_intervals : List NatInterval := [(21070, 21070)]

private theorem c0670_intervals_eq :
    witnessIntervals c0670_witnesses = c0670_intervals := by
  rfl

private theorem c0670_checks : witnessesCheck c0670_witnesses = true := by
  simp only [witnessesCheck, c0670_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk187.w7_check, Bool.and_self]

private theorem c0670_cover : coverCheck 21070 21070 c0670_intervals = true := by
  decide

private theorem c0670_sound : IntervalSound (21070, 21070) := by
  have hc : coverCheck 21070 21070 (witnessIntervals c0670_witnesses) = true := by
    rw [c0670_intervals_eq]
    exact c0670_cover
  exact interval_sound_of_witness_checks (witnesses := c0670_witnesses)
    (lo := 21070) (hi := 21070) c0670_checks hc

private def c0671_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk187.w8, B699LowIndex.I11TerminalData.Chunk187.w9]
private def c0671_intervals : List NatInterval := [(21120, 21120), (21121, 21130)]

private theorem c0671_intervals_eq :
    witnessIntervals c0671_witnesses = c0671_intervals := by
  rfl

private theorem c0671_checks : witnessesCheck c0671_witnesses = true := by
  simp only [witnessesCheck, c0671_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk187.w8_check, B699LowIndex.I11TerminalData.Chunk187.w9_check, Bool.and_self]

private theorem c0671_cover : coverCheck 21120 21130 c0671_intervals = true := by
  decide

private theorem c0671_sound : IntervalSound (21120, 21130) := by
  have hc : coverCheck 21120 21130 (witnessIntervals c0671_witnesses) = true := by
    rw [c0671_intervals_eq]
    exact c0671_cover
  exact interval_sound_of_witness_checks (witnesses := c0671_witnesses)
    (lo := 21120) (hi := 21130) c0671_checks hc

def intervals : List NatInterval := [(20384, 20385), (20416, 20422), (20482, 20490), (20500, 20503), (20580, 20584), (20629, 20635), (20678, 20682), (20736, 20746), (20825, 20827), (20874, 20884), (20928, 20933), (20979, 20982), (21000, 21002), (21060, 21066), (21070, 21070), (21120, 21130)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (20384, 20385)) (intervals := [(20416, 20422), (20482, 20490), (20500, 20503), (20580, 20584), (20629, 20635), (20678, 20682), (20736, 20746), (20825, 20827), (20874, 20884), (20928, 20933), (20979, 20982), (21000, 21002), (21060, 21066), (21070, 21070), (21120, 21130)]) c0656_sound (intervals_sound_cons (I := (20416, 20422)) (intervals := [(20482, 20490), (20500, 20503), (20580, 20584), (20629, 20635), (20678, 20682), (20736, 20746), (20825, 20827), (20874, 20884), (20928, 20933), (20979, 20982), (21000, 21002), (21060, 21066), (21070, 21070), (21120, 21130)]) c0657_sound (intervals_sound_cons (I := (20482, 20490)) (intervals := [(20500, 20503), (20580, 20584), (20629, 20635), (20678, 20682), (20736, 20746), (20825, 20827), (20874, 20884), (20928, 20933), (20979, 20982), (21000, 21002), (21060, 21066), (21070, 21070), (21120, 21130)]) c0658_sound (intervals_sound_cons (I := (20500, 20503)) (intervals := [(20580, 20584), (20629, 20635), (20678, 20682), (20736, 20746), (20825, 20827), (20874, 20884), (20928, 20933), (20979, 20982), (21000, 21002), (21060, 21066), (21070, 21070), (21120, 21130)]) c0659_sound (intervals_sound_cons (I := (20580, 20584)) (intervals := [(20629, 20635), (20678, 20682), (20736, 20746), (20825, 20827), (20874, 20884), (20928, 20933), (20979, 20982), (21000, 21002), (21060, 21066), (21070, 21070), (21120, 21130)]) c0660_sound (intervals_sound_cons (I := (20629, 20635)) (intervals := [(20678, 20682), (20736, 20746), (20825, 20827), (20874, 20884), (20928, 20933), (20979, 20982), (21000, 21002), (21060, 21066), (21070, 21070), (21120, 21130)]) c0661_sound (intervals_sound_cons (I := (20678, 20682)) (intervals := [(20736, 20746), (20825, 20827), (20874, 20884), (20928, 20933), (20979, 20982), (21000, 21002), (21060, 21066), (21070, 21070), (21120, 21130)]) c0662_sound (intervals_sound_cons (I := (20736, 20746)) (intervals := [(20825, 20827), (20874, 20884), (20928, 20933), (20979, 20982), (21000, 21002), (21060, 21066), (21070, 21070), (21120, 21130)]) c0663_sound (intervals_sound_cons (I := (20825, 20827)) (intervals := [(20874, 20884), (20928, 20933), (20979, 20982), (21000, 21002), (21060, 21066), (21070, 21070), (21120, 21130)]) c0664_sound (intervals_sound_cons (I := (20874, 20884)) (intervals := [(20928, 20933), (20979, 20982), (21000, 21002), (21060, 21066), (21070, 21070), (21120, 21130)]) c0665_sound (intervals_sound_cons (I := (20928, 20933)) (intervals := [(20979, 20982), (21000, 21002), (21060, 21066), (21070, 21070), (21120, 21130)]) c0666_sound (intervals_sound_cons (I := (20979, 20982)) (intervals := [(21000, 21002), (21060, 21066), (21070, 21070), (21120, 21130)]) c0667_sound (intervals_sound_cons (I := (21000, 21002)) (intervals := [(21060, 21066), (21070, 21070), (21120, 21130)]) c0668_sound (intervals_sound_cons (I := (21060, 21066)) (intervals := [(21070, 21070), (21120, 21130)]) c0669_sound (intervals_sound_cons (I := (21070, 21070)) (intervals := [(21120, 21130)]) c0670_sound (intervals_sound_cons (I := (21120, 21130)) (intervals := []) c0671_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G041
