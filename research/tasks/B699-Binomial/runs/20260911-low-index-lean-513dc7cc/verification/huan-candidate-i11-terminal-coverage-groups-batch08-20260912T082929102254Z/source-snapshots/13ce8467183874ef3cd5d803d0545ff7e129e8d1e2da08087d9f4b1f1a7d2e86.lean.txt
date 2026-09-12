import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk247
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk248
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk249
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk250

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G064
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c1024_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk247.w7]
private def c1024_intervals : List NatInterval := [(247303, 247306)]

private theorem c1024_intervals_eq :
    witnessIntervals c1024_witnesses = c1024_intervals := by
  rfl

private theorem c1024_checks : witnessesCheck c1024_witnesses = true := by
  simp only [witnessesCheck, c1024_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk247.w7_check, Bool.and_self]

private theorem c1024_cover : coverCheck 247303 247306 c1024_intervals = true := by
  decide

private theorem c1024_sound : IntervalSound (247303, 247306) := by
  have hc : coverCheck 247303 247306 (witnessIntervals c1024_witnesses) = true := by
    rw [c1024_intervals_eq]
    exact c1024_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c1024_witnesses)
    (lo := 247303) (hi := 247306) c1024_checks hc

private def c1025_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk247.w8, B699LowIndex.I11TerminalData.Chunk247.w9]
private def c1025_intervals : List NatInterval := [(261711, 261717), (261718, 261719)]

private theorem c1025_intervals_eq :
    witnessIntervals c1025_witnesses = c1025_intervals := by
  rfl

private theorem c1025_checks : witnessesCheck c1025_witnesses = true := by
  simp only [witnessesCheck, c1025_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk247.w8_check, B699LowIndex.I11TerminalData.Chunk247.w9_check, Bool.and_self]

private theorem c1025_cover : coverCheck 261711 261719 c1025_intervals = true := by
  decide

private theorem c1025_sound : IntervalSound (261711, 261719) := by
  have hc : coverCheck 261711 261719 (witnessIntervals c1025_witnesses) = true := by
    rw [c1025_intervals_eq]
    exact c1025_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c1025_witnesses)
    (lo := 261711) (hi := 261719) c1025_checks hc

private def c1026_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk247.w10, B699LowIndex.I11TerminalData.Chunk247.w11]
private def c1026_intervals : List NatInterval := [(263169, 263177), (263178, 263178)]

private theorem c1026_intervals_eq :
    witnessIntervals c1026_witnesses = c1026_intervals := by
  rfl

private theorem c1026_checks : witnessesCheck c1026_witnesses = true := by
  simp only [witnessesCheck, c1026_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk247.w10_check, B699LowIndex.I11TerminalData.Chunk247.w11_check, Bool.and_self]

private theorem c1026_cover : coverCheck 263169 263178 c1026_intervals = true := by
  decide

private theorem c1026_sound : IntervalSound (263169, 263178) := by
  have hc : coverCheck 263169 263178 (witnessIntervals c1026_witnesses) = true := by
    rw [c1026_intervals_eq]
    exact c1026_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c1026_witnesses)
    (lo := 263169) (hi := 263178) c1026_checks hc

private def c1027_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk247.w12]
private def c1027_intervals : List NatInterval := [(266250, 266250)]

private theorem c1027_intervals_eq :
    witnessIntervals c1027_witnesses = c1027_intervals := by
  rfl

private theorem c1027_checks : witnessesCheck c1027_witnesses = true := by
  simp only [witnessesCheck, c1027_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk247.w12_check, Bool.and_self]

private theorem c1027_cover : coverCheck 266250 266250 c1027_intervals = true := by
  decide

private theorem c1027_sound : IntervalSound (266250, 266250) := by
  have hc : coverCheck 266250 266250 (witnessIntervals c1027_witnesses) = true := by
    rw [c1027_intervals_eq]
    exact c1027_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c1027_witnesses)
    (lo := 266250) (hi := 266250) c1027_checks hc

private def c1028_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk247.w13, B699LowIndex.I11TerminalData.Chunk247.w14]
private def c1028_intervals : List NatInterval := [(277504, 277509), (277510, 277510)]

private theorem c1028_intervals_eq :
    witnessIntervals c1028_witnesses = c1028_intervals := by
  rfl

private theorem c1028_checks : witnessesCheck c1028_witnesses = true := by
  simp only [witnessesCheck, c1028_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk247.w13_check, B699LowIndex.I11TerminalData.Chunk247.w14_check, Bool.and_self]

private theorem c1028_cover : coverCheck 277504 277510 c1028_intervals = true := by
  decide

private theorem c1028_sound : IntervalSound (277504, 277510) := by
  have hc : coverCheck 277504 277510 (witnessIntervals c1028_witnesses) = true := by
    rw [c1028_intervals_eq]
    exact c1028_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c1028_witnesses)
    (lo := 277504) (hi := 277510) c1028_checks hc

private def c1029_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk247.w15, B699LowIndex.I11TerminalData.Chunk248.w0, B699LowIndex.I11TerminalData.Chunk248.w1, B699LowIndex.I11TerminalData.Chunk248.w2, B699LowIndex.I11TerminalData.Chunk248.w3, B699LowIndex.I11TerminalData.Chunk248.w4]
private def c1029_intervals : List NatInterval := [(288125, 288125), (288126, 288126), (288127, 288127), (288128, 288128), (288129, 288129), (288130, 288130)]

private theorem c1029_intervals_eq :
    witnessIntervals c1029_witnesses = c1029_intervals := by
  rfl

private theorem c1029_checks : witnessesCheck c1029_witnesses = true := by
  simp only [witnessesCheck, c1029_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk247.w15_check, B699LowIndex.I11TerminalData.Chunk248.w0_check, B699LowIndex.I11TerminalData.Chunk248.w1_check, B699LowIndex.I11TerminalData.Chunk248.w2_check, B699LowIndex.I11TerminalData.Chunk248.w3_check, B699LowIndex.I11TerminalData.Chunk248.w4_check, Bool.and_self]

private theorem c1029_cover : coverCheck 288125 288130 c1029_intervals = true := by
  decide

private theorem c1029_sound : IntervalSound (288125, 288130) := by
  have hc : coverCheck 288125 288130 (witnessIntervals c1029_witnesses) = true := by
    rw [c1029_intervals_eq]
    exact c1029_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c1029_witnesses)
    (lo := 288125) (hi := 288130) c1029_checks hc

private def c1030_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk248.w5, B699LowIndex.I11TerminalData.Chunk248.w6]
private def c1030_intervals : List NatInterval := [(302535, 302535), (302536, 302536)]

private theorem c1030_intervals_eq :
    witnessIntervals c1030_witnesses = c1030_intervals := by
  rfl

private theorem c1030_checks : witnessesCheck c1030_witnesses = true := by
  simp only [witnessesCheck, c1030_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk248.w5_check, B699LowIndex.I11TerminalData.Chunk248.w6_check, Bool.and_self]

private theorem c1030_cover : coverCheck 302535 302536 c1030_intervals = true := by
  decide

private theorem c1030_sound : IntervalSound (302535, 302536) := by
  have hc : coverCheck 302535 302536 (witnessIntervals c1030_witnesses) = true := by
    rw [c1030_intervals_eq]
    exact c1030_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c1030_witnesses)
    (lo := 302535) (hi := 302536) c1030_checks hc

private def c1031_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk248.w7, B699LowIndex.I11TerminalData.Chunk248.w8, B699LowIndex.I11TerminalData.Chunk248.w9, B699LowIndex.I11TerminalData.Chunk248.w10, B699LowIndex.I11TerminalData.Chunk248.w11, B699LowIndex.I11TerminalData.Chunk248.w12, B699LowIndex.I11TerminalData.Chunk248.w13]
private def c1031_intervals : List NatInterval := [(306180, 306180), (306181, 306181), (306182, 306182), (306183, 306183), (306184, 306184), (306185, 306185), (306186, 306186)]

private theorem c1031_intervals_eq :
    witnessIntervals c1031_witnesses = c1031_intervals := by
  rfl

private theorem c1031_checks : witnessesCheck c1031_witnesses = true := by
  simp only [witnessesCheck, c1031_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk248.w7_check, B699LowIndex.I11TerminalData.Chunk248.w8_check, B699LowIndex.I11TerminalData.Chunk248.w9_check, B699LowIndex.I11TerminalData.Chunk248.w10_check, B699LowIndex.I11TerminalData.Chunk248.w11_check, B699LowIndex.I11TerminalData.Chunk248.w12_check, B699LowIndex.I11TerminalData.Chunk248.w13_check, Bool.and_self]

private theorem c1031_cover : coverCheck 306180 306186 c1031_intervals = true := by
  decide

private theorem c1031_sound : IntervalSound (306180, 306186) := by
  have hc : coverCheck 306180 306186 (witnessIntervals c1031_witnesses) = true := by
    rw [c1031_intervals_eq]
    exact c1031_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c1031_witnesses)
    (lo := 306180) (hi := 306186) c1031_checks hc

private def c1032_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk248.w14]
private def c1032_intervals : List NatInterval := [(349191, 349194)]

private theorem c1032_intervals_eq :
    witnessIntervals c1032_witnesses = c1032_intervals := by
  rfl

private theorem c1032_checks : witnessesCheck c1032_witnesses = true := by
  simp only [witnessesCheck, c1032_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk248.w14_check, Bool.and_self]

private theorem c1032_cover : coverCheck 349191 349194 c1032_intervals = true := by
  decide

private theorem c1032_sound : IntervalSound (349191, 349194) := by
  have hc : coverCheck 349191 349194 (witnessIntervals c1032_witnesses) = true := by
    rw [c1032_intervals_eq]
    exact c1032_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c1032_witnesses)
    (lo := 349191) (hi := 349194) c1032_checks hc

private def c1033_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk248.w15]
private def c1033_intervals : List NatInterval := [(354304, 354304)]

private theorem c1033_intervals_eq :
    witnessIntervals c1033_witnesses = c1033_intervals := by
  rfl

private theorem c1033_checks : witnessesCheck c1033_witnesses = true := by
  simp only [witnessesCheck, c1033_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk248.w15_check, Bool.and_self]

private theorem c1033_cover : coverCheck 354304 354304 c1033_intervals = true := by
  decide

private theorem c1033_sound : IntervalSound (354304, 354304) := by
  have hc : coverCheck 354304 354304 (witnessIntervals c1033_witnesses) = true := by
    rw [c1033_intervals_eq]
    exact c1033_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c1033_witnesses)
    (lo := 354304) (hi := 354304) c1033_checks hc

private def c1034_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk249.w0, B699LowIndex.I11TerminalData.Chunk249.w1, B699LowIndex.I11TerminalData.Chunk249.w2, B699LowIndex.I11TerminalData.Chunk249.w3, B699LowIndex.I11TerminalData.Chunk249.w4, B699LowIndex.I11TerminalData.Chunk249.w5, B699LowIndex.I11TerminalData.Chunk249.w6]
private def c1034_intervals : List NatInterval := [(362500, 362500), (362501, 362501), (362502, 362502), (362503, 362503), (362504, 362504), (362505, 362505), (362506, 362506)]

private theorem c1034_intervals_eq :
    witnessIntervals c1034_witnesses = c1034_intervals := by
  rfl

private theorem c1034_checks : witnessesCheck c1034_witnesses = true := by
  simp only [witnessesCheck, c1034_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk249.w0_check, B699LowIndex.I11TerminalData.Chunk249.w1_check, B699LowIndex.I11TerminalData.Chunk249.w2_check, B699LowIndex.I11TerminalData.Chunk249.w3_check, B699LowIndex.I11TerminalData.Chunk249.w4_check, B699LowIndex.I11TerminalData.Chunk249.w5_check, B699LowIndex.I11TerminalData.Chunk249.w6_check, Bool.and_self]

private theorem c1034_cover : coverCheck 362500 362506 c1034_intervals = true := by
  decide

private theorem c1034_sound : IntervalSound (362500, 362506) := by
  have hc : coverCheck 362500 362506 (witnessIntervals c1034_witnesses) = true := by
    rw [c1034_intervals_eq]
    exact c1034_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c1034_witnesses)
    (lo := 362500) (hi := 362506) c1034_checks hc

private def c1035_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk249.w7]
private def c1035_intervals : List NatInterval := [(441784, 441784)]

private theorem c1035_intervals_eq :
    witnessIntervals c1035_witnesses = c1035_intervals := by
  rfl

private theorem c1035_checks : witnessesCheck c1035_witnesses = true := by
  simp only [witnessesCheck, c1035_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk249.w7_check, Bool.and_self]

private theorem c1035_cover : coverCheck 441784 441784 c1035_intervals = true := by
  decide

private theorem c1035_sound : IntervalSound (441784, 441784) := by
  have hc : coverCheck 441784 441784 (witnessIntervals c1035_witnesses) = true := by
    rw [c1035_intervals_eq]
    exact c1035_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c1035_witnesses)
    (lo := 441784) (hi := 441784) c1035_checks hc

private def c1036_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk249.w8, B699LowIndex.I11TerminalData.Chunk249.w9, B699LowIndex.I11TerminalData.Chunk249.w10, B699LowIndex.I11TerminalData.Chunk249.w11, B699LowIndex.I11TerminalData.Chunk249.w12]
private def c1036_intervals : List NatInterval := [(483328, 483333), (483334, 483334), (483335, 483335), (483336, 483336), (483337, 483337)]

private theorem c1036_intervals_eq :
    witnessIntervals c1036_witnesses = c1036_intervals := by
  rfl

private theorem c1036_checks : witnessesCheck c1036_witnesses = true := by
  simp only [witnessesCheck, c1036_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk249.w8_check, B699LowIndex.I11TerminalData.Chunk249.w9_check, B699LowIndex.I11TerminalData.Chunk249.w10_check, B699LowIndex.I11TerminalData.Chunk249.w11_check, B699LowIndex.I11TerminalData.Chunk249.w12_check, Bool.and_self]

private theorem c1036_cover : coverCheck 483328 483337 c1036_intervals = true := by
  decide

private theorem c1036_sound : IntervalSound (483328, 483337) := by
  have hc : coverCheck 483328 483337 (witnessIntervals c1036_witnesses) = true := by
    rw [c1036_intervals_eq]
    exact c1036_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c1036_witnesses)
    (lo := 483328) (hi := 483337) c1036_checks hc

private def c1037_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk249.w13, B699LowIndex.I11TerminalData.Chunk249.w14, B699LowIndex.I11TerminalData.Chunk249.w15]
private def c1037_intervals : List NatInterval := [(612360, 612360), (612361, 612361), (612362, 612362)]

private theorem c1037_intervals_eq :
    witnessIntervals c1037_witnesses = c1037_intervals := by
  rfl

private theorem c1037_checks : witnessesCheck c1037_witnesses = true := by
  simp only [witnessesCheck, c1037_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk249.w13_check, B699LowIndex.I11TerminalData.Chunk249.w14_check, B699LowIndex.I11TerminalData.Chunk249.w15_check, Bool.and_self]

private theorem c1037_cover : coverCheck 612360 612362 c1037_intervals = true := by
  decide

private theorem c1037_sound : IntervalSound (612360, 612362) := by
  have hc : coverCheck 612360 612362 (witnessIntervals c1037_witnesses) = true := by
    rw [c1037_intervals_eq]
    exact c1037_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c1037_witnesses)
    (lo := 612360) (hi := 612362) c1037_checks hc

private def c1038_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk250.w0]
private def c1038_intervals : List NatInterval := [(725000, 725002)]

private theorem c1038_intervals_eq :
    witnessIntervals c1038_witnesses = c1038_intervals := by
  rfl

private theorem c1038_checks : witnessesCheck c1038_witnesses = true := by
  simp only [witnessesCheck, c1038_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk250.w0_check, Bool.and_self]

private theorem c1038_cover : coverCheck 725000 725002 c1038_intervals = true := by
  decide

private theorem c1038_sound : IntervalSound (725000, 725002) := by
  have hc : coverCheck 725000 725002 (witnessIntervals c1038_witnesses) = true := by
    rw [c1038_intervals_eq]
    exact c1038_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c1038_witnesses)
    (lo := 725000) (hi := 725002) c1038_checks hc

private def c1039_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk250.w1]
private def c1039_intervals : List NatInterval := [(784384, 784385)]

private theorem c1039_intervals_eq :
    witnessIntervals c1039_witnesses = c1039_intervals := by
  rfl

private theorem c1039_checks : witnessesCheck c1039_witnesses = true := by
  simp only [witnessesCheck, c1039_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk250.w1_check, Bool.and_self]

private theorem c1039_cover : coverCheck 784384 784385 c1039_intervals = true := by
  decide

private theorem c1039_sound : IntervalSound (784384, 784385) := by
  have hc : coverCheck 784384 784385 (witnessIntervals c1039_witnesses) = true := by
    rw [c1039_intervals_eq]
    exact c1039_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c1039_witnesses)
    (lo := 784384) (hi := 784385) c1039_checks hc

def intervals : List NatInterval := [(247303, 247306), (261711, 261719), (263169, 263178), (266250, 266250), (277504, 277510), (288125, 288130), (302535, 302536), (306180, 306186), (349191, 349194), (354304, 354304), (362500, 362506), (441784, 441784), (483328, 483337), (612360, 612362), (725000, 725002), (784384, 784385)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (247303, 247306)) (intervals := [(261711, 261719), (263169, 263178), (266250, 266250), (277504, 277510), (288125, 288130), (302535, 302536), (306180, 306186), (349191, 349194), (354304, 354304), (362500, 362506), (441784, 441784), (483328, 483337), (612360, 612362), (725000, 725002), (784384, 784385)]) c1024_sound (intervals_sound_cons (I := (261711, 261719)) (intervals := [(263169, 263178), (266250, 266250), (277504, 277510), (288125, 288130), (302535, 302536), (306180, 306186), (349191, 349194), (354304, 354304), (362500, 362506), (441784, 441784), (483328, 483337), (612360, 612362), (725000, 725002), (784384, 784385)]) c1025_sound (intervals_sound_cons (I := (263169, 263178)) (intervals := [(266250, 266250), (277504, 277510), (288125, 288130), (302535, 302536), (306180, 306186), (349191, 349194), (354304, 354304), (362500, 362506), (441784, 441784), (483328, 483337), (612360, 612362), (725000, 725002), (784384, 784385)]) c1026_sound (intervals_sound_cons (I := (266250, 266250)) (intervals := [(277504, 277510), (288125, 288130), (302535, 302536), (306180, 306186), (349191, 349194), (354304, 354304), (362500, 362506), (441784, 441784), (483328, 483337), (612360, 612362), (725000, 725002), (784384, 784385)]) c1027_sound (intervals_sound_cons (I := (277504, 277510)) (intervals := [(288125, 288130), (302535, 302536), (306180, 306186), (349191, 349194), (354304, 354304), (362500, 362506), (441784, 441784), (483328, 483337), (612360, 612362), (725000, 725002), (784384, 784385)]) c1028_sound (intervals_sound_cons (I := (288125, 288130)) (intervals := [(302535, 302536), (306180, 306186), (349191, 349194), (354304, 354304), (362500, 362506), (441784, 441784), (483328, 483337), (612360, 612362), (725000, 725002), (784384, 784385)]) c1029_sound (intervals_sound_cons (I := (302535, 302536)) (intervals := [(306180, 306186), (349191, 349194), (354304, 354304), (362500, 362506), (441784, 441784), (483328, 483337), (612360, 612362), (725000, 725002), (784384, 784385)]) c1030_sound (intervals_sound_cons (I := (306180, 306186)) (intervals := [(349191, 349194), (354304, 354304), (362500, 362506), (441784, 441784), (483328, 483337), (612360, 612362), (725000, 725002), (784384, 784385)]) c1031_sound (intervals_sound_cons (I := (349191, 349194)) (intervals := [(354304, 354304), (362500, 362506), (441784, 441784), (483328, 483337), (612360, 612362), (725000, 725002), (784384, 784385)]) c1032_sound (intervals_sound_cons (I := (354304, 354304)) (intervals := [(362500, 362506), (441784, 441784), (483328, 483337), (612360, 612362), (725000, 725002), (784384, 784385)]) c1033_sound (intervals_sound_cons (I := (362500, 362506)) (intervals := [(441784, 441784), (483328, 483337), (612360, 612362), (725000, 725002), (784384, 784385)]) c1034_sound (intervals_sound_cons (I := (441784, 441784)) (intervals := [(483328, 483337), (612360, 612362), (725000, 725002), (784384, 784385)]) c1035_sound (intervals_sound_cons (I := (483328, 483337)) (intervals := [(612360, 612362), (725000, 725002), (784384, 784385)]) c1036_sound (intervals_sound_cons (I := (612360, 612362)) (intervals := [(725000, 725002), (784384, 784385)]) c1037_sound (intervals_sound_cons (I := (725000, 725002)) (intervals := [(784384, 784385)]) c1038_sound (intervals_sound_cons (I := (784384, 784385)) (intervals := []) c1039_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G064
