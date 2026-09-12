import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk239
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk240
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk241

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G061
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0976_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk239.w3, B699LowIndex.I11TerminalData.Chunk239.w4, B699LowIndex.I11TerminalData.Chunk239.w5, B699LowIndex.I11TerminalData.Chunk239.w6]
private def c0976_intervals : List NatInterval := [(110080, 110080), (110081, 110081), (110082, 110082), (110083, 110089)]

private theorem c0976_intervals_eq :
    witnessIntervals c0976_witnesses = c0976_intervals := by
  rfl

private theorem c0976_checks : witnessesCheck c0976_witnesses = true := by
  simp only [witnessesCheck, c0976_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk239.w3_check, B699LowIndex.I11TerminalData.Chunk239.w4_check, B699LowIndex.I11TerminalData.Chunk239.w5_check, B699LowIndex.I11TerminalData.Chunk239.w6_check, Bool.and_self]

private theorem c0976_cover : coverCheck 110080 110089 c0976_intervals = true := by
  decide

private theorem c0976_sound : IntervalSound (110080, 110089) := by
  have hc : coverCheck 110080 110089 (witnessIntervals c0976_witnesses) = true := by
    rw [c0976_intervals_eq]
    exact c0976_cover
  exact interval_sound_of_witness_checks (witnesses := c0976_witnesses)
    (lo := 110080) (hi := 110089) c0976_checks hc

private def c0977_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk239.w7, B699LowIndex.I11TerminalData.Chunk239.w8]
private def c0977_intervals : List NatInterval := [(111875, 111881), (111882, 111882)]

private theorem c0977_intervals_eq :
    witnessIntervals c0977_witnesses = c0977_intervals := by
  rfl

private theorem c0977_checks : witnessesCheck c0977_witnesses = true := by
  simp only [witnessesCheck, c0977_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk239.w7_check, B699LowIndex.I11TerminalData.Chunk239.w8_check, Bool.and_self]

private theorem c0977_cover : coverCheck 111875 111882 c0977_intervals = true := by
  decide

private theorem c0977_sound : IntervalSound (111875, 111882) := by
  have hc : coverCheck 111875 111882 (witnessIntervals c0977_witnesses) = true := by
    rw [c0977_intervals_eq]
    exact c0977_cover
  exact interval_sound_of_witness_checks (witnesses := c0977_witnesses)
    (lo := 111875) (hi := 111882) c0977_checks hc

private def c0978_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk239.w9, B699LowIndex.I11TerminalData.Chunk239.w10]
private def c0978_intervals : List NatInterval := [(112504, 112511), (112512, 112514)]

private theorem c0978_intervals_eq :
    witnessIntervals c0978_witnesses = c0978_intervals := by
  rfl

private theorem c0978_checks : witnessesCheck c0978_witnesses = true := by
  simp only [witnessesCheck, c0978_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk239.w9_check, B699LowIndex.I11TerminalData.Chunk239.w10_check, Bool.and_self]

private theorem c0978_cover : coverCheck 112504 112514 c0978_intervals = true := by
  decide

private theorem c0978_sound : IntervalSound (112504, 112514) := by
  have hc : coverCheck 112504 112514 (witnessIntervals c0978_witnesses) = true := by
    rw [c0978_intervals_eq]
    exact c0978_cover
  exact interval_sound_of_witness_checks (witnesses := c0978_witnesses)
    (lo := 112504) (hi := 112514) c0978_checks hc

private def c0979_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk239.w11]
private def c0979_intervals : List NatInterval := [(114219, 114220)]

private theorem c0979_intervals_eq :
    witnessIntervals c0979_witnesses = c0979_intervals := by
  rfl

private theorem c0979_checks : witnessesCheck c0979_witnesses = true := by
  simp only [witnessesCheck, c0979_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk239.w11_check, Bool.and_self]

private theorem c0979_cover : coverCheck 114219 114220 c0979_intervals = true := by
  decide

private theorem c0979_sound : IntervalSound (114219, 114220) := by
  have hc : coverCheck 114219 114220 (witnessIntervals c0979_witnesses) = true := by
    rw [c0979_intervals_eq]
    exact c0979_cover
  exact interval_sound_of_witness_checks (witnesses := c0979_witnesses)
    (lo := 114219) (hi := 114220) c0979_checks hc

private def c0980_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk239.w12]
private def c0980_intervals : List NatInterval := [(114696, 114698)]

private theorem c0980_intervals_eq :
    witnessIntervals c0980_witnesses = c0980_intervals := by
  rfl

private theorem c0980_checks : witnessesCheck c0980_witnesses = true := by
  simp only [witnessesCheck, c0980_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk239.w12_check, Bool.and_self]

private theorem c0980_cover : coverCheck 114696 114698 c0980_intervals = true := by
  decide

private theorem c0980_sound : IntervalSound (114696, 114698) := by
  have hc : coverCheck 114696 114698 (witnessIntervals c0980_witnesses) = true := by
    rw [c0980_intervals_eq]
    exact c0980_cover
  exact interval_sound_of_witness_checks (witnesses := c0980_witnesses)
    (lo := 114696) (hi := 114698) c0980_checks hc

private def c0981_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk239.w13]
private def c0981_intervals : List NatInterval := [(114944, 114949)]

private theorem c0981_intervals_eq :
    witnessIntervals c0981_witnesses = c0981_intervals := by
  rfl

private theorem c0981_checks : witnessesCheck c0981_witnesses = true := by
  simp only [witnessesCheck, c0981_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk239.w13_check, Bool.and_self]

private theorem c0981_cover : coverCheck 114944 114949 c0981_intervals = true := by
  decide

private theorem c0981_sound : IntervalSound (114944, 114949) := by
  have hc : coverCheck 114944 114949 (witnessIntervals c0981_witnesses) = true := by
    rw [c0981_intervals_eq]
    exact c0981_cover
  exact interval_sound_of_witness_checks (witnesses := c0981_witnesses)
    (lo := 114944) (hi := 114949) c0981_checks hc

private def c0982_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk239.w14]
private def c0982_intervals : List NatInterval := [(116883, 116885)]

private theorem c0982_intervals_eq :
    witnessIntervals c0982_witnesses = c0982_intervals := by
  rfl

private theorem c0982_checks : witnessesCheck c0982_witnesses = true := by
  simp only [witnessesCheck, c0982_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk239.w14_check, Bool.and_self]

private theorem c0982_cover : coverCheck 116883 116885 c0982_intervals = true := by
  decide

private theorem c0982_sound : IntervalSound (116883, 116885) := by
  have hc : coverCheck 116883 116885 (witnessIntervals c0982_witnesses) = true := by
    rw [c0982_intervals_eq]
    exact c0982_cover
  exact interval_sound_of_witness_checks (witnesses := c0982_witnesses)
    (lo := 116883) (hi := 116885) c0982_checks hc

private def c0983_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk239.w15]
private def c0983_intervals : List NatInterval := [(117504, 117510)]

private theorem c0983_intervals_eq :
    witnessIntervals c0983_witnesses = c0983_intervals := by
  rfl

private theorem c0983_checks : witnessesCheck c0983_witnesses = true := by
  simp only [witnessesCheck, c0983_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk239.w15_check, Bool.and_self]

private theorem c0983_cover : coverCheck 117504 117510 c0983_intervals = true := by
  decide

private theorem c0983_sound : IntervalSound (117504, 117510) := by
  have hc : coverCheck 117504 117510 (witnessIntervals c0983_witnesses) = true := by
    rw [c0983_intervals_eq]
    exact c0983_cover
  exact interval_sound_of_witness_checks (witnesses := c0983_witnesses)
    (lo := 117504) (hi := 117510) c0983_checks hc

private def c0984_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk240.w0, B699LowIndex.I11TerminalData.Chunk240.w1, B699LowIndex.I11TerminalData.Chunk240.w2]
private def c0984_intervals : List NatInterval := [(118341, 118341), (118342, 118342), (118343, 118345)]

private theorem c0984_intervals_eq :
    witnessIntervals c0984_witnesses = c0984_intervals := by
  rfl

private theorem c0984_checks : witnessesCheck c0984_witnesses = true := by
  simp only [witnessesCheck, c0984_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk240.w0_check, B699LowIndex.I11TerminalData.Chunk240.w1_check, B699LowIndex.I11TerminalData.Chunk240.w2_check, Bool.and_self]

private theorem c0984_cover : coverCheck 118341 118345 c0984_intervals = true := by
  decide

private theorem c0984_sound : IntervalSound (118341, 118345) := by
  have hc : coverCheck 118341 118345 (witnessIntervals c0984_witnesses) = true := by
    rw [c0984_intervals_eq]
    exact c0984_cover
  exact interval_sound_of_witness_checks (witnesses := c0984_witnesses)
    (lo := 118341) (hi := 118345) c0984_checks hc

private def c0985_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk240.w3, B699LowIndex.I11TerminalData.Chunk240.w4]
private def c0985_intervals : List NatInterval := [(119556, 119561), (119562, 119562)]

private theorem c0985_intervals_eq :
    witnessIntervals c0985_witnesses = c0985_intervals := by
  rfl

private theorem c0985_checks : witnessesCheck c0985_witnesses = true := by
  simp only [witnessesCheck, c0985_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk240.w3_check, B699LowIndex.I11TerminalData.Chunk240.w4_check, Bool.and_self]

private theorem c0985_cover : coverCheck 119556 119562 c0985_intervals = true := by
  decide

private theorem c0985_sound : IntervalSound (119556, 119562) := by
  have hc : coverCheck 119556 119562 (witnessIntervals c0985_witnesses) = true := by
    rw [c0985_intervals_eq]
    exact c0985_cover
  exact interval_sound_of_witness_checks (witnesses := c0985_witnesses)
    (lo := 119556) (hi := 119562) c0985_checks hc

private def c0986_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk240.w5, B699LowIndex.I11TerminalData.Chunk240.w6]
private def c0986_intervals : List NatInterval := [(119808, 119808), (119809, 119809)]

private theorem c0986_intervals_eq :
    witnessIntervals c0986_witnesses = c0986_intervals := by
  rfl

private theorem c0986_checks : witnessesCheck c0986_witnesses = true := by
  simp only [witnessesCheck, c0986_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk240.w5_check, B699LowIndex.I11TerminalData.Chunk240.w6_check, Bool.and_self]

private theorem c0986_cover : coverCheck 119808 119809 c0986_intervals = true := by
  decide

private theorem c0986_sound : IntervalSound (119808, 119809) := by
  have hc : coverCheck 119808 119809 (witnessIntervals c0986_witnesses) = true := by
    rw [c0986_intervals_eq]
    exact c0986_cover
  exact interval_sound_of_witness_checks (witnesses := c0986_witnesses)
    (lo := 119808) (hi := 119809) c0986_checks hc

private def c0987_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk240.w7]
private def c0987_intervals : List NatInterval := [(120050, 120052)]

private theorem c0987_intervals_eq :
    witnessIntervals c0987_witnesses = c0987_intervals := by
  rfl

private theorem c0987_checks : witnessesCheck c0987_witnesses = true := by
  simp only [witnessesCheck, c0987_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk240.w7_check, Bool.and_self]

private theorem c0987_cover : coverCheck 120050 120052 c0987_intervals = true := by
  decide

private theorem c0987_sound : IntervalSound (120050, 120052) := by
  have hc : coverCheck 120050 120052 (witnessIntervals c0987_witnesses) = true := by
    rw [c0987_intervals_eq]
    exact c0987_cover
  exact interval_sound_of_witness_checks (witnesses := c0987_witnesses)
    (lo := 120050) (hi := 120052) c0987_checks hc

private def c0988_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk240.w8]
private def c0988_intervals : List NatInterval := [(121088, 121089)]

private theorem c0988_intervals_eq :
    witnessIntervals c0988_witnesses = c0988_intervals := by
  rfl

private theorem c0988_checks : witnessesCheck c0988_witnesses = true := by
  simp only [witnessesCheck, c0988_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk240.w8_check, Bool.and_self]

private theorem c0988_cover : coverCheck 121088 121089 c0988_intervals = true := by
  decide

private theorem c0988_sound : IntervalSound (121088, 121089) := by
  have hc : coverCheck 121088 121089 (witnessIntervals c0988_witnesses) = true := by
    rw [c0988_intervals_eq]
    exact c0988_cover
  exact interval_sound_of_witness_checks (witnesses := c0988_witnesses)
    (lo := 121088) (hi := 121089) c0988_checks hc

private def c0989_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk240.w9, B699LowIndex.I11TerminalData.Chunk240.w10, B699LowIndex.I11TerminalData.Chunk240.w11]
private def c0989_intervals : List NatInterval := [(121257, 121257), (121258, 121258), (121259, 121260)]

private theorem c0989_intervals_eq :
    witnessIntervals c0989_witnesses = c0989_intervals := by
  rfl

private theorem c0989_checks : witnessesCheck c0989_witnesses = true := by
  simp only [witnessesCheck, c0989_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk240.w9_check, B699LowIndex.I11TerminalData.Chunk240.w10_check, B699LowIndex.I11TerminalData.Chunk240.w11_check, Bool.and_self]

private theorem c0989_cover : coverCheck 121257 121260 c0989_intervals = true := by
  decide

private theorem c0989_sound : IntervalSound (121257, 121260) := by
  have hc : coverCheck 121257 121260 (witnessIntervals c0989_witnesses) = true := by
    rw [c0989_intervals_eq]
    exact c0989_cover
  exact interval_sound_of_witness_checks (witnesses := c0989_witnesses)
    (lo := 121257) (hi := 121260) c0989_checks hc

private def c0990_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk240.w12, B699LowIndex.I11TerminalData.Chunk240.w13, B699LowIndex.I11TerminalData.Chunk240.w14, B699LowIndex.I11TerminalData.Chunk240.w15, B699LowIndex.I11TerminalData.Chunk241.w0, B699LowIndex.I11TerminalData.Chunk241.w1]
private def c0990_intervals : List NatInterval := [(122112, 122112), (122113, 122113), (122114, 122114), (122115, 122115), (122116, 122116), (122117, 122118)]

private theorem c0990_intervals_eq :
    witnessIntervals c0990_witnesses = c0990_intervals := by
  rfl

private theorem c0990_checks : witnessesCheck c0990_witnesses = true := by
  simp only [witnessesCheck, c0990_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk240.w12_check, B699LowIndex.I11TerminalData.Chunk240.w13_check, B699LowIndex.I11TerminalData.Chunk240.w14_check, B699LowIndex.I11TerminalData.Chunk240.w15_check, B699LowIndex.I11TerminalData.Chunk241.w0_check, B699LowIndex.I11TerminalData.Chunk241.w1_check, Bool.and_self]

private theorem c0990_cover : coverCheck 122112 122118 c0990_intervals = true := by
  decide

private theorem c0990_sound : IntervalSound (122112, 122118) := by
  have hc : coverCheck 122112 122118 (witnessIntervals c0990_witnesses) = true := by
    rw [c0990_intervals_eq]
    exact c0990_cover
  exact interval_sound_of_witness_checks (witnesses := c0990_witnesses)
    (lo := 122112) (hi := 122118) c0990_checks hc

private def c0991_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk241.w2, B699LowIndex.I11TerminalData.Chunk241.w3, B699LowIndex.I11TerminalData.Chunk241.w4, B699LowIndex.I11TerminalData.Chunk241.w5, B699LowIndex.I11TerminalData.Chunk241.w6, B699LowIndex.I11TerminalData.Chunk241.w7, B699LowIndex.I11TerminalData.Chunk241.w8]
private def c0991_intervals : List NatInterval := [(123137, 123137), (123138, 123138), (123139, 123139), (123140, 123140), (123141, 123141), (123142, 123142), (123143, 123146)]

private theorem c0991_intervals_eq :
    witnessIntervals c0991_witnesses = c0991_intervals := by
  rfl

private theorem c0991_checks : witnessesCheck c0991_witnesses = true := by
  simp only [witnessesCheck, c0991_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk241.w2_check, B699LowIndex.I11TerminalData.Chunk241.w3_check, B699LowIndex.I11TerminalData.Chunk241.w4_check, B699LowIndex.I11TerminalData.Chunk241.w5_check, B699LowIndex.I11TerminalData.Chunk241.w6_check, B699LowIndex.I11TerminalData.Chunk241.w7_check, B699LowIndex.I11TerminalData.Chunk241.w8_check, Bool.and_self]

private theorem c0991_cover : coverCheck 123137 123146 c0991_intervals = true := by
  decide

private theorem c0991_sound : IntervalSound (123137, 123146) := by
  have hc : coverCheck 123137 123146 (witnessIntervals c0991_witnesses) = true := by
    rw [c0991_intervals_eq]
    exact c0991_cover
  exact interval_sound_of_witness_checks (witnesses := c0991_witnesses)
    (lo := 123137) (hi := 123146) c0991_checks hc

def intervals : List NatInterval := [(110080, 110089), (111875, 111882), (112504, 112514), (114219, 114220), (114696, 114698), (114944, 114949), (116883, 116885), (117504, 117510), (118341, 118345), (119556, 119562), (119808, 119809), (120050, 120052), (121088, 121089), (121257, 121260), (122112, 122118), (123137, 123146)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (110080, 110089)) (intervals := [(111875, 111882), (112504, 112514), (114219, 114220), (114696, 114698), (114944, 114949), (116883, 116885), (117504, 117510), (118341, 118345), (119556, 119562), (119808, 119809), (120050, 120052), (121088, 121089), (121257, 121260), (122112, 122118), (123137, 123146)]) c0976_sound (intervals_sound_cons (I := (111875, 111882)) (intervals := [(112504, 112514), (114219, 114220), (114696, 114698), (114944, 114949), (116883, 116885), (117504, 117510), (118341, 118345), (119556, 119562), (119808, 119809), (120050, 120052), (121088, 121089), (121257, 121260), (122112, 122118), (123137, 123146)]) c0977_sound (intervals_sound_cons (I := (112504, 112514)) (intervals := [(114219, 114220), (114696, 114698), (114944, 114949), (116883, 116885), (117504, 117510), (118341, 118345), (119556, 119562), (119808, 119809), (120050, 120052), (121088, 121089), (121257, 121260), (122112, 122118), (123137, 123146)]) c0978_sound (intervals_sound_cons (I := (114219, 114220)) (intervals := [(114696, 114698), (114944, 114949), (116883, 116885), (117504, 117510), (118341, 118345), (119556, 119562), (119808, 119809), (120050, 120052), (121088, 121089), (121257, 121260), (122112, 122118), (123137, 123146)]) c0979_sound (intervals_sound_cons (I := (114696, 114698)) (intervals := [(114944, 114949), (116883, 116885), (117504, 117510), (118341, 118345), (119556, 119562), (119808, 119809), (120050, 120052), (121088, 121089), (121257, 121260), (122112, 122118), (123137, 123146)]) c0980_sound (intervals_sound_cons (I := (114944, 114949)) (intervals := [(116883, 116885), (117504, 117510), (118341, 118345), (119556, 119562), (119808, 119809), (120050, 120052), (121088, 121089), (121257, 121260), (122112, 122118), (123137, 123146)]) c0981_sound (intervals_sound_cons (I := (116883, 116885)) (intervals := [(117504, 117510), (118341, 118345), (119556, 119562), (119808, 119809), (120050, 120052), (121088, 121089), (121257, 121260), (122112, 122118), (123137, 123146)]) c0982_sound (intervals_sound_cons (I := (117504, 117510)) (intervals := [(118341, 118345), (119556, 119562), (119808, 119809), (120050, 120052), (121088, 121089), (121257, 121260), (122112, 122118), (123137, 123146)]) c0983_sound (intervals_sound_cons (I := (118341, 118345)) (intervals := [(119556, 119562), (119808, 119809), (120050, 120052), (121088, 121089), (121257, 121260), (122112, 122118), (123137, 123146)]) c0984_sound (intervals_sound_cons (I := (119556, 119562)) (intervals := [(119808, 119809), (120050, 120052), (121088, 121089), (121257, 121260), (122112, 122118), (123137, 123146)]) c0985_sound (intervals_sound_cons (I := (119808, 119809)) (intervals := [(120050, 120052), (121088, 121089), (121257, 121260), (122112, 122118), (123137, 123146)]) c0986_sound (intervals_sound_cons (I := (120050, 120052)) (intervals := [(121088, 121089), (121257, 121260), (122112, 122118), (123137, 123146)]) c0987_sound (intervals_sound_cons (I := (121088, 121089)) (intervals := [(121257, 121260), (122112, 122118), (123137, 123146)]) c0988_sound (intervals_sound_cons (I := (121257, 121260)) (intervals := [(122112, 122118), (123137, 123146)]) c0989_sound (intervals_sound_cons (I := (122112, 122118)) (intervals := [(123137, 123146)]) c0990_sound (intervals_sound_cons (I := (123137, 123146)) (intervals := []) c0991_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G061
