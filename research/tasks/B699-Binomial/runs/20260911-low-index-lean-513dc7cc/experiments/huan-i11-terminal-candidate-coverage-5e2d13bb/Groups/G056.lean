import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk225
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk226
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk227

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G056
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0896_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk225.w15]
private def c0896_intervals : List NatInterval := [(53760, 53760)]

private theorem c0896_intervals_eq :
    witnessIntervals c0896_witnesses = c0896_intervals := by
  rfl

private theorem c0896_checks : witnessesCheck c0896_witnesses = true := by
  simp only [witnessesCheck, c0896_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk225.w15_check, Bool.and_self]

private theorem c0896_cover : coverCheck 53760 53760 c0896_intervals = true := by
  decide

private theorem c0896_sound : IntervalSound (53760, 53760) := by
  have hc : coverCheck 53760 53760 (witnessIntervals c0896_witnesses) = true := by
    rw [c0896_intervals_eq]
    exact c0896_cover
  exact interval_sound_of_witness_checks (witnesses := c0896_witnesses)
    (lo := 53760) (hi := 53760) c0896_checks hc

private def c0897_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk226.w0]
private def c0897_intervals : List NatInterval := [(54194, 54199)]

private theorem c0897_intervals_eq :
    witnessIntervals c0897_witnesses = c0897_intervals := by
  rfl

private theorem c0897_checks : witnessesCheck c0897_witnesses = true := by
  simp only [witnessesCheck, c0897_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk226.w0_check, Bool.and_self]

private theorem c0897_cover : coverCheck 54194 54199 c0897_intervals = true := by
  decide

private theorem c0897_sound : IntervalSound (54194, 54199) := by
  have hc : coverCheck 54194 54199 (witnessIntervals c0897_witnesses) = true := by
    rw [c0897_intervals_eq]
    exact c0897_cover
  exact interval_sound_of_witness_checks (witnesses := c0897_witnesses)
    (lo := 54194) (hi := 54199) c0897_checks hc

private def c0898_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk226.w1, B699LowIndex.I11TerminalData.Chunk226.w2]
private def c0898_intervals : List NatInterval := [(54537, 54537), (54538, 54538)]

private theorem c0898_intervals_eq :
    witnessIntervals c0898_witnesses = c0898_intervals := by
  rfl

private theorem c0898_checks : witnessesCheck c0898_witnesses = true := by
  simp only [witnessesCheck, c0898_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk226.w1_check, B699LowIndex.I11TerminalData.Chunk226.w2_check, Bool.and_self]

private theorem c0898_cover : coverCheck 54537 54538 c0898_intervals = true := by
  decide

private theorem c0898_sound : IntervalSound (54537, 54538) := by
  have hc : coverCheck 54537 54538 (witnessIntervals c0898_witnesses) = true := by
    rw [c0898_intervals_eq]
    exact c0898_cover
  exact interval_sound_of_witness_checks (witnesses := c0898_witnesses)
    (lo := 54537) (hi := 54538) c0898_checks hc

private def c0899_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk226.w3]
private def c0899_intervals : List NatInterval := [(54880, 54885)]

private theorem c0899_intervals_eq :
    witnessIntervals c0899_witnesses = c0899_intervals := by
  rfl

private theorem c0899_checks : witnessesCheck c0899_witnesses = true := by
  simp only [witnessesCheck, c0899_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk226.w3_check, Bool.and_self]

private theorem c0899_cover : coverCheck 54880 54885 c0899_intervals = true := by
  decide

private theorem c0899_sound : IntervalSound (54880, 54885) := by
  have hc : coverCheck 54880 54885 (witnessIntervals c0899_witnesses) = true := by
    rw [c0899_intervals_eq]
    exact c0899_cover
  exact interval_sound_of_witness_checks (witnesses := c0899_witnesses)
    (lo := 54880) (hi := 54885) c0899_checks hc

private def c0900_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk226.w4]
private def c0900_intervals : List NatInterval := [(54918, 54922)]

private theorem c0900_intervals_eq :
    witnessIntervals c0900_witnesses = c0900_intervals := by
  rfl

private theorem c0900_checks : witnessesCheck c0900_witnesses = true := by
  simp only [witnessesCheck, c0900_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk226.w4_check, Bool.and_self]

private theorem c0900_cover : coverCheck 54918 54922 c0900_intervals = true := by
  decide

private theorem c0900_sound : IntervalSound (54918, 54922) := by
  have hc : coverCheck 54918 54922 (witnessIntervals c0900_witnesses) = true := by
    rw [c0900_intervals_eq]
    exact c0900_cover
  exact interval_sound_of_witness_checks (witnesses := c0900_witnesses)
    (lo := 54918) (hi := 54922) c0900_checks hc

private def c0901_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk226.w5]
private def c0901_intervals : List NatInterval := [(55168, 55171)]

private theorem c0901_intervals_eq :
    witnessIntervals c0901_witnesses = c0901_intervals := by
  rfl

private theorem c0901_checks : witnessesCheck c0901_witnesses = true := by
  simp only [witnessesCheck, c0901_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk226.w5_check, Bool.and_self]

private theorem c0901_cover : coverCheck 55168 55171 c0901_intervals = true := by
  decide

private theorem c0901_sound : IntervalSound (55168, 55171) := by
  have hc : coverCheck 55168 55171 (witnessIntervals c0901_witnesses) = true := by
    rw [c0901_intervals_eq]
    exact c0901_cover
  exact interval_sound_of_witness_checks (witnesses := c0901_witnesses)
    (lo := 55168) (hi := 55171) c0901_checks hc

private def c0902_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk226.w6]
private def c0902_intervals : List NatInterval := [(56133, 56135)]

private theorem c0902_intervals_eq :
    witnessIntervals c0902_witnesses = c0902_intervals := by
  rfl

private theorem c0902_checks : witnessesCheck c0902_witnesses = true := by
  simp only [witnessesCheck, c0902_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk226.w6_check, Bool.and_self]

private theorem c0902_cover : coverCheck 56133 56135 c0902_intervals = true := by
  decide

private theorem c0902_sound : IntervalSound (56133, 56135) := by
  have hc : coverCheck 56133 56135 (witnessIntervals c0902_witnesses) = true := by
    rw [c0902_intervals_eq]
    exact c0902_cover
  exact interval_sound_of_witness_checks (witnesses := c0902_witnesses)
    (lo := 56133) (hi := 56135) c0902_checks hc

private def c0903_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk226.w7, B699LowIndex.I11TerminalData.Chunk226.w8]
private def c0903_intervals : List NatInterval := [(56252, 56259), (56260, 56260)]

private theorem c0903_intervals_eq :
    witnessIntervals c0903_witnesses = c0903_intervals := by
  rfl

private theorem c0903_checks : witnessesCheck c0903_witnesses = true := by
  simp only [witnessesCheck, c0903_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk226.w7_check, B699LowIndex.I11TerminalData.Chunk226.w8_check, Bool.and_self]

private theorem c0903_cover : coverCheck 56252 56260 c0903_intervals = true := by
  decide

private theorem c0903_sound : IntervalSound (56252, 56260) := by
  have hc : coverCheck 56252 56260 (witnessIntervals c0903_witnesses) = true := by
    rw [c0903_intervals_eq]
    exact c0903_cover
  exact interval_sound_of_witness_checks (witnesses := c0903_witnesses)
    (lo := 56252) (hi := 56260) c0903_checks hc

private def c0904_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk226.w9, B699LowIndex.I11TerminalData.Chunk226.w10]
private def c0904_intervals : List NatInterval := [(56376, 56379), (56380, 56385)]

private theorem c0904_intervals_eq :
    witnessIntervals c0904_witnesses = c0904_intervals := by
  rfl

private theorem c0904_checks : witnessesCheck c0904_witnesses = true := by
  simp only [witnessesCheck, c0904_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk226.w9_check, B699LowIndex.I11TerminalData.Chunk226.w10_check, Bool.and_self]

private theorem c0904_cover : coverCheck 56376 56385 c0904_intervals = true := by
  decide

private theorem c0904_sound : IntervalSound (56376, 56385) := by
  have hc : coverCheck 56376 56385 (witnessIntervals c0904_witnesses) = true := by
    rw [c0904_intervals_eq]
    exact c0904_cover
  exact interval_sound_of_witness_checks (witnesses := c0904_witnesses)
    (lo := 56376) (hi := 56385) c0904_checks hc

private def c0905_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk226.w11, B699LowIndex.I11TerminalData.Chunk226.w12, B699LowIndex.I11TerminalData.Chunk226.w13, B699LowIndex.I11TerminalData.Chunk226.w14, B699LowIndex.I11TerminalData.Chunk226.w15]
private def c0905_intervals : List NatInterval := [(56625, 56625), (56626, 56626), (56627, 56627), (56628, 56628), (56629, 56629)]

private theorem c0905_intervals_eq :
    witnessIntervals c0905_witnesses = c0905_intervals := by
  rfl

private theorem c0905_checks : witnessesCheck c0905_witnesses = true := by
  simp only [witnessesCheck, c0905_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk226.w11_check, B699LowIndex.I11TerminalData.Chunk226.w12_check, B699LowIndex.I11TerminalData.Chunk226.w13_check, B699LowIndex.I11TerminalData.Chunk226.w14_check, B699LowIndex.I11TerminalData.Chunk226.w15_check, Bool.and_self]

private theorem c0905_cover : coverCheck 56625 56629 c0905_intervals = true := by
  decide

private theorem c0905_sound : IntervalSound (56625, 56629) := by
  have hc : coverCheck 56625 56629 (witnessIntervals c0905_witnesses) = true := by
    rw [c0905_intervals_eq]
    exact c0905_cover
  exact interval_sound_of_witness_checks (witnesses := c0905_witnesses)
    (lo := 56625) (hi := 56629) c0905_checks hc

private def c0906_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk227.w0]
private def c0906_intervals : List NatInterval := [(57348, 57354)]

private theorem c0906_intervals_eq :
    witnessIntervals c0906_witnesses = c0906_intervals := by
  rfl

private theorem c0906_checks : witnessesCheck c0906_witnesses = true := by
  simp only [witnessesCheck, c0906_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk227.w0_check, Bool.and_self]

private theorem c0906_cover : coverCheck 57348 57354 c0906_intervals = true := by
  decide

private theorem c0906_sound : IntervalSound (57348, 57354) := by
  have hc : coverCheck 57348 57354 (witnessIntervals c0906_witnesses) = true := by
    rw [c0906_intervals_eq]
    exact c0906_cover
  exact interval_sound_of_witness_checks (witnesses := c0906_witnesses)
    (lo := 57348) (hi := 57354) c0906_checks hc

private def c0907_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk227.w1]
private def c0907_intervals : List NatInterval := [(57600, 57601)]

private theorem c0907_intervals_eq :
    witnessIntervals c0907_witnesses = c0907_intervals := by
  rfl

private theorem c0907_checks : witnessesCheck c0907_witnesses = true := by
  simp only [witnessesCheck, c0907_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk227.w1_check, Bool.and_self]

private theorem c0907_cover : coverCheck 57600 57601 c0907_intervals = true := by
  decide

private theorem c0907_sound : IntervalSound (57600, 57601) := by
  have hc : coverCheck 57600 57601 (witnessIntervals c0907_witnesses) = true := by
    rw [c0907_intervals_eq]
    exact c0907_cover
  exact interval_sound_of_witness_checks (witnesses := c0907_witnesses)
    (lo := 57600) (hi := 57601) c0907_checks hc

private def c0908_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk227.w2, B699LowIndex.I11TerminalData.Chunk227.w3, B699LowIndex.I11TerminalData.Chunk227.w4, B699LowIndex.I11TerminalData.Chunk227.w5, B699LowIndex.I11TerminalData.Chunk227.w6, B699LowIndex.I11TerminalData.Chunk227.w7, B699LowIndex.I11TerminalData.Chunk227.w8, B699LowIndex.I11TerminalData.Chunk227.w9, B699LowIndex.I11TerminalData.Chunk227.w10, B699LowIndex.I11TerminalData.Chunk227.w11]
private def c0908_intervals : List NatInterval := [(57625, 57625), (57626, 57626), (57627, 57627), (57628, 57628), (57629, 57629), (57630, 57630), (57631, 57631), (57632, 57632), (57633, 57633), (57634, 57634)]

private theorem c0908_intervals_eq :
    witnessIntervals c0908_witnesses = c0908_intervals := by
  rfl

private theorem c0908_checks : witnessesCheck c0908_witnesses = true := by
  simp only [witnessesCheck, c0908_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk227.w2_check, B699LowIndex.I11TerminalData.Chunk227.w3_check, B699LowIndex.I11TerminalData.Chunk227.w4_check, B699LowIndex.I11TerminalData.Chunk227.w5_check, B699LowIndex.I11TerminalData.Chunk227.w6_check, B699LowIndex.I11TerminalData.Chunk227.w7_check, B699LowIndex.I11TerminalData.Chunk227.w8_check, B699LowIndex.I11TerminalData.Chunk227.w9_check, B699LowIndex.I11TerminalData.Chunk227.w10_check, B699LowIndex.I11TerminalData.Chunk227.w11_check, Bool.and_self]

private theorem c0908_cover : coverCheck 57625 57634 c0908_intervals = true := by
  decide

private theorem c0908_sound : IntervalSound (57625, 57634) := by
  have hc : coverCheck 57625 57634 (witnessIntervals c0908_witnesses) = true := by
    rw [c0908_intervals_eq]
    exact c0908_cover
  exact interval_sound_of_witness_checks (witnesses := c0908_witnesses)
    (lo := 57625) (hi := 57634) c0908_checks hc

private def c0909_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk227.w12]
private def c0909_intervals : List NatInterval := [(58250, 58250)]

private theorem c0909_intervals_eq :
    witnessIntervals c0909_witnesses = c0909_intervals := by
  rfl

private theorem c0909_checks : witnessesCheck c0909_witnesses = true := by
  simp only [witnessesCheck, c0909_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk227.w12_check, Bool.and_self]

private theorem c0909_cover : coverCheck 58250 58250 c0909_intervals = true := by
  decide

private theorem c0909_sound : IntervalSound (58250, 58250) := by
  have hc : coverCheck 58250 58250 (witnessIntervals c0909_witnesses) = true := by
    rw [c0909_intervals_eq]
    exact c0909_cover
  exact interval_sound_of_witness_checks (witnesses := c0909_witnesses)
    (lo := 58250) (hi := 58250) c0909_checks hc

private def c0910_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk227.w13]
private def c0910_intervals : List NatInterval := [(58320, 58320)]

private theorem c0910_intervals_eq :
    witnessIntervals c0910_witnesses = c0910_intervals := by
  rfl

private theorem c0910_checks : witnessesCheck c0910_witnesses = true := by
  simp only [witnessesCheck, c0910_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk227.w13_check, Bool.and_self]

private theorem c0910_cover : coverCheck 58320 58320 c0910_intervals = true := by
  decide

private theorem c0910_sound : IntervalSound (58320, 58320) := by
  have hc : coverCheck 58320 58320 (witnessIntervals c0910_witnesses) = true := by
    rw [c0910_intervals_eq]
    exact c0910_cover
  exact interval_sound_of_witness_checks (witnesses := c0910_witnesses)
    (lo := 58320) (hi := 58320) c0910_checks hc

private def c0911_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk227.w14]
private def c0911_intervals : List NatInterval := [(58375, 58378)]

private theorem c0911_intervals_eq :
    witnessIntervals c0911_witnesses = c0911_intervals := by
  rfl

private theorem c0911_checks : witnessesCheck c0911_witnesses = true := by
  simp only [witnessesCheck, c0911_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk227.w14_check, Bool.and_self]

private theorem c0911_cover : coverCheck 58375 58378 c0911_intervals = true := by
  decide

private theorem c0911_sound : IntervalSound (58375, 58378) := by
  have hc : coverCheck 58375 58378 (witnessIntervals c0911_witnesses) = true := by
    rw [c0911_intervals_eq]
    exact c0911_cover
  exact interval_sound_of_witness_checks (witnesses := c0911_witnesses)
    (lo := 58375) (hi := 58378) c0911_checks hc

def intervals : List NatInterval := [(53760, 53760), (54194, 54199), (54537, 54538), (54880, 54885), (54918, 54922), (55168, 55171), (56133, 56135), (56252, 56260), (56376, 56385), (56625, 56629), (57348, 57354), (57600, 57601), (57625, 57634), (58250, 58250), (58320, 58320), (58375, 58378)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (53760, 53760)) (intervals := [(54194, 54199), (54537, 54538), (54880, 54885), (54918, 54922), (55168, 55171), (56133, 56135), (56252, 56260), (56376, 56385), (56625, 56629), (57348, 57354), (57600, 57601), (57625, 57634), (58250, 58250), (58320, 58320), (58375, 58378)]) c0896_sound (intervals_sound_cons (I := (54194, 54199)) (intervals := [(54537, 54538), (54880, 54885), (54918, 54922), (55168, 55171), (56133, 56135), (56252, 56260), (56376, 56385), (56625, 56629), (57348, 57354), (57600, 57601), (57625, 57634), (58250, 58250), (58320, 58320), (58375, 58378)]) c0897_sound (intervals_sound_cons (I := (54537, 54538)) (intervals := [(54880, 54885), (54918, 54922), (55168, 55171), (56133, 56135), (56252, 56260), (56376, 56385), (56625, 56629), (57348, 57354), (57600, 57601), (57625, 57634), (58250, 58250), (58320, 58320), (58375, 58378)]) c0898_sound (intervals_sound_cons (I := (54880, 54885)) (intervals := [(54918, 54922), (55168, 55171), (56133, 56135), (56252, 56260), (56376, 56385), (56625, 56629), (57348, 57354), (57600, 57601), (57625, 57634), (58250, 58250), (58320, 58320), (58375, 58378)]) c0899_sound (intervals_sound_cons (I := (54918, 54922)) (intervals := [(55168, 55171), (56133, 56135), (56252, 56260), (56376, 56385), (56625, 56629), (57348, 57354), (57600, 57601), (57625, 57634), (58250, 58250), (58320, 58320), (58375, 58378)]) c0900_sound (intervals_sound_cons (I := (55168, 55171)) (intervals := [(56133, 56135), (56252, 56260), (56376, 56385), (56625, 56629), (57348, 57354), (57600, 57601), (57625, 57634), (58250, 58250), (58320, 58320), (58375, 58378)]) c0901_sound (intervals_sound_cons (I := (56133, 56135)) (intervals := [(56252, 56260), (56376, 56385), (56625, 56629), (57348, 57354), (57600, 57601), (57625, 57634), (58250, 58250), (58320, 58320), (58375, 58378)]) c0902_sound (intervals_sound_cons (I := (56252, 56260)) (intervals := [(56376, 56385), (56625, 56629), (57348, 57354), (57600, 57601), (57625, 57634), (58250, 58250), (58320, 58320), (58375, 58378)]) c0903_sound (intervals_sound_cons (I := (56376, 56385)) (intervals := [(56625, 56629), (57348, 57354), (57600, 57601), (57625, 57634), (58250, 58250), (58320, 58320), (58375, 58378)]) c0904_sound (intervals_sound_cons (I := (56625, 56629)) (intervals := [(57348, 57354), (57600, 57601), (57625, 57634), (58250, 58250), (58320, 58320), (58375, 58378)]) c0905_sound (intervals_sound_cons (I := (57348, 57354)) (intervals := [(57600, 57601), (57625, 57634), (58250, 58250), (58320, 58320), (58375, 58378)]) c0906_sound (intervals_sound_cons (I := (57600, 57601)) (intervals := [(57625, 57634), (58250, 58250), (58320, 58320), (58375, 58378)]) c0907_sound (intervals_sound_cons (I := (57625, 57634)) (intervals := [(58250, 58250), (58320, 58320), (58375, 58378)]) c0908_sound (intervals_sound_cons (I := (58250, 58250)) (intervals := [(58320, 58320), (58375, 58378)]) c0909_sound (intervals_sound_cons (I := (58320, 58320)) (intervals := [(58375, 58378)]) c0910_sound (intervals_sound_cons (I := (58375, 58378)) (intervals := []) c0911_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G056
