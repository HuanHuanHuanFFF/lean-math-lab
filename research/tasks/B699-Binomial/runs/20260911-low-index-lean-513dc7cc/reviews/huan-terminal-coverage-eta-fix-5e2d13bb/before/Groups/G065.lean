import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Last
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk250
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk251
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk252

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G065
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c1040_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk250.w2]
private def c1040_intervals : List NatInterval := [(785133, 785137)]

private theorem c1040_intervals_eq :
    witnessIntervals c1040_witnesses = c1040_intervals := by
  rfl

private theorem c1040_checks : witnessesCheck c1040_witnesses = true := by
  simp only [witnessesCheck, c1040_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk250.w2_check, Bool.and_self]

private theorem c1040_cover : coverCheck 785133 785137 c1040_intervals = true := by
  decide

private theorem c1040_sound : IntervalSound (785133, 785137) := by
  have hc : coverCheck 785133 785137 (witnessIntervals c1040_witnesses) = true := by
    rw [c1040_intervals_eq]
    exact c1040_cover
  exact interval_sound_of_witness_checks (witnesses := c1040_witnesses)
    (lo := 785133) (hi := 785137) c1040_checks hc

private def c1041_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk250.w3, B699LowIndex.I11TerminalData.Chunk250.w4]
private def c1041_intervals : List NatInterval := [(818750, 818750), (818751, 818751)]

private theorem c1041_intervals_eq :
    witnessIntervals c1041_witnesses = c1041_intervals := by
  rfl

private theorem c1041_checks : witnessesCheck c1041_witnesses = true := by
  simp only [witnessesCheck, c1041_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk250.w3_check, B699LowIndex.I11TerminalData.Chunk250.w4_check, Bool.and_self]

private theorem c1041_cover : coverCheck 818750 818751 c1041_intervals = true := by
  decide

private theorem c1041_sound : IntervalSound (818750, 818751) := by
  have hc : coverCheck 818750 818751 (witnessIntervals c1041_witnesses) = true := by
    rw [c1041_intervals_eq]
    exact c1041_cover
  exact interval_sound_of_witness_checks (witnesses := c1041_witnesses)
    (lo := 818750) (hi := 818751) c1041_checks hc

private def c1042_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk250.w5, B699LowIndex.I11TerminalData.Chunk250.w6]
private def c1042_intervals : List NatInterval := [(966656, 966663), (966664, 966664)]

private theorem c1042_intervals_eq :
    witnessIntervals c1042_witnesses = c1042_intervals := by
  rfl

private theorem c1042_checks : witnessesCheck c1042_witnesses = true := by
  simp only [witnessesCheck, c1042_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk250.w5_check, B699LowIndex.I11TerminalData.Chunk250.w6_check, Bool.and_self]

private theorem c1042_cover : coverCheck 966656 966664 c1042_intervals = true := by
  decide

private theorem c1042_sound : IntervalSound (966656, 966664) := by
  have hc : coverCheck 966656 966664 (witnessIntervals c1042_witnesses) = true := by
    rw [c1042_intervals_eq]
    exact c1042_cover
  exact interval_sound_of_witness_checks (witnesses := c1042_witnesses)
    (lo := 966656) (hi := 966664) c1042_checks hc

private def c1043_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk250.w7, B699LowIndex.I11TerminalData.Chunk250.w8]
private def c1043_intervals : List NatInterval := [(1006020, 1006020), (1006021, 1006029)]

private theorem c1043_intervals_eq :
    witnessIntervals c1043_witnesses = c1043_intervals := by
  rfl

private theorem c1043_checks : witnessesCheck c1043_witnesses = true := by
  simp only [witnessesCheck, c1043_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk250.w7_check, B699LowIndex.I11TerminalData.Chunk250.w8_check, Bool.and_self]

private theorem c1043_cover : coverCheck 1006020 1006029 c1043_intervals = true := by
  decide

private theorem c1043_sound : IntervalSound (1006020, 1006029) := by
  have hc : coverCheck 1006020 1006029 (witnessIntervals c1043_witnesses) = true := by
    rw [c1043_intervals_eq]
    exact c1043_cover
  exact interval_sound_of_witness_checks (witnesses := c1043_witnesses)
    (lo := 1006020) (hi := 1006029) c1043_checks hc

private def c1044_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk250.w9, B699LowIndex.I11TerminalData.Chunk250.w10, B699LowIndex.I11TerminalData.Chunk250.w11]
private def c1044_intervals : List NatInterval := [(1015625, 1015625), (1015626, 1015626), (1015627, 1015633)]

private theorem c1044_intervals_eq :
    witnessIntervals c1044_witnesses = c1044_intervals := by
  rfl

private theorem c1044_checks : witnessesCheck c1044_witnesses = true := by
  simp only [witnessesCheck, c1044_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk250.w9_check, B699LowIndex.I11TerminalData.Chunk250.w10_check, B699LowIndex.I11TerminalData.Chunk250.w11_check, Bool.and_self]

private theorem c1044_cover : coverCheck 1015625 1015633 c1044_intervals = true := by
  decide

private theorem c1044_sound : IntervalSound (1015625, 1015633) := by
  have hc : coverCheck 1015625 1015633 (witnessIntervals c1044_witnesses) = true := by
    rw [c1044_intervals_eq]
    exact c1044_cover
  exact interval_sound_of_witness_checks (witnesses := c1044_witnesses)
    (lo := 1015625) (hi := 1015633) c1044_checks hc

private def c1045_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk250.w12]
private def c1045_intervals : List NatInterval := [(1146880, 1146885)]

private theorem c1045_intervals_eq :
    witnessIntervals c1045_witnesses = c1045_intervals := by
  rfl

private theorem c1045_checks : witnessesCheck c1045_witnesses = true := by
  simp only [witnessesCheck, c1045_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk250.w12_check, Bool.and_self]

private theorem c1045_cover : coverCheck 1146880 1146885 c1045_intervals = true := by
  decide

private theorem c1045_sound : IntervalSound (1146880, 1146885) := by
  have hc : coverCheck 1146880 1146885 (witnessIntervals c1045_witnesses) = true := by
    rw [c1045_intervals_eq]
    exact c1045_cover
  exact interval_sound_of_witness_checks (witnesses := c1045_witnesses)
    (lo := 1146880) (hi := 1146885) c1045_checks hc

private def c1046_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk250.w13, B699LowIndex.I11TerminalData.Chunk250.w14, B699LowIndex.I11TerminalData.Chunk250.w15, B699LowIndex.I11TerminalData.Chunk251.w0, B699LowIndex.I11TerminalData.Chunk251.w1, B699LowIndex.I11TerminalData.Chunk251.w2, B699LowIndex.I11TerminalData.Chunk251.w3]
private def c1046_intervals : List NatInterval := [(1226911, 1226911), (1226912, 1226912), (1226913, 1226913), (1226914, 1226914), (1226915, 1226915), (1226916, 1226916), (1226917, 1226917)]

private theorem c1046_intervals_eq :
    witnessIntervals c1046_witnesses = c1046_intervals := by
  rfl

private theorem c1046_checks : witnessesCheck c1046_witnesses = true := by
  simp only [witnessesCheck, c1046_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk250.w13_check, B699LowIndex.I11TerminalData.Chunk250.w14_check, B699LowIndex.I11TerminalData.Chunk250.w15_check, B699LowIndex.I11TerminalData.Chunk251.w0_check, B699LowIndex.I11TerminalData.Chunk251.w1_check, B699LowIndex.I11TerminalData.Chunk251.w2_check, B699LowIndex.I11TerminalData.Chunk251.w3_check, Bool.and_self]

private theorem c1046_cover : coverCheck 1226911 1226917 c1046_intervals = true := by
  decide

private theorem c1046_sound : IntervalSound (1226911, 1226917) := by
  have hc : coverCheck 1226911 1226917 (witnessIntervals c1046_witnesses) = true := by
    rw [c1046_intervals_eq]
    exact c1046_cover
  exact interval_sound_of_witness_checks (witnesses := c1046_witnesses)
    (lo := 1226911) (hi := 1226917) c1046_checks hc

private def c1047_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk251.w4, B699LowIndex.I11TerminalData.Chunk251.w5, B699LowIndex.I11TerminalData.Chunk251.w6, B699LowIndex.I11TerminalData.Chunk251.w7, B699LowIndex.I11TerminalData.Chunk251.w8, B699LowIndex.I11TerminalData.Chunk251.w9, B699LowIndex.I11TerminalData.Chunk251.w10]
private def c1047_intervals : List NatInterval := [(1384375, 1384375), (1384376, 1384376), (1384377, 1384377), (1384378, 1384378), (1384379, 1384379), (1384380, 1384380), (1384381, 1384381)]

private theorem c1047_intervals_eq :
    witnessIntervals c1047_witnesses = c1047_intervals := by
  rfl

private theorem c1047_checks : witnessesCheck c1047_witnesses = true := by
  simp only [witnessesCheck, c1047_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk251.w4_check, B699LowIndex.I11TerminalData.Chunk251.w5_check, B699LowIndex.I11TerminalData.Chunk251.w6_check, B699LowIndex.I11TerminalData.Chunk251.w7_check, B699LowIndex.I11TerminalData.Chunk251.w8_check, B699LowIndex.I11TerminalData.Chunk251.w9_check, B699LowIndex.I11TerminalData.Chunk251.w10_check, Bool.and_self]

private theorem c1047_cover : coverCheck 1384375 1384381 c1047_intervals = true := by
  decide

private theorem c1047_sound : IntervalSound (1384375, 1384381) := by
  have hc : coverCheck 1384375 1384381 (witnessIntervals c1047_witnesses) = true := by
    rw [c1047_intervals_eq]
    exact c1047_cover
  exact interval_sound_of_witness_checks (witnesses := c1047_witnesses)
    (lo := 1384375) (hi := 1384381) c1047_checks hc

private def c1048_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk251.w11]
private def c1048_intervals : List NatInterval := [(1449984, 1449991)]

private theorem c1048_intervals_eq :
    witnessIntervals c1048_witnesses = c1048_intervals := by
  rfl

private theorem c1048_checks : witnessesCheck c1048_witnesses = true := by
  simp only [witnessesCheck, c1048_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk251.w11_check, Bool.and_self]

private theorem c1048_cover : coverCheck 1449984 1449991 c1048_intervals = true := by
  decide

private theorem c1048_sound : IntervalSound (1449984, 1449991) := by
  have hc : coverCheck 1449984 1449991 (witnessIntervals c1048_witnesses) = true := by
    rw [c1048_intervals_eq]
    exact c1048_cover
  exact interval_sound_of_witness_checks (witnesses := c1048_witnesses)
    (lo := 1449984) (hi := 1449991) c1048_checks hc

private def c1049_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk251.w12]
private def c1049_intervals : List NatInterval := [(2453822, 2453824)]

private theorem c1049_intervals_eq :
    witnessIntervals c1049_witnesses = c1049_intervals := by
  rfl

private theorem c1049_checks : witnessesCheck c1049_witnesses = true := by
  simp only [witnessesCheck, c1049_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk251.w12_check, Bool.and_self]

private theorem c1049_cover : coverCheck 2453822 2453824 c1049_intervals = true := by
  decide

private theorem c1049_sound : IntervalSound (2453822, 2453824) := by
  have hc : coverCheck 2453822 2453824 (witnessIntervals c1049_witnesses) = true := by
    rw [c1049_intervals_eq]
    exact c1049_cover
  exact interval_sound_of_witness_checks (witnesses := c1049_witnesses)
    (lo := 2453822) (hi := 2453824) c1049_checks hc

private def c1050_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk251.w13, B699LowIndex.I11TerminalData.Chunk251.w14, B699LowIndex.I11TerminalData.Chunk251.w15, B699LowIndex.I11TerminalData.Chunk252.w0]
private def c1050_intervals : List NatInterval := [(2703132, 2703132), (2703133, 2703133), (2703134, 2703134), (2703135, 2703135)]

private theorem c1050_intervals_eq :
    witnessIntervals c1050_witnesses = c1050_intervals := by
  rfl

private theorem c1050_checks : witnessesCheck c1050_witnesses = true := by
  simp only [witnessesCheck, c1050_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk251.w13_check, B699LowIndex.I11TerminalData.Chunk251.w14_check, B699LowIndex.I11TerminalData.Chunk251.w15_check, B699LowIndex.I11TerminalData.Chunk252.w0_check, Bool.and_self]

private theorem c1050_cover : coverCheck 2703132 2703135 c1050_intervals = true := by
  decide

private theorem c1050_sound : IntervalSound (2703132, 2703135) := by
  have hc : coverCheck 2703132 2703135 (witnessIntervals c1050_witnesses) = true := by
    rw [c1050_intervals_eq]
    exact c1050_cover
  exact interval_sound_of_witness_checks (witnesses := c1050_witnesses)
    (lo := 2703132) (hi := 2703135) c1050_checks hc

private def c1051_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk252.w1, B699LowIndex.I11TerminalData.Chunk252.w2, B699LowIndex.I11TerminalData.Chunk252.w3, B699LowIndex.I11TerminalData.Chunk252.w4, B699LowIndex.I11TerminalData.Chunk252.w5]
private def c1051_intervals : List NatInterval := [(2899968, 2899968), (2899969, 2899969), (2899970, 2899970), (2899971, 2899971), (2899972, 2899972)]

private theorem c1051_intervals_eq :
    witnessIntervals c1051_witnesses = c1051_intervals := by
  rfl

private theorem c1051_checks : witnessesCheck c1051_witnesses = true := by
  simp only [witnessesCheck, c1051_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk252.w1_check, B699LowIndex.I11TerminalData.Chunk252.w2_check, B699LowIndex.I11TerminalData.Chunk252.w3_check, B699LowIndex.I11TerminalData.Chunk252.w4_check, B699LowIndex.I11TerminalData.Chunk252.w5_check, Bool.and_self]

private theorem c1051_cover : coverCheck 2899968 2899972 c1051_intervals = true := by
  decide

private theorem c1051_sound : IntervalSound (2899968, 2899972) := by
  have hc : coverCheck 2899968 2899972 (witnessIntervals c1051_witnesses) = true := by
    rw [c1051_intervals_eq]
    exact c1051_cover
  exact interval_sound_of_witness_checks (witnesses := c1051_witnesses)
    (lo := 2899968) (hi := 2899972) c1051_checks hc

private def c1052_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk252.w6, B699LowIndex.I11TerminalData.Chunk252.w7]
private def c1052_intervals : List NatInterval := [(9764867, 9764873), (9764874, 9764874)]

private theorem c1052_intervals_eq :
    witnessIntervals c1052_witnesses = c1052_intervals := by
  rfl

private theorem c1052_checks : witnessesCheck c1052_witnesses = true := by
  simp only [witnessesCheck, c1052_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk252.w6_check, B699LowIndex.I11TerminalData.Chunk252.w7_check, Bool.and_self]

private theorem c1052_cover : coverCheck 9764867 9764874 c1052_intervals = true := by
  decide

private theorem c1052_sound : IntervalSound (9764867, 9764874) := by
  have hc : coverCheck 9764867 9764874 (witnessIntervals c1052_witnesses) = true := by
    rw [c1052_intervals_eq]
    exact c1052_cover
  exact interval_sound_of_witness_checks (witnesses := c1052_witnesses)
    (lo := 9764867) (hi := 9764874) c1052_checks hc

private def c1053_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk252.w8]
private def c1053_intervals : List NatInterval := [(19529734, 19529738)]

private theorem c1053_intervals_eq :
    witnessIntervals c1053_witnesses = c1053_intervals := by
  rfl

private theorem c1053_checks : witnessesCheck c1053_witnesses = true := by
  simp only [witnessesCheck, c1053_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk252.w8_check, Bool.and_self]

private theorem c1053_cover : coverCheck 19529734 19529738 c1053_intervals = true := by
  decide

private theorem c1053_sound : IntervalSound (19529734, 19529738) := by
  have hc : coverCheck 19529734 19529738 (witnessIntervals c1053_witnesses) = true := by
    rw [c1053_intervals_eq]
    exact c1053_cover
  exact interval_sound_of_witness_checks (witnesses := c1053_witnesses)
    (lo := 19529734) (hi := 19529738) c1053_checks hc

def intervals : List NatInterval := [(785133, 785137), (818750, 818751), (966656, 966664), (1006020, 1006029), (1015625, 1015633), (1146880, 1146885), (1226911, 1226917), (1384375, 1384381), (1449984, 1449991), (2453822, 2453824), (2703132, 2703135), (2899968, 2899972), (9764867, 9764874), (19529734, 19529738), (29294601, 29294602)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (785133, 785137)) (intervals := [(818750, 818751), (966656, 966664), (1006020, 1006029), (1015625, 1015633), (1146880, 1146885), (1226911, 1226917), (1384375, 1384381), (1449984, 1449991), (2453822, 2453824), (2703132, 2703135), (2899968, 2899972), (9764867, 9764874), (19529734, 19529738), (29294601, 29294602)]) c1040_sound (intervals_sound_cons (I := (818750, 818751)) (intervals := [(966656, 966664), (1006020, 1006029), (1015625, 1015633), (1146880, 1146885), (1226911, 1226917), (1384375, 1384381), (1449984, 1449991), (2453822, 2453824), (2703132, 2703135), (2899968, 2899972), (9764867, 9764874), (19529734, 19529738), (29294601, 29294602)]) c1041_sound (intervals_sound_cons (I := (966656, 966664)) (intervals := [(1006020, 1006029), (1015625, 1015633), (1146880, 1146885), (1226911, 1226917), (1384375, 1384381), (1449984, 1449991), (2453822, 2453824), (2703132, 2703135), (2899968, 2899972), (9764867, 9764874), (19529734, 19529738), (29294601, 29294602)]) c1042_sound (intervals_sound_cons (I := (1006020, 1006029)) (intervals := [(1015625, 1015633), (1146880, 1146885), (1226911, 1226917), (1384375, 1384381), (1449984, 1449991), (2453822, 2453824), (2703132, 2703135), (2899968, 2899972), (9764867, 9764874), (19529734, 19529738), (29294601, 29294602)]) c1043_sound (intervals_sound_cons (I := (1015625, 1015633)) (intervals := [(1146880, 1146885), (1226911, 1226917), (1384375, 1384381), (1449984, 1449991), (2453822, 2453824), (2703132, 2703135), (2899968, 2899972), (9764867, 9764874), (19529734, 19529738), (29294601, 29294602)]) c1044_sound (intervals_sound_cons (I := (1146880, 1146885)) (intervals := [(1226911, 1226917), (1384375, 1384381), (1449984, 1449991), (2453822, 2453824), (2703132, 2703135), (2899968, 2899972), (9764867, 9764874), (19529734, 19529738), (29294601, 29294602)]) c1045_sound (intervals_sound_cons (I := (1226911, 1226917)) (intervals := [(1384375, 1384381), (1449984, 1449991), (2453822, 2453824), (2703132, 2703135), (2899968, 2899972), (9764867, 9764874), (19529734, 19529738), (29294601, 29294602)]) c1046_sound (intervals_sound_cons (I := (1384375, 1384381)) (intervals := [(1449984, 1449991), (2453822, 2453824), (2703132, 2703135), (2899968, 2899972), (9764867, 9764874), (19529734, 19529738), (29294601, 29294602)]) c1047_sound (intervals_sound_cons (I := (1449984, 1449991)) (intervals := [(2453822, 2453824), (2703132, 2703135), (2899968, 2899972), (9764867, 9764874), (19529734, 19529738), (29294601, 29294602)]) c1048_sound (intervals_sound_cons (I := (2453822, 2453824)) (intervals := [(2703132, 2703135), (2899968, 2899972), (9764867, 9764874), (19529734, 19529738), (29294601, 29294602)]) c1049_sound (intervals_sound_cons (I := (2703132, 2703135)) (intervals := [(2899968, 2899972), (9764867, 9764874), (19529734, 19529738), (29294601, 29294602)]) c1050_sound (intervals_sound_cons (I := (2899968, 2899972)) (intervals := [(9764867, 9764874), (19529734, 19529738), (29294601, 29294602)]) c1051_sound (intervals_sound_cons (I := (9764867, 9764874)) (intervals := [(19529734, 19529738), (29294601, 29294602)]) c1052_sound (intervals_sound_cons (I := (19529734, 19529738)) (intervals := [(29294601, 29294602)]) c1053_sound (intervals_sound_cons (I := (29294601, 29294602)) (intervals := []) Math.B699.I11TerminalCandidateCoverage.Last.sound intervals_sound_nil)))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G065
