import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk241
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk242
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk243
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk244

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G062
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0992_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk241.w9, B699LowIndex.I11TerminalData.Chunk241.w10, B699LowIndex.I11TerminalData.Chunk241.w11, B699LowIndex.I11TerminalData.Chunk241.w12, B699LowIndex.I11TerminalData.Chunk241.w13]
private def c0992_intervals : List NatInterval := [(124166, 124166), (124167, 124167), (124168, 124168), (124169, 124169), (124170, 124170)]

private theorem c0992_intervals_eq :
    witnessIntervals c0992_witnesses = c0992_intervals := by
  rfl

private theorem c0992_checks : witnessesCheck c0992_witnesses = true := by
  simp only [witnessesCheck, c0992_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk241.w9_check, B699LowIndex.I11TerminalData.Chunk241.w10_check, B699LowIndex.I11TerminalData.Chunk241.w11_check, B699LowIndex.I11TerminalData.Chunk241.w12_check, B699LowIndex.I11TerminalData.Chunk241.w13_check, Bool.and_self]

private theorem c0992_cover : coverCheck 124166 124170 c0992_intervals = true := by
  decide

private theorem c0992_sound : IntervalSound (124166, 124170) := by
  have hc : coverCheck 124166 124170 (witnessIntervals c0992_witnesses) = true := by
    rw [c0992_intervals_eq]
    exact c0992_cover
  exact interval_sound_of_witness_checks (witnesses := c0992_witnesses)
    (lo := 124166) (hi := 124170) c0992_checks hc

private def c0993_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk241.w14, B699LowIndex.I11TerminalData.Chunk241.w15]
private def c0993_intervals : List NatInterval := [(129033, 129033), (129034, 129034)]

private theorem c0993_intervals_eq :
    witnessIntervals c0993_witnesses = c0993_intervals := by
  rfl

private theorem c0993_checks : witnessesCheck c0993_witnesses = true := by
  simp only [witnessesCheck, c0993_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk241.w14_check, B699LowIndex.I11TerminalData.Chunk241.w15_check, Bool.and_self]

private theorem c0993_cover : coverCheck 129033 129034 c0993_intervals = true := by
  decide

private theorem c0993_sound : IntervalSound (129033, 129034) := by
  have hc : coverCheck 129033 129034 (witnessIntervals c0993_witnesses) = true := by
    rw [c0993_intervals_eq]
    exact c0993_cover
  exact interval_sound_of_witness_checks (witnesses := c0993_witnesses)
    (lo := 129033) (hi := 129034) c0993_checks hc

private def c0994_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk242.w0, B699LowIndex.I11TerminalData.Chunk242.w1, B699LowIndex.I11TerminalData.Chunk242.w2, B699LowIndex.I11TerminalData.Chunk242.w3]
private def c0994_intervals : List NatInterval := [(130000, 130000), (130001, 130001), (130002, 130002), (130003, 130007)]

private theorem c0994_intervals_eq :
    witnessIntervals c0994_witnesses = c0994_intervals := by
  rfl

private theorem c0994_checks : witnessesCheck c0994_witnesses = true := by
  simp only [witnessesCheck, c0994_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk242.w0_check, B699LowIndex.I11TerminalData.Chunk242.w1_check, B699LowIndex.I11TerminalData.Chunk242.w2_check, B699LowIndex.I11TerminalData.Chunk242.w3_check, Bool.and_self]

private theorem c0994_cover : coverCheck 130000 130007 c0994_intervals = true := by
  decide

private theorem c0994_sound : IntervalSound (130000, 130007) := by
  have hc : coverCheck 130000 130007 (witnessIntervals c0994_witnesses) = true := by
    rw [c0994_intervals_eq]
    exact c0994_cover
  exact interval_sound_of_witness_checks (witnesses := c0994_witnesses)
    (lo := 130000) (hi := 130007) c0994_checks hc

private def c0995_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk242.w4]
private def c0995_intervals : List NatInterval := [(133125, 133130)]

private theorem c0995_intervals_eq :
    witnessIntervals c0995_witnesses = c0995_intervals := by
  rfl

private theorem c0995_checks : witnessesCheck c0995_witnesses = true := by
  simp only [witnessesCheck, c0995_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk242.w4_check, Bool.and_self]

private theorem c0995_cover : coverCheck 133125 133130 c0995_intervals = true := by
  decide

private theorem c0995_sound : IntervalSound (133125, 133130) := by
  have hc : coverCheck 133125 133130 (witnessIntervals c0995_witnesses) = true := by
    rw [c0995_intervals_eq]
    exact c0995_cover
  exact interval_sound_of_witness_checks (witnesses := c0995_witnesses)
    (lo := 133125) (hi := 133130) c0995_checks hc

private def c0996_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk242.w5, B699LowIndex.I11TerminalData.Chunk242.w6, B699LowIndex.I11TerminalData.Chunk242.w7]
private def c0996_intervals : List NatInterval := [(134144, 134144), (134145, 134145), (134146, 134146)]

private theorem c0996_intervals_eq :
    witnessIntervals c0996_witnesses = c0996_intervals := by
  rfl

private theorem c0996_checks : witnessesCheck c0996_witnesses = true := by
  simp only [witnessesCheck, c0996_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk242.w5_check, B699LowIndex.I11TerminalData.Chunk242.w6_check, B699LowIndex.I11TerminalData.Chunk242.w7_check, Bool.and_self]

private theorem c0996_cover : coverCheck 134144 134146 c0996_intervals = true := by
  decide

private theorem c0996_sound : IntervalSound (134144, 134146) := by
  have hc : coverCheck 134144 134146 (witnessIntervals c0996_witnesses) = true := by
    rw [c0996_intervals_eq]
    exact c0996_cover
  exact interval_sound_of_witness_checks (witnesses := c0996_witnesses)
    (lo := 134144) (hi := 134146) c0996_checks hc

private def c0997_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk242.w8, B699LowIndex.I11TerminalData.Chunk242.w9, B699LowIndex.I11TerminalData.Chunk242.w10, B699LowIndex.I11TerminalData.Chunk242.w11, B699LowIndex.I11TerminalData.Chunk242.w12, B699LowIndex.I11TerminalData.Chunk242.w13, B699LowIndex.I11TerminalData.Chunk242.w14, B699LowIndex.I11TerminalData.Chunk242.w15, B699LowIndex.I11TerminalData.Chunk243.w0]
private def c0997_intervals : List NatInterval := [(138752, 138752), (138753, 138753), (138754, 138754), (138755, 138755), (138756, 138756), (138757, 138757), (138758, 138758), (138759, 138759), (138760, 138760)]

private theorem c0997_intervals_eq :
    witnessIntervals c0997_witnesses = c0997_intervals := by
  rfl

private theorem c0997_checks : witnessesCheck c0997_witnesses = true := by
  simp only [witnessesCheck, c0997_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk242.w8_check, B699LowIndex.I11TerminalData.Chunk242.w9_check, B699LowIndex.I11TerminalData.Chunk242.w10_check, B699LowIndex.I11TerminalData.Chunk242.w11_check, B699LowIndex.I11TerminalData.Chunk242.w12_check, B699LowIndex.I11TerminalData.Chunk242.w13_check, B699LowIndex.I11TerminalData.Chunk242.w14_check, B699LowIndex.I11TerminalData.Chunk242.w15_check, B699LowIndex.I11TerminalData.Chunk243.w0_check, Bool.and_self]

private theorem c0997_cover : coverCheck 138752 138760 c0997_intervals = true := by
  decide

private theorem c0997_sound : IntervalSound (138752, 138760) := by
  have hc : coverCheck 138752 138760 (witnessIntervals c0997_witnesses) = true := by
    rw [c0997_intervals_eq]
    exact c0997_cover
  exact interval_sound_of_witness_checks (witnesses := c0997_witnesses)
    (lo := 138752) (hi := 138760) c0997_checks hc

private def c0998_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk243.w1, B699LowIndex.I11TerminalData.Chunk243.w2, B699LowIndex.I11TerminalData.Chunk243.w3, B699LowIndex.I11TerminalData.Chunk243.w4]
private def c0998_intervals : List NatInterval := [(139264, 139264), (139265, 139265), (139266, 139266), (139267, 139268)]

private theorem c0998_intervals_eq :
    witnessIntervals c0998_witnesses = c0998_intervals := by
  rfl

private theorem c0998_checks : witnessesCheck c0998_witnesses = true := by
  simp only [witnessesCheck, c0998_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk243.w1_check, B699LowIndex.I11TerminalData.Chunk243.w2_check, B699LowIndex.I11TerminalData.Chunk243.w3_check, B699LowIndex.I11TerminalData.Chunk243.w4_check, Bool.and_self]

private theorem c0998_cover : coverCheck 139264 139268 c0998_intervals = true := by
  decide

private theorem c0998_sound : IntervalSound (139264, 139268) := by
  have hc : coverCheck 139264 139268 (witnessIntervals c0998_witnesses) = true := by
    rw [c0998_intervals_eq]
    exact c0998_cover
  exact interval_sound_of_witness_checks (witnesses := c0998_witnesses)
    (lo := 139264) (hi := 139268) c0998_checks hc

private def c0999_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk243.w5, B699LowIndex.I11TerminalData.Chunk243.w6, B699LowIndex.I11TerminalData.Chunk243.w7, B699LowIndex.I11TerminalData.Chunk243.w8, B699LowIndex.I11TerminalData.Chunk243.w9, B699LowIndex.I11TerminalData.Chunk243.w10, B699LowIndex.I11TerminalData.Chunk243.w11]
private def c0999_intervals : List NatInterval := [(140288, 140291), (140292, 140292), (140293, 140293), (140294, 140294), (140295, 140295), (140296, 140296), (140297, 140297)]

private theorem c0999_intervals_eq :
    witnessIntervals c0999_witnesses = c0999_intervals := by
  rfl

private theorem c0999_checks : witnessesCheck c0999_witnesses = true := by
  simp only [witnessesCheck, c0999_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk243.w5_check, B699LowIndex.I11TerminalData.Chunk243.w6_check, B699LowIndex.I11TerminalData.Chunk243.w7_check, B699LowIndex.I11TerminalData.Chunk243.w8_check, B699LowIndex.I11TerminalData.Chunk243.w9_check, B699LowIndex.I11TerminalData.Chunk243.w10_check, B699LowIndex.I11TerminalData.Chunk243.w11_check, Bool.and_self]

private theorem c0999_cover : coverCheck 140288 140297 c0999_intervals = true := by
  decide

private theorem c0999_sound : IntervalSound (140288, 140297) := by
  have hc : coverCheck 140288 140297 (witnessIntervals c0999_witnesses) = true := by
    rw [c0999_intervals_eq]
    exact c0999_cover
  exact interval_sound_of_witness_checks (witnesses := c0999_witnesses)
    (lo := 140288) (hi := 140297) c0999_checks hc

private def c1000_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk243.w12]
private def c1000_intervals : List NatInterval := [(140630, 140635)]

private theorem c1000_intervals_eq :
    witnessIntervals c1000_witnesses = c1000_intervals := by
  rfl

private theorem c1000_checks : witnessesCheck c1000_witnesses = true := by
  simp only [witnessesCheck, c1000_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk243.w12_check, Bool.and_self]

private theorem c1000_cover : coverCheck 140630 140635 c1000_intervals = true := by
  decide

private theorem c1000_sound : IntervalSound (140630, 140635) := by
  have hc : coverCheck 140630 140635 (witnessIntervals c1000_witnesses) = true := by
    rw [c1000_intervals_eq]
    exact c1000_cover
  exact interval_sound_of_witness_checks (witnesses := c1000_witnesses)
    (lo := 140630) (hi := 140635) c1000_checks hc

private def c1001_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk243.w13, B699LowIndex.I11TerminalData.Chunk243.w14]
private def c1001_intervals : List NatInterval := [(141316, 141321), (141322, 141322)]

private theorem c1001_intervals_eq :
    witnessIntervals c1001_witnesses = c1001_intervals := by
  rfl

private theorem c1001_checks : witnessesCheck c1001_witnesses = true := by
  simp only [witnessesCheck, c1001_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk243.w13_check, B699LowIndex.I11TerminalData.Chunk243.w14_check, Bool.and_self]

private theorem c1001_cover : coverCheck 141316 141322 c1001_intervals = true := by
  decide

private theorem c1001_sound : IntervalSound (141316, 141322) := by
  have hc : coverCheck 141316 141322 (witnessIntervals c1001_witnesses) = true := by
    rw [c1001_intervals_eq]
    exact c1001_cover
  exact interval_sound_of_witness_checks (witnesses := c1001_witnesses)
    (lo := 141316) (hi := 141322) c1001_checks hc

private def c1002_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk243.w15, B699LowIndex.I11TerminalData.Chunk244.w0]
private def c1002_intervals : List NatInterval := [(142345, 142345), (142346, 142346)]

private theorem c1002_intervals_eq :
    witnessIntervals c1002_witnesses = c1002_intervals := by
  rfl

private theorem c1002_checks : witnessesCheck c1002_witnesses = true := by
  simp only [witnessesCheck, c1002_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk243.w15_check, B699LowIndex.I11TerminalData.Chunk244.w0_check, Bool.and_self]

private theorem c1002_cover : coverCheck 142345 142346 c1002_intervals = true := by
  decide

private theorem c1002_sound : IntervalSound (142345, 142346) := by
  have hc : coverCheck 142345 142346 (witnessIntervals c1002_witnesses) = true := by
    rw [c1002_intervals_eq]
    exact c1002_cover
  exact interval_sound_of_witness_checks (witnesses := c1002_witnesses)
    (lo := 142345) (hi := 142346) c1002_checks hc

private def c1003_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk244.w1]
private def c1003_intervals : List NatInterval := [(144384, 144385)]

private theorem c1003_intervals_eq :
    witnessIntervals c1003_witnesses = c1003_intervals := by
  rfl

private theorem c1003_checks : witnessesCheck c1003_witnesses = true := by
  simp only [witnessesCheck, c1003_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk244.w1_check, Bool.and_self]

private theorem c1003_cover : coverCheck 144384 144385 c1003_intervals = true := by
  decide

private theorem c1003_sound : IntervalSound (144384, 144385) := by
  have hc : coverCheck 144384 144385 (witnessIntervals c1003_witnesses) = true := by
    rw [c1003_intervals_eq]
    exact c1003_cover
  exact interval_sound_of_witness_checks (witnesses := c1003_witnesses)
    (lo := 144384) (hi := 144385) c1003_checks hc

private def c1004_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk244.w2]
private def c1004_intervals : List NatInterval := [(147500, 147500)]

private theorem c1004_intervals_eq :
    witnessIntervals c1004_witnesses = c1004_intervals := by
  rfl

private theorem c1004_checks : witnessesCheck c1004_witnesses = true := by
  simp only [witnessesCheck, c1004_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk244.w2_check, Bool.and_self]

private theorem c1004_cover : coverCheck 147500 147500 c1004_intervals = true := by
  decide

private theorem c1004_sound : IntervalSound (147500, 147500) := by
  have hc : coverCheck 147500 147500 (witnessIntervals c1004_witnesses) = true := by
    rw [c1004_intervals_eq]
    exact c1004_cover
  exact interval_sound_of_witness_checks (witnesses := c1004_witnesses)
    (lo := 147500) (hi := 147500) c1004_checks hc

private def c1005_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk244.w3]
private def c1005_intervals : List NatInterval := [(153090, 153098)]

private theorem c1005_intervals_eq :
    witnessIntervals c1005_witnesses = c1005_intervals := by
  rfl

private theorem c1005_checks : witnessesCheck c1005_witnesses = true := by
  simp only [witnessesCheck, c1005_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk244.w3_check, Bool.and_self]

private theorem c1005_cover : coverCheck 153090 153098 c1005_intervals = true := by
  decide

private theorem c1005_sound : IntervalSound (153090, 153098) := by
  have hc : coverCheck 153090 153098 (witnessIntervals c1005_witnesses) = true := by
    rw [c1005_intervals_eq]
    exact c1005_cover
  exact interval_sound_of_witness_checks (witnesses := c1005_witnesses)
    (lo := 153090) (hi := 153098) c1005_checks hc

private def c1006_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk244.w4, B699LowIndex.I11TerminalData.Chunk244.w5, B699LowIndex.I11TerminalData.Chunk244.w6, B699LowIndex.I11TerminalData.Chunk244.w7, B699LowIndex.I11TerminalData.Chunk244.w8]
private def c1006_intervals : List NatInterval := [(158125, 158125), (158126, 158126), (158127, 158127), (158128, 158128), (158129, 158133)]

private theorem c1006_intervals_eq :
    witnessIntervals c1006_witnesses = c1006_intervals := by
  rfl

private theorem c1006_checks : witnessesCheck c1006_witnesses = true := by
  simp only [witnessesCheck, c1006_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk244.w4_check, B699LowIndex.I11TerminalData.Chunk244.w5_check, B699LowIndex.I11TerminalData.Chunk244.w6_check, B699LowIndex.I11TerminalData.Chunk244.w7_check, B699LowIndex.I11TerminalData.Chunk244.w8_check, Bool.and_self]

private theorem c1006_cover : coverCheck 158125 158133 c1006_intervals = true := by
  decide

private theorem c1006_sound : IntervalSound (158125, 158133) := by
  have hc : coverCheck 158125 158133 (witnessIntervals c1006_witnesses) = true := by
    rw [c1006_intervals_eq]
    exact c1006_cover
  exact interval_sound_of_witness_checks (witnesses := c1006_witnesses)
    (lo := 158125) (hi := 158133) c1006_checks hc

private def c1007_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk244.w9, B699LowIndex.I11TerminalData.Chunk244.w10, B699LowIndex.I11TerminalData.Chunk244.w11, B699LowIndex.I11TerminalData.Chunk244.w12, B699LowIndex.I11TerminalData.Chunk244.w13]
private def c1007_intervals : List NatInterval := [(168756, 168756), (168757, 168757), (168758, 168758), (168759, 168759), (168760, 168760)]

private theorem c1007_intervals_eq :
    witnessIntervals c1007_witnesses = c1007_intervals := by
  rfl

private theorem c1007_checks : witnessesCheck c1007_witnesses = true := by
  simp only [witnessesCheck, c1007_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk244.w9_check, B699LowIndex.I11TerminalData.Chunk244.w10_check, B699LowIndex.I11TerminalData.Chunk244.w11_check, B699LowIndex.I11TerminalData.Chunk244.w12_check, B699LowIndex.I11TerminalData.Chunk244.w13_check, Bool.and_self]

private theorem c1007_cover : coverCheck 168756 168760 c1007_intervals = true := by
  decide

private theorem c1007_sound : IntervalSound (168756, 168760) := by
  have hc : coverCheck 168756 168760 (witnessIntervals c1007_witnesses) = true := by
    rw [c1007_intervals_eq]
    exact c1007_cover
  exact interval_sound_of_witness_checks (witnesses := c1007_witnesses)
    (lo := 168756) (hi := 168760) c1007_checks hc

def intervals : List NatInterval := [(124166, 124170), (129033, 129034), (130000, 130007), (133125, 133130), (134144, 134146), (138752, 138760), (139264, 139268), (140288, 140297), (140630, 140635), (141316, 141322), (142345, 142346), (144384, 144385), (147500, 147500), (153090, 153098), (158125, 158133), (168756, 168760)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (124166, 124170)) (intervals := [(129033, 129034), (130000, 130007), (133125, 133130), (134144, 134146), (138752, 138760), (139264, 139268), (140288, 140297), (140630, 140635), (141316, 141322), (142345, 142346), (144384, 144385), (147500, 147500), (153090, 153098), (158125, 158133), (168756, 168760)]) c0992_sound (intervals_sound_cons (I := (129033, 129034)) (intervals := [(130000, 130007), (133125, 133130), (134144, 134146), (138752, 138760), (139264, 139268), (140288, 140297), (140630, 140635), (141316, 141322), (142345, 142346), (144384, 144385), (147500, 147500), (153090, 153098), (158125, 158133), (168756, 168760)]) c0993_sound (intervals_sound_cons (I := (130000, 130007)) (intervals := [(133125, 133130), (134144, 134146), (138752, 138760), (139264, 139268), (140288, 140297), (140630, 140635), (141316, 141322), (142345, 142346), (144384, 144385), (147500, 147500), (153090, 153098), (158125, 158133), (168756, 168760)]) c0994_sound (intervals_sound_cons (I := (133125, 133130)) (intervals := [(134144, 134146), (138752, 138760), (139264, 139268), (140288, 140297), (140630, 140635), (141316, 141322), (142345, 142346), (144384, 144385), (147500, 147500), (153090, 153098), (158125, 158133), (168756, 168760)]) c0995_sound (intervals_sound_cons (I := (134144, 134146)) (intervals := [(138752, 138760), (139264, 139268), (140288, 140297), (140630, 140635), (141316, 141322), (142345, 142346), (144384, 144385), (147500, 147500), (153090, 153098), (158125, 158133), (168756, 168760)]) c0996_sound (intervals_sound_cons (I := (138752, 138760)) (intervals := [(139264, 139268), (140288, 140297), (140630, 140635), (141316, 141322), (142345, 142346), (144384, 144385), (147500, 147500), (153090, 153098), (158125, 158133), (168756, 168760)]) c0997_sound (intervals_sound_cons (I := (139264, 139268)) (intervals := [(140288, 140297), (140630, 140635), (141316, 141322), (142345, 142346), (144384, 144385), (147500, 147500), (153090, 153098), (158125, 158133), (168756, 168760)]) c0998_sound (intervals_sound_cons (I := (140288, 140297)) (intervals := [(140630, 140635), (141316, 141322), (142345, 142346), (144384, 144385), (147500, 147500), (153090, 153098), (158125, 158133), (168756, 168760)]) c0999_sound (intervals_sound_cons (I := (140630, 140635)) (intervals := [(141316, 141322), (142345, 142346), (144384, 144385), (147500, 147500), (153090, 153098), (158125, 158133), (168756, 168760)]) c1000_sound (intervals_sound_cons (I := (141316, 141322)) (intervals := [(142345, 142346), (144384, 144385), (147500, 147500), (153090, 153098), (158125, 158133), (168756, 168760)]) c1001_sound (intervals_sound_cons (I := (142345, 142346)) (intervals := [(144384, 144385), (147500, 147500), (153090, 153098), (158125, 158133), (168756, 168760)]) c1002_sound (intervals_sound_cons (I := (144384, 144385)) (intervals := [(147500, 147500), (153090, 153098), (158125, 158133), (168756, 168760)]) c1003_sound (intervals_sound_cons (I := (147500, 147500)) (intervals := [(153090, 153098), (158125, 158133), (168756, 168760)]) c1004_sound (intervals_sound_cons (I := (153090, 153098)) (intervals := [(158125, 158133), (168756, 168760)]) c1005_sound (intervals_sound_cons (I := (158125, 158133)) (intervals := [(168756, 168760)]) c1006_sound (intervals_sound_cons (I := (168756, 168760)) (intervals := []) c1007_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G062
