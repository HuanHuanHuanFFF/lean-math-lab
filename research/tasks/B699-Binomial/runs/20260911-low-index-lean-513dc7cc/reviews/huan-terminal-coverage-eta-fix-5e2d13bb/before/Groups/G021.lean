import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk129
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk130
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk131
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk132
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk133

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G021
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0336_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk129.w5, B699LowIndex.I11TerminalData.Chunk129.w6, B699LowIndex.I11TerminalData.Chunk129.w7]
private def c0336_intervals : List NatInterval := [(9750, 9759), (9760, 9760), (9761, 9761)]

private theorem c0336_intervals_eq :
    witnessIntervals c0336_witnesses = c0336_intervals := by
  rfl

private theorem c0336_checks : witnessesCheck c0336_witnesses = true := by
  simp only [witnessesCheck, c0336_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk129.w5_check, B699LowIndex.I11TerminalData.Chunk129.w6_check, B699LowIndex.I11TerminalData.Chunk129.w7_check, Bool.and_self]

private theorem c0336_cover : coverCheck 9750 9761 c0336_intervals = true := by
  decide

private theorem c0336_sound : IntervalSound (9750, 9761) := by
  have hc : coverCheck 9750 9761 (witnessIntervals c0336_witnesses) = true := by
    rw [c0336_intervals_eq]
    exact c0336_cover
  exact interval_sound_of_witness_checks (witnesses := c0336_witnesses)
    (lo := 9750) (hi := 9761) c0336_checks hc

private def c0337_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk129.w8, B699LowIndex.I11TerminalData.Chunk129.w9, B699LowIndex.I11TerminalData.Chunk129.w10]
private def c0337_intervals : List NatInterval := [(9775, 9779), (9780, 9780), (9781, 9784)]

private theorem c0337_intervals_eq :
    witnessIntervals c0337_witnesses = c0337_intervals := by
  rfl

private theorem c0337_checks : witnessesCheck c0337_witnesses = true := by
  simp only [witnessesCheck, c0337_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk129.w8_check, B699LowIndex.I11TerminalData.Chunk129.w9_check, B699LowIndex.I11TerminalData.Chunk129.w10_check, Bool.and_self]

private theorem c0337_cover : coverCheck 9775 9784 c0337_intervals = true := by
  decide

private theorem c0337_sound : IntervalSound (9775, 9784) := by
  have hc : coverCheck 9775 9784 (witnessIntervals c0337_witnesses) = true := by
    rw [c0337_intervals_eq]
    exact c0337_cover
  exact interval_sound_of_witness_checks (witnesses := c0337_witnesses)
    (lo := 9775) (hi := 9784) c0337_checks hc

private def c0338_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk129.w11, B699LowIndex.I11TerminalData.Chunk129.w12, B699LowIndex.I11TerminalData.Chunk129.w13]
private def c0338_intervals : List NatInterval := [(9800, 9801), (9802, 9802), (9803, 9810)]

private theorem c0338_intervals_eq :
    witnessIntervals c0338_witnesses = c0338_intervals := by
  rfl

private theorem c0338_checks : witnessesCheck c0338_witnesses = true := by
  simp only [witnessesCheck, c0338_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk129.w11_check, B699LowIndex.I11TerminalData.Chunk129.w12_check, B699LowIndex.I11TerminalData.Chunk129.w13_check, Bool.and_self]

private theorem c0338_cover : coverCheck 9800 9810 c0338_intervals = true := by
  decide

private theorem c0338_sound : IntervalSound (9800, 9810) := by
  have hc : coverCheck 9800 9810 (witnessIntervals c0338_witnesses) = true := by
    rw [c0338_intervals_eq]
    exact c0338_cover
  exact interval_sound_of_witness_checks (witnesses := c0338_witnesses)
    (lo := 9800) (hi := 9810) c0338_checks hc

private def c0339_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk129.w14, B699LowIndex.I11TerminalData.Chunk129.w15, B699LowIndex.I11TerminalData.Chunk130.w0]
private def c0339_intervals : List NatInterval := [(9825, 9827), (9828, 9828), (9829, 9835)]

private theorem c0339_intervals_eq :
    witnessIntervals c0339_witnesses = c0339_intervals := by
  rfl

private theorem c0339_checks : witnessesCheck c0339_witnesses = true := by
  simp only [witnessesCheck, c0339_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk129.w14_check, B699LowIndex.I11TerminalData.Chunk129.w15_check, B699LowIndex.I11TerminalData.Chunk130.w0_check, Bool.and_self]

private theorem c0339_cover : coverCheck 9825 9835 c0339_intervals = true := by
  decide

private theorem c0339_sound : IntervalSound (9825, 9835) := by
  have hc : coverCheck 9825 9835 (witnessIntervals c0339_witnesses) = true := by
    rw [c0339_intervals_eq]
    exact c0339_cover
  exact interval_sound_of_witness_checks (witnesses := c0339_witnesses)
    (lo := 9825) (hi := 9835) c0339_checks hc

private def c0340_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk130.w1, B699LowIndex.I11TerminalData.Chunk130.w2, B699LowIndex.I11TerminalData.Chunk130.w3]
private def c0340_intervals : List NatInterval := [(9850, 9850), (9851, 9861), (9862, 9865)]

private theorem c0340_intervals_eq :
    witnessIntervals c0340_witnesses = c0340_intervals := by
  rfl

private theorem c0340_checks : witnessesCheck c0340_witnesses = true := by
  simp only [witnessesCheck, c0340_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk130.w1_check, B699LowIndex.I11TerminalData.Chunk130.w2_check, B699LowIndex.I11TerminalData.Chunk130.w3_check, Bool.and_self]

private theorem c0340_cover : coverCheck 9850 9865 c0340_intervals = true := by
  decide

private theorem c0340_sound : IntervalSound (9850, 9865) := by
  have hc : coverCheck 9850 9865 (witnessIntervals c0340_witnesses) = true := by
    rw [c0340_intervals_eq]
    exact c0340_cover
  exact interval_sound_of_witness_checks (witnesses := c0340_witnesses)
    (lo := 9850) (hi := 9865) c0340_checks hc

private def c0341_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk130.w4, B699LowIndex.I11TerminalData.Chunk130.w5]
private def c0341_intervals : List NatInterval := [(9882, 9882), (9883, 9885)]

private theorem c0341_intervals_eq :
    witnessIntervals c0341_witnesses = c0341_intervals := by
  rfl

private theorem c0341_checks : witnessesCheck c0341_witnesses = true := by
  simp only [witnessesCheck, c0341_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk130.w4_check, B699LowIndex.I11TerminalData.Chunk130.w5_check, Bool.and_self]

private theorem c0341_cover : coverCheck 9882 9885 c0341_intervals = true := by
  decide

private theorem c0341_sound : IntervalSound (9882, 9885) := by
  have hc : coverCheck 9882 9885 (witnessIntervals c0341_witnesses) = true := by
    rw [c0341_intervals_eq]
    exact c0341_cover
  exact interval_sound_of_witness_checks (witnesses := c0341_witnesses)
    (lo := 9882) (hi := 9885) c0341_checks hc

private def c0342_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk130.w6]
private def c0342_intervals : List NatInterval := [(9888, 9892)]

private theorem c0342_intervals_eq :
    witnessIntervals c0342_witnesses = c0342_intervals := by
  rfl

private theorem c0342_checks : witnessesCheck c0342_witnesses = true := by
  simp only [witnessesCheck, c0342_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk130.w6_check, Bool.and_self]

private theorem c0342_cover : coverCheck 9888 9892 c0342_intervals = true := by
  decide

private theorem c0342_sound : IntervalSound (9888, 9892) := by
  have hc : coverCheck 9888 9892 (witnessIntervals c0342_witnesses) = true := by
    rw [c0342_intervals_eq]
    exact c0342_cover
  exact interval_sound_of_witness_checks (witnesses := c0342_witnesses)
    (lo := 9888) (hi := 9892) c0342_checks hc

private def c0343_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk130.w7]
private def c0343_intervals : List NatInterval := [(9898, 9898)]

private theorem c0343_intervals_eq :
    witnessIntervals c0343_witnesses = c0343_intervals := by
  rfl

private theorem c0343_checks : witnessesCheck c0343_witnesses = true := by
  simp only [witnessesCheck, c0343_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk130.w7_check, Bool.and_self]

private theorem c0343_cover : coverCheck 9898 9898 c0343_intervals = true := by
  decide

private theorem c0343_sound : IntervalSound (9898, 9898) := by
  have hc : coverCheck 9898 9898 (witnessIntervals c0343_witnesses) = true := by
    rw [c0343_intervals_eq]
    exact c0343_cover
  exact interval_sound_of_witness_checks (witnesses := c0343_witnesses)
    (lo := 9898) (hi := 9898) c0343_checks hc

private def c0344_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk130.w8, B699LowIndex.I11TerminalData.Chunk130.w9]
private def c0344_intervals : List NatInterval := [(9900, 9900), (9901, 9910)]

private theorem c0344_intervals_eq :
    witnessIntervals c0344_witnesses = c0344_intervals := by
  rfl

private theorem c0344_checks : witnessesCheck c0344_witnesses = true := by
  simp only [witnessesCheck, c0344_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk130.w8_check, B699LowIndex.I11TerminalData.Chunk130.w9_check, Bool.and_self]

private theorem c0344_cover : coverCheck 9900 9910 c0344_intervals = true := by
  decide

private theorem c0344_sound : IntervalSound (9900, 9910) := by
  have hc : coverCheck 9900 9910 (witnessIntervals c0344_witnesses) = true := by
    rw [c0344_intervals_eq]
    exact c0344_cover
  exact interval_sound_of_witness_checks (witnesses := c0344_witnesses)
    (lo := 9900) (hi := 9910) c0344_checks hc

private def c0345_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk130.w10]
private def c0345_intervals : List NatInterval := [(9925, 9930)]

private theorem c0345_intervals_eq :
    witnessIntervals c0345_witnesses = c0345_intervals := by
  rfl

private theorem c0345_checks : witnessesCheck c0345_witnesses = true := by
  simp only [witnessesCheck, c0345_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk130.w10_check, Bool.and_self]

private theorem c0345_cover : coverCheck 9925 9930 c0345_intervals = true := by
  decide

private theorem c0345_sound : IntervalSound (9925, 9930) := by
  have hc : coverCheck 9925 9930 (witnessIntervals c0345_witnesses) = true := by
    rw [c0345_intervals_eq]
    exact c0345_cover
  exact interval_sound_of_witness_checks (witnesses := c0345_witnesses)
    (lo := 9925) (hi := 9930) c0345_checks hc

private def c0346_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk130.w11, B699LowIndex.I11TerminalData.Chunk130.w12]
private def c0346_intervals : List NatInterval := [(9950, 9959), (9960, 9960)]

private theorem c0346_intervals_eq :
    witnessIntervals c0346_witnesses = c0346_intervals := by
  rfl

private theorem c0346_checks : witnessesCheck c0346_witnesses = true := by
  simp only [witnessesCheck, c0346_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk130.w11_check, B699LowIndex.I11TerminalData.Chunk130.w12_check, Bool.and_self]

private theorem c0346_cover : coverCheck 9950 9960 c0346_intervals = true := by
  decide

private theorem c0346_sound : IntervalSound (9950, 9960) := by
  have hc : coverCheck 9950 9960 (witnessIntervals c0346_witnesses) = true := by
    rw [c0346_intervals_eq]
    exact c0346_cover
  exact interval_sound_of_witness_checks (witnesses := c0346_witnesses)
    (lo := 9950) (hi := 9960) c0346_checks hc

private def c0347_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk130.w13, B699LowIndex.I11TerminalData.Chunk130.w14]
private def c0347_intervals : List NatInterval := [(9984, 9984), (9985, 9985)]

private theorem c0347_intervals_eq :
    witnessIntervals c0347_witnesses = c0347_intervals := by
  rfl

private theorem c0347_checks : witnessesCheck c0347_witnesses = true := by
  simp only [witnessesCheck, c0347_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk130.w13_check, B699LowIndex.I11TerminalData.Chunk130.w14_check, Bool.and_self]

private theorem c0347_cover : coverCheck 9984 9985 c0347_intervals = true := by
  decide

private theorem c0347_sound : IntervalSound (9984, 9985) := by
  have hc : coverCheck 9984 9985 (witnessIntervals c0347_witnesses) = true := by
    rw [c0347_intervals_eq]
    exact c0347_cover
  exact interval_sound_of_witness_checks (witnesses := c0347_witnesses)
    (lo := 9984) (hi := 9985) c0347_checks hc

private def c0348_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk130.w15, B699LowIndex.I11TerminalData.Chunk131.w0, B699LowIndex.I11TerminalData.Chunk131.w1, B699LowIndex.I11TerminalData.Chunk131.w2, B699LowIndex.I11TerminalData.Chunk131.w3]
private def c0348_intervals : List NatInterval := [(9990, 9990), (9991, 9991), (9992, 9992), (9993, 9993), (9994, 9994)]

private theorem c0348_intervals_eq :
    witnessIntervals c0348_witnesses = c0348_intervals := by
  rfl

private theorem c0348_checks : witnessesCheck c0348_witnesses = true := by
  simp only [witnessesCheck, c0348_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk130.w15_check, B699LowIndex.I11TerminalData.Chunk131.w0_check, B699LowIndex.I11TerminalData.Chunk131.w1_check, B699LowIndex.I11TerminalData.Chunk131.w2_check, B699LowIndex.I11TerminalData.Chunk131.w3_check, Bool.and_self]

private theorem c0348_cover : coverCheck 9990 9994 c0348_intervals = true := by
  decide

private theorem c0348_sound : IntervalSound (9990, 9994) := by
  have hc : coverCheck 9990 9994 (witnessIntervals c0348_witnesses) = true := by
    rw [c0348_intervals_eq]
    exact c0348_cover
  exact interval_sound_of_witness_checks (witnesses := c0348_witnesses)
    (lo := 9990) (hi := 9994) c0348_checks hc

private def c0349_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk131.w4, B699LowIndex.I11TerminalData.Chunk131.w5, B699LowIndex.I11TerminalData.Chunk131.w6, B699LowIndex.I11TerminalData.Chunk131.w7, B699LowIndex.I11TerminalData.Chunk131.w8, B699LowIndex.I11TerminalData.Chunk131.w9, B699LowIndex.I11TerminalData.Chunk131.w10, B699LowIndex.I11TerminalData.Chunk131.w11, B699LowIndex.I11TerminalData.Chunk131.w12, B699LowIndex.I11TerminalData.Chunk131.w13, B699LowIndex.I11TerminalData.Chunk131.w14]
private def c0349_intervals : List NatInterval := [(9996, 9996), (9997, 9997), (9998, 9998), (9999, 9999), (10000, 10000), (10001, 10001), (10002, 10002), (10003, 10003), (10004, 10004), (10005, 10005), (10006, 10006)]

private theorem c0349_intervals_eq :
    witnessIntervals c0349_witnesses = c0349_intervals := by
  rfl

private theorem c0349_checks : witnessesCheck c0349_witnesses = true := by
  simp only [witnessesCheck, c0349_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk131.w4_check, B699LowIndex.I11TerminalData.Chunk131.w5_check, B699LowIndex.I11TerminalData.Chunk131.w6_check, B699LowIndex.I11TerminalData.Chunk131.w7_check, B699LowIndex.I11TerminalData.Chunk131.w8_check, B699LowIndex.I11TerminalData.Chunk131.w9_check, B699LowIndex.I11TerminalData.Chunk131.w10_check, B699LowIndex.I11TerminalData.Chunk131.w11_check, B699LowIndex.I11TerminalData.Chunk131.w12_check, B699LowIndex.I11TerminalData.Chunk131.w13_check, B699LowIndex.I11TerminalData.Chunk131.w14_check, Bool.and_self]

private theorem c0349_cover : coverCheck 9996 10006 c0349_intervals = true := by
  decide

private theorem c0349_sound : IntervalSound (9996, 10006) := by
  have hc : coverCheck 9996 10006 (witnessIntervals c0349_witnesses) = true := by
    rw [c0349_intervals_eq]
    exact c0349_cover
  exact interval_sound_of_witness_checks (witnesses := c0349_witnesses)
    (lo := 9996) (hi := 10006) c0349_checks hc

private def c0350_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk131.w15, B699LowIndex.I11TerminalData.Chunk132.w0, B699LowIndex.I11TerminalData.Chunk132.w1, B699LowIndex.I11TerminalData.Chunk132.w2, B699LowIndex.I11TerminalData.Chunk132.w3, B699LowIndex.I11TerminalData.Chunk132.w4, B699LowIndex.I11TerminalData.Chunk132.w5, B699LowIndex.I11TerminalData.Chunk132.w6, B699LowIndex.I11TerminalData.Chunk132.w7]
private def c0350_intervals : List NatInterval := [(10017, 10019), (10020, 10020), (10021, 10021), (10022, 10022), (10023, 10023), (10024, 10024), (10025, 10025), (10026, 10026), (10027, 10027)]

private theorem c0350_intervals_eq :
    witnessIntervals c0350_witnesses = c0350_intervals := by
  rfl

private theorem c0350_checks : witnessesCheck c0350_witnesses = true := by
  simp only [witnessesCheck, c0350_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk131.w15_check, B699LowIndex.I11TerminalData.Chunk132.w0_check, B699LowIndex.I11TerminalData.Chunk132.w1_check, B699LowIndex.I11TerminalData.Chunk132.w2_check, B699LowIndex.I11TerminalData.Chunk132.w3_check, B699LowIndex.I11TerminalData.Chunk132.w4_check, B699LowIndex.I11TerminalData.Chunk132.w5_check, B699LowIndex.I11TerminalData.Chunk132.w6_check, B699LowIndex.I11TerminalData.Chunk132.w7_check, Bool.and_self]

private theorem c0350_cover : coverCheck 10017 10027 c0350_intervals = true := by
  decide

private theorem c0350_sound : IntervalSound (10017, 10027) := by
  have hc : coverCheck 10017 10027 (witnessIntervals c0350_witnesses) = true := by
    rw [c0350_intervals_eq]
    exact c0350_cover
  exact interval_sound_of_witness_checks (witnesses := c0350_witnesses)
    (lo := 10017) (hi := 10027) c0350_checks hc

private def c0351_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk132.w8, B699LowIndex.I11TerminalData.Chunk132.w9, B699LowIndex.I11TerminalData.Chunk132.w10, B699LowIndex.I11TerminalData.Chunk132.w11, B699LowIndex.I11TerminalData.Chunk132.w12, B699LowIndex.I11TerminalData.Chunk132.w13, B699LowIndex.I11TerminalData.Chunk132.w14, B699LowIndex.I11TerminalData.Chunk132.w15, B699LowIndex.I11TerminalData.Chunk133.w0, B699LowIndex.I11TerminalData.Chunk133.w1]
private def c0351_intervals : List NatInterval := [(10045, 10049), (10050, 10050), (10051, 10051), (10052, 10052), (10053, 10053), (10054, 10054), (10055, 10055), (10056, 10056), (10057, 10057), (10058, 10058)]

private theorem c0351_intervals_eq :
    witnessIntervals c0351_witnesses = c0351_intervals := by
  rfl

private theorem c0351_checks : witnessesCheck c0351_witnesses = true := by
  simp only [witnessesCheck, c0351_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk132.w8_check, B699LowIndex.I11TerminalData.Chunk132.w9_check, B699LowIndex.I11TerminalData.Chunk132.w10_check, B699LowIndex.I11TerminalData.Chunk132.w11_check, B699LowIndex.I11TerminalData.Chunk132.w12_check, B699LowIndex.I11TerminalData.Chunk132.w13_check, B699LowIndex.I11TerminalData.Chunk132.w14_check, B699LowIndex.I11TerminalData.Chunk132.w15_check, B699LowIndex.I11TerminalData.Chunk133.w0_check, B699LowIndex.I11TerminalData.Chunk133.w1_check, Bool.and_self]

private theorem c0351_cover : coverCheck 10045 10058 c0351_intervals = true := by
  decide

private theorem c0351_sound : IntervalSound (10045, 10058) := by
  have hc : coverCheck 10045 10058 (witnessIntervals c0351_witnesses) = true := by
    rw [c0351_intervals_eq]
    exact c0351_cover
  exact interval_sound_of_witness_checks (witnesses := c0351_witnesses)
    (lo := 10045) (hi := 10058) c0351_checks hc

def intervals : List NatInterval := [(9750, 9761), (9775, 9784), (9800, 9810), (9825, 9835), (9850, 9865), (9882, 9885), (9888, 9892), (9898, 9898), (9900, 9910), (9925, 9930), (9950, 9960), (9984, 9985), (9990, 9994), (9996, 10006), (10017, 10027), (10045, 10058)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (9750, 9761)) (intervals := [(9775, 9784), (9800, 9810), (9825, 9835), (9850, 9865), (9882, 9885), (9888, 9892), (9898, 9898), (9900, 9910), (9925, 9930), (9950, 9960), (9984, 9985), (9990, 9994), (9996, 10006), (10017, 10027), (10045, 10058)]) c0336_sound (intervals_sound_cons (I := (9775, 9784)) (intervals := [(9800, 9810), (9825, 9835), (9850, 9865), (9882, 9885), (9888, 9892), (9898, 9898), (9900, 9910), (9925, 9930), (9950, 9960), (9984, 9985), (9990, 9994), (9996, 10006), (10017, 10027), (10045, 10058)]) c0337_sound (intervals_sound_cons (I := (9800, 9810)) (intervals := [(9825, 9835), (9850, 9865), (9882, 9885), (9888, 9892), (9898, 9898), (9900, 9910), (9925, 9930), (9950, 9960), (9984, 9985), (9990, 9994), (9996, 10006), (10017, 10027), (10045, 10058)]) c0338_sound (intervals_sound_cons (I := (9825, 9835)) (intervals := [(9850, 9865), (9882, 9885), (9888, 9892), (9898, 9898), (9900, 9910), (9925, 9930), (9950, 9960), (9984, 9985), (9990, 9994), (9996, 10006), (10017, 10027), (10045, 10058)]) c0339_sound (intervals_sound_cons (I := (9850, 9865)) (intervals := [(9882, 9885), (9888, 9892), (9898, 9898), (9900, 9910), (9925, 9930), (9950, 9960), (9984, 9985), (9990, 9994), (9996, 10006), (10017, 10027), (10045, 10058)]) c0340_sound (intervals_sound_cons (I := (9882, 9885)) (intervals := [(9888, 9892), (9898, 9898), (9900, 9910), (9925, 9930), (9950, 9960), (9984, 9985), (9990, 9994), (9996, 10006), (10017, 10027), (10045, 10058)]) c0341_sound (intervals_sound_cons (I := (9888, 9892)) (intervals := [(9898, 9898), (9900, 9910), (9925, 9930), (9950, 9960), (9984, 9985), (9990, 9994), (9996, 10006), (10017, 10027), (10045, 10058)]) c0342_sound (intervals_sound_cons (I := (9898, 9898)) (intervals := [(9900, 9910), (9925, 9930), (9950, 9960), (9984, 9985), (9990, 9994), (9996, 10006), (10017, 10027), (10045, 10058)]) c0343_sound (intervals_sound_cons (I := (9900, 9910)) (intervals := [(9925, 9930), (9950, 9960), (9984, 9985), (9990, 9994), (9996, 10006), (10017, 10027), (10045, 10058)]) c0344_sound (intervals_sound_cons (I := (9925, 9930)) (intervals := [(9950, 9960), (9984, 9985), (9990, 9994), (9996, 10006), (10017, 10027), (10045, 10058)]) c0345_sound (intervals_sound_cons (I := (9950, 9960)) (intervals := [(9984, 9985), (9990, 9994), (9996, 10006), (10017, 10027), (10045, 10058)]) c0346_sound (intervals_sound_cons (I := (9984, 9985)) (intervals := [(9990, 9994), (9996, 10006), (10017, 10027), (10045, 10058)]) c0347_sound (intervals_sound_cons (I := (9990, 9994)) (intervals := [(9996, 10006), (10017, 10027), (10045, 10058)]) c0348_sound (intervals_sound_cons (I := (9996, 10006)) (intervals := [(10017, 10027), (10045, 10058)]) c0349_sound (intervals_sound_cons (I := (10017, 10027)) (intervals := [(10045, 10058)]) c0350_sound (intervals_sound_cons (I := (10045, 10058)) (intervals := []) c0351_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G021
