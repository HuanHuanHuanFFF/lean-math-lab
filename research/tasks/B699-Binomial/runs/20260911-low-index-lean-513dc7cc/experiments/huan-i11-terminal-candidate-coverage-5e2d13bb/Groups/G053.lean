import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk216
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk217
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk218
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk219

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G053
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0848_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk216.w7]
private def c0848_intervals : List NatInterval := [(40824, 40827)]

private theorem c0848_intervals_eq :
    witnessIntervals c0848_witnesses = c0848_intervals := by
  rfl

private theorem c0848_checks : witnessesCheck c0848_witnesses = true := by
  simp only [witnessesCheck, c0848_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk216.w7_check, Bool.and_self]

private theorem c0848_cover : coverCheck 40824 40827 c0848_intervals = true := by
  decide

private theorem c0848_sound : IntervalSound (40824, 40827) := by
  have hc : coverCheck 40824 40827 (witnessIntervals c0848_witnesses) = true := by
    rw [c0848_intervals_eq]
    exact c0848_cover
  exact interval_sound_of_witness_checks (witnesses := c0848_witnesses)
    (lo := 40824) (hi := 40827) c0848_checks hc

private def c0849_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk216.w8]
private def c0849_intervals : List NatInterval := [(40832, 40834)]

private theorem c0849_intervals_eq :
    witnessIntervals c0849_witnesses = c0849_intervals := by
  rfl

private theorem c0849_checks : witnessesCheck c0849_witnesses = true := by
  simp only [witnessesCheck, c0849_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk216.w8_check, Bool.and_self]

private theorem c0849_cover : coverCheck 40832 40834 c0849_intervals = true := by
  decide

private theorem c0849_sound : IntervalSound (40832, 40834) := by
  have hc : coverCheck 40832 40834 (witnessIntervals c0849_witnesses) = true := by
    rw [c0849_intervals_eq]
    exact c0849_cover
  exact interval_sound_of_witness_checks (witnesses := c0849_witnesses)
    (lo := 40832) (hi := 40834) c0849_checks hc

private def c0850_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk216.w9, B699LowIndex.I11TerminalData.Chunk216.w10, B699LowIndex.I11TerminalData.Chunk216.w11, B699LowIndex.I11TerminalData.Chunk216.w12, B699LowIndex.I11TerminalData.Chunk216.w13]
private def c0850_intervals : List NatInterval := [(41503, 41503), (41504, 41504), (41505, 41505), (41506, 41506), (41507, 41510)]

private theorem c0850_intervals_eq :
    witnessIntervals c0850_witnesses = c0850_intervals := by
  rfl

private theorem c0850_checks : witnessesCheck c0850_witnesses = true := by
  simp only [witnessesCheck, c0850_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk216.w9_check, B699LowIndex.I11TerminalData.Chunk216.w10_check, B699LowIndex.I11TerminalData.Chunk216.w11_check, B699LowIndex.I11TerminalData.Chunk216.w12_check, B699LowIndex.I11TerminalData.Chunk216.w13_check, Bool.and_self]

private theorem c0850_cover : coverCheck 41503 41510 c0850_intervals = true := by
  decide

private theorem c0850_sound : IntervalSound (41503, 41510) := by
  have hc : coverCheck 41503 41510 (witnessIntervals c0850_witnesses) = true := by
    rw [c0850_intervals_eq]
    exact c0850_cover
  exact interval_sound_of_witness_checks (witnesses := c0850_witnesses)
    (lo := 41503) (hi := 41510) c0850_checks hc

private def c0851_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk216.w14]
private def c0851_intervals : List NatInterval := [(41856, 41856)]

private theorem c0851_intervals_eq :
    witnessIntervals c0851_witnesses = c0851_intervals := by
  rfl

private theorem c0851_checks : witnessesCheck c0851_witnesses = true := by
  simp only [witnessesCheck, c0851_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk216.w14_check, Bool.and_self]

private theorem c0851_cover : coverCheck 41856 41856 c0851_intervals = true := by
  decide

private theorem c0851_sound : IntervalSound (41856, 41856) := by
  have hc : coverCheck 41856 41856 (witnessIntervals c0851_witnesses) = true := by
    rw [c0851_intervals_eq]
    exact c0851_cover
  exact interval_sound_of_witness_checks (witnesses := c0851_witnesses)
    (lo := 41856) (hi := 41856) c0851_checks hc

private def c0852_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk216.w15]
private def c0852_intervals : List NatInterval := [(42250, 42250)]

private theorem c0852_intervals_eq :
    witnessIntervals c0852_witnesses = c0852_intervals := by
  rfl

private theorem c0852_checks : witnessesCheck c0852_witnesses = true := by
  simp only [witnessesCheck, c0852_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk216.w15_check, Bool.and_self]

private theorem c0852_cover : coverCheck 42250 42250 c0852_intervals = true := by
  decide

private theorem c0852_sound : IntervalSound (42250, 42250) := by
  have hc : coverCheck 42250 42250 (witnessIntervals c0852_witnesses) = true := by
    rw [c0852_intervals_eq]
    exact c0852_cover
  exact interval_sound_of_witness_checks (witnesses := c0852_witnesses)
    (lo := 42250) (hi := 42250) c0852_checks hc

private def c0853_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk217.w0]
private def c0853_intervals : List NatInterval := [(42375, 42378)]

private theorem c0853_intervals_eq :
    witnessIntervals c0853_witnesses = c0853_intervals := by
  rfl

private theorem c0853_checks : witnessesCheck c0853_witnesses = true := by
  simp only [witnessesCheck, c0853_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk217.w0_check, Bool.and_self]

private theorem c0853_cover : coverCheck 42375 42378 c0853_intervals = true := by
  decide

private theorem c0853_sound : IntervalSound (42375, 42378) := by
  have hc : coverCheck 42375 42378 (witnessIntervals c0853_witnesses) = true := by
    rw [c0853_intervals_eq]
    exact c0853_cover
  exact interval_sound_of_witness_checks (witnesses := c0853_witnesses)
    (lo := 42375) (hi := 42378) c0853_checks hc

private def c0854_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk217.w1]
private def c0854_intervals : List NatInterval := [(42500, 42506)]

private theorem c0854_intervals_eq :
    witnessIntervals c0854_witnesses = c0854_intervals := by
  rfl

private theorem c0854_checks : witnessesCheck c0854_witnesses = true := by
  simp only [witnessesCheck, c0854_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk217.w1_check, Bool.and_self]

private theorem c0854_cover : coverCheck 42500 42506 c0854_intervals = true := by
  decide

private theorem c0854_sound : IntervalSound (42500, 42506) := by
  have hc : coverCheck 42500 42506 (witnessIntervals c0854_witnesses) = true := by
    rw [c0854_intervals_eq]
    exact c0854_cover
  exact interval_sound_of_witness_checks (witnesses := c0854_witnesses)
    (lo := 42500) (hi := 42506) c0854_checks hc

private def c0855_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk217.w2, B699LowIndex.I11TerminalData.Chunk217.w3]
private def c0855_intervals : List NatInterval := [(42532, 42532), (42533, 42535)]

private theorem c0855_intervals_eq :
    witnessIntervals c0855_witnesses = c0855_intervals := by
  rfl

private theorem c0855_checks : witnessesCheck c0855_witnesses = true := by
  simp only [witnessesCheck, c0855_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk217.w2_check, B699LowIndex.I11TerminalData.Chunk217.w3_check, Bool.and_self]

private theorem c0855_cover : coverCheck 42532 42535 c0855_intervals = true := by
  decide

private theorem c0855_sound : IntervalSound (42532, 42535) := by
  have hc : coverCheck 42532 42535 (witnessIntervals c0855_witnesses) = true := by
    rw [c0855_intervals_eq]
    exact c0855_cover
  exact interval_sound_of_witness_checks (witnesses := c0855_witnesses)
    (lo := 42532) (hi := 42535) c0855_checks hc

private def c0856_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk217.w4, B699LowIndex.I11TerminalData.Chunk217.w5, B699LowIndex.I11TerminalData.Chunk217.w6, B699LowIndex.I11TerminalData.Chunk217.w7, B699LowIndex.I11TerminalData.Chunk217.w8, B699LowIndex.I11TerminalData.Chunk217.w9, B699LowIndex.I11TerminalData.Chunk217.w10, B699LowIndex.I11TerminalData.Chunk217.w11, B699LowIndex.I11TerminalData.Chunk217.w12, B699LowIndex.I11TerminalData.Chunk217.w13]
private def c0856_intervals : List NatInterval := [(42625, 42625), (42626, 42626), (42627, 42627), (42628, 42628), (42629, 42629), (42630, 42630), (42631, 42631), (42632, 42632), (42633, 42633), (42634, 42634)]

private theorem c0856_intervals_eq :
    witnessIntervals c0856_witnesses = c0856_intervals := by
  rfl

private theorem c0856_checks : witnessesCheck c0856_witnesses = true := by
  simp only [witnessesCheck, c0856_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk217.w4_check, B699LowIndex.I11TerminalData.Chunk217.w5_check, B699LowIndex.I11TerminalData.Chunk217.w6_check, B699LowIndex.I11TerminalData.Chunk217.w7_check, B699LowIndex.I11TerminalData.Chunk217.w8_check, B699LowIndex.I11TerminalData.Chunk217.w9_check, B699LowIndex.I11TerminalData.Chunk217.w10_check, B699LowIndex.I11TerminalData.Chunk217.w11_check, B699LowIndex.I11TerminalData.Chunk217.w12_check, B699LowIndex.I11TerminalData.Chunk217.w13_check, Bool.and_self]

private theorem c0856_cover : coverCheck 42625 42634 c0856_intervals = true := by
  decide

private theorem c0856_sound : IntervalSound (42625, 42634) := by
  have hc : coverCheck 42625 42634 (witnessIntervals c0856_witnesses) = true := by
    rw [c0856_intervals_eq]
    exact c0856_cover
  exact interval_sound_of_witness_checks (witnesses := c0856_witnesses)
    (lo := 42625) (hi := 42634) c0856_checks hc

private def c0857_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk217.w14]
private def c0857_intervals : List NatInterval := [(42752, 42760)]

private theorem c0857_intervals_eq :
    witnessIntervals c0857_witnesses = c0857_intervals := by
  rfl

private theorem c0857_checks : witnessesCheck c0857_witnesses = true := by
  simp only [witnessesCheck, c0857_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk217.w14_check, Bool.and_self]

private theorem c0857_cover : coverCheck 42752 42760 c0857_intervals = true := by
  decide

private theorem c0857_sound : IntervalSound (42752, 42760) := by
  have hc : coverCheck 42752 42760 (witnessIntervals c0857_witnesses) = true := by
    rw [c0857_intervals_eq]
    exact c0857_cover
  exact interval_sound_of_witness_checks (witnesses := c0857_witnesses)
    (lo := 42752) (hi := 42760) c0857_checks hc

private def c0858_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk217.w15, B699LowIndex.I11TerminalData.Chunk218.w0, B699LowIndex.I11TerminalData.Chunk218.w1, B699LowIndex.I11TerminalData.Chunk218.w2, B699LowIndex.I11TerminalData.Chunk218.w3, B699LowIndex.I11TerminalData.Chunk218.w4, B699LowIndex.I11TerminalData.Chunk218.w5, B699LowIndex.I11TerminalData.Chunk218.w6, B699LowIndex.I11TerminalData.Chunk218.w7, B699LowIndex.I11TerminalData.Chunk218.w8, B699LowIndex.I11TerminalData.Chunk218.w9]
private def c0858_intervals : List NatInterval := [(42875, 42875), (42876, 42876), (42877, 42877), (42878, 42878), (42879, 42879), (42880, 42880), (42881, 42881), (42882, 42882), (42883, 42883), (42884, 42884), (42885, 42885)]

private theorem c0858_intervals_eq :
    witnessIntervals c0858_witnesses = c0858_intervals := by
  rfl

private theorem c0858_checks : witnessesCheck c0858_witnesses = true := by
  simp only [witnessesCheck, c0858_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk217.w15_check, B699LowIndex.I11TerminalData.Chunk218.w0_check, B699LowIndex.I11TerminalData.Chunk218.w1_check, B699LowIndex.I11TerminalData.Chunk218.w2_check, B699LowIndex.I11TerminalData.Chunk218.w3_check, B699LowIndex.I11TerminalData.Chunk218.w4_check, B699LowIndex.I11TerminalData.Chunk218.w5_check, B699LowIndex.I11TerminalData.Chunk218.w6_check, B699LowIndex.I11TerminalData.Chunk218.w7_check, B699LowIndex.I11TerminalData.Chunk218.w8_check, B699LowIndex.I11TerminalData.Chunk218.w9_check, Bool.and_self]

private theorem c0858_cover : coverCheck 42875 42885 c0858_intervals = true := by
  decide

private theorem c0858_sound : IntervalSound (42875, 42885) := by
  have hc : coverCheck 42875 42885 (witnessIntervals c0858_witnesses) = true := by
    rw [c0858_intervals_eq]
    exact c0858_cover
  exact interval_sound_of_witness_checks (witnesses := c0858_witnesses)
    (lo := 42875) (hi := 42885) c0858_checks hc

private def c0859_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk218.w10, B699LowIndex.I11TerminalData.Chunk218.w11]
private def c0859_intervals : List NatInterval := [(43008, 43013), (43014, 43018)]

private theorem c0859_intervals_eq :
    witnessIntervals c0859_witnesses = c0859_intervals := by
  rfl

private theorem c0859_checks : witnessesCheck c0859_witnesses = true := by
  simp only [witnessesCheck, c0859_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk218.w10_check, B699LowIndex.I11TerminalData.Chunk218.w11_check, Bool.and_self]

private theorem c0859_cover : coverCheck 43008 43018 c0859_intervals = true := by
  decide

private theorem c0859_sound : IntervalSound (43008, 43018) := by
  have hc : coverCheck 43008 43018 (witnessIntervals c0859_witnesses) = true := by
    rw [c0859_intervals_eq]
    exact c0859_cover
  exact interval_sound_of_witness_checks (witnesses := c0859_witnesses)
    (lo := 43008) (hi := 43018) c0859_checks hc

private def c0860_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk218.w12, B699LowIndex.I11TerminalData.Chunk218.w13, B699LowIndex.I11TerminalData.Chunk218.w14, B699LowIndex.I11TerminalData.Chunk218.w15, B699LowIndex.I11TerminalData.Chunk219.w0, B699LowIndex.I11TerminalData.Chunk219.w1, B699LowIndex.I11TerminalData.Chunk219.w2]
private def c0860_intervals : List NatInterval := [(43254, 43254), (43255, 43255), (43256, 43256), (43257, 43257), (43258, 43258), (43259, 43259), (43260, 43260)]

private theorem c0860_intervals_eq :
    witnessIntervals c0860_witnesses = c0860_intervals := by
  rfl

private theorem c0860_checks : witnessesCheck c0860_witnesses = true := by
  simp only [witnessesCheck, c0860_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk218.w12_check, B699LowIndex.I11TerminalData.Chunk218.w13_check, B699LowIndex.I11TerminalData.Chunk218.w14_check, B699LowIndex.I11TerminalData.Chunk218.w15_check, B699LowIndex.I11TerminalData.Chunk219.w0_check, B699LowIndex.I11TerminalData.Chunk219.w1_check, B699LowIndex.I11TerminalData.Chunk219.w2_check, Bool.and_self]

private theorem c0860_cover : coverCheck 43254 43260 c0860_intervals = true := by
  decide

private theorem c0860_sound : IntervalSound (43254, 43260) := by
  have hc : coverCheck 43254 43260 (witnessIntervals c0860_witnesses) = true := by
    rw [c0860_intervals_eq]
    exact c0860_cover
  exact interval_sound_of_witness_checks (witnesses := c0860_witnesses)
    (lo := 43254) (hi := 43260) c0860_checks hc

private def c0861_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk219.w3]
private def c0861_intervals : List NatInterval := [(43264, 43264)]

private theorem c0861_intervals_eq :
    witnessIntervals c0861_witnesses = c0861_intervals := by
  rfl

private theorem c0861_checks : witnessesCheck c0861_witnesses = true := by
  simp only [witnessesCheck, c0861_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk219.w3_check, Bool.and_self]

private theorem c0861_cover : coverCheck 43264 43264 c0861_intervals = true := by
  decide

private theorem c0861_sound : IntervalSound (43264, 43264) := by
  have hc : coverCheck 43264 43264 (witnessIntervals c0861_witnesses) = true := by
    rw [c0861_intervals_eq]
    exact c0861_cover
  exact interval_sound_of_witness_checks (witnesses := c0861_witnesses)
    (lo := 43264) (hi := 43264) c0861_checks hc

private def c0862_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk219.w4]
private def c0862_intervals : List NatInterval := [(43500, 43507)]

private theorem c0862_intervals_eq :
    witnessIntervals c0862_witnesses = c0862_intervals := by
  rfl

private theorem c0862_checks : witnessesCheck c0862_witnesses = true := by
  simp only [witnessesCheck, c0862_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk219.w4_check, Bool.and_self]

private theorem c0862_cover : coverCheck 43500 43507 c0862_intervals = true := by
  decide

private theorem c0862_sound : IntervalSound (43500, 43507) := by
  have hc : coverCheck 43500 43507 (witnessIntervals c0862_witnesses) = true := by
    rw [c0862_intervals_eq]
    exact c0862_cover
  exact interval_sound_of_witness_checks (witnesses := c0862_witnesses)
    (lo := 43500) (hi := 43507) c0862_checks hc

private def c0863_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk219.w5]
private def c0863_intervals : List NatInterval := [(43750, 43750)]

private theorem c0863_intervals_eq :
    witnessIntervals c0863_witnesses = c0863_intervals := by
  rfl

private theorem c0863_checks : witnessesCheck c0863_witnesses = true := by
  simp only [witnessesCheck, c0863_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk219.w5_check, Bool.and_self]

private theorem c0863_cover : coverCheck 43750 43750 c0863_intervals = true := by
  decide

private theorem c0863_sound : IntervalSound (43750, 43750) := by
  have hc : coverCheck 43750 43750 (witnessIntervals c0863_witnesses) = true := by
    rw [c0863_intervals_eq]
    exact c0863_cover
  exact interval_sound_of_witness_checks (witnesses := c0863_witnesses)
    (lo := 43750) (hi := 43750) c0863_checks hc

def intervals : List NatInterval := [(40824, 40827), (40832, 40834), (41503, 41510), (41856, 41856), (42250, 42250), (42375, 42378), (42500, 42506), (42532, 42535), (42625, 42634), (42752, 42760), (42875, 42885), (43008, 43018), (43254, 43260), (43264, 43264), (43500, 43507), (43750, 43750)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (40824, 40827)) (intervals := [(40832, 40834), (41503, 41510), (41856, 41856), (42250, 42250), (42375, 42378), (42500, 42506), (42532, 42535), (42625, 42634), (42752, 42760), (42875, 42885), (43008, 43018), (43254, 43260), (43264, 43264), (43500, 43507), (43750, 43750)]) c0848_sound (intervals_sound_cons (I := (40832, 40834)) (intervals := [(41503, 41510), (41856, 41856), (42250, 42250), (42375, 42378), (42500, 42506), (42532, 42535), (42625, 42634), (42752, 42760), (42875, 42885), (43008, 43018), (43254, 43260), (43264, 43264), (43500, 43507), (43750, 43750)]) c0849_sound (intervals_sound_cons (I := (41503, 41510)) (intervals := [(41856, 41856), (42250, 42250), (42375, 42378), (42500, 42506), (42532, 42535), (42625, 42634), (42752, 42760), (42875, 42885), (43008, 43018), (43254, 43260), (43264, 43264), (43500, 43507), (43750, 43750)]) c0850_sound (intervals_sound_cons (I := (41856, 41856)) (intervals := [(42250, 42250), (42375, 42378), (42500, 42506), (42532, 42535), (42625, 42634), (42752, 42760), (42875, 42885), (43008, 43018), (43254, 43260), (43264, 43264), (43500, 43507), (43750, 43750)]) c0851_sound (intervals_sound_cons (I := (42250, 42250)) (intervals := [(42375, 42378), (42500, 42506), (42532, 42535), (42625, 42634), (42752, 42760), (42875, 42885), (43008, 43018), (43254, 43260), (43264, 43264), (43500, 43507), (43750, 43750)]) c0852_sound (intervals_sound_cons (I := (42375, 42378)) (intervals := [(42500, 42506), (42532, 42535), (42625, 42634), (42752, 42760), (42875, 42885), (43008, 43018), (43254, 43260), (43264, 43264), (43500, 43507), (43750, 43750)]) c0853_sound (intervals_sound_cons (I := (42500, 42506)) (intervals := [(42532, 42535), (42625, 42634), (42752, 42760), (42875, 42885), (43008, 43018), (43254, 43260), (43264, 43264), (43500, 43507), (43750, 43750)]) c0854_sound (intervals_sound_cons (I := (42532, 42535)) (intervals := [(42625, 42634), (42752, 42760), (42875, 42885), (43008, 43018), (43254, 43260), (43264, 43264), (43500, 43507), (43750, 43750)]) c0855_sound (intervals_sound_cons (I := (42625, 42634)) (intervals := [(42752, 42760), (42875, 42885), (43008, 43018), (43254, 43260), (43264, 43264), (43500, 43507), (43750, 43750)]) c0856_sound (intervals_sound_cons (I := (42752, 42760)) (intervals := [(42875, 42885), (43008, 43018), (43254, 43260), (43264, 43264), (43500, 43507), (43750, 43750)]) c0857_sound (intervals_sound_cons (I := (42875, 42885)) (intervals := [(43008, 43018), (43254, 43260), (43264, 43264), (43500, 43507), (43750, 43750)]) c0858_sound (intervals_sound_cons (I := (43008, 43018)) (intervals := [(43254, 43260), (43264, 43264), (43500, 43507), (43750, 43750)]) c0859_sound (intervals_sound_cons (I := (43254, 43260)) (intervals := [(43264, 43264), (43500, 43507), (43750, 43750)]) c0860_sound (intervals_sound_cons (I := (43264, 43264)) (intervals := [(43500, 43507), (43750, 43750)]) c0861_sound (intervals_sound_cons (I := (43500, 43507)) (intervals := [(43750, 43750)]) c0862_sound (intervals_sound_cons (I := (43750, 43750)) (intervals := []) c0863_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G053
