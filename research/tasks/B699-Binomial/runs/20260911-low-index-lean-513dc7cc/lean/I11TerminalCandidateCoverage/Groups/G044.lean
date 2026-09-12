import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk192
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk193
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk194
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk195

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G044
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0704_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk192.w14]
private def c0704_intervals : List NatInterval := [(23040, 23040)]

private theorem c0704_intervals_eq :
    witnessIntervals c0704_witnesses = c0704_intervals := by
  rfl

private theorem c0704_checks : witnessesCheck c0704_witnesses = true := by
  simp only [witnessesCheck, c0704_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk192.w14_check, Bool.and_self]

private theorem c0704_cover : coverCheck 23040 23040 c0704_intervals = true := by
  decide

private theorem c0704_sound : IntervalSound (23040, 23040) := by
  have hc : coverCheck 23040 23040 (witnessIntervals c0704_witnesses) = true := by
    rw [c0704_intervals_eq]
    exact c0704_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0704_witnesses)
    (lo := 23040) (hi := 23040) c0704_checks hc

private def c0705_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk192.w15]
private def c0705_intervals : List NatInterval := [(23085, 23089)]

private theorem c0705_intervals_eq :
    witnessIntervals c0705_witnesses = c0705_intervals := by
  rfl

private theorem c0705_checks : witnessesCheck c0705_witnesses = true := by
  simp only [witnessesCheck, c0705_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk192.w15_check, Bool.and_self]

private theorem c0705_cover : coverCheck 23085 23089 c0705_intervals = true := by
  decide

private theorem c0705_sound : IntervalSound (23085, 23089) := by
  have hc : coverCheck 23085 23089 (witnessIntervals c0705_witnesses) = true := by
    rw [c0705_intervals_eq]
    exact c0705_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0705_witnesses)
    (lo := 23085) (hi := 23089) c0705_checks hc

private def c0706_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk193.w0, B699LowIndex.I11TerminalData.Chunk193.w1, B699LowIndex.I11TerminalData.Chunk193.w2, B699LowIndex.I11TerminalData.Chunk193.w3]
private def c0706_intervals : List NatInterval := [(23128, 23128), (23129, 23129), (23130, 23130), (23131, 23135)]

private theorem c0706_intervals_eq :
    witnessIntervals c0706_witnesses = c0706_intervals := by
  rfl

private theorem c0706_checks : witnessesCheck c0706_witnesses = true := by
  simp only [witnessesCheck, c0706_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk193.w0_check, B699LowIndex.I11TerminalData.Chunk193.w1_check, B699LowIndex.I11TerminalData.Chunk193.w2_check, B699LowIndex.I11TerminalData.Chunk193.w3_check, Bool.and_self]

private theorem c0706_cover : coverCheck 23128 23135 c0706_intervals = true := by
  decide

private theorem c0706_sound : IntervalSound (23128, 23135) := by
  have hc : coverCheck 23128 23135 (witnessIntervals c0706_witnesses) = true := by
    rw [c0706_intervals_eq]
    exact c0706_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0706_witnesses)
    (lo := 23128) (hi := 23135) c0706_checks hc

private def c0707_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk193.w4, B699LowIndex.I11TerminalData.Chunk193.w5]
private def c0707_intervals : List NatInterval := [(23168, 23177), (23178, 23178)]

private theorem c0707_intervals_eq :
    witnessIntervals c0707_witnesses = c0707_intervals := by
  rfl

private theorem c0707_checks : witnessesCheck c0707_witnesses = true := by
  simp only [witnessesCheck, c0707_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk193.w4_check, B699LowIndex.I11TerminalData.Chunk193.w5_check, Bool.and_self]

private theorem c0707_cover : coverCheck 23168 23178 c0707_intervals = true := by
  decide

private theorem c0707_sound : IntervalSound (23168, 23178) := by
  have hc : coverCheck 23168 23178 (witnessIntervals c0707_witnesses) = true := by
    rw [c0707_intervals_eq]
    exact c0707_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0707_witnesses)
    (lo := 23168) (hi := 23178) c0707_checks hc

private def c0708_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk193.w6]
private def c0708_intervals : List NatInterval := [(23232, 23236)]

private theorem c0708_intervals_eq :
    witnessIntervals c0708_witnesses = c0708_intervals := by
  rfl

private theorem c0708_checks : witnessesCheck c0708_witnesses = true := by
  simp only [witnessesCheck, c0708_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk193.w6_check, Bool.and_self]

private theorem c0708_cover : coverCheck 23232 23236 c0708_intervals = true := by
  decide

private theorem c0708_sound : IntervalSound (23232, 23236) := by
  have hc : coverCheck 23232 23236 (witnessIntervals c0708_witnesses) = true := by
    rw [c0708_intervals_eq]
    exact c0708_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0708_witnesses)
    (lo := 23232) (hi := 23236) c0708_checks hc

private def c0709_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk193.w7, B699LowIndex.I11TerminalData.Chunk193.w8]
private def c0709_intervals : List NatInterval := [(23250, 23250), (23251, 23257)]

private theorem c0709_intervals_eq :
    witnessIntervals c0709_witnesses = c0709_intervals := by
  rfl

private theorem c0709_checks : witnessesCheck c0709_witnesses = true := by
  simp only [witnessesCheck, c0709_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk193.w7_check, B699LowIndex.I11TerminalData.Chunk193.w8_check, Bool.and_self]

private theorem c0709_cover : coverCheck 23250 23257 c0709_intervals = true := by
  decide

private theorem c0709_sound : IntervalSound (23250, 23257) := by
  have hc : coverCheck 23250 23257 (witnessIntervals c0709_witnesses) = true := by
    rw [c0709_intervals_eq]
    exact c0709_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0709_witnesses)
    (lo := 23250) (hi := 23257) c0709_checks hc

private def c0710_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk193.w9]
private def c0710_intervals : List NatInterval := [(23328, 23334)]

private theorem c0710_intervals_eq :
    witnessIntervals c0710_witnesses = c0710_intervals := by
  rfl

private theorem c0710_checks : witnessesCheck c0710_witnesses = true := by
  simp only [witnessesCheck, c0710_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk193.w9_check, Bool.and_self]

private theorem c0710_cover : coverCheck 23328 23334 c0710_intervals = true := by
  decide

private theorem c0710_sound : IntervalSound (23328, 23334) := by
  have hc : coverCheck 23328 23334 (witnessIntervals c0710_witnesses) = true := by
    rw [c0710_intervals_eq]
    exact c0710_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0710_witnesses)
    (lo := 23328) (hi := 23334) c0710_checks hc

private def c0711_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk193.w10, B699LowIndex.I11TerminalData.Chunk193.w11, B699LowIndex.I11TerminalData.Chunk193.w12]
private def c0711_intervals : List NatInterval := [(23375, 23381), (23382, 23382), (23383, 23383)]

private theorem c0711_intervals_eq :
    witnessIntervals c0711_witnesses = c0711_intervals := by
  rfl

private theorem c0711_checks : witnessesCheck c0711_witnesses = true := by
  simp only [witnessesCheck, c0711_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk193.w10_check, B699LowIndex.I11TerminalData.Chunk193.w11_check, B699LowIndex.I11TerminalData.Chunk193.w12_check, Bool.and_self]

private theorem c0711_cover : coverCheck 23375 23383 c0711_intervals = true := by
  decide

private theorem c0711_sound : IntervalSound (23375, 23383) := by
  have hc : coverCheck 23375 23383 (witnessIntervals c0711_witnesses) = true := by
    rw [c0711_intervals_eq]
    exact c0711_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0711_witnesses)
    (lo := 23375) (hi := 23383) c0711_checks hc

private def c0712_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk193.w13, B699LowIndex.I11TerminalData.Chunk193.w14, B699LowIndex.I11TerminalData.Chunk193.w15, B699LowIndex.I11TerminalData.Chunk194.w0, B699LowIndex.I11TerminalData.Chunk194.w1]
private def c0712_intervals : List NatInterval := [(23424, 23427), (23428, 23428), (23429, 23429), (23430, 23430), (23431, 23432)]

private theorem c0712_intervals_eq :
    witnessIntervals c0712_witnesses = c0712_intervals := by
  rfl

private theorem c0712_checks : witnessesCheck c0712_witnesses = true := by
  simp only [witnessesCheck, c0712_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk193.w13_check, B699LowIndex.I11TerminalData.Chunk193.w14_check, B699LowIndex.I11TerminalData.Chunk193.w15_check, B699LowIndex.I11TerminalData.Chunk194.w0_check, B699LowIndex.I11TerminalData.Chunk194.w1_check, Bool.and_self]

private theorem c0712_cover : coverCheck 23424 23432 c0712_intervals = true := by
  decide

private theorem c0712_sound : IntervalSound (23424, 23432) := by
  have hc : coverCheck 23424 23432 (witnessIntervals c0712_witnesses) = true := by
    rw [c0712_intervals_eq]
    exact c0712_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0712_witnesses)
    (lo := 23424) (hi := 23432) c0712_checks hc

private def c0713_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk194.w2, B699LowIndex.I11TerminalData.Chunk194.w3, B699LowIndex.I11TerminalData.Chunk194.w4, B699LowIndex.I11TerminalData.Chunk194.w5, B699LowIndex.I11TerminalData.Chunk194.w6, B699LowIndex.I11TerminalData.Chunk194.w7, B699LowIndex.I11TerminalData.Chunk194.w8, B699LowIndex.I11TerminalData.Chunk194.w9]
private def c0713_intervals : List NatInterval := [(23490, 23490), (23491, 23491), (23492, 23492), (23493, 23493), (23494, 23494), (23495, 23495), (23496, 23496), (23497, 23498)]

private theorem c0713_intervals_eq :
    witnessIntervals c0713_witnesses = c0713_intervals := by
  rfl

private theorem c0713_checks : witnessesCheck c0713_witnesses = true := by
  simp only [witnessesCheck, c0713_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk194.w2_check, B699LowIndex.I11TerminalData.Chunk194.w3_check, B699LowIndex.I11TerminalData.Chunk194.w4_check, B699LowIndex.I11TerminalData.Chunk194.w5_check, B699LowIndex.I11TerminalData.Chunk194.w6_check, B699LowIndex.I11TerminalData.Chunk194.w7_check, B699LowIndex.I11TerminalData.Chunk194.w8_check, B699LowIndex.I11TerminalData.Chunk194.w9_check, Bool.and_self]

private theorem c0713_cover : coverCheck 23490 23498 c0713_intervals = true := by
  decide

private theorem c0713_sound : IntervalSound (23490, 23498) := by
  have hc : coverCheck 23490 23498 (witnessIntervals c0713_witnesses) = true := by
    rw [c0713_intervals_eq]
    exact c0713_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0713_witnesses)
    (lo := 23490) (hi := 23498) c0713_checks hc

private def c0714_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk194.w10]
private def c0714_intervals : List NatInterval := [(23500, 23500)]

private theorem c0714_intervals_eq :
    witnessIntervals c0714_witnesses = c0714_intervals := by
  rfl

private theorem c0714_checks : witnessesCheck c0714_witnesses = true := by
  simp only [witnessesCheck, c0714_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk194.w10_check, Bool.and_self]

private theorem c0714_cover : coverCheck 23500 23500 c0714_intervals = true := by
  decide

private theorem c0714_sound : IntervalSound (23500, 23500) := by
  have hc : coverCheck 23500 23500 (witnessIntervals c0714_witnesses) = true := by
    rw [c0714_intervals_eq]
    exact c0714_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0714_witnesses)
    (lo := 23500) (hi := 23500) c0714_checks hc

private def c0715_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk194.w11, B699LowIndex.I11TerminalData.Chunk194.w12, B699LowIndex.I11TerminalData.Chunk194.w13]
private def c0715_intervals : List NatInterval := [(23571, 23577), (23578, 23578), (23579, 23579)]

private theorem c0715_intervals_eq :
    witnessIntervals c0715_witnesses = c0715_intervals := by
  rfl

private theorem c0715_checks : witnessesCheck c0715_witnesses = true := by
  simp only [witnessesCheck, c0715_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk194.w11_check, B699LowIndex.I11TerminalData.Chunk194.w12_check, B699LowIndex.I11TerminalData.Chunk194.w13_check, Bool.and_self]

private theorem c0715_cover : coverCheck 23571 23579 c0715_intervals = true := by
  decide

private theorem c0715_sound : IntervalSound (23571, 23579) := by
  have hc : coverCheck 23571 23579 (witnessIntervals c0715_witnesses) = true := by
    rw [c0715_intervals_eq]
    exact c0715_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0715_witnesses)
    (lo := 23571) (hi := 23579) c0715_checks hc

private def c0716_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk194.w14, B699LowIndex.I11TerminalData.Chunk194.w15, B699LowIndex.I11TerminalData.Chunk195.w0, B699LowIndex.I11TerminalData.Chunk195.w1, B699LowIndex.I11TerminalData.Chunk195.w2]
private def c0716_intervals : List NatInterval := [(23618, 23619), (23620, 23620), (23621, 23621), (23622, 23622), (23623, 23628)]

private theorem c0716_intervals_eq :
    witnessIntervals c0716_witnesses = c0716_intervals := by
  rfl

private theorem c0716_checks : witnessesCheck c0716_witnesses = true := by
  simp only [witnessesCheck, c0716_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk194.w14_check, B699LowIndex.I11TerminalData.Chunk194.w15_check, B699LowIndex.I11TerminalData.Chunk195.w0_check, B699LowIndex.I11TerminalData.Chunk195.w1_check, B699LowIndex.I11TerminalData.Chunk195.w2_check, Bool.and_self]

private theorem c0716_cover : coverCheck 23618 23628 c0716_intervals = true := by
  decide

private theorem c0716_sound : IntervalSound (23618, 23628) := by
  have hc : coverCheck 23618 23628 (witnessIntervals c0716_witnesses) = true := by
    rw [c0716_intervals_eq]
    exact c0716_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0716_witnesses)
    (lo := 23618) (hi := 23628) c0716_checks hc

private def c0717_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk195.w3]
private def c0717_intervals : List NatInterval := [(23750, 23754)]

private theorem c0717_intervals_eq :
    witnessIntervals c0717_witnesses = c0717_intervals := by
  rfl

private theorem c0717_checks : witnessesCheck c0717_witnesses = true := by
  simp only [witnessesCheck, c0717_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk195.w3_check, Bool.and_self]

private theorem c0717_cover : coverCheck 23750 23754 c0717_intervals = true := by
  decide

private theorem c0717_sound : IntervalSound (23750, 23754) := by
  have hc : coverCheck 23750 23754 (witnessIntervals c0717_witnesses) = true := by
    rw [c0717_intervals_eq]
    exact c0717_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0717_witnesses)
    (lo := 23750) (hi := 23754) c0717_checks hc

private def c0718_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk195.w4, B699LowIndex.I11TerminalData.Chunk195.w5]
private def c0718_intervals : List NatInterval := [(23814, 23823), (23824, 23824)]

private theorem c0718_intervals_eq :
    witnessIntervals c0718_witnesses = c0718_intervals := by
  rfl

private theorem c0718_checks : witnessesCheck c0718_witnesses = true := by
  simp only [witnessesCheck, c0718_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk195.w4_check, B699LowIndex.I11TerminalData.Chunk195.w5_check, Bool.and_self]

private theorem c0718_cover : coverCheck 23814 23824 c0718_intervals = true := by
  decide

private theorem c0718_sound : IntervalSound (23814, 23824) := by
  have hc : coverCheck 23814 23824 (witnessIntervals c0718_witnesses) = true := by
    rw [c0718_intervals_eq]
    exact c0718_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0718_witnesses)
    (lo := 23814) (hi := 23824) c0718_checks hc

private def c0719_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk195.w6]
private def c0719_intervals : List NatInterval := [(23872, 23873)]

private theorem c0719_intervals_eq :
    witnessIntervals c0719_witnesses = c0719_intervals := by
  rfl

private theorem c0719_checks : witnessesCheck c0719_witnesses = true := by
  simp only [witnessesCheck, c0719_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk195.w6_check, Bool.and_self]

private theorem c0719_cover : coverCheck 23872 23873 c0719_intervals = true := by
  decide

private theorem c0719_sound : IntervalSound (23872, 23873) := by
  have hc : coverCheck 23872 23873 (witnessIntervals c0719_witnesses) = true := by
    rw [c0719_intervals_eq]
    exact c0719_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0719_witnesses)
    (lo := 23872) (hi := 23873) c0719_checks hc

def intervals : List NatInterval := [(23040, 23040), (23085, 23089), (23128, 23135), (23168, 23178), (23232, 23236), (23250, 23257), (23328, 23334), (23375, 23383), (23424, 23432), (23490, 23498), (23500, 23500), (23571, 23579), (23618, 23628), (23750, 23754), (23814, 23824), (23872, 23873)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (23040, 23040)) (intervals := [(23085, 23089), (23128, 23135), (23168, 23178), (23232, 23236), (23250, 23257), (23328, 23334), (23375, 23383), (23424, 23432), (23490, 23498), (23500, 23500), (23571, 23579), (23618, 23628), (23750, 23754), (23814, 23824), (23872, 23873)]) c0704_sound (intervals_sound_cons (I := (23085, 23089)) (intervals := [(23128, 23135), (23168, 23178), (23232, 23236), (23250, 23257), (23328, 23334), (23375, 23383), (23424, 23432), (23490, 23498), (23500, 23500), (23571, 23579), (23618, 23628), (23750, 23754), (23814, 23824), (23872, 23873)]) c0705_sound (intervals_sound_cons (I := (23128, 23135)) (intervals := [(23168, 23178), (23232, 23236), (23250, 23257), (23328, 23334), (23375, 23383), (23424, 23432), (23490, 23498), (23500, 23500), (23571, 23579), (23618, 23628), (23750, 23754), (23814, 23824), (23872, 23873)]) c0706_sound (intervals_sound_cons (I := (23168, 23178)) (intervals := [(23232, 23236), (23250, 23257), (23328, 23334), (23375, 23383), (23424, 23432), (23490, 23498), (23500, 23500), (23571, 23579), (23618, 23628), (23750, 23754), (23814, 23824), (23872, 23873)]) c0707_sound (intervals_sound_cons (I := (23232, 23236)) (intervals := [(23250, 23257), (23328, 23334), (23375, 23383), (23424, 23432), (23490, 23498), (23500, 23500), (23571, 23579), (23618, 23628), (23750, 23754), (23814, 23824), (23872, 23873)]) c0708_sound (intervals_sound_cons (I := (23250, 23257)) (intervals := [(23328, 23334), (23375, 23383), (23424, 23432), (23490, 23498), (23500, 23500), (23571, 23579), (23618, 23628), (23750, 23754), (23814, 23824), (23872, 23873)]) c0709_sound (intervals_sound_cons (I := (23328, 23334)) (intervals := [(23375, 23383), (23424, 23432), (23490, 23498), (23500, 23500), (23571, 23579), (23618, 23628), (23750, 23754), (23814, 23824), (23872, 23873)]) c0710_sound (intervals_sound_cons (I := (23375, 23383)) (intervals := [(23424, 23432), (23490, 23498), (23500, 23500), (23571, 23579), (23618, 23628), (23750, 23754), (23814, 23824), (23872, 23873)]) c0711_sound (intervals_sound_cons (I := (23424, 23432)) (intervals := [(23490, 23498), (23500, 23500), (23571, 23579), (23618, 23628), (23750, 23754), (23814, 23824), (23872, 23873)]) c0712_sound (intervals_sound_cons (I := (23490, 23498)) (intervals := [(23500, 23500), (23571, 23579), (23618, 23628), (23750, 23754), (23814, 23824), (23872, 23873)]) c0713_sound (intervals_sound_cons (I := (23500, 23500)) (intervals := [(23571, 23579), (23618, 23628), (23750, 23754), (23814, 23824), (23872, 23873)]) c0714_sound (intervals_sound_cons (I := (23571, 23579)) (intervals := [(23618, 23628), (23750, 23754), (23814, 23824), (23872, 23873)]) c0715_sound (intervals_sound_cons (I := (23618, 23628)) (intervals := [(23750, 23754), (23814, 23824), (23872, 23873)]) c0716_sound (intervals_sound_cons (I := (23750, 23754)) (intervals := [(23814, 23824), (23872, 23873)]) c0717_sound (intervals_sound_cons (I := (23814, 23824)) (intervals := [(23872, 23873)]) c0718_sound (intervals_sound_cons (I := (23872, 23873)) (intervals := []) c0719_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G044
