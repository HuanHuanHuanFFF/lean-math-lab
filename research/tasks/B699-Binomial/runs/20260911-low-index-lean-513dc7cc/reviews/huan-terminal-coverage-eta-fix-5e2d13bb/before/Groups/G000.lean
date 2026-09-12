import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.First
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk056
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk057
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk058
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk059
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk060
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk061
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk062
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk063
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk064
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk065

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G000
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0001_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk056.w15, B699LowIndex.I11TerminalData.Chunk057.w0, B699LowIndex.I11TerminalData.Chunk057.w1, B699LowIndex.I11TerminalData.Chunk057.w2, B699LowIndex.I11TerminalData.Chunk057.w3, B699LowIndex.I11TerminalData.Chunk057.w4, B699LowIndex.I11TerminalData.Chunk057.w5, B699LowIndex.I11TerminalData.Chunk057.w6]
private def c0001_intervals : List NatInterval := [(4016, 4023), (4024, 4031), (4032, 4037), (4038, 4038), (4039, 4039), (4040, 4040), (4041, 4041), (4042, 4042)]

private theorem c0001_intervals_eq :
    witnessIntervals c0001_witnesses = c0001_intervals := by
  rfl

private theorem c0001_checks : witnessesCheck c0001_witnesses = true := by
  simp only [witnessesCheck, c0001_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk056.w15_check, B699LowIndex.I11TerminalData.Chunk057.w0_check, B699LowIndex.I11TerminalData.Chunk057.w1_check, B699LowIndex.I11TerminalData.Chunk057.w2_check, B699LowIndex.I11TerminalData.Chunk057.w3_check, B699LowIndex.I11TerminalData.Chunk057.w4_check, B699LowIndex.I11TerminalData.Chunk057.w5_check, B699LowIndex.I11TerminalData.Chunk057.w6_check, Bool.and_self]

private theorem c0001_cover : coverCheck 4016 4042 c0001_intervals = true := by
  decide

private theorem c0001_sound : IntervalSound (4016, 4042) := by
  have hc : coverCheck 4016 4042 (witnessIntervals c0001_witnesses) = true := by
    rw [c0001_intervals_eq]
    exact c0001_cover
  exact interval_sound_of_witness_checks (witnesses := c0001_witnesses)
    (lo := 4016) (hi := 4042) c0001_checks hc

private def c0002_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk057.w7, B699LowIndex.I11TerminalData.Chunk057.w8, B699LowIndex.I11TerminalData.Chunk057.w9]
private def c0002_intervals : List NatInterval := [(4048, 4048), (4049, 4059), (4060, 4060)]

private theorem c0002_intervals_eq :
    witnessIntervals c0002_witnesses = c0002_intervals := by
  rfl

private theorem c0002_checks : witnessesCheck c0002_witnesses = true := by
  simp only [witnessesCheck, c0002_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk057.w7_check, B699LowIndex.I11TerminalData.Chunk057.w8_check, B699LowIndex.I11TerminalData.Chunk057.w9_check, Bool.and_self]

private theorem c0002_cover : coverCheck 4048 4060 c0002_intervals = true := by
  decide

private theorem c0002_sound : IntervalSound (4048, 4060) := by
  have hc : coverCheck 4048 4060 (witnessIntervals c0002_witnesses) = true := by
    rw [c0002_intervals_eq]
    exact c0002_cover
  exact interval_sound_of_witness_checks (witnesses := c0002_witnesses)
    (lo := 4048) (hi := 4060) c0002_checks hc

private def c0003_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk057.w10, B699LowIndex.I11TerminalData.Chunk057.w11, B699LowIndex.I11TerminalData.Chunk057.w12, B699LowIndex.I11TerminalData.Chunk057.w13, B699LowIndex.I11TerminalData.Chunk057.w14, B699LowIndex.I11TerminalData.Chunk057.w15, B699LowIndex.I11TerminalData.Chunk058.w0, B699LowIndex.I11TerminalData.Chunk058.w1, B699LowIndex.I11TerminalData.Chunk058.w2]
private def c0003_intervals : List NatInterval := [(4064, 4067), (4068, 4068), (4069, 4069), (4070, 4070), (4071, 4071), (4072, 4072), (4073, 4083), (4084, 4089), (4090, 4090)]

private theorem c0003_intervals_eq :
    witnessIntervals c0003_witnesses = c0003_intervals := by
  rfl

private theorem c0003_checks : witnessesCheck c0003_witnesses = true := by
  simp only [witnessesCheck, c0003_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk057.w10_check, B699LowIndex.I11TerminalData.Chunk057.w11_check, B699LowIndex.I11TerminalData.Chunk057.w12_check, B699LowIndex.I11TerminalData.Chunk057.w13_check, B699LowIndex.I11TerminalData.Chunk057.w14_check, B699LowIndex.I11TerminalData.Chunk057.w15_check, B699LowIndex.I11TerminalData.Chunk058.w0_check, B699LowIndex.I11TerminalData.Chunk058.w1_check, B699LowIndex.I11TerminalData.Chunk058.w2_check, Bool.and_self]

private theorem c0003_cover : coverCheck 4064 4090 c0003_intervals = true := by
  decide

private theorem c0003_sound : IntervalSound (4064, 4090) := by
  have hc : coverCheck 4064 4090 (witnessIntervals c0003_witnesses) = true := by
    rw [c0003_intervals_eq]
    exact c0003_cover
  exact interval_sound_of_witness_checks (witnesses := c0003_witnesses)
    (lo := 4064) (hi := 4090) c0003_checks hc

private def c0004_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk058.w3, B699LowIndex.I11TerminalData.Chunk058.w4, B699LowIndex.I11TerminalData.Chunk058.w5]
private def c0004_intervals : List NatInterval := [(4096, 4103), (4104, 4109), (4110, 4110)]

private theorem c0004_intervals_eq :
    witnessIntervals c0004_witnesses = c0004_intervals := by
  rfl

private theorem c0004_checks : witnessesCheck c0004_witnesses = true := by
  simp only [witnessesCheck, c0004_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk058.w3_check, B699LowIndex.I11TerminalData.Chunk058.w4_check, B699LowIndex.I11TerminalData.Chunk058.w5_check, Bool.and_self]

private theorem c0004_cover : coverCheck 4096 4110 c0004_intervals = true := by
  decide

private theorem c0004_sound : IntervalSound (4096, 4110) := by
  have hc : coverCheck 4096 4110 (witnessIntervals c0004_witnesses) = true := by
    rw [c0004_intervals_eq]
    exact c0004_cover
  exact interval_sound_of_witness_checks (witnesses := c0004_witnesses)
    (lo := 4096) (hi := 4110) c0004_checks hc

private def c0005_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk058.w6, B699LowIndex.I11TerminalData.Chunk058.w7, B699LowIndex.I11TerminalData.Chunk058.w8, B699LowIndex.I11TerminalData.Chunk058.w9, B699LowIndex.I11TerminalData.Chunk058.w10, B699LowIndex.I11TerminalData.Chunk058.w11, B699LowIndex.I11TerminalData.Chunk058.w12, B699LowIndex.I11TerminalData.Chunk058.w13]
private def c0005_intervals : List NatInterval := [(4112, 4121), (4122, 4122), (4123, 4123), (4124, 4124), (4125, 4125), (4126, 4126), (4127, 4137), (4138, 4138)]

private theorem c0005_intervals_eq :
    witnessIntervals c0005_witnesses = c0005_intervals := by
  rfl

private theorem c0005_checks : witnessesCheck c0005_witnesses = true := by
  simp only [witnessesCheck, c0005_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk058.w6_check, B699LowIndex.I11TerminalData.Chunk058.w7_check, B699LowIndex.I11TerminalData.Chunk058.w8_check, B699LowIndex.I11TerminalData.Chunk058.w9_check, B699LowIndex.I11TerminalData.Chunk058.w10_check, B699LowIndex.I11TerminalData.Chunk058.w11_check, B699LowIndex.I11TerminalData.Chunk058.w12_check, B699LowIndex.I11TerminalData.Chunk058.w13_check, Bool.and_self]

private theorem c0005_cover : coverCheck 4112 4138 c0005_intervals = true := by
  decide

private theorem c0005_sound : IntervalSound (4112, 4138) := by
  have hc : coverCheck 4112 4138 (witnessIntervals c0005_witnesses) = true := by
    rw [c0005_intervals_eq]
    exact c0005_cover
  exact interval_sound_of_witness_checks (witnesses := c0005_witnesses)
    (lo := 4112) (hi := 4138) c0005_checks hc

private def c0006_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk058.w14, B699LowIndex.I11TerminalData.Chunk058.w15, B699LowIndex.I11TerminalData.Chunk059.w0, B699LowIndex.I11TerminalData.Chunk059.w1, B699LowIndex.I11TerminalData.Chunk059.w2, B699LowIndex.I11TerminalData.Chunk059.w3, B699LowIndex.I11TerminalData.Chunk059.w4, B699LowIndex.I11TerminalData.Chunk059.w5, B699LowIndex.I11TerminalData.Chunk059.w6, B699LowIndex.I11TerminalData.Chunk059.w7, B699LowIndex.I11TerminalData.Chunk059.w8, B699LowIndex.I11TerminalData.Chunk059.w9, B699LowIndex.I11TerminalData.Chunk059.w10, B699LowIndex.I11TerminalData.Chunk059.w11]
private def c0006_intervals : List NatInterval := [(4144, 4149), (4150, 4150), (4151, 4151), (4152, 4152), (4153, 4163), (4164, 4169), (4170, 4170), (4171, 4171), (4172, 4172), (4173, 4173), (4174, 4174), (4175, 4175), (4176, 4176), (4177, 4186)]

private theorem c0006_intervals_eq :
    witnessIntervals c0006_witnesses = c0006_intervals := by
  rfl

private theorem c0006_checks : witnessesCheck c0006_witnesses = true := by
  simp only [witnessesCheck, c0006_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk058.w14_check, B699LowIndex.I11TerminalData.Chunk058.w15_check, B699LowIndex.I11TerminalData.Chunk059.w0_check, B699LowIndex.I11TerminalData.Chunk059.w1_check, B699LowIndex.I11TerminalData.Chunk059.w2_check, B699LowIndex.I11TerminalData.Chunk059.w3_check, B699LowIndex.I11TerminalData.Chunk059.w4_check, B699LowIndex.I11TerminalData.Chunk059.w5_check, B699LowIndex.I11TerminalData.Chunk059.w6_check, B699LowIndex.I11TerminalData.Chunk059.w7_check, B699LowIndex.I11TerminalData.Chunk059.w8_check, B699LowIndex.I11TerminalData.Chunk059.w9_check, B699LowIndex.I11TerminalData.Chunk059.w10_check, B699LowIndex.I11TerminalData.Chunk059.w11_check, Bool.and_self]

private theorem c0006_cover : coverCheck 4144 4186 c0006_intervals = true := by
  decide

private theorem c0006_sound : IntervalSound (4144, 4186) := by
  have hc : coverCheck 4144 4186 (witnessIntervals c0006_witnesses) = true := by
    rw [c0006_intervals_eq]
    exact c0006_cover
  exact interval_sound_of_witness_checks (witnesses := c0006_witnesses)
    (lo := 4144) (hi := 4186) c0006_checks hc

private def c0007_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk059.w12, B699LowIndex.I11TerminalData.Chunk059.w13, B699LowIndex.I11TerminalData.Chunk059.w14, B699LowIndex.I11TerminalData.Chunk059.w15, B699LowIndex.I11TerminalData.Chunk060.w0, B699LowIndex.I11TerminalData.Chunk060.w1, B699LowIndex.I11TerminalData.Chunk060.w2, B699LowIndex.I11TerminalData.Chunk060.w3, B699LowIndex.I11TerminalData.Chunk060.w4, B699LowIndex.I11TerminalData.Chunk060.w5, B699LowIndex.I11TerminalData.Chunk060.w6, B699LowIndex.I11TerminalData.Chunk060.w7, B699LowIndex.I11TerminalData.Chunk060.w8]
private def c0007_intervals : List NatInterval := [(4192, 4192), (4193, 4193), (4194, 4194), (4195, 4195), (4196, 4196), (4197, 4197), (4198, 4198), (4199, 4199), (4200, 4200), (4201, 4211), (4212, 4221), (4222, 4229), (4230, 4235)]

private theorem c0007_intervals_eq :
    witnessIntervals c0007_witnesses = c0007_intervals := by
  rfl

private theorem c0007_checks : witnessesCheck c0007_witnesses = true := by
  simp only [witnessesCheck, c0007_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk059.w12_check, B699LowIndex.I11TerminalData.Chunk059.w13_check, B699LowIndex.I11TerminalData.Chunk059.w14_check, B699LowIndex.I11TerminalData.Chunk059.w15_check, B699LowIndex.I11TerminalData.Chunk060.w0_check, B699LowIndex.I11TerminalData.Chunk060.w1_check, B699LowIndex.I11TerminalData.Chunk060.w2_check, B699LowIndex.I11TerminalData.Chunk060.w3_check, B699LowIndex.I11TerminalData.Chunk060.w4_check, B699LowIndex.I11TerminalData.Chunk060.w5_check, B699LowIndex.I11TerminalData.Chunk060.w6_check, B699LowIndex.I11TerminalData.Chunk060.w7_check, B699LowIndex.I11TerminalData.Chunk060.w8_check, Bool.and_self]

private theorem c0007_cover : coverCheck 4192 4235 c0007_intervals = true := by
  decide

private theorem c0007_sound : IntervalSound (4192, 4235) := by
  have hc : coverCheck 4192 4235 (witnessIntervals c0007_witnesses) = true := by
    rw [c0007_intervals_eq]
    exact c0007_cover
  exact interval_sound_of_witness_checks (witnesses := c0007_witnesses)
    (lo := 4192) (hi := 4235) c0007_checks hc

private def c0008_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk060.w9, B699LowIndex.I11TerminalData.Chunk060.w10, B699LowIndex.I11TerminalData.Chunk060.w11, B699LowIndex.I11TerminalData.Chunk060.w12, B699LowIndex.I11TerminalData.Chunk060.w13, B699LowIndex.I11TerminalData.Chunk060.w14, B699LowIndex.I11TerminalData.Chunk060.w15, B699LowIndex.I11TerminalData.Chunk061.w0]
private def c0008_intervals : List NatInterval := [(4240, 4241), (4242, 4251), (4252, 4253), (4254, 4263), (4264, 4271), (4272, 4281), (4282, 4283), (4284, 4285)]

private theorem c0008_intervals_eq :
    witnessIntervals c0008_witnesses = c0008_intervals := by
  rfl

private theorem c0008_checks : witnessesCheck c0008_witnesses = true := by
  simp only [witnessesCheck, c0008_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk060.w9_check, B699LowIndex.I11TerminalData.Chunk060.w10_check, B699LowIndex.I11TerminalData.Chunk060.w11_check, B699LowIndex.I11TerminalData.Chunk060.w12_check, B699LowIndex.I11TerminalData.Chunk060.w13_check, B699LowIndex.I11TerminalData.Chunk060.w14_check, B699LowIndex.I11TerminalData.Chunk060.w15_check, B699LowIndex.I11TerminalData.Chunk061.w0_check, Bool.and_self]

private theorem c0008_cover : coverCheck 4240 4285 c0008_intervals = true := by
  decide

private theorem c0008_sound : IntervalSound (4240, 4285) := by
  have hc : coverCheck 4240 4285 (witnessIntervals c0008_witnesses) = true := by
    rw [c0008_intervals_eq]
    exact c0008_cover
  exact interval_sound_of_witness_checks (witnesses := c0008_witnesses)
    (lo := 4240) (hi := 4285) c0008_checks hc

private def c0009_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk061.w1, B699LowIndex.I11TerminalData.Chunk061.w2]
private def c0009_intervals : List NatInterval := [(4288, 4293), (4294, 4298)]

private theorem c0009_intervals_eq :
    witnessIntervals c0009_witnesses = c0009_intervals := by
  rfl

private theorem c0009_checks : witnessesCheck c0009_witnesses = true := by
  simp only [witnessesCheck, c0009_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk061.w1_check, B699LowIndex.I11TerminalData.Chunk061.w2_check, Bool.and_self]

private theorem c0009_cover : coverCheck 4288 4298 c0009_intervals = true := by
  decide

private theorem c0009_sound : IntervalSound (4288, 4298) := by
  have hc : coverCheck 4288 4298 (witnessIntervals c0009_witnesses) = true := by
    rw [c0009_intervals_eq]
    exact c0009_cover
  exact interval_sound_of_witness_checks (witnesses := c0009_witnesses)
    (lo := 4288) (hi := 4298) c0009_checks hc

private def c0010_p00_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk061.w3, B699LowIndex.I11TerminalData.Chunk061.w4, B699LowIndex.I11TerminalData.Chunk061.w5, B699LowIndex.I11TerminalData.Chunk061.w6, B699LowIndex.I11TerminalData.Chunk061.w7, B699LowIndex.I11TerminalData.Chunk061.w8, B699LowIndex.I11TerminalData.Chunk061.w9, B699LowIndex.I11TerminalData.Chunk061.w10, B699LowIndex.I11TerminalData.Chunk061.w11, B699LowIndex.I11TerminalData.Chunk061.w12, B699LowIndex.I11TerminalData.Chunk061.w13, B699LowIndex.I11TerminalData.Chunk061.w14, B699LowIndex.I11TerminalData.Chunk061.w15, B699LowIndex.I11TerminalData.Chunk062.w0, B699LowIndex.I11TerminalData.Chunk062.w1, B699LowIndex.I11TerminalData.Chunk062.w2]
private def c0010_p00_intervals : List NatInterval := [(4300, 4307), (4308, 4308), (4309, 4309), (4310, 4310), (4311, 4311), (4312, 4312), (4313, 4313), (4314, 4314), (4315, 4315), (4316, 4316), (4317, 4317), (4318, 4318), (4319, 4319), (4320, 4320), (4321, 4321), (4322, 4322)]

private theorem c0010_p00_intervals_eq :
    witnessIntervals c0010_p00_witnesses = c0010_p00_intervals := by
  rfl

private theorem c0010_p00_checks : witnessesCheck c0010_p00_witnesses = true := by
  simp only [witnessesCheck, c0010_p00_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk061.w3_check, B699LowIndex.I11TerminalData.Chunk061.w4_check, B699LowIndex.I11TerminalData.Chunk061.w5_check, B699LowIndex.I11TerminalData.Chunk061.w6_check, B699LowIndex.I11TerminalData.Chunk061.w7_check, B699LowIndex.I11TerminalData.Chunk061.w8_check, B699LowIndex.I11TerminalData.Chunk061.w9_check, B699LowIndex.I11TerminalData.Chunk061.w10_check, B699LowIndex.I11TerminalData.Chunk061.w11_check, B699LowIndex.I11TerminalData.Chunk061.w12_check, B699LowIndex.I11TerminalData.Chunk061.w13_check, B699LowIndex.I11TerminalData.Chunk061.w14_check, B699LowIndex.I11TerminalData.Chunk061.w15_check, B699LowIndex.I11TerminalData.Chunk062.w0_check, B699LowIndex.I11TerminalData.Chunk062.w1_check, B699LowIndex.I11TerminalData.Chunk062.w2_check, Bool.and_self]

private theorem c0010_p00_cover : coverCheck 4300 4322 c0010_p00_intervals = true := by
  decide

private theorem c0010_p00_sound : IntervalSound (4300, 4322) := by
  have hc : coverCheck 4300 4322 (witnessIntervals c0010_p00_witnesses) = true := by
    rw [c0010_p00_intervals_eq]
    exact c0010_p00_cover
  exact interval_sound_of_witness_checks (witnesses := c0010_p00_witnesses)
    (lo := 4300) (hi := 4322) c0010_p00_checks hc

private def c0010_p01_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk062.w3, B699LowIndex.I11TerminalData.Chunk062.w4, B699LowIndex.I11TerminalData.Chunk062.w5, B699LowIndex.I11TerminalData.Chunk062.w6, B699LowIndex.I11TerminalData.Chunk062.w7, B699LowIndex.I11TerminalData.Chunk062.w8]
private def c0010_p01_intervals : List NatInterval := [(4323, 4323), (4324, 4324), (4325, 4325), (4326, 4326), (4327, 4337), (4338, 4346)]

private theorem c0010_p01_intervals_eq :
    witnessIntervals c0010_p01_witnesses = c0010_p01_intervals := by
  rfl

private theorem c0010_p01_checks : witnessesCheck c0010_p01_witnesses = true := by
  simp only [witnessesCheck, c0010_p01_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk062.w3_check, B699LowIndex.I11TerminalData.Chunk062.w4_check, B699LowIndex.I11TerminalData.Chunk062.w5_check, B699LowIndex.I11TerminalData.Chunk062.w6_check, B699LowIndex.I11TerminalData.Chunk062.w7_check, B699LowIndex.I11TerminalData.Chunk062.w8_check, Bool.and_self]

private theorem c0010_p01_cover : coverCheck 4323 4346 c0010_p01_intervals = true := by
  decide

private theorem c0010_p01_sound : IntervalSound (4323, 4346) := by
  have hc : coverCheck 4323 4346 (witnessIntervals c0010_p01_witnesses) = true := by
    rw [c0010_p01_intervals_eq]
    exact c0010_p01_cover
  exact interval_sound_of_witness_checks (witnesses := c0010_p01_witnesses)
    (lo := 4323) (hi := 4346) c0010_p01_checks hc

private def c0010_segments : List NatInterval := [(4300, 4322), (4323, 4346)]
private theorem c0010_segments_sound : IntervalsSound c0010_segments := by
  unfold c0010_segments
  exact (intervals_sound_cons (I := (4300, 4322)) (intervals := [(4323, 4346)]) c0010_p00_sound (intervals_sound_cons (I := (4323, 4346)) (intervals := []) c0010_p01_sound intervals_sound_nil))
private theorem c0010_segments_cover : coverCheck 4300 4346 c0010_segments = true := by
  decide
private theorem c0010_sound : IntervalSound (4300, 4346) :=
  interval_sound_of_interval_cover (intervals := c0010_segments)
    (lo := 4300) (hi := 4346) c0010_segments_sound c0010_segments_cover

private def c0011_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk062.w9, B699LowIndex.I11TerminalData.Chunk062.w10, B699LowIndex.I11TerminalData.Chunk062.w11, B699LowIndex.I11TerminalData.Chunk062.w12, B699LowIndex.I11TerminalData.Chunk062.w13, B699LowIndex.I11TerminalData.Chunk062.w14, B699LowIndex.I11TerminalData.Chunk062.w15, B699LowIndex.I11TerminalData.Chunk063.w0, B699LowIndex.I11TerminalData.Chunk063.w1, B699LowIndex.I11TerminalData.Chunk063.w2, B699LowIndex.I11TerminalData.Chunk063.w3, B699LowIndex.I11TerminalData.Chunk063.w4]
private def c0011_intervals : List NatInterval := [(4350, 4359), (4360, 4367), (4368, 4373), (4374, 4383), (4384, 4384), (4385, 4385), (4386, 4386), (4387, 4387), (4388, 4388), (4389, 4389), (4390, 4390), (4391, 4394)]

private theorem c0011_intervals_eq :
    witnessIntervals c0011_witnesses = c0011_intervals := by
  rfl

private theorem c0011_checks : witnessesCheck c0011_witnesses = true := by
  simp only [witnessesCheck, c0011_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk062.w9_check, B699LowIndex.I11TerminalData.Chunk062.w10_check, B699LowIndex.I11TerminalData.Chunk062.w11_check, B699LowIndex.I11TerminalData.Chunk062.w12_check, B699LowIndex.I11TerminalData.Chunk062.w13_check, B699LowIndex.I11TerminalData.Chunk062.w14_check, B699LowIndex.I11TerminalData.Chunk062.w15_check, B699LowIndex.I11TerminalData.Chunk063.w0_check, B699LowIndex.I11TerminalData.Chunk063.w1_check, B699LowIndex.I11TerminalData.Chunk063.w2_check, B699LowIndex.I11TerminalData.Chunk063.w3_check, B699LowIndex.I11TerminalData.Chunk063.w4_check, Bool.and_self]

private theorem c0011_cover : coverCheck 4350 4394 c0011_intervals = true := by
  decide

private theorem c0011_sound : IntervalSound (4350, 4394) := by
  have hc : coverCheck 4350 4394 (witnessIntervals c0011_witnesses) = true := by
    rw [c0011_intervals_eq]
    exact c0011_cover
  exact interval_sound_of_witness_checks (witnesses := c0011_witnesses)
    (lo := 4350) (hi := 4394) c0011_checks hc

private def c0012_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk063.w5, B699LowIndex.I11TerminalData.Chunk063.w6, B699LowIndex.I11TerminalData.Chunk063.w7, B699LowIndex.I11TerminalData.Chunk063.w8, B699LowIndex.I11TerminalData.Chunk063.w9, B699LowIndex.I11TerminalData.Chunk063.w10, B699LowIndex.I11TerminalData.Chunk063.w11, B699LowIndex.I11TerminalData.Chunk063.w12, B699LowIndex.I11TerminalData.Chunk063.w13, B699LowIndex.I11TerminalData.Chunk063.w14, B699LowIndex.I11TerminalData.Chunk063.w15, B699LowIndex.I11TerminalData.Chunk064.w0, B699LowIndex.I11TerminalData.Chunk064.w1, B699LowIndex.I11TerminalData.Chunk064.w2]
private def c0012_intervals : List NatInterval := [(4400, 4407), (4408, 4408), (4409, 4419), (4420, 4420), (4421, 4431), (4432, 4433), (4434, 4434), (4435, 4435), (4436, 4436), (4437, 4437), (4438, 4438), (4439, 4439), (4440, 4440), (4441, 4442)]

private theorem c0012_intervals_eq :
    witnessIntervals c0012_witnesses = c0012_intervals := by
  rfl

private theorem c0012_checks : witnessesCheck c0012_witnesses = true := by
  simp only [witnessesCheck, c0012_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk063.w5_check, B699LowIndex.I11TerminalData.Chunk063.w6_check, B699LowIndex.I11TerminalData.Chunk063.w7_check, B699LowIndex.I11TerminalData.Chunk063.w8_check, B699LowIndex.I11TerminalData.Chunk063.w9_check, B699LowIndex.I11TerminalData.Chunk063.w10_check, B699LowIndex.I11TerminalData.Chunk063.w11_check, B699LowIndex.I11TerminalData.Chunk063.w12_check, B699LowIndex.I11TerminalData.Chunk063.w13_check, B699LowIndex.I11TerminalData.Chunk063.w14_check, B699LowIndex.I11TerminalData.Chunk063.w15_check, B699LowIndex.I11TerminalData.Chunk064.w0_check, B699LowIndex.I11TerminalData.Chunk064.w1_check, B699LowIndex.I11TerminalData.Chunk064.w2_check, Bool.and_self]

private theorem c0012_cover : coverCheck 4400 4442 c0012_intervals = true := by
  decide

private theorem c0012_sound : IntervalSound (4400, 4442) := by
  have hc : coverCheck 4400 4442 (witnessIntervals c0012_witnesses) = true := by
    rw [c0012_intervals_eq]
    exact c0012_cover
  exact interval_sound_of_witness_checks (witnesses := c0012_witnesses)
    (lo := 4400) (hi := 4442) c0012_checks hc

private def c0013_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk064.w3, B699LowIndex.I11TerminalData.Chunk064.w4, B699LowIndex.I11TerminalData.Chunk064.w5, B699LowIndex.I11TerminalData.Chunk064.w6, B699LowIndex.I11TerminalData.Chunk064.w7, B699LowIndex.I11TerminalData.Chunk064.w8, B699LowIndex.I11TerminalData.Chunk064.w9, B699LowIndex.I11TerminalData.Chunk064.w10, B699LowIndex.I11TerminalData.Chunk064.w11, B699LowIndex.I11TerminalData.Chunk064.w12, B699LowIndex.I11TerminalData.Chunk064.w13]
private def c0013_intervals : List NatInterval := [(4448, 4457), (4458, 4467), (4468, 4473), (4474, 4474), (4475, 4475), (4476, 4476), (4477, 4477), (4478, 4478), (4479, 4479), (4480, 4480), (4481, 4490)]

private theorem c0013_intervals_eq :
    witnessIntervals c0013_witnesses = c0013_intervals := by
  rfl

private theorem c0013_checks : witnessesCheck c0013_witnesses = true := by
  simp only [witnessesCheck, c0013_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk064.w3_check, B699LowIndex.I11TerminalData.Chunk064.w4_check, B699LowIndex.I11TerminalData.Chunk064.w5_check, B699LowIndex.I11TerminalData.Chunk064.w6_check, B699LowIndex.I11TerminalData.Chunk064.w7_check, B699LowIndex.I11TerminalData.Chunk064.w8_check, B699LowIndex.I11TerminalData.Chunk064.w9_check, B699LowIndex.I11TerminalData.Chunk064.w10_check, B699LowIndex.I11TerminalData.Chunk064.w11_check, B699LowIndex.I11TerminalData.Chunk064.w12_check, B699LowIndex.I11TerminalData.Chunk064.w13_check, Bool.and_self]

private theorem c0013_cover : coverCheck 4448 4490 c0013_intervals = true := by
  decide

private theorem c0013_sound : IntervalSound (4448, 4490) := by
  have hc : coverCheck 4448 4490 (witnessIntervals c0013_witnesses) = true := by
    rw [c0013_intervals_eq]
    exact c0013_cover
  exact interval_sound_of_witness_checks (witnesses := c0013_witnesses)
    (lo := 4448) (hi := 4490) c0013_checks hc

private def c0014_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk064.w14, B699LowIndex.I11TerminalData.Chunk064.w15, B699LowIndex.I11TerminalData.Chunk065.w0, B699LowIndex.I11TerminalData.Chunk065.w1, B699LowIndex.I11TerminalData.Chunk065.w2, B699LowIndex.I11TerminalData.Chunk065.w3]
private def c0014_intervals : List NatInterval := [(4496, 4503), (4504, 4504), (4505, 4505), (4506, 4506), (4507, 4517), (4518, 4519)]

private theorem c0014_intervals_eq :
    witnessIntervals c0014_witnesses = c0014_intervals := by
  rfl

private theorem c0014_checks : witnessesCheck c0014_witnesses = true := by
  simp only [witnessesCheck, c0014_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk064.w14_check, B699LowIndex.I11TerminalData.Chunk064.w15_check, B699LowIndex.I11TerminalData.Chunk065.w0_check, B699LowIndex.I11TerminalData.Chunk065.w1_check, B699LowIndex.I11TerminalData.Chunk065.w2_check, B699LowIndex.I11TerminalData.Chunk065.w3_check, Bool.and_self]

private theorem c0014_cover : coverCheck 4496 4519 c0014_intervals = true := by
  decide

private theorem c0014_sound : IntervalSound (4496, 4519) := by
  have hc : coverCheck 4496 4519 (witnessIntervals c0014_witnesses) = true := by
    rw [c0014_intervals_eq]
    exact c0014_cover
  exact interval_sound_of_witness_checks (witnesses := c0014_witnesses)
    (lo := 4496) (hi := 4519) c0014_checks hc

private def c0015_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk065.w4, B699LowIndex.I11TerminalData.Chunk065.w5, B699LowIndex.I11TerminalData.Chunk065.w6, B699LowIndex.I11TerminalData.Chunk065.w7, B699LowIndex.I11TerminalData.Chunk065.w8, B699LowIndex.I11TerminalData.Chunk065.w9]
private def c0015_intervals : List NatInterval := [(4528, 4533), (4534, 4534), (4535, 4535), (4536, 4536), (4537, 4537), (4538, 4538)]

private theorem c0015_intervals_eq :
    witnessIntervals c0015_witnesses = c0015_intervals := by
  rfl

private theorem c0015_checks : witnessesCheck c0015_witnesses = true := by
  simp only [witnessesCheck, c0015_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk065.w4_check, B699LowIndex.I11TerminalData.Chunk065.w5_check, B699LowIndex.I11TerminalData.Chunk065.w6_check, B699LowIndex.I11TerminalData.Chunk065.w7_check, B699LowIndex.I11TerminalData.Chunk065.w8_check, B699LowIndex.I11TerminalData.Chunk065.w9_check, Bool.and_self]

private theorem c0015_cover : coverCheck 4528 4538 c0015_intervals = true := by
  decide

private theorem c0015_sound : IntervalSound (4528, 4538) := by
  have hc : coverCheck 4528 4538 (witnessIntervals c0015_witnesses) = true := by
    rw [c0015_intervals_eq]
    exact c0015_cover
  exact interval_sound_of_witness_checks (witnesses := c0015_witnesses)
    (lo := 4528) (hi := 4538) c0015_checks hc

def intervals : List NatInterval := [(24, 4010), (4016, 4042), (4048, 4060), (4064, 4090), (4096, 4110), (4112, 4138), (4144, 4186), (4192, 4235), (4240, 4285), (4288, 4298), (4300, 4346), (4350, 4394), (4400, 4442), (4448, 4490), (4496, 4519), (4528, 4538)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (24, 4010)) (intervals := [(4016, 4042), (4048, 4060), (4064, 4090), (4096, 4110), (4112, 4138), (4144, 4186), (4192, 4235), (4240, 4285), (4288, 4298), (4300, 4346), (4350, 4394), (4400, 4442), (4448, 4490), (4496, 4519), (4528, 4538)]) Math.B699.I11TerminalCandidateCoverage.First.sound (intervals_sound_cons (I := (4016, 4042)) (intervals := [(4048, 4060), (4064, 4090), (4096, 4110), (4112, 4138), (4144, 4186), (4192, 4235), (4240, 4285), (4288, 4298), (4300, 4346), (4350, 4394), (4400, 4442), (4448, 4490), (4496, 4519), (4528, 4538)]) c0001_sound (intervals_sound_cons (I := (4048, 4060)) (intervals := [(4064, 4090), (4096, 4110), (4112, 4138), (4144, 4186), (4192, 4235), (4240, 4285), (4288, 4298), (4300, 4346), (4350, 4394), (4400, 4442), (4448, 4490), (4496, 4519), (4528, 4538)]) c0002_sound (intervals_sound_cons (I := (4064, 4090)) (intervals := [(4096, 4110), (4112, 4138), (4144, 4186), (4192, 4235), (4240, 4285), (4288, 4298), (4300, 4346), (4350, 4394), (4400, 4442), (4448, 4490), (4496, 4519), (4528, 4538)]) c0003_sound (intervals_sound_cons (I := (4096, 4110)) (intervals := [(4112, 4138), (4144, 4186), (4192, 4235), (4240, 4285), (4288, 4298), (4300, 4346), (4350, 4394), (4400, 4442), (4448, 4490), (4496, 4519), (4528, 4538)]) c0004_sound (intervals_sound_cons (I := (4112, 4138)) (intervals := [(4144, 4186), (4192, 4235), (4240, 4285), (4288, 4298), (4300, 4346), (4350, 4394), (4400, 4442), (4448, 4490), (4496, 4519), (4528, 4538)]) c0005_sound (intervals_sound_cons (I := (4144, 4186)) (intervals := [(4192, 4235), (4240, 4285), (4288, 4298), (4300, 4346), (4350, 4394), (4400, 4442), (4448, 4490), (4496, 4519), (4528, 4538)]) c0006_sound (intervals_sound_cons (I := (4192, 4235)) (intervals := [(4240, 4285), (4288, 4298), (4300, 4346), (4350, 4394), (4400, 4442), (4448, 4490), (4496, 4519), (4528, 4538)]) c0007_sound (intervals_sound_cons (I := (4240, 4285)) (intervals := [(4288, 4298), (4300, 4346), (4350, 4394), (4400, 4442), (4448, 4490), (4496, 4519), (4528, 4538)]) c0008_sound (intervals_sound_cons (I := (4288, 4298)) (intervals := [(4300, 4346), (4350, 4394), (4400, 4442), (4448, 4490), (4496, 4519), (4528, 4538)]) c0009_sound (intervals_sound_cons (I := (4300, 4346)) (intervals := [(4350, 4394), (4400, 4442), (4448, 4490), (4496, 4519), (4528, 4538)]) c0010_sound (intervals_sound_cons (I := (4350, 4394)) (intervals := [(4400, 4442), (4448, 4490), (4496, 4519), (4528, 4538)]) c0011_sound (intervals_sound_cons (I := (4400, 4442)) (intervals := [(4448, 4490), (4496, 4519), (4528, 4538)]) c0012_sound (intervals_sound_cons (I := (4448, 4490)) (intervals := [(4496, 4519), (4528, 4538)]) c0013_sound (intervals_sound_cons (I := (4496, 4519)) (intervals := [(4528, 4538)]) c0014_sound (intervals_sound_cons (I := (4528, 4538)) (intervals := []) c0015_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G000
