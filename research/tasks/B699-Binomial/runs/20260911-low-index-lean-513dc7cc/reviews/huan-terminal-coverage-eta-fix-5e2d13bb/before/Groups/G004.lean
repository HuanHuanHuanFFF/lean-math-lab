import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk075
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk076
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk077
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk078

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G004
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0064_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk075.w3, B699LowIndex.I11TerminalData.Chunk075.w4, B699LowIndex.I11TerminalData.Chunk075.w5, B699LowIndex.I11TerminalData.Chunk075.w6]
private def c0064_intervals : List NatInterval := [(5319, 5319), (5320, 5320), (5321, 5321), (5322, 5322)]

private theorem c0064_intervals_eq :
    witnessIntervals c0064_witnesses = c0064_intervals := by
  rfl

private theorem c0064_checks : witnessesCheck c0064_witnesses = true := by
  simp only [witnessesCheck, c0064_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk075.w3_check, B699LowIndex.I11TerminalData.Chunk075.w4_check, B699LowIndex.I11TerminalData.Chunk075.w5_check, B699LowIndex.I11TerminalData.Chunk075.w6_check, Bool.and_self]

private theorem c0064_cover : coverCheck 5319 5322 c0064_intervals = true := by
  decide

private theorem c0064_sound : IntervalSound (5319, 5322) := by
  have hc : coverCheck 5319 5322 (witnessIntervals c0064_witnesses) = true := by
    rw [c0064_intervals_eq]
    exact c0064_cover
  exact interval_sound_of_witness_checks (witnesses := c0064_witnesses)
    (lo := 5319) (hi := 5322) c0064_checks hc

private def c0065_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk075.w7, B699LowIndex.I11TerminalData.Chunk075.w8]
private def c0065_intervals : List NatInterval := [(5325, 5333), (5334, 5335)]

private theorem c0065_intervals_eq :
    witnessIntervals c0065_witnesses = c0065_intervals := by
  rfl

private theorem c0065_checks : witnessesCheck c0065_witnesses = true := by
  simp only [witnessesCheck, c0065_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk075.w7_check, B699LowIndex.I11TerminalData.Chunk075.w8_check, Bool.and_self]

private theorem c0065_cover : coverCheck 5325 5335 c0065_intervals = true := by
  decide

private theorem c0065_sound : IntervalSound (5325, 5335) := by
  have hc : coverCheck 5325 5335 (witnessIntervals c0065_witnesses) = true := by
    rw [c0065_intervals_eq]
    exact c0065_cover
  exact interval_sound_of_witness_checks (witnesses := c0065_witnesses)
    (lo := 5325) (hi := 5335) c0065_checks hc

private def c0066_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk075.w9, B699LowIndex.I11TerminalData.Chunk075.w10, B699LowIndex.I11TerminalData.Chunk075.w11, B699LowIndex.I11TerminalData.Chunk075.w12]
private def c0066_intervals : List NatInterval := [(5344, 5344), (5345, 5345), (5346, 5346), (5347, 5356)]

private theorem c0066_intervals_eq :
    witnessIntervals c0066_witnesses = c0066_intervals := by
  rfl

private theorem c0066_checks : witnessesCheck c0066_witnesses = true := by
  simp only [witnessesCheck, c0066_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk075.w9_check, B699LowIndex.I11TerminalData.Chunk075.w10_check, B699LowIndex.I11TerminalData.Chunk075.w11_check, B699LowIndex.I11TerminalData.Chunk075.w12_check, Bool.and_self]

private theorem c0066_cover : coverCheck 5344 5356 c0066_intervals = true := by
  decide

private theorem c0066_sound : IntervalSound (5344, 5356) := by
  have hc : coverCheck 5344 5356 (witnessIntervals c0066_witnesses) = true := by
    rw [c0066_intervals_eq]
    exact c0066_cover
  exact interval_sound_of_witness_checks (witnesses := c0066_witnesses)
    (lo := 5344) (hi := 5356) c0066_checks hc

private def c0067_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk075.w13]
private def c0067_intervals : List NatInterval := [(5360, 5360)]

private theorem c0067_intervals_eq :
    witnessIntervals c0067_witnesses = c0067_intervals := by
  rfl

private theorem c0067_checks : witnessesCheck c0067_witnesses = true := by
  simp only [witnessesCheck, c0067_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk075.w13_check, Bool.and_self]

private theorem c0067_cover : coverCheck 5360 5360 c0067_intervals = true := by
  decide

private theorem c0067_sound : IntervalSound (5360, 5360) := by
  have hc : coverCheck 5360 5360 (witnessIntervals c0067_witnesses) = true := by
    rw [c0067_intervals_eq]
    exact c0067_cover
  exact interval_sound_of_witness_checks (witnesses := c0067_witnesses)
    (lo := 5360) (hi := 5360) c0067_checks hc

private def c0068_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk075.w14, B699LowIndex.I11TerminalData.Chunk075.w15, B699LowIndex.I11TerminalData.Chunk076.w0, B699LowIndex.I11TerminalData.Chunk076.w1, B699LowIndex.I11TerminalData.Chunk076.w2, B699LowIndex.I11TerminalData.Chunk076.w3, B699LowIndex.I11TerminalData.Chunk076.w4]
private def c0068_intervals : List NatInterval := [(5375, 5375), (5376, 5376), (5377, 5377), (5378, 5378), (5379, 5379), (5380, 5380), (5381, 5385)]

private theorem c0068_intervals_eq :
    witnessIntervals c0068_witnesses = c0068_intervals := by
  rfl

private theorem c0068_checks : witnessesCheck c0068_witnesses = true := by
  simp only [witnessesCheck, c0068_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk075.w14_check, B699LowIndex.I11TerminalData.Chunk075.w15_check, B699LowIndex.I11TerminalData.Chunk076.w0_check, B699LowIndex.I11TerminalData.Chunk076.w1_check, B699LowIndex.I11TerminalData.Chunk076.w2_check, B699LowIndex.I11TerminalData.Chunk076.w3_check, B699LowIndex.I11TerminalData.Chunk076.w4_check, Bool.and_self]

private theorem c0068_cover : coverCheck 5375 5385 c0068_intervals = true := by
  decide

private theorem c0068_sound : IntervalSound (5375, 5385) := by
  have hc : coverCheck 5375 5385 (witnessIntervals c0068_witnesses) = true := by
    rw [c0068_intervals_eq]
    exact c0068_cover
  exact interval_sound_of_witness_checks (witnesses := c0068_witnesses)
    (lo := 5375) (hi := 5385) c0068_checks hc

private def c0069_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk076.w5, B699LowIndex.I11TerminalData.Chunk076.w6, B699LowIndex.I11TerminalData.Chunk076.w7, B699LowIndex.I11TerminalData.Chunk076.w8]
private def c0069_intervals : List NatInterval := [(5392, 5397), (5398, 5403), (5404, 5409), (5410, 5410)]

private theorem c0069_intervals_eq :
    witnessIntervals c0069_witnesses = c0069_intervals := by
  rfl

private theorem c0069_checks : witnessesCheck c0069_witnesses = true := by
  simp only [witnessesCheck, c0069_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk076.w5_check, B699LowIndex.I11TerminalData.Chunk076.w6_check, B699LowIndex.I11TerminalData.Chunk076.w7_check, B699LowIndex.I11TerminalData.Chunk076.w8_check, Bool.and_self]

private theorem c0069_cover : coverCheck 5392 5410 c0069_intervals = true := by
  decide

private theorem c0069_sound : IntervalSound (5392, 5410) := by
  have hc : coverCheck 5392 5410 (witnessIntervals c0069_witnesses) = true := by
    rw [c0069_intervals_eq]
    exact c0069_cover
  exact interval_sound_of_witness_checks (witnesses := c0069_witnesses)
    (lo := 5392) (hi := 5410) c0069_checks hc

private def c0070_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk076.w9, B699LowIndex.I11TerminalData.Chunk076.w10, B699LowIndex.I11TerminalData.Chunk076.w11]
private def c0070_intervals : List NatInterval := [(5425, 5429), (5430, 5430), (5431, 5435)]

private theorem c0070_intervals_eq :
    witnessIntervals c0070_witnesses = c0070_intervals := by
  rfl

private theorem c0070_checks : witnessesCheck c0070_witnesses = true := by
  simp only [witnessesCheck, c0070_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk076.w9_check, B699LowIndex.I11TerminalData.Chunk076.w10_check, B699LowIndex.I11TerminalData.Chunk076.w11_check, Bool.and_self]

private theorem c0070_cover : coverCheck 5425 5435 c0070_intervals = true := by
  decide

private theorem c0070_sound : IntervalSound (5425, 5435) := by
  have hc : coverCheck 5425 5435 (witnessIntervals c0070_witnesses) = true := by
    rw [c0070_intervals_eq]
    exact c0070_cover
  exact interval_sound_of_witness_checks (witnesses := c0070_witnesses)
    (lo := 5425) (hi := 5435) c0070_checks hc

private def c0071_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk076.w12, B699LowIndex.I11TerminalData.Chunk076.w13]
private def c0071_intervals : List NatInterval := [(5440, 5447), (5448, 5450)]

private theorem c0071_intervals_eq :
    witnessIntervals c0071_witnesses = c0071_intervals := by
  rfl

private theorem c0071_checks : witnessesCheck c0071_witnesses = true := by
  simp only [witnessesCheck, c0071_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk076.w12_check, B699LowIndex.I11TerminalData.Chunk076.w13_check, Bool.and_self]

private theorem c0071_cover : coverCheck 5440 5450 c0071_intervals = true := by
  decide

private theorem c0071_sound : IntervalSound (5440, 5450) := by
  have hc : coverCheck 5440 5450 (witnessIntervals c0071_witnesses) = true := by
    rw [c0071_intervals_eq]
    exact c0071_cover
  exact interval_sound_of_witness_checks (witnesses := c0071_witnesses)
    (lo := 5440) (hi := 5450) c0071_checks hc

private def c0072_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk076.w14, B699LowIndex.I11TerminalData.Chunk076.w15, B699LowIndex.I11TerminalData.Chunk077.w0, B699LowIndex.I11TerminalData.Chunk077.w1, B699LowIndex.I11TerminalData.Chunk077.w2, B699LowIndex.I11TerminalData.Chunk077.w3]
private def c0072_intervals : List NatInterval := [(5454, 5459), (5460, 5460), (5461, 5461), (5462, 5462), (5463, 5463), (5464, 5464)]

private theorem c0072_intervals_eq :
    witnessIntervals c0072_witnesses = c0072_intervals := by
  rfl

private theorem c0072_checks : witnessesCheck c0072_witnesses = true := by
  simp only [witnessesCheck, c0072_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk076.w14_check, B699LowIndex.I11TerminalData.Chunk076.w15_check, B699LowIndex.I11TerminalData.Chunk077.w0_check, B699LowIndex.I11TerminalData.Chunk077.w1_check, B699LowIndex.I11TerminalData.Chunk077.w2_check, B699LowIndex.I11TerminalData.Chunk077.w3_check, Bool.and_self]

private theorem c0072_cover : coverCheck 5454 5464 c0072_intervals = true := by
  decide

private theorem c0072_sound : IntervalSound (5454, 5464) := by
  have hc : coverCheck 5454 5464 (witnessIntervals c0072_witnesses) = true := by
    rw [c0072_intervals_eq]
    exact c0072_cover
  exact interval_sound_of_witness_checks (witnesses := c0072_witnesses)
    (lo := 5454) (hi := 5464) c0072_checks hc

private def c0073_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk077.w4, B699LowIndex.I11TerminalData.Chunk077.w5]
private def c0073_intervals : List NatInterval := [(5475, 5481), (5482, 5485)]

private theorem c0073_intervals_eq :
    witnessIntervals c0073_witnesses = c0073_intervals := by
  rfl

private theorem c0073_checks : witnessesCheck c0073_witnesses = true := by
  simp only [witnessesCheck, c0073_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk077.w4_check, B699LowIndex.I11TerminalData.Chunk077.w5_check, Bool.and_self]

private theorem c0073_cover : coverCheck 5475 5485 c0073_intervals = true := by
  decide

private theorem c0073_sound : IntervalSound (5475, 5485) := by
  have hc : coverCheck 5475 5485 (witnessIntervals c0073_witnesses) = true := by
    rw [c0073_intervals_eq]
    exact c0073_cover
  exact interval_sound_of_witness_checks (witnesses := c0073_witnesses)
    (lo := 5475) (hi := 5485) c0073_checks hc

private def c0074_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk077.w6, B699LowIndex.I11TerminalData.Chunk077.w7, B699LowIndex.I11TerminalData.Chunk077.w8, B699LowIndex.I11TerminalData.Chunk077.w9, B699LowIndex.I11TerminalData.Chunk077.w10, B699LowIndex.I11TerminalData.Chunk077.w11]
private def c0074_intervals : List NatInterval := [(5488, 5493), (5494, 5494), (5495, 5495), (5496, 5496), (5497, 5497), (5498, 5498)]

private theorem c0074_intervals_eq :
    witnessIntervals c0074_witnesses = c0074_intervals := by
  rfl

private theorem c0074_checks : witnessesCheck c0074_witnesses = true := by
  simp only [witnessesCheck, c0074_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk077.w6_check, B699LowIndex.I11TerminalData.Chunk077.w7_check, B699LowIndex.I11TerminalData.Chunk077.w8_check, B699LowIndex.I11TerminalData.Chunk077.w9_check, B699LowIndex.I11TerminalData.Chunk077.w10_check, B699LowIndex.I11TerminalData.Chunk077.w11_check, Bool.and_self]

private theorem c0074_cover : coverCheck 5488 5498 c0074_intervals = true := by
  decide

private theorem c0074_sound : IntervalSound (5488, 5498) := by
  have hc : coverCheck 5488 5498 (witnessIntervals c0074_witnesses) = true := by
    rw [c0074_intervals_eq]
    exact c0074_cover
  exact interval_sound_of_witness_checks (witnesses := c0074_witnesses)
    (lo := 5488) (hi := 5498) c0074_checks hc

private def c0075_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk077.w12, B699LowIndex.I11TerminalData.Chunk077.w13]
private def c0075_intervals : List NatInterval := [(5504, 5513), (5514, 5514)]

private theorem c0075_intervals_eq :
    witnessIntervals c0075_witnesses = c0075_intervals := by
  rfl

private theorem c0075_checks : witnessesCheck c0075_witnesses = true := by
  simp only [witnessesCheck, c0075_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk077.w12_check, B699LowIndex.I11TerminalData.Chunk077.w13_check, Bool.and_self]

private theorem c0075_cover : coverCheck 5504 5514 c0075_intervals = true := by
  decide

private theorem c0075_sound : IntervalSound (5504, 5514) := by
  have hc : coverCheck 5504 5514 (witnessIntervals c0075_witnesses) = true := by
    rw [c0075_intervals_eq]
    exact c0075_cover
  exact interval_sound_of_witness_checks (witnesses := c0075_witnesses)
    (lo := 5504) (hi := 5514) c0075_checks hc

private def c0076_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk077.w14]
private def c0076_intervals : List NatInterval := [(5525, 5530)]

private theorem c0076_intervals_eq :
    witnessIntervals c0076_witnesses = c0076_intervals := by
  rfl

private theorem c0076_checks : witnessesCheck c0076_witnesses = true := by
  simp only [witnessesCheck, c0076_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk077.w14_check, Bool.and_self]

private theorem c0076_cover : coverCheck 5525 5530 c0076_intervals = true := by
  decide

private theorem c0076_sound : IntervalSound (5525, 5530) := by
  have hc : coverCheck 5525 5530 (witnessIntervals c0076_witnesses) = true := by
    rw [c0076_intervals_eq]
    exact c0076_cover
  exact interval_sound_of_witness_checks (witnesses := c0076_witnesses)
    (lo := 5525) (hi := 5530) c0076_checks hc

private def c0077_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk077.w15, B699LowIndex.I11TerminalData.Chunk078.w0, B699LowIndex.I11TerminalData.Chunk078.w1, B699LowIndex.I11TerminalData.Chunk078.w2, B699LowIndex.I11TerminalData.Chunk078.w3, B699LowIndex.I11TerminalData.Chunk078.w4]
private def c0077_intervals : List NatInterval := [(5535, 5541), (5542, 5542), (5543, 5543), (5544, 5544), (5545, 5545), (5546, 5546)]

private theorem c0077_intervals_eq :
    witnessIntervals c0077_witnesses = c0077_intervals := by
  rfl

private theorem c0077_checks : witnessesCheck c0077_witnesses = true := by
  simp only [witnessesCheck, c0077_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk077.w15_check, B699LowIndex.I11TerminalData.Chunk078.w0_check, B699LowIndex.I11TerminalData.Chunk078.w1_check, B699LowIndex.I11TerminalData.Chunk078.w2_check, B699LowIndex.I11TerminalData.Chunk078.w3_check, B699LowIndex.I11TerminalData.Chunk078.w4_check, Bool.and_self]

private theorem c0077_cover : coverCheck 5535 5546 c0077_intervals = true := by
  decide

private theorem c0077_sound : IntervalSound (5535, 5546) := by
  have hc : coverCheck 5535 5546 (witnessIntervals c0077_witnesses) = true := by
    rw [c0077_intervals_eq]
    exact c0077_cover
  exact interval_sound_of_witness_checks (witnesses := c0077_witnesses)
    (lo := 5535) (hi := 5546) c0077_checks hc

private def c0078_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk078.w5, B699LowIndex.I11TerminalData.Chunk078.w6, B699LowIndex.I11TerminalData.Chunk078.w7, B699LowIndex.I11TerminalData.Chunk078.w8, B699LowIndex.I11TerminalData.Chunk078.w9, B699LowIndex.I11TerminalData.Chunk078.w10]
private def c0078_intervals : List NatInterval := [(5552, 5552), (5553, 5553), (5554, 5554), (5555, 5555), (5556, 5556), (5557, 5560)]

private theorem c0078_intervals_eq :
    witnessIntervals c0078_witnesses = c0078_intervals := by
  rfl

private theorem c0078_checks : witnessesCheck c0078_witnesses = true := by
  simp only [witnessesCheck, c0078_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk078.w5_check, B699LowIndex.I11TerminalData.Chunk078.w6_check, B699LowIndex.I11TerminalData.Chunk078.w7_check, B699LowIndex.I11TerminalData.Chunk078.w8_check, B699LowIndex.I11TerminalData.Chunk078.w9_check, B699LowIndex.I11TerminalData.Chunk078.w10_check, Bool.and_self]

private theorem c0078_cover : coverCheck 5552 5560 c0078_intervals = true := by
  decide

private theorem c0078_sound : IntervalSound (5552, 5560) := by
  have hc : coverCheck 5552 5560 (witnessIntervals c0078_witnesses) = true := by
    rw [c0078_intervals_eq]
    exact c0078_cover
  exact interval_sound_of_witness_checks (witnesses := c0078_witnesses)
    (lo := 5552) (hi := 5560) c0078_checks hc

private def c0079_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk078.w11]
private def c0079_intervals : List NatInterval := [(5562, 5562)]

private theorem c0079_intervals_eq :
    witnessIntervals c0079_witnesses = c0079_intervals := by
  rfl

private theorem c0079_checks : witnessesCheck c0079_witnesses = true := by
  simp only [witnessesCheck, c0079_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk078.w11_check, Bool.and_self]

private theorem c0079_cover : coverCheck 5562 5562 c0079_intervals = true := by
  decide

private theorem c0079_sound : IntervalSound (5562, 5562) := by
  have hc : coverCheck 5562 5562 (witnessIntervals c0079_witnesses) = true := by
    rw [c0079_intervals_eq]
    exact c0079_cover
  exact interval_sound_of_witness_checks (witnesses := c0079_witnesses)
    (lo := 5562) (hi := 5562) c0079_checks hc

def intervals : List NatInterval := [(5319, 5322), (5325, 5335), (5344, 5356), (5360, 5360), (5375, 5385), (5392, 5410), (5425, 5435), (5440, 5450), (5454, 5464), (5475, 5485), (5488, 5498), (5504, 5514), (5525, 5530), (5535, 5546), (5552, 5560), (5562, 5562)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (5319, 5322)) (intervals := [(5325, 5335), (5344, 5356), (5360, 5360), (5375, 5385), (5392, 5410), (5425, 5435), (5440, 5450), (5454, 5464), (5475, 5485), (5488, 5498), (5504, 5514), (5525, 5530), (5535, 5546), (5552, 5560), (5562, 5562)]) c0064_sound (intervals_sound_cons (I := (5325, 5335)) (intervals := [(5344, 5356), (5360, 5360), (5375, 5385), (5392, 5410), (5425, 5435), (5440, 5450), (5454, 5464), (5475, 5485), (5488, 5498), (5504, 5514), (5525, 5530), (5535, 5546), (5552, 5560), (5562, 5562)]) c0065_sound (intervals_sound_cons (I := (5344, 5356)) (intervals := [(5360, 5360), (5375, 5385), (5392, 5410), (5425, 5435), (5440, 5450), (5454, 5464), (5475, 5485), (5488, 5498), (5504, 5514), (5525, 5530), (5535, 5546), (5552, 5560), (5562, 5562)]) c0066_sound (intervals_sound_cons (I := (5360, 5360)) (intervals := [(5375, 5385), (5392, 5410), (5425, 5435), (5440, 5450), (5454, 5464), (5475, 5485), (5488, 5498), (5504, 5514), (5525, 5530), (5535, 5546), (5552, 5560), (5562, 5562)]) c0067_sound (intervals_sound_cons (I := (5375, 5385)) (intervals := [(5392, 5410), (5425, 5435), (5440, 5450), (5454, 5464), (5475, 5485), (5488, 5498), (5504, 5514), (5525, 5530), (5535, 5546), (5552, 5560), (5562, 5562)]) c0068_sound (intervals_sound_cons (I := (5392, 5410)) (intervals := [(5425, 5435), (5440, 5450), (5454, 5464), (5475, 5485), (5488, 5498), (5504, 5514), (5525, 5530), (5535, 5546), (5552, 5560), (5562, 5562)]) c0069_sound (intervals_sound_cons (I := (5425, 5435)) (intervals := [(5440, 5450), (5454, 5464), (5475, 5485), (5488, 5498), (5504, 5514), (5525, 5530), (5535, 5546), (5552, 5560), (5562, 5562)]) c0070_sound (intervals_sound_cons (I := (5440, 5450)) (intervals := [(5454, 5464), (5475, 5485), (5488, 5498), (5504, 5514), (5525, 5530), (5535, 5546), (5552, 5560), (5562, 5562)]) c0071_sound (intervals_sound_cons (I := (5454, 5464)) (intervals := [(5475, 5485), (5488, 5498), (5504, 5514), (5525, 5530), (5535, 5546), (5552, 5560), (5562, 5562)]) c0072_sound (intervals_sound_cons (I := (5475, 5485)) (intervals := [(5488, 5498), (5504, 5514), (5525, 5530), (5535, 5546), (5552, 5560), (5562, 5562)]) c0073_sound (intervals_sound_cons (I := (5488, 5498)) (intervals := [(5504, 5514), (5525, 5530), (5535, 5546), (5552, 5560), (5562, 5562)]) c0074_sound (intervals_sound_cons (I := (5504, 5514)) (intervals := [(5525, 5530), (5535, 5546), (5552, 5560), (5562, 5562)]) c0075_sound (intervals_sound_cons (I := (5525, 5530)) (intervals := [(5535, 5546), (5552, 5560), (5562, 5562)]) c0076_sound (intervals_sound_cons (I := (5535, 5546)) (intervals := [(5552, 5560), (5562, 5562)]) c0077_sound (intervals_sound_cons (I := (5552, 5560)) (intervals := [(5562, 5562)]) c0078_sound (intervals_sound_cons (I := (5562, 5562)) (intervals := []) c0079_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G004
