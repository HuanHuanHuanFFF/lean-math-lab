import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk144
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk145
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk146

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G026
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0416_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk144.w10]
private def c0416_intervals : List NatInterval := [(11300, 11306)]

private theorem c0416_intervals_eq :
    witnessIntervals c0416_witnesses = c0416_intervals := by
  rfl

private theorem c0416_checks : witnessesCheck c0416_witnesses = true := by
  simp only [witnessesCheck, c0416_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk144.w10_check, Bool.and_self]

private theorem c0416_cover : coverCheck 11300 11306 c0416_intervals = true := by
  decide

private theorem c0416_sound : IntervalSound (11300, 11306) := by
  have hc : coverCheck 11300 11306 (witnessIntervals c0416_witnesses) = true := by
    rw [c0416_intervals_eq]
    exact c0416_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0416_witnesses)
    (lo := 11300) (hi := 11306) c0416_checks hc

private def c0417_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk144.w11]
private def c0417_intervals : List NatInterval := [(11319, 11323)]

private theorem c0417_intervals_eq :
    witnessIntervals c0417_witnesses = c0417_intervals := by
  rfl

private theorem c0417_checks : witnessesCheck c0417_witnesses = true := by
  simp only [witnessesCheck, c0417_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk144.w11_check, Bool.and_self]

private theorem c0417_cover : coverCheck 11319 11323 c0417_intervals = true := by
  decide

private theorem c0417_sound : IntervalSound (11319, 11323) := by
  have hc : coverCheck 11319 11323 (witnessIntervals c0417_witnesses) = true := by
    rw [c0417_intervals_eq]
    exact c0417_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0417_witnesses)
    (lo := 11319) (hi := 11323) c0417_checks hc

private def c0418_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk144.w12, B699LowIndex.I11TerminalData.Chunk144.w13]
private def c0418_intervals : List NatInterval := [(11325, 11331), (11332, 11335)]

private theorem c0418_intervals_eq :
    witnessIntervals c0418_witnesses = c0418_intervals := by
  rfl

private theorem c0418_checks : witnessesCheck c0418_witnesses = true := by
  simp only [witnessesCheck, c0418_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk144.w12_check, B699LowIndex.I11TerminalData.Chunk144.w13_check, Bool.and_self]

private theorem c0418_cover : coverCheck 11325 11335 c0418_intervals = true := by
  decide

private theorem c0418_sound : IntervalSound (11325, 11335) := by
  have hc : coverCheck 11325 11335 (witnessIntervals c0418_witnesses) = true := by
    rw [c0418_intervals_eq]
    exact c0418_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0418_witnesses)
    (lo := 11325) (hi := 11335) c0418_checks hc

private def c0419_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk144.w14]
private def c0419_intervals : List NatInterval := [(11350, 11350)]

private theorem c0419_intervals_eq :
    witnessIntervals c0419_witnesses = c0419_intervals := by
  rfl

private theorem c0419_checks : witnessesCheck c0419_witnesses = true := by
  simp only [witnessesCheck, c0419_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk144.w14_check, Bool.and_self]

private theorem c0419_cover : coverCheck 11350 11350 c0419_intervals = true := by
  decide

private theorem c0419_sound : IntervalSound (11350, 11350) := by
  have hc : coverCheck 11350 11350 (witnessIntervals c0419_witnesses) = true := by
    rw [c0419_intervals_eq]
    exact c0419_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0419_witnesses)
    (lo := 11350) (hi := 11350) c0419_checks hc

private def c0420_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk144.w15]
private def c0420_intervals : List NatInterval := [(11360, 11360)]

private theorem c0420_intervals_eq :
    witnessIntervals c0420_witnesses = c0420_intervals := by
  rfl

private theorem c0420_checks : witnessesCheck c0420_witnesses = true := by
  simp only [witnessesCheck, c0420_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk144.w15_check, Bool.and_self]

private theorem c0420_cover : coverCheck 11360 11360 c0420_intervals = true := by
  decide

private theorem c0420_sound : IntervalSound (11360, 11360) := by
  have hc : coverCheck 11360 11360 (witnessIntervals c0420_witnesses) = true := by
    rw [c0420_intervals_eq]
    exact c0420_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0420_witnesses)
    (lo := 11360) (hi := 11360) c0420_checks hc

private def c0421_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk145.w0, B699LowIndex.I11TerminalData.Chunk145.w1, B699LowIndex.I11TerminalData.Chunk145.w2]
private def c0421_intervals : List NatInterval := [(11367, 11367), (11368, 11368), (11369, 11378)]

private theorem c0421_intervals_eq :
    witnessIntervals c0421_witnesses = c0421_intervals := by
  rfl

private theorem c0421_checks : witnessesCheck c0421_witnesses = true := by
  simp only [witnessesCheck, c0421_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk145.w0_check, B699LowIndex.I11TerminalData.Chunk145.w1_check, B699LowIndex.I11TerminalData.Chunk145.w2_check, Bool.and_self]

private theorem c0421_cover : coverCheck 11367 11378 c0421_intervals = true := by
  decide

private theorem c0421_sound : IntervalSound (11367, 11378) := by
  have hc : coverCheck 11367 11378 (witnessIntervals c0421_witnesses) = true := by
    rw [c0421_intervals_eq]
    exact c0421_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0421_witnesses)
    (lo := 11367) (hi := 11378) c0421_checks hc

private def c0422_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk145.w3, B699LowIndex.I11TerminalData.Chunk145.w4]
private def c0422_intervals : List NatInterval := [(11394, 11403), (11404, 11404)]

private theorem c0422_intervals_eq :
    witnessIntervals c0422_witnesses = c0422_intervals := by
  rfl

private theorem c0422_checks : witnessesCheck c0422_witnesses = true := by
  simp only [witnessesCheck, c0422_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk145.w3_check, B699LowIndex.I11TerminalData.Chunk145.w4_check, Bool.and_self]

private theorem c0422_cover : coverCheck 11394 11404 c0422_intervals = true := by
  decide

private theorem c0422_sound : IntervalSound (11394, 11404) := by
  have hc : coverCheck 11394 11404 (witnessIntervals c0422_witnesses) = true := by
    rw [c0422_intervals_eq]
    exact c0422_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0422_witnesses)
    (lo := 11394) (hi := 11404) c0422_checks hc

private def c0423_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk145.w5, B699LowIndex.I11TerminalData.Chunk145.w6, B699LowIndex.I11TerminalData.Chunk145.w7, B699LowIndex.I11TerminalData.Chunk145.w8]
private def c0423_intervals : List NatInterval := [(11421, 11421), (11422, 11422), (11423, 11433), (11434, 11434)]

private theorem c0423_intervals_eq :
    witnessIntervals c0423_witnesses = c0423_intervals := by
  rfl

private theorem c0423_checks : witnessesCheck c0423_witnesses = true := by
  simp only [witnessesCheck, c0423_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk145.w5_check, B699LowIndex.I11TerminalData.Chunk145.w6_check, B699LowIndex.I11TerminalData.Chunk145.w7_check, B699LowIndex.I11TerminalData.Chunk145.w8_check, Bool.and_self]

private theorem c0423_cover : coverCheck 11421 11434 c0423_intervals = true := by
  decide

private theorem c0423_sound : IntervalSound (11421, 11434) := by
  have hc : coverCheck 11421 11434 (witnessIntervals c0423_witnesses) = true := by
    rw [c0423_intervals_eq]
    exact c0423_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0423_witnesses)
    (lo := 11421) (hi := 11434) c0423_checks hc

private def c0424_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk145.w9, B699LowIndex.I11TerminalData.Chunk145.w10, B699LowIndex.I11TerminalData.Chunk145.w11, B699LowIndex.I11TerminalData.Chunk145.w12]
private def c0424_intervals : List NatInterval := [(11450, 11457), (11458, 11458), (11459, 11459), (11460, 11460)]

private theorem c0424_intervals_eq :
    witnessIntervals c0424_witnesses = c0424_intervals := by
  rfl

private theorem c0424_checks : witnessesCheck c0424_witnesses = true := by
  simp only [witnessesCheck, c0424_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk145.w9_check, B699LowIndex.I11TerminalData.Chunk145.w10_check, B699LowIndex.I11TerminalData.Chunk145.w11_check, B699LowIndex.I11TerminalData.Chunk145.w12_check, Bool.and_self]

private theorem c0424_cover : coverCheck 11450 11460 c0424_intervals = true := by
  decide

private theorem c0424_sound : IntervalSound (11450, 11460) := by
  have hc : coverCheck 11450 11460 (witnessIntervals c0424_witnesses) = true := by
    rw [c0424_intervals_eq]
    exact c0424_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0424_witnesses)
    (lo := 11450) (hi := 11460) c0424_checks hc

private def c0425_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk145.w13]
private def c0425_intervals : List NatInterval := [(11466, 11466)]

private theorem c0425_intervals_eq :
    witnessIntervals c0425_witnesses = c0425_intervals := by
  rfl

private theorem c0425_checks : witnessesCheck c0425_witnesses = true := by
  simp only [witnessesCheck, c0425_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk145.w13_check, Bool.and_self]

private theorem c0425_cover : coverCheck 11466 11466 c0425_intervals = true := by
  decide

private theorem c0425_sound : IntervalSound (11466, 11466) := by
  have hc : coverCheck 11466 11466 (witnessIntervals c0425_witnesses) = true := by
    rw [c0425_intervals_eq]
    exact c0425_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0425_witnesses)
    (lo := 11466) (hi := 11466) c0425_checks hc

private def c0426_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk145.w14, B699LowIndex.I11TerminalData.Chunk145.w15, B699LowIndex.I11TerminalData.Chunk146.w0]
private def c0426_intervals : List NatInterval := [(11475, 11481), (11482, 11482), (11483, 11485)]

private theorem c0426_intervals_eq :
    witnessIntervals c0426_witnesses = c0426_intervals := by
  rfl

private theorem c0426_checks : witnessesCheck c0426_witnesses = true := by
  simp only [witnessesCheck, c0426_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk145.w14_check, B699LowIndex.I11TerminalData.Chunk145.w15_check, B699LowIndex.I11TerminalData.Chunk146.w0_check, Bool.and_self]

private theorem c0426_cover : coverCheck 11475 11485 c0426_intervals = true := by
  decide

private theorem c0426_sound : IntervalSound (11475, 11485) := by
  have hc : coverCheck 11475 11485 (witnessIntervals c0426_witnesses) = true := by
    rw [c0426_intervals_eq]
    exact c0426_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0426_witnesses)
    (lo := 11475) (hi := 11485) c0426_checks hc

private def c0427_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk146.w1, B699LowIndex.I11TerminalData.Chunk146.w2]
private def c0427_intervals : List NatInterval := [(11502, 11507), (11508, 11510)]

private theorem c0427_intervals_eq :
    witnessIntervals c0427_witnesses = c0427_intervals := by
  rfl

private theorem c0427_checks : witnessesCheck c0427_witnesses = true := by
  simp only [witnessesCheck, c0427_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk146.w1_check, B699LowIndex.I11TerminalData.Chunk146.w2_check, Bool.and_self]

private theorem c0427_cover : coverCheck 11502 11510 c0427_intervals = true := by
  decide

private theorem c0427_sound : IntervalSound (11502, 11510) := by
  have hc : coverCheck 11502 11510 (witnessIntervals c0427_witnesses) = true := by
    rw [c0427_intervals_eq]
    exact c0427_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0427_witnesses)
    (lo := 11502) (hi := 11510) c0427_checks hc

private def c0428_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk146.w3, B699LowIndex.I11TerminalData.Chunk146.w4]
private def c0428_intervals : List NatInterval := [(11520, 11529), (11530, 11535)]

private theorem c0428_intervals_eq :
    witnessIntervals c0428_witnesses = c0428_intervals := by
  rfl

private theorem c0428_checks : witnessesCheck c0428_witnesses = true := by
  simp only [witnessesCheck, c0428_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk146.w3_check, B699LowIndex.I11TerminalData.Chunk146.w4_check, Bool.and_self]

private theorem c0428_cover : coverCheck 11520 11535 c0428_intervals = true := by
  decide

private theorem c0428_sound : IntervalSound (11520, 11535) := by
  have hc : coverCheck 11520 11535 (witnessIntervals c0428_witnesses) = true := by
    rw [c0428_intervals_eq]
    exact c0428_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0428_witnesses)
    (lo := 11520) (hi := 11535) c0428_checks hc

private def c0429_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk146.w5, B699LowIndex.I11TerminalData.Chunk146.w6]
private def c0429_intervals : List NatInterval := [(11552, 11561), (11562, 11562)]

private theorem c0429_intervals_eq :
    witnessIntervals c0429_witnesses = c0429_intervals := by
  rfl

private theorem c0429_checks : witnessesCheck c0429_witnesses = true := by
  simp only [witnessesCheck, c0429_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk146.w5_check, B699LowIndex.I11TerminalData.Chunk146.w6_check, Bool.and_self]

private theorem c0429_cover : coverCheck 11552 11562 c0429_intervals = true := by
  decide

private theorem c0429_sound : IntervalSound (11552, 11562) := by
  have hc : coverCheck 11552 11562 (witnessIntervals c0429_witnesses) = true := by
    rw [c0429_intervals_eq]
    exact c0429_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0429_witnesses)
    (lo := 11552) (hi := 11562) c0429_checks hc

private def c0430_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk146.w7, B699LowIndex.I11TerminalData.Chunk146.w8, B699LowIndex.I11TerminalData.Chunk146.w9]
private def c0430_intervals : List NatInterval := [(11564, 11564), (11565, 11565), (11566, 11566)]

private theorem c0430_intervals_eq :
    witnessIntervals c0430_witnesses = c0430_intervals := by
  rfl

private theorem c0430_checks : witnessesCheck c0430_witnesses = true := by
  simp only [witnessesCheck, c0430_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk146.w7_check, B699LowIndex.I11TerminalData.Chunk146.w8_check, B699LowIndex.I11TerminalData.Chunk146.w9_check, Bool.and_self]

private theorem c0430_cover : coverCheck 11564 11566 c0430_intervals = true := by
  decide

private theorem c0430_sound : IntervalSound (11564, 11566) := by
  have hc : coverCheck 11564 11566 (witnessIntervals c0430_witnesses) = true := by
    rw [c0430_intervals_eq]
    exact c0430_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0430_witnesses)
    (lo := 11564) (hi := 11566) c0430_checks hc

private def c0431_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk146.w10, B699LowIndex.I11TerminalData.Chunk146.w11]
private def c0431_intervals : List NatInterval := [(11583, 11589), (11590, 11593)]

private theorem c0431_intervals_eq :
    witnessIntervals c0431_witnesses = c0431_intervals := by
  rfl

private theorem c0431_checks : witnessesCheck c0431_witnesses = true := by
  simp only [witnessesCheck, c0431_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk146.w10_check, B699LowIndex.I11TerminalData.Chunk146.w11_check, Bool.and_self]

private theorem c0431_cover : coverCheck 11583 11593 c0431_intervals = true := by
  decide

private theorem c0431_sound : IntervalSound (11583, 11593) := by
  have hc : coverCheck 11583 11593 (witnessIntervals c0431_witnesses) = true := by
    rw [c0431_intervals_eq]
    exact c0431_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0431_witnesses)
    (lo := 11583) (hi := 11593) c0431_checks hc

def intervals : List NatInterval := [(11300, 11306), (11319, 11323), (11325, 11335), (11350, 11350), (11360, 11360), (11367, 11378), (11394, 11404), (11421, 11434), (11450, 11460), (11466, 11466), (11475, 11485), (11502, 11510), (11520, 11535), (11552, 11562), (11564, 11566), (11583, 11593)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (11300, 11306)) (intervals := [(11319, 11323), (11325, 11335), (11350, 11350), (11360, 11360), (11367, 11378), (11394, 11404), (11421, 11434), (11450, 11460), (11466, 11466), (11475, 11485), (11502, 11510), (11520, 11535), (11552, 11562), (11564, 11566), (11583, 11593)]) c0416_sound (intervals_sound_cons (I := (11319, 11323)) (intervals := [(11325, 11335), (11350, 11350), (11360, 11360), (11367, 11378), (11394, 11404), (11421, 11434), (11450, 11460), (11466, 11466), (11475, 11485), (11502, 11510), (11520, 11535), (11552, 11562), (11564, 11566), (11583, 11593)]) c0417_sound (intervals_sound_cons (I := (11325, 11335)) (intervals := [(11350, 11350), (11360, 11360), (11367, 11378), (11394, 11404), (11421, 11434), (11450, 11460), (11466, 11466), (11475, 11485), (11502, 11510), (11520, 11535), (11552, 11562), (11564, 11566), (11583, 11593)]) c0418_sound (intervals_sound_cons (I := (11350, 11350)) (intervals := [(11360, 11360), (11367, 11378), (11394, 11404), (11421, 11434), (11450, 11460), (11466, 11466), (11475, 11485), (11502, 11510), (11520, 11535), (11552, 11562), (11564, 11566), (11583, 11593)]) c0419_sound (intervals_sound_cons (I := (11360, 11360)) (intervals := [(11367, 11378), (11394, 11404), (11421, 11434), (11450, 11460), (11466, 11466), (11475, 11485), (11502, 11510), (11520, 11535), (11552, 11562), (11564, 11566), (11583, 11593)]) c0420_sound (intervals_sound_cons (I := (11367, 11378)) (intervals := [(11394, 11404), (11421, 11434), (11450, 11460), (11466, 11466), (11475, 11485), (11502, 11510), (11520, 11535), (11552, 11562), (11564, 11566), (11583, 11593)]) c0421_sound (intervals_sound_cons (I := (11394, 11404)) (intervals := [(11421, 11434), (11450, 11460), (11466, 11466), (11475, 11485), (11502, 11510), (11520, 11535), (11552, 11562), (11564, 11566), (11583, 11593)]) c0422_sound (intervals_sound_cons (I := (11421, 11434)) (intervals := [(11450, 11460), (11466, 11466), (11475, 11485), (11502, 11510), (11520, 11535), (11552, 11562), (11564, 11566), (11583, 11593)]) c0423_sound (intervals_sound_cons (I := (11450, 11460)) (intervals := [(11466, 11466), (11475, 11485), (11502, 11510), (11520, 11535), (11552, 11562), (11564, 11566), (11583, 11593)]) c0424_sound (intervals_sound_cons (I := (11466, 11466)) (intervals := [(11475, 11485), (11502, 11510), (11520, 11535), (11552, 11562), (11564, 11566), (11583, 11593)]) c0425_sound (intervals_sound_cons (I := (11475, 11485)) (intervals := [(11502, 11510), (11520, 11535), (11552, 11562), (11564, 11566), (11583, 11593)]) c0426_sound (intervals_sound_cons (I := (11502, 11510)) (intervals := [(11520, 11535), (11552, 11562), (11564, 11566), (11583, 11593)]) c0427_sound (intervals_sound_cons (I := (11520, 11535)) (intervals := [(11552, 11562), (11564, 11566), (11583, 11593)]) c0428_sound (intervals_sound_cons (I := (11552, 11562)) (intervals := [(11564, 11566), (11583, 11593)]) c0429_sound (intervals_sound_cons (I := (11564, 11566)) (intervals := [(11583, 11593)]) c0430_sound (intervals_sound_cons (I := (11583, 11593)) (intervals := []) c0431_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G026
