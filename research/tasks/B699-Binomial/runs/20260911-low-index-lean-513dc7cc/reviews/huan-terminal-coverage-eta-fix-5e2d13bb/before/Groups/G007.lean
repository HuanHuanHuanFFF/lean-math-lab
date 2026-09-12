import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk086
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk087
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk088

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G007
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0112_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk086.w12]
private def c0112_intervals : List NatInterval := [(6112, 6112)]

private theorem c0112_intervals_eq :
    witnessIntervals c0112_witnesses = c0112_intervals := by
  rfl

private theorem c0112_checks : witnessesCheck c0112_witnesses = true := by
  simp only [witnessesCheck, c0112_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk086.w12_check, Bool.and_self]

private theorem c0112_cover : coverCheck 6112 6112 c0112_intervals = true := by
  decide

private theorem c0112_sound : IntervalSound (6112, 6112) := by
  have hc : coverCheck 6112 6112 (witnessIntervals c0112_witnesses) = true := by
    rw [c0112_intervals_eq]
    exact c0112_cover
  exact interval_sound_of_witness_checks (witnesses := c0112_witnesses)
    (lo := 6112) (hi := 6112) c0112_checks hc

private def c0113_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk086.w13, B699LowIndex.I11TerminalData.Chunk086.w14]
private def c0113_intervals : List NatInterval := [(6125, 6131), (6132, 6138)]

private theorem c0113_intervals_eq :
    witnessIntervals c0113_witnesses = c0113_intervals := by
  rfl

private theorem c0113_checks : witnessesCheck c0113_witnesses = true := by
  simp only [witnessesCheck, c0113_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk086.w13_check, B699LowIndex.I11TerminalData.Chunk086.w14_check, Bool.and_self]

private theorem c0113_cover : coverCheck 6125 6138 c0113_intervals = true := by
  decide

private theorem c0113_sound : IntervalSound (6125, 6138) := by
  have hc : coverCheck 6125 6138 (witnessIntervals c0113_witnesses) = true := by
    rw [c0113_intervals_eq]
    exact c0113_cover
  exact interval_sound_of_witness_checks (witnesses := c0113_witnesses)
    (lo := 6125) (hi := 6138) c0113_checks hc

private def c0114_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk086.w15, B699LowIndex.I11TerminalData.Chunk087.w0]
private def c0114_intervals : List NatInterval := [(6150, 6153), (6154, 6154)]

private theorem c0114_intervals_eq :
    witnessIntervals c0114_witnesses = c0114_intervals := by
  rfl

private theorem c0114_checks : witnessesCheck c0114_witnesses = true := by
  simp only [witnessesCheck, c0114_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk086.w15_check, B699LowIndex.I11TerminalData.Chunk087.w0_check, Bool.and_self]

private theorem c0114_cover : coverCheck 6150 6154 c0114_intervals = true := by
  decide

private theorem c0114_sound : IntervalSound (6150, 6154) := by
  have hc : coverCheck 6150 6154 (witnessIntervals c0114_witnesses) = true := by
    rw [c0114_intervals_eq]
    exact c0114_cover
  exact interval_sound_of_witness_checks (witnesses := c0114_witnesses)
    (lo := 6150) (hi := 6154) c0114_checks hc

private def c0115_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk087.w1, B699LowIndex.I11TerminalData.Chunk087.w2, B699LowIndex.I11TerminalData.Chunk087.w3]
private def c0115_intervals : List NatInterval := [(6156, 6161), (6162, 6162), (6163, 6166)]

private theorem c0115_intervals_eq :
    witnessIntervals c0115_witnesses = c0115_intervals := by
  rfl

private theorem c0115_checks : witnessesCheck c0115_witnesses = true := by
  simp only [witnessesCheck, c0115_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk087.w1_check, B699LowIndex.I11TerminalData.Chunk087.w2_check, B699LowIndex.I11TerminalData.Chunk087.w3_check, Bool.and_self]

private theorem c0115_cover : coverCheck 6156 6166 c0115_intervals = true := by
  decide

private theorem c0115_sound : IntervalSound (6156, 6166) := by
  have hc : coverCheck 6156 6166 (witnessIntervals c0115_witnesses) = true := by
    rw [c0115_intervals_eq]
    exact c0115_cover
  exact interval_sound_of_witness_checks (witnesses := c0115_witnesses)
    (lo := 6156) (hi := 6166) c0115_checks hc

private def c0116_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk087.w4, B699LowIndex.I11TerminalData.Chunk087.w5, B699LowIndex.I11TerminalData.Chunk087.w6, B699LowIndex.I11TerminalData.Chunk087.w7]
private def c0116_intervals : List NatInterval := [(6175, 6183), (6184, 6184), (6185, 6185), (6186, 6186)]

private theorem c0116_intervals_eq :
    witnessIntervals c0116_witnesses = c0116_intervals := by
  rfl

private theorem c0116_checks : witnessesCheck c0116_witnesses = true := by
  simp only [witnessesCheck, c0116_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk087.w4_check, B699LowIndex.I11TerminalData.Chunk087.w5_check, B699LowIndex.I11TerminalData.Chunk087.w6_check, B699LowIndex.I11TerminalData.Chunk087.w7_check, Bool.and_self]

private theorem c0116_cover : coverCheck 6175 6186 c0116_intervals = true := by
  decide

private theorem c0116_sound : IntervalSound (6175, 6186) := by
  have hc : coverCheck 6175 6186 (witnessIntervals c0116_witnesses) = true := by
    rw [c0116_intervals_eq]
    exact c0116_cover
  exact interval_sound_of_witness_checks (witnesses := c0116_witnesses)
    (lo := 6175) (hi := 6186) c0116_checks hc

private def c0117_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk087.w8, B699LowIndex.I11TerminalData.Chunk087.w9]
private def c0117_intervals : List NatInterval := [(6192, 6192), (6193, 6193)]

private theorem c0117_intervals_eq :
    witnessIntervals c0117_witnesses = c0117_intervals := by
  rfl

private theorem c0117_checks : witnessesCheck c0117_witnesses = true := by
  simp only [witnessesCheck, c0117_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk087.w8_check, B699LowIndex.I11TerminalData.Chunk087.w9_check, Bool.and_self]

private theorem c0117_cover : coverCheck 6192 6193 c0117_intervals = true := by
  decide

private theorem c0117_sound : IntervalSound (6192, 6193) := by
  have hc : coverCheck 6192 6193 (witnessIntervals c0117_witnesses) = true := by
    rw [c0117_intervals_eq]
    exact c0117_cover
  exact interval_sound_of_witness_checks (witnesses := c0117_witnesses)
    (lo := 6192) (hi := 6193) c0117_checks hc

private def c0118_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk087.w10]
private def c0118_intervals : List NatInterval := [(6200, 6202)]

private theorem c0118_intervals_eq :
    witnessIntervals c0118_witnesses = c0118_intervals := by
  rfl

private theorem c0118_checks : witnessesCheck c0118_witnesses = true := by
  simp only [witnessesCheck, c0118_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk087.w10_check, Bool.and_self]

private theorem c0118_cover : coverCheck 6200 6202 c0118_intervals = true := by
  decide

private theorem c0118_sound : IntervalSound (6200, 6202) := by
  have hc : coverCheck 6200 6202 (witnessIntervals c0118_witnesses) = true := by
    rw [c0118_intervals_eq]
    exact c0118_cover
  exact interval_sound_of_witness_checks (witnesses := c0118_witnesses)
    (lo := 6200) (hi := 6202) c0118_checks hc

private def c0119_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk087.w11, B699LowIndex.I11TerminalData.Chunk087.w12]
private def c0119_intervals : List NatInterval := [(6208, 6213), (6214, 6218)]

private theorem c0119_intervals_eq :
    witnessIntervals c0119_witnesses = c0119_intervals := by
  rfl

private theorem c0119_checks : witnessesCheck c0119_witnesses = true := by
  simp only [witnessesCheck, c0119_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk087.w11_check, B699LowIndex.I11TerminalData.Chunk087.w12_check, Bool.and_self]

private theorem c0119_cover : coverCheck 6208 6218 c0119_intervals = true := by
  decide

private theorem c0119_sound : IntervalSound (6208, 6218) := by
  have hc : coverCheck 6208 6218 (witnessIntervals c0119_witnesses) = true := by
    rw [c0119_intervals_eq]
    exact c0119_cover
  exact interval_sound_of_witness_checks (witnesses := c0119_witnesses)
    (lo := 6208) (hi := 6218) c0119_checks hc

private def c0120_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk087.w13, B699LowIndex.I11TerminalData.Chunk087.w14]
private def c0120_intervals : List NatInterval := [(6224, 6231), (6232, 6234)]

private theorem c0120_intervals_eq :
    witnessIntervals c0120_witnesses = c0120_intervals := by
  rfl

private theorem c0120_checks : witnessesCheck c0120_witnesses = true := by
  simp only [witnessesCheck, c0120_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk087.w13_check, B699LowIndex.I11TerminalData.Chunk087.w14_check, Bool.and_self]

private theorem c0120_cover : coverCheck 6224 6234 c0120_intervals = true := by
  decide

private theorem c0120_sound : IntervalSound (6224, 6234) := by
  have hc : coverCheck 6224 6234 (witnessIntervals c0120_witnesses) = true := by
    rw [c0120_intervals_eq]
    exact c0120_cover
  exact interval_sound_of_witness_checks (witnesses := c0120_witnesses)
    (lo := 6224) (hi := 6234) c0120_checks hc

private def c0121_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk087.w15, B699LowIndex.I11TerminalData.Chunk088.w0, B699LowIndex.I11TerminalData.Chunk088.w1, B699LowIndex.I11TerminalData.Chunk088.w2, B699LowIndex.I11TerminalData.Chunk088.w3, B699LowIndex.I11TerminalData.Chunk088.w4, B699LowIndex.I11TerminalData.Chunk088.w5, B699LowIndex.I11TerminalData.Chunk088.w6]
private def c0121_intervals : List NatInterval := [(6240, 6240), (6241, 6241), (6242, 6242), (6243, 6243), (6244, 6244), (6245, 6245), (6246, 6246), (6247, 6247)]

private theorem c0121_intervals_eq :
    witnessIntervals c0121_witnesses = c0121_intervals := by
  rfl

private theorem c0121_checks : witnessesCheck c0121_witnesses = true := by
  simp only [witnessesCheck, c0121_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk087.w15_check, B699LowIndex.I11TerminalData.Chunk088.w0_check, B699LowIndex.I11TerminalData.Chunk088.w1_check, B699LowIndex.I11TerminalData.Chunk088.w2_check, B699LowIndex.I11TerminalData.Chunk088.w3_check, B699LowIndex.I11TerminalData.Chunk088.w4_check, B699LowIndex.I11TerminalData.Chunk088.w5_check, B699LowIndex.I11TerminalData.Chunk088.w6_check, Bool.and_self]

private theorem c0121_cover : coverCheck 6240 6247 c0121_intervals = true := by
  decide

private theorem c0121_sound : IntervalSound (6240, 6247) := by
  have hc : coverCheck 6240 6247 (witnessIntervals c0121_witnesses) = true := by
    rw [c0121_intervals_eq]
    exact c0121_cover
  exact interval_sound_of_witness_checks (witnesses := c0121_witnesses)
    (lo := 6240) (hi := 6247) c0121_checks hc

private def c0122_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk088.w7]
private def c0122_intervals : List NatInterval := [(6250, 6250)]

private theorem c0122_intervals_eq :
    witnessIntervals c0122_witnesses = c0122_intervals := by
  rfl

private theorem c0122_checks : witnessesCheck c0122_witnesses = true := by
  simp only [witnessesCheck, c0122_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk088.w7_check, Bool.and_self]

private theorem c0122_cover : coverCheck 6250 6250 c0122_intervals = true := by
  decide

private theorem c0122_sound : IntervalSound (6250, 6250) := by
  have hc : coverCheck 6250 6250 (witnessIntervals c0122_witnesses) = true := by
    rw [c0122_intervals_eq]
    exact c0122_cover
  exact interval_sound_of_witness_checks (witnesses := c0122_witnesses)
    (lo := 6250) (hi := 6250) c0122_checks hc

private def c0123_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk088.w8, B699LowIndex.I11TerminalData.Chunk088.w9]
private def c0123_intervals : List NatInterval := [(6256, 6257), (6258, 6260)]

private theorem c0123_intervals_eq :
    witnessIntervals c0123_witnesses = c0123_intervals := by
  rfl

private theorem c0123_checks : witnessesCheck c0123_witnesses = true := by
  simp only [witnessesCheck, c0123_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk088.w8_check, B699LowIndex.I11TerminalData.Chunk088.w9_check, Bool.and_self]

private theorem c0123_cover : coverCheck 6256 6260 c0123_intervals = true := by
  decide

private theorem c0123_sound : IntervalSound (6256, 6260) := by
  have hc : coverCheck 6256 6260 (witnessIntervals c0123_witnesses) = true := by
    rw [c0123_intervals_eq]
    exact c0123_cover
  exact interval_sound_of_witness_checks (witnesses := c0123_witnesses)
    (lo := 6256) (hi := 6260) c0123_checks hc

private def c0124_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk088.w10]
private def c0124_intervals : List NatInterval := [(6264, 6266)]

private theorem c0124_intervals_eq :
    witnessIntervals c0124_witnesses = c0124_intervals := by
  rfl

private theorem c0124_checks : witnessesCheck c0124_witnesses = true := by
  simp only [witnessesCheck, c0124_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk088.w10_check, Bool.and_self]

private theorem c0124_cover : coverCheck 6264 6266 c0124_intervals = true := by
  decide

private theorem c0124_sound : IntervalSound (6264, 6266) := by
  have hc : coverCheck 6264 6266 (witnessIntervals c0124_witnesses) = true := by
    rw [c0124_intervals_eq]
    exact c0124_cover
  exact interval_sound_of_witness_checks (witnesses := c0124_witnesses)
    (lo := 6264) (hi := 6266) c0124_checks hc

private def c0125_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk088.w11, B699LowIndex.I11TerminalData.Chunk088.w12]
private def c0125_intervals : List NatInterval := [(6272, 6281), (6282, 6282)]

private theorem c0125_intervals_eq :
    witnessIntervals c0125_witnesses = c0125_intervals := by
  rfl

private theorem c0125_checks : witnessesCheck c0125_witnesses = true := by
  simp only [witnessesCheck, c0125_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk088.w11_check, B699LowIndex.I11TerminalData.Chunk088.w12_check, Bool.and_self]

private theorem c0125_cover : coverCheck 6272 6282 c0125_intervals = true := by
  decide

private theorem c0125_sound : IntervalSound (6272, 6282) := by
  have hc : coverCheck 6272 6282 (witnessIntervals c0125_witnesses) = true := by
    rw [c0125_intervals_eq]
    exact c0125_cover
  exact interval_sound_of_witness_checks (witnesses := c0125_witnesses)
    (lo := 6272) (hi := 6282) c0125_checks hc

private def c0126_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk088.w13, B699LowIndex.I11TerminalData.Chunk088.w14]
private def c0126_intervals : List NatInterval := [(6291, 6297), (6298, 6298)]

private theorem c0126_intervals_eq :
    witnessIntervals c0126_witnesses = c0126_intervals := by
  rfl

private theorem c0126_checks : witnessesCheck c0126_witnesses = true := by
  simp only [witnessesCheck, c0126_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk088.w13_check, B699LowIndex.I11TerminalData.Chunk088.w14_check, Bool.and_self]

private theorem c0126_cover : coverCheck 6291 6298 c0126_intervals = true := by
  decide

private theorem c0126_sound : IntervalSound (6291, 6298) := by
  have hc : coverCheck 6291 6298 (witnessIntervals c0126_witnesses) = true := by
    rw [c0126_intervals_eq]
    exact c0126_cover
  exact interval_sound_of_witness_checks (witnesses := c0126_witnesses)
    (lo := 6291) (hi := 6298) c0126_checks hc

private def c0127_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk088.w15]
private def c0127_intervals : List NatInterval := [(6300, 6301)]

private theorem c0127_intervals_eq :
    witnessIntervals c0127_witnesses = c0127_intervals := by
  rfl

private theorem c0127_checks : witnessesCheck c0127_witnesses = true := by
  simp only [witnessesCheck, c0127_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk088.w15_check, Bool.and_self]

private theorem c0127_cover : coverCheck 6300 6301 c0127_intervals = true := by
  decide

private theorem c0127_sound : IntervalSound (6300, 6301) := by
  have hc : coverCheck 6300 6301 (witnessIntervals c0127_witnesses) = true := by
    rw [c0127_intervals_eq]
    exact c0127_cover
  exact interval_sound_of_witness_checks (witnesses := c0127_witnesses)
    (lo := 6300) (hi := 6301) c0127_checks hc

def intervals : List NatInterval := [(6112, 6112), (6125, 6138), (6150, 6154), (6156, 6166), (6175, 6186), (6192, 6193), (6200, 6202), (6208, 6218), (6224, 6234), (6240, 6247), (6250, 6250), (6256, 6260), (6264, 6266), (6272, 6282), (6291, 6298), (6300, 6301)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (6112, 6112)) (intervals := [(6125, 6138), (6150, 6154), (6156, 6166), (6175, 6186), (6192, 6193), (6200, 6202), (6208, 6218), (6224, 6234), (6240, 6247), (6250, 6250), (6256, 6260), (6264, 6266), (6272, 6282), (6291, 6298), (6300, 6301)]) c0112_sound (intervals_sound_cons (I := (6125, 6138)) (intervals := [(6150, 6154), (6156, 6166), (6175, 6186), (6192, 6193), (6200, 6202), (6208, 6218), (6224, 6234), (6240, 6247), (6250, 6250), (6256, 6260), (6264, 6266), (6272, 6282), (6291, 6298), (6300, 6301)]) c0113_sound (intervals_sound_cons (I := (6150, 6154)) (intervals := [(6156, 6166), (6175, 6186), (6192, 6193), (6200, 6202), (6208, 6218), (6224, 6234), (6240, 6247), (6250, 6250), (6256, 6260), (6264, 6266), (6272, 6282), (6291, 6298), (6300, 6301)]) c0114_sound (intervals_sound_cons (I := (6156, 6166)) (intervals := [(6175, 6186), (6192, 6193), (6200, 6202), (6208, 6218), (6224, 6234), (6240, 6247), (6250, 6250), (6256, 6260), (6264, 6266), (6272, 6282), (6291, 6298), (6300, 6301)]) c0115_sound (intervals_sound_cons (I := (6175, 6186)) (intervals := [(6192, 6193), (6200, 6202), (6208, 6218), (6224, 6234), (6240, 6247), (6250, 6250), (6256, 6260), (6264, 6266), (6272, 6282), (6291, 6298), (6300, 6301)]) c0116_sound (intervals_sound_cons (I := (6192, 6193)) (intervals := [(6200, 6202), (6208, 6218), (6224, 6234), (6240, 6247), (6250, 6250), (6256, 6260), (6264, 6266), (6272, 6282), (6291, 6298), (6300, 6301)]) c0117_sound (intervals_sound_cons (I := (6200, 6202)) (intervals := [(6208, 6218), (6224, 6234), (6240, 6247), (6250, 6250), (6256, 6260), (6264, 6266), (6272, 6282), (6291, 6298), (6300, 6301)]) c0118_sound (intervals_sound_cons (I := (6208, 6218)) (intervals := [(6224, 6234), (6240, 6247), (6250, 6250), (6256, 6260), (6264, 6266), (6272, 6282), (6291, 6298), (6300, 6301)]) c0119_sound (intervals_sound_cons (I := (6224, 6234)) (intervals := [(6240, 6247), (6250, 6250), (6256, 6260), (6264, 6266), (6272, 6282), (6291, 6298), (6300, 6301)]) c0120_sound (intervals_sound_cons (I := (6240, 6247)) (intervals := [(6250, 6250), (6256, 6260), (6264, 6266), (6272, 6282), (6291, 6298), (6300, 6301)]) c0121_sound (intervals_sound_cons (I := (6250, 6250)) (intervals := [(6256, 6260), (6264, 6266), (6272, 6282), (6291, 6298), (6300, 6301)]) c0122_sound (intervals_sound_cons (I := (6256, 6260)) (intervals := [(6264, 6266), (6272, 6282), (6291, 6298), (6300, 6301)]) c0123_sound (intervals_sound_cons (I := (6264, 6266)) (intervals := [(6272, 6282), (6291, 6298), (6300, 6301)]) c0124_sound (intervals_sound_cons (I := (6272, 6282)) (intervals := [(6291, 6298), (6300, 6301)]) c0125_sound (intervals_sound_cons (I := (6291, 6298)) (intervals := [(6300, 6301)]) c0126_sound (intervals_sound_cons (I := (6300, 6301)) (intervals := []) c0127_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G007
