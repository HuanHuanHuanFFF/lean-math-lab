import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk133
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk134
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk135

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G022
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0352_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk133.w2, B699LowIndex.I11TerminalData.Chunk133.w3]
private def c0352_intervals : List NatInterval := [(10075, 10079), (10080, 10085)]

private theorem c0352_intervals_eq :
    witnessIntervals c0352_witnesses = c0352_intervals := by
  rfl

private theorem c0352_checks : witnessesCheck c0352_witnesses = true := by
  simp only [witnessesCheck, c0352_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk133.w2_check, B699LowIndex.I11TerminalData.Chunk133.w3_check, Bool.and_self]

private theorem c0352_cover : coverCheck 10075 10085 c0352_intervals = true := by
  decide

private theorem c0352_sound : IntervalSound (10075, 10085) := by
  have hc : coverCheck 10075 10085 (witnessIntervals c0352_witnesses) = true := by
    rw [c0352_intervals_eq]
    exact c0352_cover
  exact interval_sound_of_witness_checks (witnesses := c0352_witnesses)
    (lo := 10075) (hi := 10085) c0352_checks hc

private def c0353_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk133.w4, B699LowIndex.I11TerminalData.Chunk133.w5]
private def c0353_intervals : List NatInterval := [(10098, 10103), (10104, 10108)]

private theorem c0353_intervals_eq :
    witnessIntervals c0353_witnesses = c0353_intervals := by
  rfl

private theorem c0353_checks : witnessesCheck c0353_witnesses = true := by
  simp only [witnessesCheck, c0353_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk133.w4_check, B699LowIndex.I11TerminalData.Chunk133.w5_check, Bool.and_self]

private theorem c0353_cover : coverCheck 10098 10108 c0353_intervals = true := by
  decide

private theorem c0353_sound : IntervalSound (10098, 10108) := by
  have hc : coverCheck 10098 10108 (witnessIntervals c0353_witnesses) = true := by
    rw [c0353_intervals_eq]
    exact c0353_cover
  exact interval_sound_of_witness_checks (witnesses := c0353_witnesses)
    (lo := 10098) (hi := 10108) c0353_checks hc

private def c0354_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk133.w6, B699LowIndex.I11TerminalData.Chunk133.w7, B699LowIndex.I11TerminalData.Chunk133.w8, B699LowIndex.I11TerminalData.Chunk133.w9, B699LowIndex.I11TerminalData.Chunk133.w10, B699LowIndex.I11TerminalData.Chunk133.w11, B699LowIndex.I11TerminalData.Chunk133.w12, B699LowIndex.I11TerminalData.Chunk133.w13, B699LowIndex.I11TerminalData.Chunk133.w14]
private def c0354_intervals : List NatInterval := [(10125, 10125), (10126, 10126), (10127, 10127), (10128, 10128), (10129, 10129), (10130, 10130), (10131, 10131), (10132, 10132), (10133, 10135)]

private theorem c0354_intervals_eq :
    witnessIntervals c0354_witnesses = c0354_intervals := by
  rfl

private theorem c0354_checks : witnessesCheck c0354_witnesses = true := by
  simp only [witnessesCheck, c0354_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk133.w6_check, B699LowIndex.I11TerminalData.Chunk133.w7_check, B699LowIndex.I11TerminalData.Chunk133.w8_check, B699LowIndex.I11TerminalData.Chunk133.w9_check, B699LowIndex.I11TerminalData.Chunk133.w10_check, B699LowIndex.I11TerminalData.Chunk133.w11_check, B699LowIndex.I11TerminalData.Chunk133.w12_check, B699LowIndex.I11TerminalData.Chunk133.w13_check, B699LowIndex.I11TerminalData.Chunk133.w14_check, Bool.and_self]

private theorem c0354_cover : coverCheck 10125 10135 c0354_intervals = true := by
  decide

private theorem c0354_sound : IntervalSound (10125, 10135) := by
  have hc : coverCheck 10125 10135 (witnessIntervals c0354_witnesses) = true := by
    rw [c0354_intervals_eq]
    exact c0354_cover
  exact interval_sound_of_witness_checks (witnesses := c0354_witnesses)
    (lo := 10125) (hi := 10135) c0354_checks hc

private def c0355_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk133.w15, B699LowIndex.I11TerminalData.Chunk134.w0]
private def c0355_intervals : List NatInterval := [(10144, 10151), (10152, 10160)]

private theorem c0355_intervals_eq :
    witnessIntervals c0355_witnesses = c0355_intervals := by
  rfl

private theorem c0355_checks : witnessesCheck c0355_witnesses = true := by
  simp only [witnessesCheck, c0355_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk133.w15_check, B699LowIndex.I11TerminalData.Chunk134.w0_check, Bool.and_self]

private theorem c0355_cover : coverCheck 10144 10160 c0355_intervals = true := by
  decide

private theorem c0355_sound : IntervalSound (10144, 10160) := by
  have hc : coverCheck 10144 10160 (witnessIntervals c0355_witnesses) = true := by
    rw [c0355_intervals_eq]
    exact c0355_cover
  exact interval_sound_of_witness_checks (witnesses := c0355_witnesses)
    (lo := 10144) (hi := 10160) c0355_checks hc

private def c0356_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk134.w1, B699LowIndex.I11TerminalData.Chunk134.w2]
private def c0356_intervals : List NatInterval := [(10176, 10179), (10180, 10186)]

private theorem c0356_intervals_eq :
    witnessIntervals c0356_witnesses = c0356_intervals := by
  rfl

private theorem c0356_checks : witnessesCheck c0356_witnesses = true := by
  simp only [witnessesCheck, c0356_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk134.w1_check, B699LowIndex.I11TerminalData.Chunk134.w2_check, Bool.and_self]

private theorem c0356_cover : coverCheck 10176 10186 c0356_intervals = true := by
  decide

private theorem c0356_sound : IntervalSound (10176, 10186) := by
  have hc : coverCheck 10176 10186 (witnessIntervals c0356_witnesses) = true := by
    rw [c0356_intervals_eq]
    exact c0356_cover
  exact interval_sound_of_witness_checks (witnesses := c0356_witnesses)
    (lo := 10176) (hi := 10186) c0356_checks hc

private def c0357_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk134.w3]
private def c0357_intervals : List NatInterval := [(10200, 10202)]

private theorem c0357_intervals_eq :
    witnessIntervals c0357_witnesses = c0357_intervals := by
  rfl

private theorem c0357_checks : witnessesCheck c0357_witnesses = true := by
  simp only [witnessesCheck, c0357_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk134.w3_check, Bool.and_self]

private theorem c0357_cover : coverCheck 10200 10202 c0357_intervals = true := by
  decide

private theorem c0357_sound : IntervalSound (10200, 10202) := by
  have hc : coverCheck 10200 10202 (witnessIntervals c0357_witnesses) = true := by
    rw [c0357_intervals_eq]
    exact c0357_cover
  exact interval_sound_of_witness_checks (witnesses := c0357_witnesses)
    (lo := 10200) (hi := 10202) c0357_checks hc

private def c0358_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk134.w4, B699LowIndex.I11TerminalData.Chunk134.w5, B699LowIndex.I11TerminalData.Chunk134.w6, B699LowIndex.I11TerminalData.Chunk134.w7, B699LowIndex.I11TerminalData.Chunk134.w8, B699LowIndex.I11TerminalData.Chunk134.w9]
private def c0358_intervals : List NatInterval := [(10206, 10206), (10207, 10207), (10208, 10208), (10209, 10209), (10210, 10210), (10211, 10216)]

private theorem c0358_intervals_eq :
    witnessIntervals c0358_witnesses = c0358_intervals := by
  rfl

private theorem c0358_checks : witnessesCheck c0358_witnesses = true := by
  simp only [witnessesCheck, c0358_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk134.w4_check, B699LowIndex.I11TerminalData.Chunk134.w5_check, B699LowIndex.I11TerminalData.Chunk134.w6_check, B699LowIndex.I11TerminalData.Chunk134.w7_check, B699LowIndex.I11TerminalData.Chunk134.w8_check, B699LowIndex.I11TerminalData.Chunk134.w9_check, Bool.and_self]

private theorem c0358_cover : coverCheck 10206 10216 c0358_intervals = true := by
  decide

private theorem c0358_sound : IntervalSound (10206, 10216) := by
  have hc : coverCheck 10206 10216 (witnessIntervals c0358_witnesses) = true := by
    rw [c0358_intervals_eq]
    exact c0358_cover
  exact interval_sound_of_witness_checks (witnesses := c0358_witnesses)
    (lo := 10206) (hi := 10216) c0358_checks hc

private def c0359_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk134.w10, B699LowIndex.I11TerminalData.Chunk134.w11, B699LowIndex.I11TerminalData.Chunk134.w12]
private def c0359_intervals : List NatInterval := [(10233, 10233), (10234, 10234), (10235, 10235)]

private theorem c0359_intervals_eq :
    witnessIntervals c0359_witnesses = c0359_intervals := by
  rfl

private theorem c0359_checks : witnessesCheck c0359_witnesses = true := by
  simp only [witnessesCheck, c0359_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk134.w10_check, B699LowIndex.I11TerminalData.Chunk134.w11_check, B699LowIndex.I11TerminalData.Chunk134.w12_check, Bool.and_self]

private theorem c0359_cover : coverCheck 10233 10235 c0359_intervals = true := by
  decide

private theorem c0359_sound : IntervalSound (10233, 10235) := by
  have hc : coverCheck 10233 10235 (witnessIntervals c0359_witnesses) = true := by
    rw [c0359_intervals_eq]
    exact c0359_cover
  exact interval_sound_of_witness_checks (witnesses := c0359_witnesses)
    (lo := 10233) (hi := 10235) c0359_checks hc

private def c0360_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk134.w13, B699LowIndex.I11TerminalData.Chunk134.w14, B699LowIndex.I11TerminalData.Chunk134.w15, B699LowIndex.I11TerminalData.Chunk135.w0]
private def c0360_intervals : List NatInterval := [(10240, 10240), (10241, 10241), (10242, 10242), (10243, 10251)]

private theorem c0360_intervals_eq :
    witnessIntervals c0360_witnesses = c0360_intervals := by
  rfl

private theorem c0360_checks : witnessesCheck c0360_witnesses = true := by
  simp only [witnessesCheck, c0360_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk134.w13_check, B699LowIndex.I11TerminalData.Chunk134.w14_check, B699LowIndex.I11TerminalData.Chunk134.w15_check, B699LowIndex.I11TerminalData.Chunk135.w0_check, Bool.and_self]

private theorem c0360_cover : coverCheck 10240 10251 c0360_intervals = true := by
  decide

private theorem c0360_sound : IntervalSound (10240, 10251) := by
  have hc : coverCheck 10240 10251 (witnessIntervals c0360_witnesses) = true := by
    rw [c0360_intervals_eq]
    exact c0360_cover
  exact interval_sound_of_witness_checks (witnesses := c0360_witnesses)
    (lo := 10240) (hi := 10251) c0360_checks hc

private def c0361_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk135.w1]
private def c0361_intervals : List NatInterval := [(10260, 10260)]

private theorem c0361_intervals_eq :
    witnessIntervals c0361_witnesses = c0361_intervals := by
  rfl

private theorem c0361_checks : witnessesCheck c0361_witnesses = true := by
  simp only [witnessesCheck, c0361_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk135.w1_check, Bool.and_self]

private theorem c0361_cover : coverCheck 10260 10260 c0361_intervals = true := by
  decide

private theorem c0361_sound : IntervalSound (10260, 10260) := by
  have hc : coverCheck 10260 10260 (witnessIntervals c0361_witnesses) = true := by
    rw [c0361_intervals_eq]
    exact c0361_cover
  exact interval_sound_of_witness_checks (witnesses := c0361_witnesses)
    (lo := 10260) (hi := 10260) c0361_checks hc

private def c0362_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk135.w2]
private def c0362_intervals : List NatInterval := [(10275, 10282)]

private theorem c0362_intervals_eq :
    witnessIntervals c0362_witnesses = c0362_intervals := by
  rfl

private theorem c0362_checks : witnessesCheck c0362_witnesses = true := by
  simp only [witnessesCheck, c0362_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk135.w2_check, Bool.and_self]

private theorem c0362_cover : coverCheck 10275 10282 c0362_intervals = true := by
  decide

private theorem c0362_sound : IntervalSound (10275, 10282) := by
  have hc : coverCheck 10275 10282 (witnessIntervals c0362_witnesses) = true := by
    rw [c0362_intervals_eq]
    exact c0362_cover
  exact interval_sound_of_witness_checks (witnesses := c0362_witnesses)
    (lo := 10275) (hi := 10282) c0362_checks hc

private def c0363_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk135.w3]
private def c0363_intervals : List NatInterval := [(10290, 10297)]

private theorem c0363_intervals_eq :
    witnessIntervals c0363_witnesses = c0363_intervals := by
  rfl

private theorem c0363_checks : witnessesCheck c0363_witnesses = true := by
  simp only [witnessesCheck, c0363_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk135.w3_check, Bool.and_self]

private theorem c0363_cover : coverCheck 10290 10297 c0363_intervals = true := by
  decide

private theorem c0363_sound : IntervalSound (10290, 10297) := by
  have hc : coverCheck 10290 10297 (witnessIntervals c0363_witnesses) = true := by
    rw [c0363_intervals_eq]
    exact c0363_cover
  exact interval_sound_of_witness_checks (witnesses := c0363_witnesses)
    (lo := 10290) (hi := 10297) c0363_checks hc

private def c0364_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk135.w4]
private def c0364_intervals : List NatInterval := [(10300, 10300)]

private theorem c0364_intervals_eq :
    witnessIntervals c0364_witnesses = c0364_intervals := by
  rfl

private theorem c0364_checks : witnessesCheck c0364_witnesses = true := by
  simp only [witnessesCheck, c0364_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk135.w4_check, Bool.and_self]

private theorem c0364_cover : coverCheck 10300 10300 c0364_intervals = true := by
  decide

private theorem c0364_sound : IntervalSound (10300, 10300) := by
  have hc : coverCheck 10300 10300 (witnessIntervals c0364_witnesses) = true := by
    rw [c0364_intervals_eq]
    exact c0364_cover
  exact interval_sound_of_witness_checks (witnesses := c0364_witnesses)
    (lo := 10300) (hi := 10300) c0364_checks hc

private def c0365_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk135.w5]
private def c0365_intervals : List NatInterval := [(10304, 10310)]

private theorem c0365_intervals_eq :
    witnessIntervals c0365_witnesses = c0365_intervals := by
  rfl

private theorem c0365_checks : witnessesCheck c0365_witnesses = true := by
  simp only [witnessesCheck, c0365_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk135.w5_check, Bool.and_self]

private theorem c0365_cover : coverCheck 10304 10310 c0365_intervals = true := by
  decide

private theorem c0365_sound : IntervalSound (10304, 10310) := by
  have hc : coverCheck 10304 10310 (witnessIntervals c0365_witnesses) = true := by
    rw [c0365_intervals_eq]
    exact c0365_cover
  exact interval_sound_of_witness_checks (witnesses := c0365_witnesses)
    (lo := 10304) (hi := 10310) c0365_checks hc

private def c0366_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk135.w6]
private def c0366_intervals : List NatInterval := [(10314, 10314)]

private theorem c0366_intervals_eq :
    witnessIntervals c0366_witnesses = c0366_intervals := by
  rfl

private theorem c0366_checks : witnessesCheck c0366_witnesses = true := by
  simp only [witnessesCheck, c0366_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk135.w6_check, Bool.and_self]

private theorem c0366_cover : coverCheck 10314 10314 c0366_intervals = true := by
  decide

private theorem c0366_sound : IntervalSound (10314, 10314) := by
  have hc : coverCheck 10314 10314 (witnessIntervals c0366_witnesses) = true := by
    rw [c0366_intervals_eq]
    exact c0366_cover
  exact interval_sound_of_witness_checks (witnesses := c0366_witnesses)
    (lo := 10314) (hi := 10314) c0366_checks hc

private def c0367_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk135.w7, B699LowIndex.I11TerminalData.Chunk135.w8]
private def c0367_intervals : List NatInterval := [(10339, 10347), (10348, 10351)]

private theorem c0367_intervals_eq :
    witnessIntervals c0367_witnesses = c0367_intervals := by
  rfl

private theorem c0367_checks : witnessesCheck c0367_witnesses = true := by
  simp only [witnessesCheck, c0367_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk135.w7_check, B699LowIndex.I11TerminalData.Chunk135.w8_check, Bool.and_self]

private theorem c0367_cover : coverCheck 10339 10351 c0367_intervals = true := by
  decide

private theorem c0367_sound : IntervalSound (10339, 10351) := by
  have hc : coverCheck 10339 10351 (witnessIntervals c0367_witnesses) = true := by
    rw [c0367_intervals_eq]
    exact c0367_cover
  exact interval_sound_of_witness_checks (witnesses := c0367_witnesses)
    (lo := 10339) (hi := 10351) c0367_checks hc

def intervals : List NatInterval := [(10075, 10085), (10098, 10108), (10125, 10135), (10144, 10160), (10176, 10186), (10200, 10202), (10206, 10216), (10233, 10235), (10240, 10251), (10260, 10260), (10275, 10282), (10290, 10297), (10300, 10300), (10304, 10310), (10314, 10314), (10339, 10351)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (10075, 10085)) (intervals := [(10098, 10108), (10125, 10135), (10144, 10160), (10176, 10186), (10200, 10202), (10206, 10216), (10233, 10235), (10240, 10251), (10260, 10260), (10275, 10282), (10290, 10297), (10300, 10300), (10304, 10310), (10314, 10314), (10339, 10351)]) c0352_sound (intervals_sound_cons (I := (10098, 10108)) (intervals := [(10125, 10135), (10144, 10160), (10176, 10186), (10200, 10202), (10206, 10216), (10233, 10235), (10240, 10251), (10260, 10260), (10275, 10282), (10290, 10297), (10300, 10300), (10304, 10310), (10314, 10314), (10339, 10351)]) c0353_sound (intervals_sound_cons (I := (10125, 10135)) (intervals := [(10144, 10160), (10176, 10186), (10200, 10202), (10206, 10216), (10233, 10235), (10240, 10251), (10260, 10260), (10275, 10282), (10290, 10297), (10300, 10300), (10304, 10310), (10314, 10314), (10339, 10351)]) c0354_sound (intervals_sound_cons (I := (10144, 10160)) (intervals := [(10176, 10186), (10200, 10202), (10206, 10216), (10233, 10235), (10240, 10251), (10260, 10260), (10275, 10282), (10290, 10297), (10300, 10300), (10304, 10310), (10314, 10314), (10339, 10351)]) c0355_sound (intervals_sound_cons (I := (10176, 10186)) (intervals := [(10200, 10202), (10206, 10216), (10233, 10235), (10240, 10251), (10260, 10260), (10275, 10282), (10290, 10297), (10300, 10300), (10304, 10310), (10314, 10314), (10339, 10351)]) c0356_sound (intervals_sound_cons (I := (10200, 10202)) (intervals := [(10206, 10216), (10233, 10235), (10240, 10251), (10260, 10260), (10275, 10282), (10290, 10297), (10300, 10300), (10304, 10310), (10314, 10314), (10339, 10351)]) c0357_sound (intervals_sound_cons (I := (10206, 10216)) (intervals := [(10233, 10235), (10240, 10251), (10260, 10260), (10275, 10282), (10290, 10297), (10300, 10300), (10304, 10310), (10314, 10314), (10339, 10351)]) c0358_sound (intervals_sound_cons (I := (10233, 10235)) (intervals := [(10240, 10251), (10260, 10260), (10275, 10282), (10290, 10297), (10300, 10300), (10304, 10310), (10314, 10314), (10339, 10351)]) c0359_sound (intervals_sound_cons (I := (10240, 10251)) (intervals := [(10260, 10260), (10275, 10282), (10290, 10297), (10300, 10300), (10304, 10310), (10314, 10314), (10339, 10351)]) c0360_sound (intervals_sound_cons (I := (10260, 10260)) (intervals := [(10275, 10282), (10290, 10297), (10300, 10300), (10304, 10310), (10314, 10314), (10339, 10351)]) c0361_sound (intervals_sound_cons (I := (10275, 10282)) (intervals := [(10290, 10297), (10300, 10300), (10304, 10310), (10314, 10314), (10339, 10351)]) c0362_sound (intervals_sound_cons (I := (10290, 10297)) (intervals := [(10300, 10300), (10304, 10310), (10314, 10314), (10339, 10351)]) c0363_sound (intervals_sound_cons (I := (10300, 10300)) (intervals := [(10304, 10310), (10314, 10314), (10339, 10351)]) c0364_sound (intervals_sound_cons (I := (10304, 10310)) (intervals := [(10314, 10314), (10339, 10351)]) c0365_sound (intervals_sound_cons (I := (10314, 10314)) (intervals := [(10339, 10351)]) c0366_sound (intervals_sound_cons (I := (10339, 10351)) (intervals := []) c0367_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G022
