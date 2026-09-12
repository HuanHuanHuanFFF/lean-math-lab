import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk082
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk083
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk084
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk085
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk086

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G006
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0096_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk082.w13]
private def c0096_intervals : List NatInterval := [(5850, 5850)]

private theorem c0096_intervals_eq :
    witnessIntervals c0096_witnesses = c0096_intervals := by
  rfl

private theorem c0096_checks : witnessesCheck c0096_witnesses = true := by
  simp only [witnessesCheck, c0096_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk082.w13_check, Bool.and_self]

private theorem c0096_cover : coverCheck 5850 5850 c0096_intervals = true := by
  decide

private theorem c0096_sound : IntervalSound (5850, 5850) := by
  have hc : coverCheck 5850 5850 (witnessIntervals c0096_witnesses) = true := by
    rw [c0096_intervals_eq]
    exact c0096_cover
  exact interval_sound_of_witness_checks (witnesses := c0096_witnesses)
    (lo := 5850) (hi := 5850) c0096_checks hc

private def c0097_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk082.w14, B699LowIndex.I11TerminalData.Chunk082.w15]
private def c0097_intervals : List NatInterval := [(5856, 5861), (5862, 5866)]

private theorem c0097_intervals_eq :
    witnessIntervals c0097_witnesses = c0097_intervals := by
  rfl

private theorem c0097_checks : witnessesCheck c0097_witnesses = true := by
  simp only [witnessesCheck, c0097_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk082.w14_check, B699LowIndex.I11TerminalData.Chunk082.w15_check, Bool.and_self]

private theorem c0097_cover : coverCheck 5856 5866 c0097_intervals = true := by
  decide

private theorem c0097_sound : IntervalSound (5856, 5866) := by
  have hc : coverCheck 5856 5866 (witnessIntervals c0097_witnesses) = true := by
    rw [c0097_intervals_eq]
    exact c0097_cover
  exact interval_sound_of_witness_checks (witnesses := c0097_witnesses)
    (lo := 5856) (hi := 5866) c0097_checks hc

private def c0098_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk083.w0, B699LowIndex.I11TerminalData.Chunk083.w1, B699LowIndex.I11TerminalData.Chunk083.w2, B699LowIndex.I11TerminalData.Chunk083.w3, B699LowIndex.I11TerminalData.Chunk083.w4, B699LowIndex.I11TerminalData.Chunk083.w5, B699LowIndex.I11TerminalData.Chunk083.w6, B699LowIndex.I11TerminalData.Chunk083.w7]
private def c0098_intervals : List NatInterval := [(5875, 5879), (5880, 5889), (5890, 5891), (5892, 5892), (5893, 5893), (5894, 5894), (5895, 5895), (5896, 5896)]

private theorem c0098_intervals_eq :
    witnessIntervals c0098_witnesses = c0098_intervals := by
  rfl

private theorem c0098_checks : witnessesCheck c0098_witnesses = true := by
  simp only [witnessesCheck, c0098_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk083.w0_check, B699LowIndex.I11TerminalData.Chunk083.w1_check, B699LowIndex.I11TerminalData.Chunk083.w2_check, B699LowIndex.I11TerminalData.Chunk083.w3_check, B699LowIndex.I11TerminalData.Chunk083.w4_check, B699LowIndex.I11TerminalData.Chunk083.w5_check, B699LowIndex.I11TerminalData.Chunk083.w6_check, B699LowIndex.I11TerminalData.Chunk083.w7_check, Bool.and_self]

private theorem c0098_cover : coverCheck 5875 5896 c0098_intervals = true := by
  decide

private theorem c0098_sound : IntervalSound (5875, 5896) := by
  have hc : coverCheck 5875 5896 (witnessIntervals c0098_witnesses) = true := by
    rw [c0098_intervals_eq]
    exact c0098_cover
  exact interval_sound_of_witness_checks (witnesses := c0098_witnesses)
    (lo := 5875) (hi := 5896) c0098_checks hc

private def c0099_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk083.w8]
private def c0099_intervals : List NatInterval := [(5904, 5910)]

private theorem c0099_intervals_eq :
    witnessIntervals c0099_witnesses = c0099_intervals := by
  rfl

private theorem c0099_checks : witnessesCheck c0099_witnesses = true := by
  simp only [witnessesCheck, c0099_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk083.w8_check, Bool.and_self]

private theorem c0099_cover : coverCheck 5904 5910 c0099_intervals = true := by
  decide

private theorem c0099_sound : IntervalSound (5904, 5910) := by
  have hc : coverCheck 5904 5910 (witnessIntervals c0099_witnesses) = true := by
    rw [c0099_intervals_eq]
    exact c0099_cover
  exact interval_sound_of_witness_checks (witnesses := c0099_witnesses)
    (lo := 5904) (hi := 5910) c0099_checks hc

private def c0100_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk083.w9, B699LowIndex.I11TerminalData.Chunk083.w10]
private def c0100_intervals : List NatInterval := [(5913, 5913), (5914, 5914)]

private theorem c0100_intervals_eq :
    witnessIntervals c0100_witnesses = c0100_intervals := by
  rfl

private theorem c0100_checks : witnessesCheck c0100_witnesses = true := by
  simp only [witnessesCheck, c0100_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk083.w9_check, B699LowIndex.I11TerminalData.Chunk083.w10_check, Bool.and_self]

private theorem c0100_cover : coverCheck 5913 5914 c0100_intervals = true := by
  decide

private theorem c0100_sound : IntervalSound (5913, 5914) := by
  have hc : coverCheck 5913 5914 (witnessIntervals c0100_witnesses) = true := by
    rw [c0100_intervals_eq]
    exact c0100_cover
  exact interval_sound_of_witness_checks (witnesses := c0100_witnesses)
    (lo := 5913) (hi := 5914) c0100_checks hc

private def c0101_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk083.w11, B699LowIndex.I11TerminalData.Chunk083.w12, B699LowIndex.I11TerminalData.Chunk083.w13, B699LowIndex.I11TerminalData.Chunk083.w14]
private def c0101_intervals : List NatInterval := [(5920, 5920), (5921, 5921), (5922, 5922), (5923, 5923)]

private theorem c0101_intervals_eq :
    witnessIntervals c0101_witnesses = c0101_intervals := by
  rfl

private theorem c0101_checks : witnessesCheck c0101_witnesses = true := by
  simp only [witnessesCheck, c0101_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk083.w11_check, B699LowIndex.I11TerminalData.Chunk083.w12_check, B699LowIndex.I11TerminalData.Chunk083.w13_check, B699LowIndex.I11TerminalData.Chunk083.w14_check, Bool.and_self]

private theorem c0101_cover : coverCheck 5920 5923 c0101_intervals = true := by
  decide

private theorem c0101_sound : IntervalSound (5920, 5923) := by
  have hc : coverCheck 5920 5923 (witnessIntervals c0101_witnesses) = true := by
    rw [c0101_intervals_eq]
    exact c0101_cover
  exact interval_sound_of_witness_checks (witnesses := c0101_witnesses)
    (lo := 5920) (hi := 5923) c0101_checks hc

private def c0102_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk083.w15, B699LowIndex.I11TerminalData.Chunk084.w0, B699LowIndex.I11TerminalData.Chunk084.w1, B699LowIndex.I11TerminalData.Chunk084.w2]
private def c0102_intervals : List NatInterval := [(5925, 5933), (5934, 5937), (5938, 5938), (5939, 5946)]

private theorem c0102_intervals_eq :
    witnessIntervals c0102_witnesses = c0102_intervals := by
  rfl

private theorem c0102_checks : witnessesCheck c0102_witnesses = true := by
  simp only [witnessesCheck, c0102_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk083.w15_check, B699LowIndex.I11TerminalData.Chunk084.w0_check, B699LowIndex.I11TerminalData.Chunk084.w1_check, B699LowIndex.I11TerminalData.Chunk084.w2_check, Bool.and_self]

private theorem c0102_cover : coverCheck 5925 5946 c0102_intervals = true := by
  decide

private theorem c0102_sound : IntervalSound (5925, 5946) := by
  have hc : coverCheck 5925 5946 (witnessIntervals c0102_witnesses) = true := by
    rw [c0102_intervals_eq]
    exact c0102_cover
  exact interval_sound_of_witness_checks (witnesses := c0102_witnesses)
    (lo := 5925) (hi := 5946) c0102_checks hc

private def c0103_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk084.w3]
private def c0103_intervals : List NatInterval := [(5950, 5950)]

private theorem c0103_intervals_eq :
    witnessIntervals c0103_witnesses = c0103_intervals := by
  rfl

private theorem c0103_checks : witnessesCheck c0103_witnesses = true := by
  simp only [witnessesCheck, c0103_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk084.w3_check, Bool.and_self]

private theorem c0103_cover : coverCheck 5950 5950 c0103_intervals = true := by
  decide

private theorem c0103_sound : IntervalSound (5950, 5950) := by
  have hc : coverCheck 5950 5950 (witnessIntervals c0103_witnesses) = true := by
    rw [c0103_intervals_eq]
    exact c0103_cover
  exact interval_sound_of_witness_checks (witnesses := c0103_witnesses)
    (lo := 5950) (hi := 5950) c0103_checks hc

private def c0104_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk084.w4, B699LowIndex.I11TerminalData.Chunk084.w5]
private def c0104_intervals : List NatInterval := [(5952, 5952), (5953, 5960)]

private theorem c0104_intervals_eq :
    witnessIntervals c0104_witnesses = c0104_intervals := by
  rfl

private theorem c0104_checks : witnessesCheck c0104_witnesses = true := by
  simp only [witnessesCheck, c0104_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk084.w4_check, B699LowIndex.I11TerminalData.Chunk084.w5_check, Bool.and_self]

private theorem c0104_cover : coverCheck 5952 5960 c0104_intervals = true := by
  decide

private theorem c0104_sound : IntervalSound (5952, 5960) := by
  have hc : coverCheck 5952 5960 (witnessIntervals c0104_witnesses) = true := by
    rw [c0104_intervals_eq]
    exact c0104_cover
  exact interval_sound_of_witness_checks (witnesses := c0104_witnesses)
    (lo := 5952) (hi := 5960) c0104_checks hc

private def c0105_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk084.w6, B699LowIndex.I11TerminalData.Chunk084.w7, B699LowIndex.I11TerminalData.Chunk084.w8, B699LowIndex.I11TerminalData.Chunk084.w9, B699LowIndex.I11TerminalData.Chunk084.w10, B699LowIndex.I11TerminalData.Chunk084.w11, B699LowIndex.I11TerminalData.Chunk084.w12, B699LowIndex.I11TerminalData.Chunk084.w13, B699LowIndex.I11TerminalData.Chunk084.w14, B699LowIndex.I11TerminalData.Chunk084.w15, B699LowIndex.I11TerminalData.Chunk085.w0, B699LowIndex.I11TerminalData.Chunk085.w1, B699LowIndex.I11TerminalData.Chunk085.w2, B699LowIndex.I11TerminalData.Chunk085.w3]
private def c0105_intervals : List NatInterval := [(5968, 5968), (5969, 5969), (5970, 5970), (5971, 5971), (5972, 5972), (5973, 5973), (5974, 5974), (5975, 5975), (5976, 5976), (5977, 5977), (5978, 5978), (5979, 5979), (5980, 5980), (5981, 5988)]

private theorem c0105_intervals_eq :
    witnessIntervals c0105_witnesses = c0105_intervals := by
  rfl

private theorem c0105_checks : witnessesCheck c0105_witnesses = true := by
  simp only [witnessesCheck, c0105_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk084.w6_check, B699LowIndex.I11TerminalData.Chunk084.w7_check, B699LowIndex.I11TerminalData.Chunk084.w8_check, B699LowIndex.I11TerminalData.Chunk084.w9_check, B699LowIndex.I11TerminalData.Chunk084.w10_check, B699LowIndex.I11TerminalData.Chunk084.w11_check, B699LowIndex.I11TerminalData.Chunk084.w12_check, B699LowIndex.I11TerminalData.Chunk084.w13_check, B699LowIndex.I11TerminalData.Chunk084.w14_check, B699LowIndex.I11TerminalData.Chunk084.w15_check, B699LowIndex.I11TerminalData.Chunk085.w0_check, B699LowIndex.I11TerminalData.Chunk085.w1_check, B699LowIndex.I11TerminalData.Chunk085.w2_check, B699LowIndex.I11TerminalData.Chunk085.w3_check, Bool.and_self]

private theorem c0105_cover : coverCheck 5968 5988 c0105_intervals = true := by
  decide

private theorem c0105_sound : IntervalSound (5968, 5988) := by
  have hc : coverCheck 5968 5988 (witnessIntervals c0105_witnesses) = true := by
    rw [c0105_intervals_eq]
    exact c0105_cover
  exact interval_sound_of_witness_checks (witnesses := c0105_witnesses)
    (lo := 5968) (hi := 5988) c0105_checks hc

private def c0106_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk085.w4]
private def c0106_intervals : List NatInterval := [(5994, 5994)]

private theorem c0106_intervals_eq :
    witnessIntervals c0106_witnesses = c0106_intervals := by
  rfl

private theorem c0106_checks : witnessesCheck c0106_witnesses = true := by
  simp only [witnessesCheck, c0106_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk085.w4_check, Bool.and_self]

private theorem c0106_cover : coverCheck 5994 5994 c0106_intervals = true := by
  decide

private theorem c0106_sound : IntervalSound (5994, 5994) := by
  have hc : coverCheck 5994 5994 (witnessIntervals c0106_witnesses) = true := by
    rw [c0106_intervals_eq]
    exact c0106_cover
  exact interval_sound_of_witness_checks (witnesses := c0106_witnesses)
    (lo := 5994) (hi := 5994) c0106_checks hc

private def c0107_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk085.w5, B699LowIndex.I11TerminalData.Chunk085.w6, B699LowIndex.I11TerminalData.Chunk085.w7, B699LowIndex.I11TerminalData.Chunk085.w8, B699LowIndex.I11TerminalData.Chunk085.w9, B699LowIndex.I11TerminalData.Chunk085.w10, B699LowIndex.I11TerminalData.Chunk085.w11, B699LowIndex.I11TerminalData.Chunk085.w12]
private def c0107_intervals : List NatInterval := [(6000, 6000), (6001, 6001), (6002, 6002), (6003, 6003), (6004, 6004), (6005, 6005), (6006, 6006), (6007, 6010)]

private theorem c0107_intervals_eq :
    witnessIntervals c0107_witnesses = c0107_intervals := by
  rfl

private theorem c0107_checks : witnessesCheck c0107_witnesses = true := by
  simp only [witnessesCheck, c0107_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk085.w5_check, B699LowIndex.I11TerminalData.Chunk085.w6_check, B699LowIndex.I11TerminalData.Chunk085.w7_check, B699LowIndex.I11TerminalData.Chunk085.w8_check, B699LowIndex.I11TerminalData.Chunk085.w9_check, B699LowIndex.I11TerminalData.Chunk085.w10_check, B699LowIndex.I11TerminalData.Chunk085.w11_check, B699LowIndex.I11TerminalData.Chunk085.w12_check, Bool.and_self]

private theorem c0107_cover : coverCheck 6000 6010 c0107_intervals = true := by
  decide

private theorem c0107_sound : IntervalSound (6000, 6010) := by
  have hc : coverCheck 6000 6010 (witnessIntervals c0107_witnesses) = true := by
    rw [c0107_intervals_eq]
    exact c0107_cover
  exact interval_sound_of_witness_checks (witnesses := c0107_witnesses)
    (lo := 6000) (hi := 6010) c0107_checks hc

private def c0108_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk085.w13, B699LowIndex.I11TerminalData.Chunk085.w14, B699LowIndex.I11TerminalData.Chunk085.w15, B699LowIndex.I11TerminalData.Chunk086.w0, B699LowIndex.I11TerminalData.Chunk086.w1, B699LowIndex.I11TerminalData.Chunk086.w2, B699LowIndex.I11TerminalData.Chunk086.w3, B699LowIndex.I11TerminalData.Chunk086.w4, B699LowIndex.I11TerminalData.Chunk086.w5]
private def c0108_intervals : List NatInterval := [(6021, 6021), (6022, 6022), (6023, 6023), (6024, 6024), (6025, 6025), (6026, 6026), (6027, 6027), (6028, 6028), (6029, 6037)]

private theorem c0108_intervals_eq :
    witnessIntervals c0108_witnesses = c0108_intervals := by
  rfl

private theorem c0108_checks : witnessesCheck c0108_witnesses = true := by
  simp only [witnessesCheck, c0108_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk085.w13_check, B699LowIndex.I11TerminalData.Chunk085.w14_check, B699LowIndex.I11TerminalData.Chunk085.w15_check, B699LowIndex.I11TerminalData.Chunk086.w0_check, B699LowIndex.I11TerminalData.Chunk086.w1_check, B699LowIndex.I11TerminalData.Chunk086.w2_check, B699LowIndex.I11TerminalData.Chunk086.w3_check, B699LowIndex.I11TerminalData.Chunk086.w4_check, B699LowIndex.I11TerminalData.Chunk086.w5_check, Bool.and_self]

private theorem c0108_cover : coverCheck 6021 6037 c0108_intervals = true := by
  decide

private theorem c0108_sound : IntervalSound (6021, 6037) := by
  have hc : coverCheck 6021 6037 (witnessIntervals c0108_witnesses) = true := by
    rw [c0108_intervals_eq]
    exact c0108_cover
  exact interval_sound_of_witness_checks (witnesses := c0108_witnesses)
    (lo := 6021) (hi := 6037) c0108_checks hc

private def c0109_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk086.w6, B699LowIndex.I11TerminalData.Chunk086.w7]
private def c0109_intervals : List NatInterval := [(6048, 6057), (6058, 6058)]

private theorem c0109_intervals_eq :
    witnessIntervals c0109_witnesses = c0109_intervals := by
  rfl

private theorem c0109_checks : witnessesCheck c0109_witnesses = true := by
  simp only [witnessesCheck, c0109_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk086.w6_check, B699LowIndex.I11TerminalData.Chunk086.w7_check, Bool.and_self]

private theorem c0109_cover : coverCheck 6048 6058 c0109_intervals = true := by
  decide

private theorem c0109_sound : IntervalSound (6048, 6058) := by
  have hc : coverCheck 6048 6058 (witnessIntervals c0109_witnesses) = true := by
    rw [c0109_intervals_eq]
    exact c0109_cover
  exact interval_sound_of_witness_checks (witnesses := c0109_witnesses)
    (lo := 6048) (hi := 6058) c0109_checks hc

private def c0110_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk086.w8, B699LowIndex.I11TerminalData.Chunk086.w9]
private def c0110_intervals : List NatInterval := [(6075, 6083), (6084, 6086)]

private theorem c0110_intervals_eq :
    witnessIntervals c0110_witnesses = c0110_intervals := by
  rfl

private theorem c0110_checks : witnessesCheck c0110_witnesses = true := by
  simp only [witnessesCheck, c0110_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk086.w8_check, B699LowIndex.I11TerminalData.Chunk086.w9_check, Bool.and_self]

private theorem c0110_cover : coverCheck 6075 6086 c0110_intervals = true := by
  decide

private theorem c0110_sound : IntervalSound (6075, 6086) := by
  have hc : coverCheck 6075 6086 (witnessIntervals c0110_witnesses) = true := by
    rw [c0110_intervals_eq]
    exact c0110_cover
  exact interval_sound_of_witness_checks (witnesses := c0110_witnesses)
    (lo := 6075) (hi := 6086) c0110_checks hc

private def c0111_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk086.w10, B699LowIndex.I11TerminalData.Chunk086.w11]
private def c0111_intervals : List NatInterval := [(6100, 6101), (6102, 6110)]

private theorem c0111_intervals_eq :
    witnessIntervals c0111_witnesses = c0111_intervals := by
  rfl

private theorem c0111_checks : witnessesCheck c0111_witnesses = true := by
  simp only [witnessesCheck, c0111_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk086.w10_check, B699LowIndex.I11TerminalData.Chunk086.w11_check, Bool.and_self]

private theorem c0111_cover : coverCheck 6100 6110 c0111_intervals = true := by
  decide

private theorem c0111_sound : IntervalSound (6100, 6110) := by
  have hc : coverCheck 6100 6110 (witnessIntervals c0111_witnesses) = true := by
    rw [c0111_intervals_eq]
    exact c0111_cover
  exact interval_sound_of_witness_checks (witnesses := c0111_witnesses)
    (lo := 6100) (hi := 6110) c0111_checks hc

def intervals : List NatInterval := [(5850, 5850), (5856, 5866), (5875, 5896), (5904, 5910), (5913, 5914), (5920, 5923), (5925, 5946), (5950, 5950), (5952, 5960), (5968, 5988), (5994, 5994), (6000, 6010), (6021, 6037), (6048, 6058), (6075, 6086), (6100, 6110)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (5850, 5850)) (intervals := [(5856, 5866), (5875, 5896), (5904, 5910), (5913, 5914), (5920, 5923), (5925, 5946), (5950, 5950), (5952, 5960), (5968, 5988), (5994, 5994), (6000, 6010), (6021, 6037), (6048, 6058), (6075, 6086), (6100, 6110)]) c0096_sound (intervals_sound_cons (I := (5856, 5866)) (intervals := [(5875, 5896), (5904, 5910), (5913, 5914), (5920, 5923), (5925, 5946), (5950, 5950), (5952, 5960), (5968, 5988), (5994, 5994), (6000, 6010), (6021, 6037), (6048, 6058), (6075, 6086), (6100, 6110)]) c0097_sound (intervals_sound_cons (I := (5875, 5896)) (intervals := [(5904, 5910), (5913, 5914), (5920, 5923), (5925, 5946), (5950, 5950), (5952, 5960), (5968, 5988), (5994, 5994), (6000, 6010), (6021, 6037), (6048, 6058), (6075, 6086), (6100, 6110)]) c0098_sound (intervals_sound_cons (I := (5904, 5910)) (intervals := [(5913, 5914), (5920, 5923), (5925, 5946), (5950, 5950), (5952, 5960), (5968, 5988), (5994, 5994), (6000, 6010), (6021, 6037), (6048, 6058), (6075, 6086), (6100, 6110)]) c0099_sound (intervals_sound_cons (I := (5913, 5914)) (intervals := [(5920, 5923), (5925, 5946), (5950, 5950), (5952, 5960), (5968, 5988), (5994, 5994), (6000, 6010), (6021, 6037), (6048, 6058), (6075, 6086), (6100, 6110)]) c0100_sound (intervals_sound_cons (I := (5920, 5923)) (intervals := [(5925, 5946), (5950, 5950), (5952, 5960), (5968, 5988), (5994, 5994), (6000, 6010), (6021, 6037), (6048, 6058), (6075, 6086), (6100, 6110)]) c0101_sound (intervals_sound_cons (I := (5925, 5946)) (intervals := [(5950, 5950), (5952, 5960), (5968, 5988), (5994, 5994), (6000, 6010), (6021, 6037), (6048, 6058), (6075, 6086), (6100, 6110)]) c0102_sound (intervals_sound_cons (I := (5950, 5950)) (intervals := [(5952, 5960), (5968, 5988), (5994, 5994), (6000, 6010), (6021, 6037), (6048, 6058), (6075, 6086), (6100, 6110)]) c0103_sound (intervals_sound_cons (I := (5952, 5960)) (intervals := [(5968, 5988), (5994, 5994), (6000, 6010), (6021, 6037), (6048, 6058), (6075, 6086), (6100, 6110)]) c0104_sound (intervals_sound_cons (I := (5968, 5988)) (intervals := [(5994, 5994), (6000, 6010), (6021, 6037), (6048, 6058), (6075, 6086), (6100, 6110)]) c0105_sound (intervals_sound_cons (I := (5994, 5994)) (intervals := [(6000, 6010), (6021, 6037), (6048, 6058), (6075, 6086), (6100, 6110)]) c0106_sound (intervals_sound_cons (I := (6000, 6010)) (intervals := [(6021, 6037), (6048, 6058), (6075, 6086), (6100, 6110)]) c0107_sound (intervals_sound_cons (I := (6021, 6037)) (intervals := [(6048, 6058), (6075, 6086), (6100, 6110)]) c0108_sound (intervals_sound_cons (I := (6048, 6058)) (intervals := [(6075, 6086), (6100, 6110)]) c0109_sound (intervals_sound_cons (I := (6075, 6086)) (intervals := [(6100, 6110)]) c0110_sound (intervals_sound_cons (I := (6100, 6110)) (intervals := []) c0111_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G006
