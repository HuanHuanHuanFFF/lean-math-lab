import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk214
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk215
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk216

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G052
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0832_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk214.w11]
private def c0832_intervals : List NatInterval := [(37760, 37760)]

private theorem c0832_intervals_eq :
    witnessIntervals c0832_witnesses = c0832_intervals := by
  rfl

private theorem c0832_checks : witnessesCheck c0832_witnesses = true := by
  simp only [witnessesCheck, c0832_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk214.w11_check, Bool.and_self]

private theorem c0832_cover : coverCheck 37760 37760 c0832_intervals = true := by
  decide

private theorem c0832_sound : IntervalSound (37760, 37760) := by
  have hc : coverCheck 37760 37760 (witnessIntervals c0832_witnesses) = true := by
    rw [c0832_intervals_eq]
    exact c0832_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0832_witnesses)
    (lo := 37760) (hi := 37760) c0832_checks hc

private def c0833_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk214.w12, B699LowIndex.I11TerminalData.Chunk214.w13]
private def c0833_intervals : List NatInterval := [(38073, 38079), (38080, 38080)]

private theorem c0833_intervals_eq :
    witnessIntervals c0833_witnesses = c0833_intervals := by
  rfl

private theorem c0833_checks : witnessesCheck c0833_witnesses = true := by
  simp only [witnessesCheck, c0833_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk214.w12_check, B699LowIndex.I11TerminalData.Chunk214.w13_check, Bool.and_self]

private theorem c0833_cover : coverCheck 38073 38080 c0833_intervals = true := by
  decide

private theorem c0833_sound : IntervalSound (38073, 38080) := by
  have hc : coverCheck 38073 38080 (witnessIntervals c0833_witnesses) = true := by
    rw [c0833_intervals_eq]
    exact c0833_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0833_witnesses)
    (lo := 38073) (hi := 38080) c0833_checks hc

private def c0834_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk214.w14]
private def c0834_intervals : List NatInterval := [(38151, 38154)]

private theorem c0834_intervals_eq :
    witnessIntervals c0834_witnesses = c0834_intervals := by
  rfl

private theorem c0834_checks : witnessesCheck c0834_witnesses = true := by
  simp only [witnessesCheck, c0834_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk214.w14_check, Bool.and_self]

private theorem c0834_cover : coverCheck 38151 38154 c0834_intervals = true := by
  decide

private theorem c0834_sound : IntervalSound (38151, 38154) := by
  have hc : coverCheck 38151 38154 (witnessIntervals c0834_witnesses) = true := by
    rw [c0834_intervals_eq]
    exact c0834_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0834_witnesses)
    (lo := 38151) (hi := 38154) c0834_checks hc

private def c0835_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk214.w15, B699LowIndex.I11TerminalData.Chunk215.w0]
private def c0835_intervals : List NatInterval := [(38400, 38403), (38404, 38404)]

private theorem c0835_intervals_eq :
    witnessIntervals c0835_witnesses = c0835_intervals := by
  rfl

private theorem c0835_checks : witnessesCheck c0835_witnesses = true := by
  simp only [witnessesCheck, c0835_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk214.w15_check, B699LowIndex.I11TerminalData.Chunk215.w0_check, Bool.and_self]

private theorem c0835_cover : coverCheck 38400 38404 c0835_intervals = true := by
  decide

private theorem c0835_sound : IntervalSound (38400, 38404) := by
  have hc : coverCheck 38400 38404 (witnessIntervals c0835_witnesses) = true := by
    rw [c0835_intervals_eq]
    exact c0835_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0835_witnesses)
    (lo := 38400) (hi := 38404) c0835_checks hc

private def c0836_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk215.w1, B699LowIndex.I11TerminalData.Chunk215.w2]
private def c0836_intervals : List NatInterval := [(38759, 38759), (38760, 38760)]

private theorem c0836_intervals_eq :
    witnessIntervals c0836_witnesses = c0836_intervals := by
  rfl

private theorem c0836_checks : witnessesCheck c0836_witnesses = true := by
  simp only [witnessesCheck, c0836_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk215.w1_check, B699LowIndex.I11TerminalData.Chunk215.w2_check, Bool.and_self]

private theorem c0836_cover : coverCheck 38759 38760 c0836_intervals = true := by
  decide

private theorem c0836_sound : IntervalSound (38759, 38760) := by
  have hc : coverCheck 38759 38760 (witnessIntervals c0836_witnesses) = true := by
    rw [c0836_intervals_eq]
    exact c0836_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0836_witnesses)
    (lo := 38759) (hi := 38760) c0836_checks hc

private def c0837_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk215.w3, B699LowIndex.I11TerminalData.Chunk215.w4, B699LowIndex.I11TerminalData.Chunk215.w5]
private def c0837_intervals : List NatInterval := [(38880, 38883), (38884, 38884), (38885, 38885)]

private theorem c0837_intervals_eq :
    witnessIntervals c0837_witnesses = c0837_intervals := by
  rfl

private theorem c0837_checks : witnessesCheck c0837_witnesses = true := by
  simp only [witnessesCheck, c0837_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk215.w3_check, B699LowIndex.I11TerminalData.Chunk215.w4_check, B699LowIndex.I11TerminalData.Chunk215.w5_check, Bool.and_self]

private theorem c0837_cover : coverCheck 38880 38885 c0837_intervals = true := by
  decide

private theorem c0837_sound : IntervalSound (38880, 38885) := by
  have hc : coverCheck 38880 38885 (witnessIntervals c0837_witnesses) = true := by
    rw [c0837_intervals_eq]
    exact c0837_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0837_witnesses)
    (lo := 38880) (hi := 38885) c0837_checks hc

private def c0838_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk215.w6]
private def c0838_intervals : List NatInterval := [(39042, 39050)]

private theorem c0838_intervals_eq :
    witnessIntervals c0838_witnesses = c0838_intervals := by
  rfl

private theorem c0838_checks : witnessesCheck c0838_witnesses = true := by
  simp only [witnessesCheck, c0838_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk215.w6_check, Bool.and_self]

private theorem c0838_cover : coverCheck 39042 39050 c0838_intervals = true := by
  decide

private theorem c0838_sound : IntervalSound (39042, 39050) := by
  have hc : coverCheck 39042 39050 (witnessIntervals c0838_witnesses) = true := by
    rw [c0838_intervals_eq]
    exact c0838_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0838_witnesses)
    (lo := 39042) (hi := 39050) c0838_checks hc

private def c0839_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk215.w7, B699LowIndex.I11TerminalData.Chunk215.w8, B699LowIndex.I11TerminalData.Chunk215.w9, B699LowIndex.I11TerminalData.Chunk215.w10, B699LowIndex.I11TerminalData.Chunk215.w11]
private def c0839_intervals : List NatInterval := [(39125, 39129), (39130, 39130), (39131, 39131), (39132, 39132), (39133, 39133)]

private theorem c0839_intervals_eq :
    witnessIntervals c0839_witnesses = c0839_intervals := by
  rfl

private theorem c0839_checks : witnessesCheck c0839_witnesses = true := by
  simp only [witnessesCheck, c0839_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk215.w7_check, B699LowIndex.I11TerminalData.Chunk215.w8_check, B699LowIndex.I11TerminalData.Chunk215.w9_check, B699LowIndex.I11TerminalData.Chunk215.w10_check, B699LowIndex.I11TerminalData.Chunk215.w11_check, Bool.and_self]

private theorem c0839_cover : coverCheck 39125 39133 c0839_intervals = true := by
  decide

private theorem c0839_sound : IntervalSound (39125, 39133) := by
  have hc : coverCheck 39125 39133 (witnessIntervals c0839_witnesses) = true := by
    rw [c0839_intervals_eq]
    exact c0839_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0839_witnesses)
    (lo := 39125) (hi := 39133) c0839_checks hc

private def c0840_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk215.w12]
private def c0840_intervals : List NatInterval := [(39375, 39376)]

private theorem c0840_intervals_eq :
    witnessIntervals c0840_witnesses = c0840_intervals := by
  rfl

private theorem c0840_checks : witnessesCheck c0840_witnesses = true := by
  simp only [witnessesCheck, c0840_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk215.w12_check, Bool.and_self]

private theorem c0840_cover : coverCheck 39375 39376 c0840_intervals = true := by
  decide

private theorem c0840_sound : IntervalSound (39375, 39376) := by
  have hc : coverCheck 39375 39376 (witnessIntervals c0840_witnesses) = true := by
    rw [c0840_intervals_eq]
    exact c0840_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0840_witnesses)
    (lo := 39375) (hi := 39376) c0840_checks hc

private def c0841_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk215.w13, B699LowIndex.I11TerminalData.Chunk215.w14]
private def c0841_intervals : List NatInterval := [(39447, 39453), (39454, 39455)]

private theorem c0841_intervals_eq :
    witnessIntervals c0841_witnesses = c0841_intervals := by
  rfl

private theorem c0841_checks : witnessesCheck c0841_witnesses = true := by
  simp only [witnessesCheck, c0841_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk215.w13_check, B699LowIndex.I11TerminalData.Chunk215.w14_check, Bool.and_self]

private theorem c0841_cover : coverCheck 39447 39455 c0841_intervals = true := by
  decide

private theorem c0841_sound : IntervalSound (39447, 39455) := by
  have hc : coverCheck 39447 39455 (witnessIntervals c0841_witnesses) = true := by
    rw [c0841_intervals_eq]
    exact c0841_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0841_witnesses)
    (lo := 39447) (hi := 39455) c0841_checks hc

private def c0842_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk215.w15]
private def c0842_intervals : List NatInterval := [(39690, 39690)]

private theorem c0842_intervals_eq :
    witnessIntervals c0842_witnesses = c0842_intervals := by
  rfl

private theorem c0842_checks : witnessesCheck c0842_witnesses = true := by
  simp only [witnessesCheck, c0842_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk215.w15_check, Bool.and_self]

private theorem c0842_cover : coverCheck 39690 39690 c0842_intervals = true := by
  decide

private theorem c0842_sound : IntervalSound (39690, 39690) := by
  have hc : coverCheck 39690 39690 (witnessIntervals c0842_witnesses) = true := by
    rw [c0842_intervals_eq]
    exact c0842_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0842_witnesses)
    (lo := 39690) (hi := 39690) c0842_checks hc

private def c0843_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk216.w0, B699LowIndex.I11TerminalData.Chunk216.w1]
private def c0843_intervals : List NatInterval := [(39936, 39939), (39940, 39943)]

private theorem c0843_intervals_eq :
    witnessIntervals c0843_witnesses = c0843_intervals := by
  rfl

private theorem c0843_checks : witnessesCheck c0843_witnesses = true := by
  simp only [witnessesCheck, c0843_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk216.w0_check, B699LowIndex.I11TerminalData.Chunk216.w1_check, Bool.and_self]

private theorem c0843_cover : coverCheck 39936 39943 c0843_intervals = true := by
  decide

private theorem c0843_sound : IntervalSound (39936, 39943) := by
  have hc : coverCheck 39936 39943 (witnessIntervals c0843_witnesses) = true := by
    rw [c0843_intervals_eq]
    exact c0843_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0843_witnesses)
    (lo := 39936) (hi := 39943) c0843_checks hc

private def c0844_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk216.w2]
private def c0844_intervals : List NatInterval := [(40131, 40135)]

private theorem c0844_intervals_eq :
    witnessIntervals c0844_witnesses = c0844_intervals := by
  rfl

private theorem c0844_checks : witnessesCheck c0844_witnesses = true := by
  simp only [witnessesCheck, c0844_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk216.w2_check, Bool.and_self]

private theorem c0844_cover : coverCheck 40131 40135 c0844_intervals = true := by
  decide

private theorem c0844_sound : IntervalSound (40131, 40135) := by
  have hc : coverCheck 40131 40135 (witnessIntervals c0844_witnesses) = true := by
    rw [c0844_intervals_eq]
    exact c0844_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0844_witnesses)
    (lo := 40131) (hi := 40135) c0844_checks hc

private def c0845_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk216.w3]
private def c0845_intervals : List NatInterval := [(40257, 40260)]

private theorem c0845_intervals_eq :
    witnessIntervals c0845_witnesses = c0845_intervals := by
  rfl

private theorem c0845_checks : witnessesCheck c0845_witnesses = true := by
  simp only [witnessesCheck, c0845_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk216.w3_check, Bool.and_self]

private theorem c0845_cover : coverCheck 40257 40260 c0845_intervals = true := by
  decide

private theorem c0845_sound : IntervalSound (40257, 40260) := by
  have hc : coverCheck 40257 40260 (witnessIntervals c0845_witnesses) = true := by
    rw [c0845_intervals_eq]
    exact c0845_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0845_witnesses)
    (lo := 40257) (hi := 40260) c0845_checks hc

private def c0846_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk216.w4, B699LowIndex.I11TerminalData.Chunk216.w5]
private def c0846_intervals : List NatInterval := [(40500, 40509), (40510, 40510)]

private theorem c0846_intervals_eq :
    witnessIntervals c0846_witnesses = c0846_intervals := by
  rfl

private theorem c0846_checks : witnessesCheck c0846_witnesses = true := by
  simp only [witnessesCheck, c0846_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk216.w4_check, B699LowIndex.I11TerminalData.Chunk216.w5_check, Bool.and_self]

private theorem c0846_cover : coverCheck 40500 40510 c0846_intervals = true := by
  decide

private theorem c0846_sound : IntervalSound (40500, 40510) := by
  have hc : coverCheck 40500 40510 (witnessIntervals c0846_witnesses) = true := by
    rw [c0846_intervals_eq]
    exact c0846_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0846_witnesses)
    (lo := 40500) (hi := 40510) c0846_checks hc

private def c0847_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk216.w6]
private def c0847_intervals : List NatInterval := [(40581, 40586)]

private theorem c0847_intervals_eq :
    witnessIntervals c0847_witnesses = c0847_intervals := by
  rfl

private theorem c0847_checks : witnessesCheck c0847_witnesses = true := by
  simp only [witnessesCheck, c0847_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk216.w6_check, Bool.and_self]

private theorem c0847_cover : coverCheck 40581 40586 c0847_intervals = true := by
  decide

private theorem c0847_sound : IntervalSound (40581, 40586) := by
  have hc : coverCheck 40581 40586 (witnessIntervals c0847_witnesses) = true := by
    rw [c0847_intervals_eq]
    exact c0847_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0847_witnesses)
    (lo := 40581) (hi := 40586) c0847_checks hc

def intervals : List NatInterval := [(37760, 37760), (38073, 38080), (38151, 38154), (38400, 38404), (38759, 38760), (38880, 38885), (39042, 39050), (39125, 39133), (39375, 39376), (39447, 39455), (39690, 39690), (39936, 39943), (40131, 40135), (40257, 40260), (40500, 40510), (40581, 40586)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (37760, 37760)) (intervals := [(38073, 38080), (38151, 38154), (38400, 38404), (38759, 38760), (38880, 38885), (39042, 39050), (39125, 39133), (39375, 39376), (39447, 39455), (39690, 39690), (39936, 39943), (40131, 40135), (40257, 40260), (40500, 40510), (40581, 40586)]) c0832_sound (intervals_sound_cons (I := (38073, 38080)) (intervals := [(38151, 38154), (38400, 38404), (38759, 38760), (38880, 38885), (39042, 39050), (39125, 39133), (39375, 39376), (39447, 39455), (39690, 39690), (39936, 39943), (40131, 40135), (40257, 40260), (40500, 40510), (40581, 40586)]) c0833_sound (intervals_sound_cons (I := (38151, 38154)) (intervals := [(38400, 38404), (38759, 38760), (38880, 38885), (39042, 39050), (39125, 39133), (39375, 39376), (39447, 39455), (39690, 39690), (39936, 39943), (40131, 40135), (40257, 40260), (40500, 40510), (40581, 40586)]) c0834_sound (intervals_sound_cons (I := (38400, 38404)) (intervals := [(38759, 38760), (38880, 38885), (39042, 39050), (39125, 39133), (39375, 39376), (39447, 39455), (39690, 39690), (39936, 39943), (40131, 40135), (40257, 40260), (40500, 40510), (40581, 40586)]) c0835_sound (intervals_sound_cons (I := (38759, 38760)) (intervals := [(38880, 38885), (39042, 39050), (39125, 39133), (39375, 39376), (39447, 39455), (39690, 39690), (39936, 39943), (40131, 40135), (40257, 40260), (40500, 40510), (40581, 40586)]) c0836_sound (intervals_sound_cons (I := (38880, 38885)) (intervals := [(39042, 39050), (39125, 39133), (39375, 39376), (39447, 39455), (39690, 39690), (39936, 39943), (40131, 40135), (40257, 40260), (40500, 40510), (40581, 40586)]) c0837_sound (intervals_sound_cons (I := (39042, 39050)) (intervals := [(39125, 39133), (39375, 39376), (39447, 39455), (39690, 39690), (39936, 39943), (40131, 40135), (40257, 40260), (40500, 40510), (40581, 40586)]) c0838_sound (intervals_sound_cons (I := (39125, 39133)) (intervals := [(39375, 39376), (39447, 39455), (39690, 39690), (39936, 39943), (40131, 40135), (40257, 40260), (40500, 40510), (40581, 40586)]) c0839_sound (intervals_sound_cons (I := (39375, 39376)) (intervals := [(39447, 39455), (39690, 39690), (39936, 39943), (40131, 40135), (40257, 40260), (40500, 40510), (40581, 40586)]) c0840_sound (intervals_sound_cons (I := (39447, 39455)) (intervals := [(39690, 39690), (39936, 39943), (40131, 40135), (40257, 40260), (40500, 40510), (40581, 40586)]) c0841_sound (intervals_sound_cons (I := (39690, 39690)) (intervals := [(39936, 39943), (40131, 40135), (40257, 40260), (40500, 40510), (40581, 40586)]) c0842_sound (intervals_sound_cons (I := (39936, 39943)) (intervals := [(40131, 40135), (40257, 40260), (40500, 40510), (40581, 40586)]) c0843_sound (intervals_sound_cons (I := (40131, 40135)) (intervals := [(40257, 40260), (40500, 40510), (40581, 40586)]) c0844_sound (intervals_sound_cons (I := (40257, 40260)) (intervals := [(40500, 40510), (40581, 40586)]) c0845_sound (intervals_sound_cons (I := (40500, 40510)) (intervals := [(40581, 40586)]) c0846_sound (intervals_sound_cons (I := (40581, 40586)) (intervals := []) c0847_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G052
