import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk141
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk142
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk143
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk144

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G025
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0400_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk141.w1]
private def c0400_intervals : List NatInterval := [(10950, 10954)]

private theorem c0400_intervals_eq :
    witnessIntervals c0400_witnesses = c0400_intervals := by
  rfl

private theorem c0400_checks : witnessesCheck c0400_witnesses = true := by
  simp only [witnessesCheck, c0400_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk141.w1_check, Bool.and_self]

private theorem c0400_cover : coverCheck 10950 10954 c0400_intervals = true := by
  decide

private theorem c0400_sound : IntervalSound (10950, 10954) := by
  have hc : coverCheck 10950 10954 (witnessIntervals c0400_witnesses) = true := by
    rw [c0400_intervals_eq]
    exact c0400_cover
  exact interval_sound_of_witness_checks (witnesses := c0400_witnesses)
    (lo := 10950) (hi := 10954) c0400_checks hc

private def c0401_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk141.w2, B699LowIndex.I11TerminalData.Chunk141.w3]
private def c0401_intervals : List NatInterval := [(10976, 10983), (10984, 10986)]

private theorem c0401_intervals_eq :
    witnessIntervals c0401_witnesses = c0401_intervals := by
  rfl

private theorem c0401_checks : witnessesCheck c0401_witnesses = true := by
  simp only [witnessesCheck, c0401_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk141.w2_check, B699LowIndex.I11TerminalData.Chunk141.w3_check, Bool.and_self]

private theorem c0401_cover : coverCheck 10976 10986 c0401_intervals = true := by
  decide

private theorem c0401_sound : IntervalSound (10976, 10986) := by
  have hc : coverCheck 10976 10986 (witnessIntervals c0401_witnesses) = true := by
    rw [c0401_intervals_eq]
    exact c0401_cover
  exact interval_sound_of_witness_checks (witnesses := c0401_witnesses)
    (lo := 10976) (hi := 10986) c0401_checks hc

private def c0402_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk141.w4]
private def c0402_intervals : List NatInterval := [(11008, 11010)]

private theorem c0402_intervals_eq :
    witnessIntervals c0402_witnesses = c0402_intervals := by
  rfl

private theorem c0402_checks : witnessesCheck c0402_witnesses = true := by
  simp only [witnessesCheck, c0402_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk141.w4_check, Bool.and_self]

private theorem c0402_cover : coverCheck 11008 11010 c0402_intervals = true := by
  decide

private theorem c0402_sound : IntervalSound (11008, 11010) := by
  have hc : coverCheck 11008 11010 (witnessIntervals c0402_witnesses) = true := by
    rw [c0402_intervals_eq]
    exact c0402_cover
  exact interval_sound_of_witness_checks (witnesses := c0402_witnesses)
    (lo := 11008) (hi := 11010) c0402_checks hc

private def c0403_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk141.w5, B699LowIndex.I11TerminalData.Chunk141.w6, B699LowIndex.I11TerminalData.Chunk141.w7]
private def c0403_intervals : List NatInterval := [(11016, 11016), (11017, 11017), (11018, 11018)]

private theorem c0403_intervals_eq :
    witnessIntervals c0403_witnesses = c0403_intervals := by
  rfl

private theorem c0403_checks : witnessesCheck c0403_witnesses = true := by
  simp only [witnessesCheck, c0403_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk141.w5_check, B699LowIndex.I11TerminalData.Chunk141.w6_check, B699LowIndex.I11TerminalData.Chunk141.w7_check, Bool.and_self]

private theorem c0403_cover : coverCheck 11016 11018 c0403_intervals = true := by
  decide

private theorem c0403_sound : IntervalSound (11016, 11018) := by
  have hc : coverCheck 11016 11018 (witnessIntervals c0403_witnesses) = true := by
    rw [c0403_intervals_eq]
    exact c0403_cover
  exact interval_sound_of_witness_checks (witnesses := c0403_witnesses)
    (lo := 11016) (hi := 11018) c0403_checks hc

private def c0404_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk141.w8, B699LowIndex.I11TerminalData.Chunk141.w9, B699LowIndex.I11TerminalData.Chunk141.w10]
private def c0404_intervals : List NatInterval := [(11025, 11025), (11026, 11026), (11027, 11035)]

private theorem c0404_intervals_eq :
    witnessIntervals c0404_witnesses = c0404_intervals := by
  rfl

private theorem c0404_checks : witnessesCheck c0404_witnesses = true := by
  simp only [witnessesCheck, c0404_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk141.w8_check, B699LowIndex.I11TerminalData.Chunk141.w9_check, B699LowIndex.I11TerminalData.Chunk141.w10_check, Bool.and_self]

private theorem c0404_cover : coverCheck 11025 11035 c0404_intervals = true := by
  decide

private theorem c0404_sound : IntervalSound (11025, 11035) := by
  have hc : coverCheck 11025 11035 (witnessIntervals c0404_witnesses) = true := by
    rw [c0404_intervals_eq]
    exact c0404_cover
  exact interval_sound_of_witness_checks (witnesses := c0404_witnesses)
    (lo := 11025) (hi := 11035) c0404_checks hc

private def c0405_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk141.w11, B699LowIndex.I11TerminalData.Chunk141.w12, B699LowIndex.I11TerminalData.Chunk141.w13, B699LowIndex.I11TerminalData.Chunk141.w14, B699LowIndex.I11TerminalData.Chunk141.w15]
private def c0405_intervals : List NatInterval := [(11043, 11043), (11044, 11044), (11045, 11045), (11046, 11046), (11047, 11053)]

private theorem c0405_intervals_eq :
    witnessIntervals c0405_witnesses = c0405_intervals := by
  rfl

private theorem c0405_checks : witnessesCheck c0405_witnesses = true := by
  simp only [witnessesCheck, c0405_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk141.w11_check, B699LowIndex.I11TerminalData.Chunk141.w12_check, B699LowIndex.I11TerminalData.Chunk141.w13_check, B699LowIndex.I11TerminalData.Chunk141.w14_check, B699LowIndex.I11TerminalData.Chunk141.w15_check, Bool.and_self]

private theorem c0405_cover : coverCheck 11043 11053 c0405_intervals = true := by
  decide

private theorem c0405_sound : IntervalSound (11043, 11053) := by
  have hc : coverCheck 11043 11053 (witnessIntervals c0405_witnesses) = true := by
    rw [c0405_intervals_eq]
    exact c0405_cover
  exact interval_sound_of_witness_checks (witnesses := c0405_witnesses)
    (lo := 11043) (hi := 11053) c0405_checks hc

private def c0406_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk142.w0, B699LowIndex.I11TerminalData.Chunk142.w1, B699LowIndex.I11TerminalData.Chunk142.w2]
private def c0406_intervals : List NatInterval := [(11072, 11081), (11082, 11082), (11083, 11084)]

private theorem c0406_intervals_eq :
    witnessIntervals c0406_witnesses = c0406_intervals := by
  rfl

private theorem c0406_checks : witnessesCheck c0406_witnesses = true := by
  simp only [witnessesCheck, c0406_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk142.w0_check, B699LowIndex.I11TerminalData.Chunk142.w1_check, B699LowIndex.I11TerminalData.Chunk142.w2_check, Bool.and_self]

private theorem c0406_cover : coverCheck 11072 11084 c0406_intervals = true := by
  decide

private theorem c0406_sound : IntervalSound (11072, 11084) := by
  have hc : coverCheck 11072 11084 (witnessIntervals c0406_witnesses) = true := by
    rw [c0406_intervals_eq]
    exact c0406_cover
  exact interval_sound_of_witness_checks (witnesses := c0406_witnesses)
    (lo := 11072) (hi := 11084) c0406_checks hc

private def c0407_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk142.w3, B699LowIndex.I11TerminalData.Chunk142.w4, B699LowIndex.I11TerminalData.Chunk142.w5, B699LowIndex.I11TerminalData.Chunk142.w6, B699LowIndex.I11TerminalData.Chunk142.w7, B699LowIndex.I11TerminalData.Chunk142.w8, B699LowIndex.I11TerminalData.Chunk142.w9, B699LowIndex.I11TerminalData.Chunk142.w10]
private def c0407_intervals : List NatInterval := [(11100, 11103), (11104, 11104), (11105, 11105), (11106, 11106), (11107, 11107), (11108, 11108), (11109, 11109), (11110, 11110)]

private theorem c0407_intervals_eq :
    witnessIntervals c0407_witnesses = c0407_intervals := by
  rfl

private theorem c0407_checks : witnessesCheck c0407_witnesses = true := by
  simp only [witnessesCheck, c0407_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk142.w3_check, B699LowIndex.I11TerminalData.Chunk142.w4_check, B699LowIndex.I11TerminalData.Chunk142.w5_check, B699LowIndex.I11TerminalData.Chunk142.w6_check, B699LowIndex.I11TerminalData.Chunk142.w7_check, B699LowIndex.I11TerminalData.Chunk142.w8_check, B699LowIndex.I11TerminalData.Chunk142.w9_check, B699LowIndex.I11TerminalData.Chunk142.w10_check, Bool.and_self]

private theorem c0407_cover : coverCheck 11100 11110 c0407_intervals = true := by
  decide

private theorem c0407_sound : IntervalSound (11100, 11110) := by
  have hc : coverCheck 11100 11110 (witnessIntervals c0407_witnesses) = true := by
    rw [c0407_intervals_eq]
    exact c0407_cover
  exact interval_sound_of_witness_checks (witnesses := c0407_witnesses)
    (lo := 11100) (hi := 11110) c0407_checks hc

private def c0408_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk142.w11, B699LowIndex.I11TerminalData.Chunk142.w12, B699LowIndex.I11TerminalData.Chunk142.w13]
private def c0408_intervals : List NatInterval := [(11124, 11129), (11130, 11130), (11131, 11134)]

private theorem c0408_intervals_eq :
    witnessIntervals c0408_witnesses = c0408_intervals := by
  rfl

private theorem c0408_checks : witnessesCheck c0408_witnesses = true := by
  simp only [witnessesCheck, c0408_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk142.w11_check, B699LowIndex.I11TerminalData.Chunk142.w12_check, B699LowIndex.I11TerminalData.Chunk142.w13_check, Bool.and_self]

private theorem c0408_cover : coverCheck 11124 11134 c0408_intervals = true := by
  decide

private theorem c0408_sound : IntervalSound (11124, 11134) := by
  have hc : coverCheck 11124 11134 (witnessIntervals c0408_witnesses) = true := by
    rw [c0408_intervals_eq]
    exact c0408_cover
  exact interval_sound_of_witness_checks (witnesses := c0408_witnesses)
    (lo := 11124) (hi := 11134) c0408_checks hc

private def c0409_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk142.w14, B699LowIndex.I11TerminalData.Chunk142.w15]
private def c0409_intervals : List NatInterval := [(11151, 11159), (11160, 11160)]

private theorem c0409_intervals_eq :
    witnessIntervals c0409_witnesses = c0409_intervals := by
  rfl

private theorem c0409_checks : witnessesCheck c0409_witnesses = true := by
  simp only [witnessesCheck, c0409_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk142.w14_check, B699LowIndex.I11TerminalData.Chunk142.w15_check, Bool.and_self]

private theorem c0409_cover : coverCheck 11151 11160 c0409_intervals = true := by
  decide

private theorem c0409_sound : IntervalSound (11151, 11160) := by
  have hc : coverCheck 11151 11160 (witnessIntervals c0409_witnesses) = true := by
    rw [c0409_intervals_eq]
    exact c0409_cover
  exact interval_sound_of_witness_checks (witnesses := c0409_witnesses)
    (lo := 11151) (hi := 11160) c0409_checks hc

private def c0410_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk143.w0, B699LowIndex.I11TerminalData.Chunk143.w1]
private def c0410_intervals : List NatInterval := [(11172, 11181), (11182, 11185)]

private theorem c0410_intervals_eq :
    witnessIntervals c0410_witnesses = c0410_intervals := by
  rfl

private theorem c0410_checks : witnessesCheck c0410_witnesses = true := by
  simp only [witnessesCheck, c0410_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk143.w0_check, B699LowIndex.I11TerminalData.Chunk143.w1_check, Bool.and_self]

private theorem c0410_cover : coverCheck 11172 11185 c0410_intervals = true := by
  decide

private theorem c0410_sound : IntervalSound (11172, 11185) := by
  have hc : coverCheck 11172 11185 (witnessIntervals c0410_witnesses) = true := by
    rw [c0410_intervals_eq]
    exact c0410_cover
  exact interval_sound_of_witness_checks (witnesses := c0410_witnesses)
    (lo := 11172) (hi := 11185) c0410_checks hc

private def c0411_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk143.w2, B699LowIndex.I11TerminalData.Chunk143.w3, B699LowIndex.I11TerminalData.Chunk143.w4, B699LowIndex.I11TerminalData.Chunk143.w5]
private def c0411_intervals : List NatInterval := [(11200, 11207), (11208, 11208), (11209, 11209), (11210, 11210)]

private theorem c0411_intervals_eq :
    witnessIntervals c0411_witnesses = c0411_intervals := by
  rfl

private theorem c0411_checks : witnessesCheck c0411_witnesses = true := by
  simp only [witnessesCheck, c0411_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk143.w2_check, B699LowIndex.I11TerminalData.Chunk143.w3_check, B699LowIndex.I11TerminalData.Chunk143.w4_check, B699LowIndex.I11TerminalData.Chunk143.w5_check, Bool.and_self]

private theorem c0411_cover : coverCheck 11200 11210 c0411_intervals = true := by
  decide

private theorem c0411_sound : IntervalSound (11200, 11210) := by
  have hc : coverCheck 11200 11210 (witnessIntervals c0411_witnesses) = true := by
    rw [c0411_intervals_eq]
    exact c0411_cover
  exact interval_sound_of_witness_checks (witnesses := c0411_witnesses)
    (lo := 11200) (hi := 11210) c0411_checks hc

private def c0412_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk143.w6, B699LowIndex.I11TerminalData.Chunk143.w7, B699LowIndex.I11TerminalData.Chunk143.w8, B699LowIndex.I11TerminalData.Chunk143.w9, B699LowIndex.I11TerminalData.Chunk143.w10, B699LowIndex.I11TerminalData.Chunk143.w11, B699LowIndex.I11TerminalData.Chunk143.w12, B699LowIndex.I11TerminalData.Chunk143.w13, B699LowIndex.I11TerminalData.Chunk143.w14, B699LowIndex.I11TerminalData.Chunk143.w15, B699LowIndex.I11TerminalData.Chunk144.w0, B699LowIndex.I11TerminalData.Chunk144.w1, B699LowIndex.I11TerminalData.Chunk144.w2, B699LowIndex.I11TerminalData.Chunk144.w3, B699LowIndex.I11TerminalData.Chunk144.w4]
private def c0412_intervals : List NatInterval := [(11225, 11225), (11226, 11226), (11227, 11227), (11228, 11228), (11229, 11229), (11230, 11230), (11231, 11231), (11232, 11232), (11233, 11233), (11234, 11234), (11235, 11235), (11236, 11236), (11237, 11237), (11238, 11238), (11239, 11242)]

private theorem c0412_intervals_eq :
    witnessIntervals c0412_witnesses = c0412_intervals := by
  rfl

private theorem c0412_checks : witnessesCheck c0412_witnesses = true := by
  simp only [witnessesCheck, c0412_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk143.w6_check, B699LowIndex.I11TerminalData.Chunk143.w7_check, B699LowIndex.I11TerminalData.Chunk143.w8_check, B699LowIndex.I11TerminalData.Chunk143.w9_check, B699LowIndex.I11TerminalData.Chunk143.w10_check, B699LowIndex.I11TerminalData.Chunk143.w11_check, B699LowIndex.I11TerminalData.Chunk143.w12_check, B699LowIndex.I11TerminalData.Chunk143.w13_check, B699LowIndex.I11TerminalData.Chunk143.w14_check, B699LowIndex.I11TerminalData.Chunk143.w15_check, B699LowIndex.I11TerminalData.Chunk144.w0_check, B699LowIndex.I11TerminalData.Chunk144.w1_check, B699LowIndex.I11TerminalData.Chunk144.w2_check, B699LowIndex.I11TerminalData.Chunk144.w3_check, B699LowIndex.I11TerminalData.Chunk144.w4_check, Bool.and_self]

private theorem c0412_cover : coverCheck 11225 11242 c0412_intervals = true := by
  decide

private theorem c0412_sound : IntervalSound (11225, 11242) := by
  have hc : coverCheck 11225 11242 (witnessIntervals c0412_witnesses) = true := by
    rw [c0412_intervals_eq]
    exact c0412_cover
  exact interval_sound_of_witness_checks (witnesses := c0412_witnesses)
    (lo := 11225) (hi := 11242) c0412_checks hc

private def c0413_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk144.w5]
private def c0413_intervals : List NatInterval := [(11259, 11260)]

private theorem c0413_intervals_eq :
    witnessIntervals c0413_witnesses = c0413_intervals := by
  rfl

private theorem c0413_checks : witnessesCheck c0413_witnesses = true := by
  simp only [witnessesCheck, c0413_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk144.w5_check, Bool.and_self]

private theorem c0413_cover : coverCheck 11259 11260 c0413_intervals = true := by
  decide

private theorem c0413_sound : IntervalSound (11259, 11260) := by
  have hc : coverCheck 11259 11260 (witnessIntervals c0413_witnesses) = true := by
    rw [c0413_intervals_eq]
    exact c0413_cover
  exact interval_sound_of_witness_checks (witnesses := c0413_witnesses)
    (lo := 11259) (hi := 11260) c0413_checks hc

private def c0414_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk144.w6, B699LowIndex.I11TerminalData.Chunk144.w7, B699LowIndex.I11TerminalData.Chunk144.w8]
private def c0414_intervals : List NatInterval := [(11264, 11271), (11272, 11272), (11273, 11280)]

private theorem c0414_intervals_eq :
    witnessIntervals c0414_witnesses = c0414_intervals := by
  rfl

private theorem c0414_checks : witnessesCheck c0414_witnesses = true := by
  simp only [witnessesCheck, c0414_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk144.w6_check, B699LowIndex.I11TerminalData.Chunk144.w7_check, B699LowIndex.I11TerminalData.Chunk144.w8_check, Bool.and_self]

private theorem c0414_cover : coverCheck 11264 11280 c0414_intervals = true := by
  decide

private theorem c0414_sound : IntervalSound (11264, 11280) := by
  have hc : coverCheck 11264 11280 (witnessIntervals c0414_witnesses) = true := by
    rw [c0414_intervals_eq]
    exact c0414_cover
  exact interval_sound_of_witness_checks (witnesses := c0414_witnesses)
    (lo := 11264) (hi := 11280) c0414_checks hc

private def c0415_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk144.w9]
private def c0415_intervals : List NatInterval := [(11296, 11296)]

private theorem c0415_intervals_eq :
    witnessIntervals c0415_witnesses = c0415_intervals := by
  rfl

private theorem c0415_checks : witnessesCheck c0415_witnesses = true := by
  simp only [witnessesCheck, c0415_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk144.w9_check, Bool.and_self]

private theorem c0415_cover : coverCheck 11296 11296 c0415_intervals = true := by
  decide

private theorem c0415_sound : IntervalSound (11296, 11296) := by
  have hc : coverCheck 11296 11296 (witnessIntervals c0415_witnesses) = true := by
    rw [c0415_intervals_eq]
    exact c0415_cover
  exact interval_sound_of_witness_checks (witnesses := c0415_witnesses)
    (lo := 11296) (hi := 11296) c0415_checks hc

def intervals : List NatInterval := [(10950, 10954), (10976, 10986), (11008, 11010), (11016, 11018), (11025, 11035), (11043, 11053), (11072, 11084), (11100, 11110), (11124, 11134), (11151, 11160), (11172, 11185), (11200, 11210), (11225, 11242), (11259, 11260), (11264, 11280), (11296, 11296)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (10950, 10954)) (intervals := [(10976, 10986), (11008, 11010), (11016, 11018), (11025, 11035), (11043, 11053), (11072, 11084), (11100, 11110), (11124, 11134), (11151, 11160), (11172, 11185), (11200, 11210), (11225, 11242), (11259, 11260), (11264, 11280), (11296, 11296)]) c0400_sound (intervals_sound_cons (I := (10976, 10986)) (intervals := [(11008, 11010), (11016, 11018), (11025, 11035), (11043, 11053), (11072, 11084), (11100, 11110), (11124, 11134), (11151, 11160), (11172, 11185), (11200, 11210), (11225, 11242), (11259, 11260), (11264, 11280), (11296, 11296)]) c0401_sound (intervals_sound_cons (I := (11008, 11010)) (intervals := [(11016, 11018), (11025, 11035), (11043, 11053), (11072, 11084), (11100, 11110), (11124, 11134), (11151, 11160), (11172, 11185), (11200, 11210), (11225, 11242), (11259, 11260), (11264, 11280), (11296, 11296)]) c0402_sound (intervals_sound_cons (I := (11016, 11018)) (intervals := [(11025, 11035), (11043, 11053), (11072, 11084), (11100, 11110), (11124, 11134), (11151, 11160), (11172, 11185), (11200, 11210), (11225, 11242), (11259, 11260), (11264, 11280), (11296, 11296)]) c0403_sound (intervals_sound_cons (I := (11025, 11035)) (intervals := [(11043, 11053), (11072, 11084), (11100, 11110), (11124, 11134), (11151, 11160), (11172, 11185), (11200, 11210), (11225, 11242), (11259, 11260), (11264, 11280), (11296, 11296)]) c0404_sound (intervals_sound_cons (I := (11043, 11053)) (intervals := [(11072, 11084), (11100, 11110), (11124, 11134), (11151, 11160), (11172, 11185), (11200, 11210), (11225, 11242), (11259, 11260), (11264, 11280), (11296, 11296)]) c0405_sound (intervals_sound_cons (I := (11072, 11084)) (intervals := [(11100, 11110), (11124, 11134), (11151, 11160), (11172, 11185), (11200, 11210), (11225, 11242), (11259, 11260), (11264, 11280), (11296, 11296)]) c0406_sound (intervals_sound_cons (I := (11100, 11110)) (intervals := [(11124, 11134), (11151, 11160), (11172, 11185), (11200, 11210), (11225, 11242), (11259, 11260), (11264, 11280), (11296, 11296)]) c0407_sound (intervals_sound_cons (I := (11124, 11134)) (intervals := [(11151, 11160), (11172, 11185), (11200, 11210), (11225, 11242), (11259, 11260), (11264, 11280), (11296, 11296)]) c0408_sound (intervals_sound_cons (I := (11151, 11160)) (intervals := [(11172, 11185), (11200, 11210), (11225, 11242), (11259, 11260), (11264, 11280), (11296, 11296)]) c0409_sound (intervals_sound_cons (I := (11172, 11185)) (intervals := [(11200, 11210), (11225, 11242), (11259, 11260), (11264, 11280), (11296, 11296)]) c0410_sound (intervals_sound_cons (I := (11200, 11210)) (intervals := [(11225, 11242), (11259, 11260), (11264, 11280), (11296, 11296)]) c0411_sound (intervals_sound_cons (I := (11225, 11242)) (intervals := [(11259, 11260), (11264, 11280), (11296, 11296)]) c0412_sound (intervals_sound_cons (I := (11259, 11260)) (intervals := [(11264, 11280), (11296, 11296)]) c0413_sound (intervals_sound_cons (I := (11264, 11280)) (intervals := [(11296, 11296)]) c0414_sound (intervals_sound_cons (I := (11296, 11296)) (intervals := []) c0415_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G025
