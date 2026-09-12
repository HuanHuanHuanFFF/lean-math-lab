import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk120
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk121
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk122
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk123

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G018
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0288_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk120.w10, B699LowIndex.I11TerminalData.Chunk120.w11, B699LowIndex.I11TerminalData.Chunk120.w12]
private def c0288_intervals : List NatInterval := [(8918, 8918), (8919, 8919), (8920, 8920)]

private theorem c0288_intervals_eq :
    witnessIntervals c0288_witnesses = c0288_intervals := by
  rfl

private theorem c0288_checks : witnessesCheck c0288_witnesses = true := by
  simp only [witnessesCheck, c0288_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk120.w10_check, B699LowIndex.I11TerminalData.Chunk120.w11_check, B699LowIndex.I11TerminalData.Chunk120.w12_check, Bool.and_self]

private theorem c0288_cover : coverCheck 8918 8920 c0288_intervals = true := by
  decide

private theorem c0288_sound : IntervalSound (8918, 8920) := by
  have hc : coverCheck 8918 8920 (witnessIntervals c0288_witnesses) = true := by
    rw [c0288_intervals_eq]
    exact c0288_cover
  exact interval_sound_of_witness_checks (witnesses := c0288_witnesses)
    (lo := 8918) (hi := 8920) c0288_checks hc

private def c0289_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk120.w13, B699LowIndex.I11TerminalData.Chunk120.w14]
private def c0289_intervals : List NatInterval := [(8925, 8933), (8934, 8935)]

private theorem c0289_intervals_eq :
    witnessIntervals c0289_witnesses = c0289_intervals := by
  rfl

private theorem c0289_checks : witnessesCheck c0289_witnesses = true := by
  simp only [witnessesCheck, c0289_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk120.w13_check, B699LowIndex.I11TerminalData.Chunk120.w14_check, Bool.and_self]

private theorem c0289_cover : coverCheck 8925 8935 c0289_intervals = true := by
  decide

private theorem c0289_sound : IntervalSound (8925, 8935) := by
  have hc : coverCheck 8925 8935 (witnessIntervals c0289_witnesses) = true := by
    rw [c0289_intervals_eq]
    exact c0289_cover
  exact interval_sound_of_witness_checks (witnesses := c0289_witnesses)
    (lo := 8925) (hi := 8935) c0289_checks hc

private def c0290_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk120.w15]
private def c0290_intervals : List NatInterval := [(8937, 8938)]

private theorem c0290_intervals_eq :
    witnessIntervals c0290_witnesses = c0290_intervals := by
  rfl

private theorem c0290_checks : witnessesCheck c0290_witnesses = true := by
  simp only [witnessesCheck, c0290_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk120.w15_check, Bool.and_self]

private theorem c0290_cover : coverCheck 8937 8938 c0290_intervals = true := by
  decide

private theorem c0290_sound : IntervalSound (8937, 8938) := by
  have hc : coverCheck 8937 8938 (witnessIntervals c0290_witnesses) = true := by
    rw [c0290_intervals_eq]
    exact c0290_cover
  exact interval_sound_of_witness_checks (witnesses := c0290_witnesses)
    (lo := 8937) (hi := 8938) c0290_checks hc

private def c0291_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk121.w0]
private def c0291_intervals : List NatInterval := [(8960, 8960)]

private theorem c0291_intervals_eq :
    witnessIntervals c0291_witnesses = c0291_intervals := by
  rfl

private theorem c0291_checks : witnessesCheck c0291_witnesses = true := by
  simp only [witnessesCheck, c0291_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk121.w0_check, Bool.and_self]

private theorem c0291_cover : coverCheck 8960 8960 c0291_intervals = true := by
  decide

private theorem c0291_sound : IntervalSound (8960, 8960) := by
  have hc : coverCheck 8960 8960 (witnessIntervals c0291_witnesses) = true := by
    rw [c0291_intervals_eq]
    exact c0291_cover
  exact interval_sound_of_witness_checks (witnesses := c0291_witnesses)
    (lo := 8960) (hi := 8960) c0291_checks hc

private def c0292_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk121.w1, B699LowIndex.I11TerminalData.Chunk121.w2]
private def c0292_intervals : List NatInterval := [(8964, 8973), (8974, 8977)]

private theorem c0292_intervals_eq :
    witnessIntervals c0292_witnesses = c0292_intervals := by
  rfl

private theorem c0292_checks : witnessesCheck c0292_witnesses = true := by
  simp only [witnessesCheck, c0292_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk121.w1_check, B699LowIndex.I11TerminalData.Chunk121.w2_check, Bool.and_self]

private theorem c0292_cover : coverCheck 8964 8977 c0292_intervals = true := by
  decide

private theorem c0292_sound : IntervalSound (8964, 8977) := by
  have hc : coverCheck 8964 8977 (witnessIntervals c0292_witnesses) = true := by
    rw [c0292_intervals_eq]
    exact c0292_cover
  exact interval_sound_of_witness_checks (witnesses := c0292_witnesses)
    (lo := 8964) (hi := 8977) c0292_checks hc

private def c0293_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk121.w3, B699LowIndex.I11TerminalData.Chunk121.w4, B699LowIndex.I11TerminalData.Chunk121.w5, B699LowIndex.I11TerminalData.Chunk121.w6, B699LowIndex.I11TerminalData.Chunk121.w7, B699LowIndex.I11TerminalData.Chunk121.w8, B699LowIndex.I11TerminalData.Chunk121.w9, B699LowIndex.I11TerminalData.Chunk121.w10]
private def c0293_intervals : List NatInterval := [(8992, 8992), (8993, 8993), (8994, 8994), (8995, 8995), (8996, 8996), (8997, 8997), (8998, 8998), (8999, 9002)]

private theorem c0293_intervals_eq :
    witnessIntervals c0293_witnesses = c0293_intervals := by
  rfl

private theorem c0293_checks : witnessesCheck c0293_witnesses = true := by
  simp only [witnessesCheck, c0293_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk121.w3_check, B699LowIndex.I11TerminalData.Chunk121.w4_check, B699LowIndex.I11TerminalData.Chunk121.w5_check, B699LowIndex.I11TerminalData.Chunk121.w6_check, B699LowIndex.I11TerminalData.Chunk121.w7_check, B699LowIndex.I11TerminalData.Chunk121.w8_check, B699LowIndex.I11TerminalData.Chunk121.w9_check, B699LowIndex.I11TerminalData.Chunk121.w10_check, Bool.and_self]

private theorem c0293_cover : coverCheck 8992 9002 c0293_intervals = true := by
  decide

private theorem c0293_sound : IntervalSound (8992, 9002) := by
  have hc : coverCheck 8992 9002 (witnessIntervals c0293_witnesses) = true := by
    rw [c0293_intervals_eq]
    exact c0293_cover
  exact interval_sound_of_witness_checks (witnesses := c0293_witnesses)
    (lo := 8992) (hi := 9002) c0293_checks hc

private def c0294_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk121.w11, B699LowIndex.I11TerminalData.Chunk121.w12, B699LowIndex.I11TerminalData.Chunk121.w13, B699LowIndex.I11TerminalData.Chunk121.w14, B699LowIndex.I11TerminalData.Chunk121.w15, B699LowIndex.I11TerminalData.Chunk122.w0, B699LowIndex.I11TerminalData.Chunk122.w1]
private def c0294_intervals : List NatInterval := [(9018, 9023), (9024, 9024), (9025, 9025), (9026, 9026), (9027, 9027), (9028, 9028), (9029, 9034)]

private theorem c0294_intervals_eq :
    witnessIntervals c0294_witnesses = c0294_intervals := by
  rfl

private theorem c0294_checks : witnessesCheck c0294_witnesses = true := by
  simp only [witnessesCheck, c0294_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk121.w11_check, B699LowIndex.I11TerminalData.Chunk121.w12_check, B699LowIndex.I11TerminalData.Chunk121.w13_check, B699LowIndex.I11TerminalData.Chunk121.w14_check, B699LowIndex.I11TerminalData.Chunk121.w15_check, B699LowIndex.I11TerminalData.Chunk122.w0_check, B699LowIndex.I11TerminalData.Chunk122.w1_check, Bool.and_self]

private theorem c0294_cover : coverCheck 9018 9034 c0294_intervals = true := by
  decide

private theorem c0294_sound : IntervalSound (9018, 9034) := by
  have hc : coverCheck 9018 9034 (witnessIntervals c0294_witnesses) = true := by
    rw [c0294_intervals_eq]
    exact c0294_cover
  exact interval_sound_of_witness_checks (witnesses := c0294_witnesses)
    (lo := 9018) (hi := 9034) c0294_checks hc

private def c0295_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk122.w2, B699LowIndex.I11TerminalData.Chunk122.w3]
private def c0295_intervals : List NatInterval := [(9050, 9059), (9060, 9060)]

private theorem c0295_intervals_eq :
    witnessIntervals c0295_witnesses = c0295_intervals := by
  rfl

private theorem c0295_checks : witnessesCheck c0295_witnesses = true := by
  simp only [witnessesCheck, c0295_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk122.w2_check, B699LowIndex.I11TerminalData.Chunk122.w3_check, Bool.and_self]

private theorem c0295_cover : coverCheck 9050 9060 c0295_intervals = true := by
  decide

private theorem c0295_sound : IntervalSound (9050, 9060) := by
  have hc : coverCheck 9050 9060 (witnessIntervals c0295_witnesses) = true := by
    rw [c0295_intervals_eq]
    exact c0295_cover
  exact interval_sound_of_witness_checks (witnesses := c0295_witnesses)
    (lo := 9050) (hi := 9060) c0295_checks hc

private def c0296_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk122.w4]
private def c0296_intervals : List NatInterval := [(9065, 9066)]

private theorem c0296_intervals_eq :
    witnessIntervals c0296_witnesses = c0296_intervals := by
  rfl

private theorem c0296_checks : witnessesCheck c0296_witnesses = true := by
  simp only [witnessesCheck, c0296_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk122.w4_check, Bool.and_self]

private theorem c0296_cover : coverCheck 9065 9066 c0296_intervals = true := by
  decide

private theorem c0296_sound : IntervalSound (9065, 9066) := by
  have hc : coverCheck 9065 9066 (witnessIntervals c0296_witnesses) = true := by
    rw [c0296_intervals_eq]
    exact c0296_cover
  exact interval_sound_of_witness_checks (witnesses := c0296_witnesses)
    (lo := 9065) (hi := 9066) c0296_checks hc

private def c0297_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk122.w5, B699LowIndex.I11TerminalData.Chunk122.w6, B699LowIndex.I11TerminalData.Chunk122.w7, B699LowIndex.I11TerminalData.Chunk122.w8, B699LowIndex.I11TerminalData.Chunk122.w9, B699LowIndex.I11TerminalData.Chunk122.w10]
private def c0297_intervals : List NatInterval := [(9072, 9077), (9078, 9078), (9079, 9079), (9080, 9080), (9081, 9081), (9082, 9082)]

private theorem c0297_intervals_eq :
    witnessIntervals c0297_witnesses = c0297_intervals := by
  rfl

private theorem c0297_checks : witnessesCheck c0297_witnesses = true := by
  simp only [witnessesCheck, c0297_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk122.w5_check, B699LowIndex.I11TerminalData.Chunk122.w6_check, B699LowIndex.I11TerminalData.Chunk122.w7_check, B699LowIndex.I11TerminalData.Chunk122.w8_check, B699LowIndex.I11TerminalData.Chunk122.w9_check, B699LowIndex.I11TerminalData.Chunk122.w10_check, Bool.and_self]

private theorem c0297_cover : coverCheck 9072 9082 c0297_intervals = true := by
  decide

private theorem c0297_sound : IntervalSound (9072, 9082) := by
  have hc : coverCheck 9072 9082 (witnessIntervals c0297_witnesses) = true := by
    rw [c0297_intervals_eq]
    exact c0297_cover
  exact interval_sound_of_witness_checks (witnesses := c0297_witnesses)
    (lo := 9072) (hi := 9082) c0297_checks hc

private def c0298_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk122.w11, B699LowIndex.I11TerminalData.Chunk122.w12, B699LowIndex.I11TerminalData.Chunk122.w13]
private def c0298_intervals : List NatInterval := [(9100, 9101), (9102, 9102), (9103, 9109)]

private theorem c0298_intervals_eq :
    witnessIntervals c0298_witnesses = c0298_intervals := by
  rfl

private theorem c0298_checks : witnessesCheck c0298_witnesses = true := by
  simp only [witnessesCheck, c0298_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk122.w11_check, B699LowIndex.I11TerminalData.Chunk122.w12_check, B699LowIndex.I11TerminalData.Chunk122.w13_check, Bool.and_self]

private theorem c0298_cover : coverCheck 9100 9109 c0298_intervals = true := by
  decide

private theorem c0298_sound : IntervalSound (9100, 9109) := by
  have hc : coverCheck 9100 9109 (witnessIntervals c0298_witnesses) = true := by
    rw [c0298_intervals_eq]
    exact c0298_cover
  exact interval_sound_of_witness_checks (witnesses := c0298_witnesses)
    (lo := 9100) (hi := 9109) c0298_checks hc

private def c0299_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk122.w14, B699LowIndex.I11TerminalData.Chunk122.w15, B699LowIndex.I11TerminalData.Chunk123.w0, B699LowIndex.I11TerminalData.Chunk123.w1, B699LowIndex.I11TerminalData.Chunk123.w2, B699LowIndex.I11TerminalData.Chunk123.w3, B699LowIndex.I11TerminalData.Chunk123.w4, B699LowIndex.I11TerminalData.Chunk123.w5]
private def c0299_intervals : List NatInterval := [(9120, 9120), (9121, 9121), (9122, 9122), (9123, 9123), (9124, 9124), (9125, 9125), (9126, 9126), (9127, 9135)]

private theorem c0299_intervals_eq :
    witnessIntervals c0299_witnesses = c0299_intervals := by
  rfl

private theorem c0299_checks : witnessesCheck c0299_witnesses = true := by
  simp only [witnessesCheck, c0299_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk122.w14_check, B699LowIndex.I11TerminalData.Chunk122.w15_check, B699LowIndex.I11TerminalData.Chunk123.w0_check, B699LowIndex.I11TerminalData.Chunk123.w1_check, B699LowIndex.I11TerminalData.Chunk123.w2_check, B699LowIndex.I11TerminalData.Chunk123.w3_check, B699LowIndex.I11TerminalData.Chunk123.w4_check, B699LowIndex.I11TerminalData.Chunk123.w5_check, Bool.and_self]

private theorem c0299_cover : coverCheck 9120 9135 c0299_intervals = true := by
  decide

private theorem c0299_sound : IntervalSound (9120, 9135) := by
  have hc : coverCheck 9120 9135 (witnessIntervals c0299_witnesses) = true := by
    rw [c0299_intervals_eq]
    exact c0299_cover
  exact interval_sound_of_witness_checks (witnesses := c0299_witnesses)
    (lo := 9120) (hi := 9135) c0299_checks hc

private def c0300_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk123.w6, B699LowIndex.I11TerminalData.Chunk123.w7]
private def c0300_intervals : List NatInterval := [(9152, 9161), (9162, 9163)]

private theorem c0300_intervals_eq :
    witnessIntervals c0300_witnesses = c0300_intervals := by
  rfl

private theorem c0300_checks : witnessesCheck c0300_witnesses = true := by
  simp only [witnessesCheck, c0300_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk123.w6_check, B699LowIndex.I11TerminalData.Chunk123.w7_check, Bool.and_self]

private theorem c0300_cover : coverCheck 9152 9163 c0300_intervals = true := by
  decide

private theorem c0300_sound : IntervalSound (9152, 9163) := by
  have hc : coverCheck 9152 9163 (witnessIntervals c0300_witnesses) = true := by
    rw [c0300_intervals_eq]
    exact c0300_cover
  exact interval_sound_of_witness_checks (witnesses := c0300_witnesses)
    (lo := 9152) (hi := 9163) c0300_checks hc

private def c0301_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk123.w8, B699LowIndex.I11TerminalData.Chunk123.w9]
private def c0301_intervals : List NatInterval := [(9180, 9183), (9184, 9190)]

private theorem c0301_intervals_eq :
    witnessIntervals c0301_witnesses = c0301_intervals := by
  rfl

private theorem c0301_checks : witnessesCheck c0301_witnesses = true := by
  simp only [witnessesCheck, c0301_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk123.w8_check, B699LowIndex.I11TerminalData.Chunk123.w9_check, Bool.and_self]

private theorem c0301_cover : coverCheck 9180 9190 c0301_intervals = true := by
  decide

private theorem c0301_sound : IntervalSound (9180, 9190) := by
  have hc : coverCheck 9180 9190 (witnessIntervals c0301_witnesses) = true := by
    rw [c0301_intervals_eq]
    exact c0301_cover
  exact interval_sound_of_witness_checks (witnesses := c0301_witnesses)
    (lo := 9180) (hi := 9190) c0301_checks hc

private def c0302_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk123.w10]
private def c0302_intervals : List NatInterval := [(9207, 9210)]

private theorem c0302_intervals_eq :
    witnessIntervals c0302_witnesses = c0302_intervals := by
  rfl

private theorem c0302_checks : witnessesCheck c0302_witnesses = true := by
  simp only [witnessesCheck, c0302_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk123.w10_check, Bool.and_self]

private theorem c0302_cover : coverCheck 9207 9210 c0302_intervals = true := by
  decide

private theorem c0302_sound : IntervalSound (9207, 9210) := by
  have hc : coverCheck 9207 9210 (witnessIntervals c0302_witnesses) = true := by
    rw [c0302_intervals_eq]
    exact c0302_cover
  exact interval_sound_of_witness_checks (witnesses := c0302_witnesses)
    (lo := 9207) (hi := 9210) c0302_checks hc

private def c0303_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk123.w11, B699LowIndex.I11TerminalData.Chunk123.w12, B699LowIndex.I11TerminalData.Chunk123.w13]
private def c0303_intervals : List NatInterval := [(9212, 9219), (9220, 9220), (9221, 9222)]

private theorem c0303_intervals_eq :
    witnessIntervals c0303_witnesses = c0303_intervals := by
  rfl

private theorem c0303_checks : witnessesCheck c0303_witnesses = true := by
  simp only [witnessesCheck, c0303_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk123.w11_check, B699LowIndex.I11TerminalData.Chunk123.w12_check, B699LowIndex.I11TerminalData.Chunk123.w13_check, Bool.and_self]

private theorem c0303_cover : coverCheck 9212 9222 c0303_intervals = true := by
  decide

private theorem c0303_sound : IntervalSound (9212, 9222) := by
  have hc : coverCheck 9212 9222 (witnessIntervals c0303_witnesses) = true := by
    rw [c0303_intervals_eq]
    exact c0303_cover
  exact interval_sound_of_witness_checks (witnesses := c0303_witnesses)
    (lo := 9212) (hi := 9222) c0303_checks hc

def intervals : List NatInterval := [(8918, 8920), (8925, 8935), (8937, 8938), (8960, 8960), (8964, 8977), (8992, 9002), (9018, 9034), (9050, 9060), (9065, 9066), (9072, 9082), (9100, 9109), (9120, 9135), (9152, 9163), (9180, 9190), (9207, 9210), (9212, 9222)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (8918, 8920)) (intervals := [(8925, 8935), (8937, 8938), (8960, 8960), (8964, 8977), (8992, 9002), (9018, 9034), (9050, 9060), (9065, 9066), (9072, 9082), (9100, 9109), (9120, 9135), (9152, 9163), (9180, 9190), (9207, 9210), (9212, 9222)]) c0288_sound (intervals_sound_cons (I := (8925, 8935)) (intervals := [(8937, 8938), (8960, 8960), (8964, 8977), (8992, 9002), (9018, 9034), (9050, 9060), (9065, 9066), (9072, 9082), (9100, 9109), (9120, 9135), (9152, 9163), (9180, 9190), (9207, 9210), (9212, 9222)]) c0289_sound (intervals_sound_cons (I := (8937, 8938)) (intervals := [(8960, 8960), (8964, 8977), (8992, 9002), (9018, 9034), (9050, 9060), (9065, 9066), (9072, 9082), (9100, 9109), (9120, 9135), (9152, 9163), (9180, 9190), (9207, 9210), (9212, 9222)]) c0290_sound (intervals_sound_cons (I := (8960, 8960)) (intervals := [(8964, 8977), (8992, 9002), (9018, 9034), (9050, 9060), (9065, 9066), (9072, 9082), (9100, 9109), (9120, 9135), (9152, 9163), (9180, 9190), (9207, 9210), (9212, 9222)]) c0291_sound (intervals_sound_cons (I := (8964, 8977)) (intervals := [(8992, 9002), (9018, 9034), (9050, 9060), (9065, 9066), (9072, 9082), (9100, 9109), (9120, 9135), (9152, 9163), (9180, 9190), (9207, 9210), (9212, 9222)]) c0292_sound (intervals_sound_cons (I := (8992, 9002)) (intervals := [(9018, 9034), (9050, 9060), (9065, 9066), (9072, 9082), (9100, 9109), (9120, 9135), (9152, 9163), (9180, 9190), (9207, 9210), (9212, 9222)]) c0293_sound (intervals_sound_cons (I := (9018, 9034)) (intervals := [(9050, 9060), (9065, 9066), (9072, 9082), (9100, 9109), (9120, 9135), (9152, 9163), (9180, 9190), (9207, 9210), (9212, 9222)]) c0294_sound (intervals_sound_cons (I := (9050, 9060)) (intervals := [(9065, 9066), (9072, 9082), (9100, 9109), (9120, 9135), (9152, 9163), (9180, 9190), (9207, 9210), (9212, 9222)]) c0295_sound (intervals_sound_cons (I := (9065, 9066)) (intervals := [(9072, 9082), (9100, 9109), (9120, 9135), (9152, 9163), (9180, 9190), (9207, 9210), (9212, 9222)]) c0296_sound (intervals_sound_cons (I := (9072, 9082)) (intervals := [(9100, 9109), (9120, 9135), (9152, 9163), (9180, 9190), (9207, 9210), (9212, 9222)]) c0297_sound (intervals_sound_cons (I := (9100, 9109)) (intervals := [(9120, 9135), (9152, 9163), (9180, 9190), (9207, 9210), (9212, 9222)]) c0298_sound (intervals_sound_cons (I := (9120, 9135)) (intervals := [(9152, 9163), (9180, 9190), (9207, 9210), (9212, 9222)]) c0299_sound (intervals_sound_cons (I := (9152, 9163)) (intervals := [(9180, 9190), (9207, 9210), (9212, 9222)]) c0300_sound (intervals_sound_cons (I := (9180, 9190)) (intervals := [(9207, 9210), (9212, 9222)]) c0301_sound (intervals_sound_cons (I := (9207, 9210)) (intervals := [(9212, 9222)]) c0302_sound (intervals_sound_cons (I := (9212, 9222)) (intervals := []) c0303_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G018
