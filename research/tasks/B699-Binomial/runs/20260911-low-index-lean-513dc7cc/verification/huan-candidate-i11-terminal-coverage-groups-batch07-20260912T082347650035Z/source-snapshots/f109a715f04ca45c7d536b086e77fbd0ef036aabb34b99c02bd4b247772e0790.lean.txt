import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk227
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk228
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk229
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk230
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk231

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G057
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0912_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk227.w15, B699LowIndex.I11TerminalData.Chunk228.w0, B699LowIndex.I11TerminalData.Chunk228.w1, B699LowIndex.I11TerminalData.Chunk228.w2, B699LowIndex.I11TerminalData.Chunk228.w3, B699LowIndex.I11TerminalData.Chunk228.w4, B699LowIndex.I11TerminalData.Chunk228.w5]
private def c0912_intervals : List NatInterval := [(58500, 58500), (58501, 58501), (58502, 58502), (58503, 58503), (58504, 58504), (58505, 58505), (58506, 58506)]

private theorem c0912_intervals_eq :
    witnessIntervals c0912_witnesses = c0912_intervals := by
  rfl

private theorem c0912_checks : witnessesCheck c0912_witnesses = true := by
  simp only [witnessesCheck, c0912_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk227.w15_check, B699LowIndex.I11TerminalData.Chunk228.w0_check, B699LowIndex.I11TerminalData.Chunk228.w1_check, B699LowIndex.I11TerminalData.Chunk228.w2_check, B699LowIndex.I11TerminalData.Chunk228.w3_check, B699LowIndex.I11TerminalData.Chunk228.w4_check, B699LowIndex.I11TerminalData.Chunk228.w5_check, Bool.and_self]

private theorem c0912_cover : coverCheck 58500 58506 c0912_intervals = true := by
  decide

private theorem c0912_sound : IntervalSound (58500, 58506) := by
  have hc : coverCheck 58500 58506 (witnessIntervals c0912_witnesses) = true := by
    rw [c0912_intervals_eq]
    exact c0912_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0912_witnesses)
    (lo := 58500) (hi := 58506) c0912_checks hc

private def c0913_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk228.w6, B699LowIndex.I11TerminalData.Chunk228.w7, B699LowIndex.I11TerminalData.Chunk228.w8, B699LowIndex.I11TerminalData.Chunk228.w9, B699LowIndex.I11TerminalData.Chunk228.w10, B699LowIndex.I11TerminalData.Chunk228.w11, B699LowIndex.I11TerminalData.Chunk228.w12]
private def c0913_intervals : List NatInterval := [(58625, 58625), (58626, 58626), (58627, 58627), (58628, 58628), (58629, 58629), (58630, 58630), (58631, 58634)]

private theorem c0913_intervals_eq :
    witnessIntervals c0913_witnesses = c0913_intervals := by
  rfl

private theorem c0913_checks : witnessesCheck c0913_witnesses = true := by
  simp only [witnessesCheck, c0913_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk228.w6_check, B699LowIndex.I11TerminalData.Chunk228.w7_check, B699LowIndex.I11TerminalData.Chunk228.w8_check, B699LowIndex.I11TerminalData.Chunk228.w9_check, B699LowIndex.I11TerminalData.Chunk228.w10_check, B699LowIndex.I11TerminalData.Chunk228.w11_check, B699LowIndex.I11TerminalData.Chunk228.w12_check, Bool.and_self]

private theorem c0913_cover : coverCheck 58625 58634 c0913_intervals = true := by
  decide

private theorem c0913_sound : IntervalSound (58625, 58634) := by
  have hc : coverCheck 58625 58634 (witnessIntervals c0913_witnesses) = true := by
    rw [c0913_intervals_eq]
    exact c0913_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0913_witnesses)
    (lo := 58625) (hi := 58634) c0913_checks hc

private def c0914_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk228.w13, B699LowIndex.I11TerminalData.Chunk228.w14, B699LowIndex.I11TerminalData.Chunk228.w15, B699LowIndex.I11TerminalData.Chunk229.w0, B699LowIndex.I11TerminalData.Chunk229.w1, B699LowIndex.I11TerminalData.Chunk229.w2]
private def c0914_intervals : List NatInterval := [(58752, 58752), (58753, 58753), (58754, 58754), (58755, 58755), (58756, 58756), (58757, 58760)]

private theorem c0914_intervals_eq :
    witnessIntervals c0914_witnesses = c0914_intervals := by
  rfl

private theorem c0914_checks : witnessesCheck c0914_witnesses = true := by
  simp only [witnessesCheck, c0914_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk228.w13_check, B699LowIndex.I11TerminalData.Chunk228.w14_check, B699LowIndex.I11TerminalData.Chunk228.w15_check, B699LowIndex.I11TerminalData.Chunk229.w0_check, B699LowIndex.I11TerminalData.Chunk229.w1_check, B699LowIndex.I11TerminalData.Chunk229.w2_check, Bool.and_self]

private theorem c0914_cover : coverCheck 58752 58760 c0914_intervals = true := by
  decide

private theorem c0914_sound : IntervalSound (58752, 58760) := by
  have hc : coverCheck 58752 58760 (witnessIntervals c0914_witnesses) = true := by
    rw [c0914_intervals_eq]
    exact c0914_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0914_witnesses)
    (lo := 58752) (hi := 58760) c0914_checks hc

private def c0915_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk229.w3, B699LowIndex.I11TerminalData.Chunk229.w4, B699LowIndex.I11TerminalData.Chunk229.w5, B699LowIndex.I11TerminalData.Chunk229.w6, B699LowIndex.I11TerminalData.Chunk229.w7, B699LowIndex.I11TerminalData.Chunk229.w8]
private def c0915_intervals : List NatInterval := [(58880, 58880), (58881, 58881), (58882, 58882), (58883, 58883), (58884, 58884), (58885, 58885)]

private theorem c0915_intervals_eq :
    witnessIntervals c0915_witnesses = c0915_intervals := by
  rfl

private theorem c0915_checks : witnessesCheck c0915_witnesses = true := by
  simp only [witnessesCheck, c0915_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk229.w3_check, B699LowIndex.I11TerminalData.Chunk229.w4_check, B699LowIndex.I11TerminalData.Chunk229.w5_check, B699LowIndex.I11TerminalData.Chunk229.w6_check, B699LowIndex.I11TerminalData.Chunk229.w7_check, B699LowIndex.I11TerminalData.Chunk229.w8_check, Bool.and_self]

private theorem c0915_cover : coverCheck 58880 58885 c0915_intervals = true := by
  decide

private theorem c0915_sound : IntervalSound (58880, 58885) := by
  have hc : coverCheck 58880 58885 (witnessIntervals c0915_witnesses) = true := by
    rw [c0915_intervals_eq]
    exact c0915_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0915_witnesses)
    (lo := 58880) (hi := 58885) c0915_checks hc

private def c0916_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk229.w9]
private def c0916_intervals : List NatInterval := [(59000, 59006)]

private theorem c0916_intervals_eq :
    witnessIntervals c0916_witnesses = c0916_intervals := by
  rfl

private theorem c0916_checks : witnessesCheck c0916_witnesses = true := by
  simp only [witnessesCheck, c0916_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk229.w9_check, Bool.and_self]

private theorem c0916_cover : coverCheck 59000 59006 c0916_intervals = true := by
  decide

private theorem c0916_sound : IntervalSound (59000, 59006) := by
  have hc : coverCheck 59000 59006 (witnessIntervals c0916_witnesses) = true := by
    rw [c0916_intervals_eq]
    exact c0916_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0916_witnesses)
    (lo := 59000) (hi := 59006) c0916_checks hc

private def c0917_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk229.w10, B699LowIndex.I11TerminalData.Chunk229.w11]
private def c0917_intervals : List NatInterval := [(59008, 59008), (59009, 59010)]

private theorem c0917_intervals_eq :
    witnessIntervals c0917_witnesses = c0917_intervals := by
  rfl

private theorem c0917_checks : witnessesCheck c0917_witnesses = true := by
  simp only [witnessesCheck, c0917_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk229.w10_check, B699LowIndex.I11TerminalData.Chunk229.w11_check, Bool.and_self]

private theorem c0917_cover : coverCheck 59008 59010 c0917_intervals = true := by
  decide

private theorem c0917_sound : IntervalSound (59008, 59010) := by
  have hc : coverCheck 59008 59010 (witnessIntervals c0917_witnesses) = true := by
    rw [c0917_intervals_eq]
    exact c0917_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0917_witnesses)
    (lo := 59008) (hi := 59010) c0917_checks hc

private def c0918_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk229.w12, B699LowIndex.I11TerminalData.Chunk229.w13]
private def c0918_intervals : List NatInterval := [(59778, 59781), (59782, 59786)]

private theorem c0918_intervals_eq :
    witnessIntervals c0918_witnesses = c0918_intervals := by
  rfl

private theorem c0918_checks : witnessesCheck c0918_witnesses = true := by
  simp only [witnessesCheck, c0918_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk229.w12_check, B699LowIndex.I11TerminalData.Chunk229.w13_check, Bool.and_self]

private theorem c0918_cover : coverCheck 59778 59786 c0918_intervals = true := by
  decide

private theorem c0918_sound : IntervalSound (59778, 59786) := by
  have hc : coverCheck 59778 59786 (witnessIntervals c0918_witnesses) = true := by
    rw [c0918_intervals_eq]
    exact c0918_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0918_witnesses)
    (lo := 59778) (hi := 59786) c0918_checks hc

private def c0919_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk229.w14, B699LowIndex.I11TerminalData.Chunk229.w15, B699LowIndex.I11TerminalData.Chunk230.w0]
private def c0919_intervals : List NatInterval := [(60025, 60027), (60028, 60028), (60029, 60035)]

private theorem c0919_intervals_eq :
    witnessIntervals c0919_witnesses = c0919_intervals := by
  rfl

private theorem c0919_checks : witnessesCheck c0919_witnesses = true := by
  simp only [witnessesCheck, c0919_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk229.w14_check, B699LowIndex.I11TerminalData.Chunk229.w15_check, B699LowIndex.I11TerminalData.Chunk230.w0_check, Bool.and_self]

private theorem c0919_cover : coverCheck 60025 60035 c0919_intervals = true := by
  decide

private theorem c0919_sound : IntervalSound (60025, 60035) := by
  have hc : coverCheck 60025 60035 (witnessIntervals c0919_witnesses) = true := by
    rw [c0919_intervals_eq]
    exact c0919_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0919_witnesses)
    (lo := 60025) (hi := 60035) c0919_checks hc

private def c0920_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk230.w1]
private def c0920_intervals : List NatInterval := [(60375, 60378)]

private theorem c0920_intervals_eq :
    witnessIntervals c0920_witnesses = c0920_intervals := by
  rfl

private theorem c0920_checks : witnessesCheck c0920_witnesses = true := by
  simp only [witnessesCheck, c0920_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk230.w1_check, Bool.and_self]

private theorem c0920_cover : coverCheck 60375 60378 c0920_intervals = true := by
  decide

private theorem c0920_sound : IntervalSound (60375, 60378) := by
  have hc : coverCheck 60375 60378 (witnessIntervals c0920_witnesses) = true := by
    rw [c0920_intervals_eq]
    exact c0920_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0920_witnesses)
    (lo := 60375) (hi := 60378) c0920_checks hc

private def c0921_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk230.w2, B699LowIndex.I11TerminalData.Chunk230.w3, B699LowIndex.I11TerminalData.Chunk230.w4]
private def c0921_intervals : List NatInterval := [(60507, 60507), (60508, 60508), (60509, 60510)]

private theorem c0921_intervals_eq :
    witnessIntervals c0921_witnesses = c0921_intervals := by
  rfl

private theorem c0921_checks : witnessesCheck c0921_witnesses = true := by
  simp only [witnessesCheck, c0921_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk230.w2_check, B699LowIndex.I11TerminalData.Chunk230.w3_check, B699LowIndex.I11TerminalData.Chunk230.w4_check, Bool.and_self]

private theorem c0921_cover : coverCheck 60507 60510 c0921_intervals = true := by
  decide

private theorem c0921_sound : IntervalSound (60507, 60510) := by
  have hc : coverCheck 60507 60510 (witnessIntervals c0921_witnesses) = true := by
    rw [c0921_intervals_eq]
    exact c0921_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0921_witnesses)
    (lo := 60507) (hi := 60510) c0921_checks hc

private def c0922_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk230.w5, B699LowIndex.I11TerminalData.Chunk230.w6, B699LowIndex.I11TerminalData.Chunk230.w7, B699LowIndex.I11TerminalData.Chunk230.w8, B699LowIndex.I11TerminalData.Chunk230.w9, B699LowIndex.I11TerminalData.Chunk230.w10, B699LowIndex.I11TerminalData.Chunk230.w11, B699LowIndex.I11TerminalData.Chunk230.w12]
private def c0922_intervals : List NatInterval := [(60750, 60750), (60751, 60751), (60752, 60752), (60753, 60753), (60754, 60754), (60755, 60755), (60756, 60756), (60757, 60760)]

private theorem c0922_intervals_eq :
    witnessIntervals c0922_witnesses = c0922_intervals := by
  rfl

private theorem c0922_checks : witnessesCheck c0922_witnesses = true := by
  simp only [witnessesCheck, c0922_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk230.w5_check, B699LowIndex.I11TerminalData.Chunk230.w6_check, B699LowIndex.I11TerminalData.Chunk230.w7_check, B699LowIndex.I11TerminalData.Chunk230.w8_check, B699LowIndex.I11TerminalData.Chunk230.w9_check, B699LowIndex.I11TerminalData.Chunk230.w10_check, B699LowIndex.I11TerminalData.Chunk230.w11_check, B699LowIndex.I11TerminalData.Chunk230.w12_check, Bool.and_self]

private theorem c0922_cover : coverCheck 60750 60760 c0922_intervals = true := by
  decide

private theorem c0922_sound : IntervalSound (60750, 60760) := by
  have hc : coverCheck 60750 60760 (witnessIntervals c0922_witnesses) = true := by
    rw [c0922_intervals_eq]
    exact c0922_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0922_witnesses)
    (lo := 60750) (hi := 60760) c0922_checks hc

private def c0923_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk230.w13, B699LowIndex.I11TerminalData.Chunk230.w14]
private def c0923_intervals : List NatInterval := [(61000, 61000), (61001, 61003)]

private theorem c0923_intervals_eq :
    witnessIntervals c0923_witnesses = c0923_intervals := by
  rfl

private theorem c0923_checks : witnessesCheck c0923_witnesses = true := by
  simp only [witnessesCheck, c0923_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk230.w13_check, B699LowIndex.I11TerminalData.Chunk230.w14_check, Bool.and_self]

private theorem c0923_cover : coverCheck 61000 61003 c0923_intervals = true := by
  decide

private theorem c0923_sound : IntervalSound (61000, 61003) := by
  have hc : coverCheck 61000 61003 (witnessIntervals c0923_witnesses) = true := by
    rw [c0923_intervals_eq]
    exact c0923_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0923_witnesses)
    (lo := 61000) (hi := 61003) c0923_checks hc

private def c0924_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk230.w15, B699LowIndex.I11TerminalData.Chunk231.w0]
private def c0924_intervals : List NatInterval := [(61056, 61061), (61062, 61064)]

private theorem c0924_intervals_eq :
    witnessIntervals c0924_witnesses = c0924_intervals := by
  rfl

private theorem c0924_checks : witnessesCheck c0924_witnesses = true := by
  simp only [witnessesCheck, c0924_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk230.w15_check, B699LowIndex.I11TerminalData.Chunk231.w0_check, Bool.and_self]

private theorem c0924_cover : coverCheck 61056 61064 c0924_intervals = true := by
  decide

private theorem c0924_sound : IntervalSound (61056, 61064) := by
  have hc : coverCheck 61056 61064 (witnessIntervals c0924_witnesses) = true := by
    rw [c0924_intervals_eq]
    exact c0924_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0924_witnesses)
    (lo := 61056) (hi := 61064) c0924_checks hc

private def c0925_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk231.w1]
private def c0925_intervals : List NatInterval := [(61750, 61750)]

private theorem c0925_intervals_eq :
    witnessIntervals c0925_witnesses = c0925_intervals := by
  rfl

private theorem c0925_checks : witnessesCheck c0925_witnesses = true := by
  simp only [witnessesCheck, c0925_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk231.w1_check, Bool.and_self]

private theorem c0925_cover : coverCheck 61750 61750 c0925_intervals = true := by
  decide

private theorem c0925_sound : IntervalSound (61750, 61750) := by
  have hc : coverCheck 61750 61750 (witnessIntervals c0925_witnesses) = true := by
    rw [c0925_intervals_eq]
    exact c0925_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0925_witnesses)
    (lo := 61750) (hi := 61750) c0925_checks hc

private def c0926_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk231.w2]
private def c0926_intervals : List NatInterval := [(62083, 62090)]

private theorem c0926_intervals_eq :
    witnessIntervals c0926_witnesses = c0926_intervals := by
  rfl

private theorem c0926_checks : witnessesCheck c0926_witnesses = true := by
  simp only [witnessesCheck, c0926_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk231.w2_check, Bool.and_self]

private theorem c0926_cover : coverCheck 62083 62090 c0926_intervals = true := by
  decide

private theorem c0926_sound : IntervalSound (62083, 62090) := by
  have hc : coverCheck 62083 62090 (witnessIntervals c0926_witnesses) = true := by
    rw [c0926_intervals_eq]
    exact c0926_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0926_witnesses)
    (lo := 62083) (hi := 62090) c0926_checks hc

private def c0927_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk231.w3, B699LowIndex.I11TerminalData.Chunk231.w4]
private def c0927_intervals : List NatInterval := [(62208, 62217), (62218, 62218)]

private theorem c0927_intervals_eq :
    witnessIntervals c0927_witnesses = c0927_intervals := by
  rfl

private theorem c0927_checks : witnessesCheck c0927_witnesses = true := by
  simp only [witnessesCheck, c0927_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk231.w3_check, B699LowIndex.I11TerminalData.Chunk231.w4_check, Bool.and_self]

private theorem c0927_cover : coverCheck 62208 62218 c0927_intervals = true := by
  decide

private theorem c0927_sound : IntervalSound (62208, 62218) := by
  have hc : coverCheck 62208 62218 (witnessIntervals c0927_witnesses) = true := by
    rw [c0927_intervals_eq]
    exact c0927_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0927_witnesses)
    (lo := 62208) (hi := 62218) c0927_checks hc

def intervals : List NatInterval := [(58500, 58506), (58625, 58634), (58752, 58760), (58880, 58885), (59000, 59006), (59008, 59010), (59778, 59786), (60025, 60035), (60375, 60378), (60507, 60510), (60750, 60760), (61000, 61003), (61056, 61064), (61750, 61750), (62083, 62090), (62208, 62218)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (58500, 58506)) (intervals := [(58625, 58634), (58752, 58760), (58880, 58885), (59000, 59006), (59008, 59010), (59778, 59786), (60025, 60035), (60375, 60378), (60507, 60510), (60750, 60760), (61000, 61003), (61056, 61064), (61750, 61750), (62083, 62090), (62208, 62218)]) c0912_sound (intervals_sound_cons (I := (58625, 58634)) (intervals := [(58752, 58760), (58880, 58885), (59000, 59006), (59008, 59010), (59778, 59786), (60025, 60035), (60375, 60378), (60507, 60510), (60750, 60760), (61000, 61003), (61056, 61064), (61750, 61750), (62083, 62090), (62208, 62218)]) c0913_sound (intervals_sound_cons (I := (58752, 58760)) (intervals := [(58880, 58885), (59000, 59006), (59008, 59010), (59778, 59786), (60025, 60035), (60375, 60378), (60507, 60510), (60750, 60760), (61000, 61003), (61056, 61064), (61750, 61750), (62083, 62090), (62208, 62218)]) c0914_sound (intervals_sound_cons (I := (58880, 58885)) (intervals := [(59000, 59006), (59008, 59010), (59778, 59786), (60025, 60035), (60375, 60378), (60507, 60510), (60750, 60760), (61000, 61003), (61056, 61064), (61750, 61750), (62083, 62090), (62208, 62218)]) c0915_sound (intervals_sound_cons (I := (59000, 59006)) (intervals := [(59008, 59010), (59778, 59786), (60025, 60035), (60375, 60378), (60507, 60510), (60750, 60760), (61000, 61003), (61056, 61064), (61750, 61750), (62083, 62090), (62208, 62218)]) c0916_sound (intervals_sound_cons (I := (59008, 59010)) (intervals := [(59778, 59786), (60025, 60035), (60375, 60378), (60507, 60510), (60750, 60760), (61000, 61003), (61056, 61064), (61750, 61750), (62083, 62090), (62208, 62218)]) c0917_sound (intervals_sound_cons (I := (59778, 59786)) (intervals := [(60025, 60035), (60375, 60378), (60507, 60510), (60750, 60760), (61000, 61003), (61056, 61064), (61750, 61750), (62083, 62090), (62208, 62218)]) c0918_sound (intervals_sound_cons (I := (60025, 60035)) (intervals := [(60375, 60378), (60507, 60510), (60750, 60760), (61000, 61003), (61056, 61064), (61750, 61750), (62083, 62090), (62208, 62218)]) c0919_sound (intervals_sound_cons (I := (60375, 60378)) (intervals := [(60507, 60510), (60750, 60760), (61000, 61003), (61056, 61064), (61750, 61750), (62083, 62090), (62208, 62218)]) c0920_sound (intervals_sound_cons (I := (60507, 60510)) (intervals := [(60750, 60760), (61000, 61003), (61056, 61064), (61750, 61750), (62083, 62090), (62208, 62218)]) c0921_sound (intervals_sound_cons (I := (60750, 60760)) (intervals := [(61000, 61003), (61056, 61064), (61750, 61750), (62083, 62090), (62208, 62218)]) c0922_sound (intervals_sound_cons (I := (61000, 61003)) (intervals := [(61056, 61064), (61750, 61750), (62083, 62090), (62208, 62218)]) c0923_sound (intervals_sound_cons (I := (61056, 61064)) (intervals := [(61750, 61750), (62083, 62090), (62208, 62218)]) c0924_sound (intervals_sound_cons (I := (61750, 61750)) (intervals := [(62083, 62090), (62208, 62218)]) c0925_sound (intervals_sound_cons (I := (62083, 62090)) (intervals := [(62208, 62218)]) c0926_sound (intervals_sound_cons (I := (62208, 62218)) (intervals := []) c0927_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G057
