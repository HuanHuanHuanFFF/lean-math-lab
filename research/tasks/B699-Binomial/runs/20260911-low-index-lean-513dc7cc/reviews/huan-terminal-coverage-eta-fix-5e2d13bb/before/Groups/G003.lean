import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk071
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk072
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk073
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk074
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk075

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G003
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0048_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk071.w10, B699LowIndex.I11TerminalData.Chunk071.w11, B699LowIndex.I11TerminalData.Chunk071.w12]
private def c0048_intervals : List NatInterval := [(5075, 5075), (5076, 5076), (5077, 5085)]

private theorem c0048_intervals_eq :
    witnessIntervals c0048_witnesses = c0048_intervals := by
  rfl

private theorem c0048_checks : witnessesCheck c0048_witnesses = true := by
  simp only [witnessesCheck, c0048_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk071.w10_check, B699LowIndex.I11TerminalData.Chunk071.w11_check, B699LowIndex.I11TerminalData.Chunk071.w12_check, Bool.and_self]

private theorem c0048_cover : coverCheck 5075 5085 c0048_intervals = true := by
  decide

private theorem c0048_sound : IntervalSound (5075, 5085) := by
  have hc : coverCheck 5075 5085 (witnessIntervals c0048_witnesses) = true := by
    rw [c0048_intervals_eq]
    exact c0048_cover
  exact interval_sound_of_witness_checks (witnesses := c0048_witnesses)
    (lo := 5075) (hi := 5085) c0048_checks hc

private def c0049_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk071.w13, B699LowIndex.I11TerminalData.Chunk071.w14]
private def c0049_intervals : List NatInterval := [(5096, 5097), (5098, 5098)]

private theorem c0049_intervals_eq :
    witnessIntervals c0049_witnesses = c0049_intervals := by
  rfl

private theorem c0049_checks : witnessesCheck c0049_witnesses = true := by
  simp only [witnessesCheck, c0049_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk071.w13_check, B699LowIndex.I11TerminalData.Chunk071.w14_check, Bool.and_self]

private theorem c0049_cover : coverCheck 5096 5098 c0049_intervals = true := by
  decide

private theorem c0049_sound : IntervalSound (5096, 5098) := by
  have hc : coverCheck 5096 5098 (witnessIntervals c0049_witnesses) = true := by
    rw [c0049_intervals_eq]
    exact c0049_cover
  exact interval_sound_of_witness_checks (witnesses := c0049_witnesses)
    (lo := 5096) (hi := 5098) c0049_checks hc

private def c0050_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk071.w15, B699LowIndex.I11TerminalData.Chunk072.w0]
private def c0050_intervals : List NatInterval := [(5100, 5109), (5110, 5113)]

private theorem c0050_intervals_eq :
    witnessIntervals c0050_witnesses = c0050_intervals := by
  rfl

private theorem c0050_checks : witnessesCheck c0050_witnesses = true := by
  simp only [witnessesCheck, c0050_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk071.w15_check, B699LowIndex.I11TerminalData.Chunk072.w0_check, Bool.and_self]

private theorem c0050_cover : coverCheck 5100 5113 c0050_intervals = true := by
  decide

private theorem c0050_sound : IntervalSound (5100, 5113) := by
  have hc : coverCheck 5100 5113 (witnessIntervals c0050_witnesses) = true := by
    rw [c0050_intervals_eq]
    exact c0050_cover
  exact interval_sound_of_witness_checks (witnesses := c0050_witnesses)
    (lo := 5100) (hi := 5113) c0050_checks hc

private def c0051_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk072.w1, B699LowIndex.I11TerminalData.Chunk072.w2, B699LowIndex.I11TerminalData.Chunk072.w3, B699LowIndex.I11TerminalData.Chunk072.w4, B699LowIndex.I11TerminalData.Chunk072.w5, B699LowIndex.I11TerminalData.Chunk072.w6, B699LowIndex.I11TerminalData.Chunk072.w7, B699LowIndex.I11TerminalData.Chunk072.w8, B699LowIndex.I11TerminalData.Chunk072.w9, B699LowIndex.I11TerminalData.Chunk072.w10, B699LowIndex.I11TerminalData.Chunk072.w11, B699LowIndex.I11TerminalData.Chunk072.w12]
private def c0051_intervals : List NatInterval := [(5125, 5129), (5130, 5130), (5131, 5131), (5132, 5132), (5133, 5133), (5134, 5134), (5135, 5135), (5136, 5136), (5137, 5137), (5138, 5138), (5139, 5139), (5140, 5140)]

private theorem c0051_intervals_eq :
    witnessIntervals c0051_witnesses = c0051_intervals := by
  rfl

private theorem c0051_checks : witnessesCheck c0051_witnesses = true := by
  simp only [witnessesCheck, c0051_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk072.w1_check, B699LowIndex.I11TerminalData.Chunk072.w2_check, B699LowIndex.I11TerminalData.Chunk072.w3_check, B699LowIndex.I11TerminalData.Chunk072.w4_check, B699LowIndex.I11TerminalData.Chunk072.w5_check, B699LowIndex.I11TerminalData.Chunk072.w6_check, B699LowIndex.I11TerminalData.Chunk072.w7_check, B699LowIndex.I11TerminalData.Chunk072.w8_check, B699LowIndex.I11TerminalData.Chunk072.w9_check, B699LowIndex.I11TerminalData.Chunk072.w10_check, B699LowIndex.I11TerminalData.Chunk072.w11_check, B699LowIndex.I11TerminalData.Chunk072.w12_check, Bool.and_self]

private theorem c0051_cover : coverCheck 5125 5140 c0051_intervals = true := by
  decide

private theorem c0051_sound : IntervalSound (5125, 5140) := by
  have hc : coverCheck 5125 5140 (witnessIntervals c0051_witnesses) = true := by
    rw [c0051_intervals_eq]
    exact c0051_cover
  exact interval_sound_of_witness_checks (witnesses := c0051_witnesses)
    (lo := 5125) (hi := 5140) c0051_checks hc

private def c0052_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk072.w13, B699LowIndex.I11TerminalData.Chunk072.w14]
private def c0052_intervals : List NatInterval := [(5145, 5145), (5146, 5146)]

private theorem c0052_intervals_eq :
    witnessIntervals c0052_witnesses = c0052_intervals := by
  rfl

private theorem c0052_checks : witnessesCheck c0052_witnesses = true := by
  simp only [witnessesCheck, c0052_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk072.w13_check, B699LowIndex.I11TerminalData.Chunk072.w14_check, Bool.and_self]

private theorem c0052_cover : coverCheck 5145 5146 c0052_intervals = true := by
  decide

private theorem c0052_sound : IntervalSound (5145, 5146) := by
  have hc : coverCheck 5145 5146 (witnessIntervals c0052_witnesses) = true := by
    rw [c0052_intervals_eq]
    exact c0052_cover
  exact interval_sound_of_witness_checks (witnesses := c0052_witnesses)
    (lo := 5145) (hi := 5146) c0052_checks hc

private def c0053_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk072.w15, B699LowIndex.I11TerminalData.Chunk073.w0]
private def c0053_intervals : List NatInterval := [(5150, 5157), (5158, 5162)]

private theorem c0053_intervals_eq :
    witnessIntervals c0053_witnesses = c0053_intervals := by
  rfl

private theorem c0053_checks : witnessesCheck c0053_witnesses = true := by
  simp only [witnessesCheck, c0053_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk072.w15_check, B699LowIndex.I11TerminalData.Chunk073.w0_check, Bool.and_self]

private theorem c0053_cover : coverCheck 5150 5162 c0053_intervals = true := by
  decide

private theorem c0053_sound : IntervalSound (5150, 5162) := by
  have hc : coverCheck 5150 5162 (witnessIntervals c0053_witnesses) = true := by
    rw [c0053_intervals_eq]
    exact c0053_cover
  exact interval_sound_of_witness_checks (witnesses := c0053_witnesses)
    (lo := 5150) (hi := 5162) c0053_checks hc

private def c0054_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk073.w1]
private def c0054_intervals : List NatInterval := [(5175, 5178)]

private theorem c0054_intervals_eq :
    witnessIntervals c0054_witnesses = c0054_intervals := by
  rfl

private theorem c0054_checks : witnessesCheck c0054_witnesses = true := by
  simp only [witnessesCheck, c0054_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk073.w1_check, Bool.and_self]

private theorem c0054_cover : coverCheck 5175 5178 c0054_intervals = true := by
  decide

private theorem c0054_sound : IntervalSound (5175, 5178) := by
  have hc : coverCheck 5175 5178 (witnessIntervals c0054_witnesses) = true := by
    rw [c0054_intervals_eq]
    exact c0054_cover
  exact interval_sound_of_witness_checks (witnesses := c0054_witnesses)
    (lo := 5175) (hi := 5178) c0054_checks hc

private def c0055_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk073.w2, B699LowIndex.I11TerminalData.Chunk073.w3]
private def c0055_intervals : List NatInterval := [(5184, 5189), (5190, 5194)]

private theorem c0055_intervals_eq :
    witnessIntervals c0055_witnesses = c0055_intervals := by
  rfl

private theorem c0055_checks : witnessesCheck c0055_witnesses = true := by
  simp only [witnessesCheck, c0055_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk073.w2_check, B699LowIndex.I11TerminalData.Chunk073.w3_check, Bool.and_self]

private theorem c0055_cover : coverCheck 5184 5194 c0055_intervals = true := by
  decide

private theorem c0055_sound : IntervalSound (5184, 5194) := by
  have hc : coverCheck 5184 5194 (witnessIntervals c0055_witnesses) = true := by
    rw [c0055_intervals_eq]
    exact c0055_cover
  exact interval_sound_of_witness_checks (witnesses := c0055_witnesses)
    (lo := 5184) (hi := 5194) c0055_checks hc

private def c0056_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk073.w4, B699LowIndex.I11TerminalData.Chunk073.w5, B699LowIndex.I11TerminalData.Chunk073.w6]
private def c0056_intervals : List NatInterval := [(5200, 5207), (5208, 5208), (5209, 5210)]

private theorem c0056_intervals_eq :
    witnessIntervals c0056_witnesses = c0056_intervals := by
  rfl

private theorem c0056_checks : witnessesCheck c0056_witnesses = true := by
  simp only [witnessesCheck, c0056_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk073.w4_check, B699LowIndex.I11TerminalData.Chunk073.w5_check, B699LowIndex.I11TerminalData.Chunk073.w6_check, Bool.and_self]

private theorem c0056_cover : coverCheck 5200 5210 c0056_intervals = true := by
  decide

private theorem c0056_sound : IntervalSound (5200, 5210) := by
  have hc : coverCheck 5200 5210 (witnessIntervals c0056_witnesses) = true := by
    rw [c0056_intervals_eq]
    exact c0056_cover
  exact interval_sound_of_witness_checks (witnesses := c0056_witnesses)
    (lo := 5200) (hi := 5210) c0056_checks hc

private def c0057_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk073.w7, B699LowIndex.I11TerminalData.Chunk073.w8, B699LowIndex.I11TerminalData.Chunk073.w9]
private def c0057_intervals : List NatInterval := [(5216, 5219), (5220, 5220), (5221, 5221)]

private theorem c0057_intervals_eq :
    witnessIntervals c0057_witnesses = c0057_intervals := by
  rfl

private theorem c0057_checks : witnessesCheck c0057_witnesses = true := by
  simp only [witnessesCheck, c0057_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk073.w7_check, B699LowIndex.I11TerminalData.Chunk073.w8_check, B699LowIndex.I11TerminalData.Chunk073.w9_check, Bool.and_self]

private theorem c0057_cover : coverCheck 5216 5221 c0057_intervals = true := by
  decide

private theorem c0057_sound : IntervalSound (5216, 5221) := by
  have hc : coverCheck 5216 5221 (witnessIntervals c0057_witnesses) = true := by
    rw [c0057_intervals_eq]
    exact c0057_cover
  exact interval_sound_of_witness_checks (witnesses := c0057_witnesses)
    (lo := 5216) (hi := 5221) c0057_checks hc

private def c0058_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk073.w10, B699LowIndex.I11TerminalData.Chunk073.w11]
private def c0058_intervals : List NatInterval := [(5225, 5225), (5226, 5226)]

private theorem c0058_intervals_eq :
    witnessIntervals c0058_witnesses = c0058_intervals := by
  rfl

private theorem c0058_checks : witnessesCheck c0058_witnesses = true := by
  simp only [witnessesCheck, c0058_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk073.w10_check, B699LowIndex.I11TerminalData.Chunk073.w11_check, Bool.and_self]

private theorem c0058_cover : coverCheck 5225 5226 c0058_intervals = true := by
  decide

private theorem c0058_sound : IntervalSound (5225, 5226) := by
  have hc : coverCheck 5225 5226 (witnessIntervals c0058_witnesses) = true := by
    rw [c0058_intervals_eq]
    exact c0058_cover
  exact interval_sound_of_witness_checks (witnesses := c0058_witnesses)
    (lo := 5225) (hi := 5226) c0058_checks hc

private def c0059_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk073.w12]
private def c0059_intervals : List NatInterval := [(5232, 5235)]

private theorem c0059_intervals_eq :
    witnessIntervals c0059_witnesses = c0059_intervals := by
  rfl

private theorem c0059_checks : witnessesCheck c0059_witnesses = true := by
  simp only [witnessesCheck, c0059_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk073.w12_check, Bool.and_self]

private theorem c0059_cover : coverCheck 5232 5235 c0059_intervals = true := by
  decide

private theorem c0059_sound : IntervalSound (5232, 5235) := by
  have hc : coverCheck 5232 5235 (witnessIntervals c0059_witnesses) = true := by
    rw [c0059_intervals_eq]
    exact c0059_cover
  exact interval_sound_of_witness_checks (witnesses := c0059_witnesses)
    (lo := 5232) (hi := 5235) c0059_checks hc

private def c0060_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk073.w13, B699LowIndex.I11TerminalData.Chunk073.w14, B699LowIndex.I11TerminalData.Chunk073.w15, B699LowIndex.I11TerminalData.Chunk074.w0, B699LowIndex.I11TerminalData.Chunk074.w1, B699LowIndex.I11TerminalData.Chunk074.w2, B699LowIndex.I11TerminalData.Chunk074.w3, B699LowIndex.I11TerminalData.Chunk074.w4, B699LowIndex.I11TerminalData.Chunk074.w5, B699LowIndex.I11TerminalData.Chunk074.w6, B699LowIndex.I11TerminalData.Chunk074.w7, B699LowIndex.I11TerminalData.Chunk074.w8]
private def c0060_intervals : List NatInterval := [(5238, 5247), (5248, 5248), (5249, 5249), (5250, 5250), (5251, 5251), (5252, 5252), (5253, 5253), (5254, 5254), (5255, 5255), (5256, 5256), (5257, 5257), (5258, 5258)]

private theorem c0060_intervals_eq :
    witnessIntervals c0060_witnesses = c0060_intervals := by
  rfl

private theorem c0060_checks : witnessesCheck c0060_witnesses = true := by
  simp only [witnessesCheck, c0060_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk073.w13_check, B699LowIndex.I11TerminalData.Chunk073.w14_check, B699LowIndex.I11TerminalData.Chunk073.w15_check, B699LowIndex.I11TerminalData.Chunk074.w0_check, B699LowIndex.I11TerminalData.Chunk074.w1_check, B699LowIndex.I11TerminalData.Chunk074.w2_check, B699LowIndex.I11TerminalData.Chunk074.w3_check, B699LowIndex.I11TerminalData.Chunk074.w4_check, B699LowIndex.I11TerminalData.Chunk074.w5_check, B699LowIndex.I11TerminalData.Chunk074.w6_check, B699LowIndex.I11TerminalData.Chunk074.w7_check, B699LowIndex.I11TerminalData.Chunk074.w8_check, Bool.and_self]

private theorem c0060_cover : coverCheck 5238 5258 c0060_intervals = true := by
  decide

private theorem c0060_sound : IntervalSound (5238, 5258) := by
  have hc : coverCheck 5238 5258 (witnessIntervals c0060_witnesses) = true := by
    rw [c0060_intervals_eq]
    exact c0060_cover
  exact interval_sound_of_witness_checks (witnesses := c0060_witnesses)
    (lo := 5238) (hi := 5258) c0060_checks hc

private def c0061_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk074.w9, B699LowIndex.I11TerminalData.Chunk074.w10, B699LowIndex.I11TerminalData.Chunk074.w11]
private def c0061_intervals : List NatInterval := [(5265, 5271), (5272, 5272), (5273, 5275)]

private theorem c0061_intervals_eq :
    witnessIntervals c0061_witnesses = c0061_intervals := by
  rfl

private theorem c0061_checks : witnessesCheck c0061_witnesses = true := by
  simp only [witnessesCheck, c0061_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk074.w9_check, B699LowIndex.I11TerminalData.Chunk074.w10_check, B699LowIndex.I11TerminalData.Chunk074.w11_check, Bool.and_self]

private theorem c0061_cover : coverCheck 5265 5275 c0061_intervals = true := by
  decide

private theorem c0061_sound : IntervalSound (5265, 5275) := by
  have hc : coverCheck 5265 5275 (witnessIntervals c0061_witnesses) = true := by
    rw [c0061_intervals_eq]
    exact c0061_cover
  exact interval_sound_of_witness_checks (witnesses := c0061_witnesses)
    (lo := 5265) (hi := 5275) c0061_checks hc

private def c0062_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk074.w12]
private def c0062_intervals : List NatInterval := [(5280, 5285)]

private theorem c0062_intervals_eq :
    witnessIntervals c0062_witnesses = c0062_intervals := by
  rfl

private theorem c0062_checks : witnessesCheck c0062_witnesses = true := by
  simp only [witnessesCheck, c0062_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk074.w12_check, Bool.and_self]

private theorem c0062_cover : coverCheck 5280 5285 c0062_intervals = true := by
  decide

private theorem c0062_sound : IntervalSound (5280, 5285) := by
  have hc : coverCheck 5280 5285 (witnessIntervals c0062_witnesses) = true := by
    rw [c0062_intervals_eq]
    exact c0062_cover
  exact interval_sound_of_witness_checks (witnesses := c0062_witnesses)
    (lo := 5280) (hi := 5285) c0062_checks hc

private def c0063_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk074.w13, B699LowIndex.I11TerminalData.Chunk074.w14, B699LowIndex.I11TerminalData.Chunk074.w15, B699LowIndex.I11TerminalData.Chunk075.w0, B699LowIndex.I11TerminalData.Chunk075.w1, B699LowIndex.I11TerminalData.Chunk075.w2]
private def c0063_intervals : List NatInterval := [(5292, 5292), (5293, 5293), (5294, 5294), (5295, 5295), (5296, 5296), (5297, 5306)]

private theorem c0063_intervals_eq :
    witnessIntervals c0063_witnesses = c0063_intervals := by
  rfl

private theorem c0063_checks : witnessesCheck c0063_witnesses = true := by
  simp only [witnessesCheck, c0063_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk074.w13_check, B699LowIndex.I11TerminalData.Chunk074.w14_check, B699LowIndex.I11TerminalData.Chunk074.w15_check, B699LowIndex.I11TerminalData.Chunk075.w0_check, B699LowIndex.I11TerminalData.Chunk075.w1_check, B699LowIndex.I11TerminalData.Chunk075.w2_check, Bool.and_self]

private theorem c0063_cover : coverCheck 5292 5306 c0063_intervals = true := by
  decide

private theorem c0063_sound : IntervalSound (5292, 5306) := by
  have hc : coverCheck 5292 5306 (witnessIntervals c0063_witnesses) = true := by
    rw [c0063_intervals_eq]
    exact c0063_cover
  exact interval_sound_of_witness_checks (witnesses := c0063_witnesses)
    (lo := 5292) (hi := 5306) c0063_checks hc

def intervals : List NatInterval := [(5075, 5085), (5096, 5098), (5100, 5113), (5125, 5140), (5145, 5146), (5150, 5162), (5175, 5178), (5184, 5194), (5200, 5210), (5216, 5221), (5225, 5226), (5232, 5235), (5238, 5258), (5265, 5275), (5280, 5285), (5292, 5306)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (5075, 5085)) (intervals := [(5096, 5098), (5100, 5113), (5125, 5140), (5145, 5146), (5150, 5162), (5175, 5178), (5184, 5194), (5200, 5210), (5216, 5221), (5225, 5226), (5232, 5235), (5238, 5258), (5265, 5275), (5280, 5285), (5292, 5306)]) c0048_sound (intervals_sound_cons (I := (5096, 5098)) (intervals := [(5100, 5113), (5125, 5140), (5145, 5146), (5150, 5162), (5175, 5178), (5184, 5194), (5200, 5210), (5216, 5221), (5225, 5226), (5232, 5235), (5238, 5258), (5265, 5275), (5280, 5285), (5292, 5306)]) c0049_sound (intervals_sound_cons (I := (5100, 5113)) (intervals := [(5125, 5140), (5145, 5146), (5150, 5162), (5175, 5178), (5184, 5194), (5200, 5210), (5216, 5221), (5225, 5226), (5232, 5235), (5238, 5258), (5265, 5275), (5280, 5285), (5292, 5306)]) c0050_sound (intervals_sound_cons (I := (5125, 5140)) (intervals := [(5145, 5146), (5150, 5162), (5175, 5178), (5184, 5194), (5200, 5210), (5216, 5221), (5225, 5226), (5232, 5235), (5238, 5258), (5265, 5275), (5280, 5285), (5292, 5306)]) c0051_sound (intervals_sound_cons (I := (5145, 5146)) (intervals := [(5150, 5162), (5175, 5178), (5184, 5194), (5200, 5210), (5216, 5221), (5225, 5226), (5232, 5235), (5238, 5258), (5265, 5275), (5280, 5285), (5292, 5306)]) c0052_sound (intervals_sound_cons (I := (5150, 5162)) (intervals := [(5175, 5178), (5184, 5194), (5200, 5210), (5216, 5221), (5225, 5226), (5232, 5235), (5238, 5258), (5265, 5275), (5280, 5285), (5292, 5306)]) c0053_sound (intervals_sound_cons (I := (5175, 5178)) (intervals := [(5184, 5194), (5200, 5210), (5216, 5221), (5225, 5226), (5232, 5235), (5238, 5258), (5265, 5275), (5280, 5285), (5292, 5306)]) c0054_sound (intervals_sound_cons (I := (5184, 5194)) (intervals := [(5200, 5210), (5216, 5221), (5225, 5226), (5232, 5235), (5238, 5258), (5265, 5275), (5280, 5285), (5292, 5306)]) c0055_sound (intervals_sound_cons (I := (5200, 5210)) (intervals := [(5216, 5221), (5225, 5226), (5232, 5235), (5238, 5258), (5265, 5275), (5280, 5285), (5292, 5306)]) c0056_sound (intervals_sound_cons (I := (5216, 5221)) (intervals := [(5225, 5226), (5232, 5235), (5238, 5258), (5265, 5275), (5280, 5285), (5292, 5306)]) c0057_sound (intervals_sound_cons (I := (5225, 5226)) (intervals := [(5232, 5235), (5238, 5258), (5265, 5275), (5280, 5285), (5292, 5306)]) c0058_sound (intervals_sound_cons (I := (5232, 5235)) (intervals := [(5238, 5258), (5265, 5275), (5280, 5285), (5292, 5306)]) c0059_sound (intervals_sound_cons (I := (5238, 5258)) (intervals := [(5265, 5275), (5280, 5285), (5292, 5306)]) c0060_sound (intervals_sound_cons (I := (5265, 5275)) (intervals := [(5280, 5285), (5292, 5306)]) c0061_sound (intervals_sound_cons (I := (5280, 5285)) (intervals := [(5292, 5306)]) c0062_sound (intervals_sound_cons (I := (5292, 5306)) (intervals := []) c0063_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G003
