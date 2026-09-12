import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk065
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk066
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk067
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk068

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G001
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0016_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk065.w10, B699LowIndex.I11TerminalData.Chunk065.w11, B699LowIndex.I11TerminalData.Chunk065.w12]
private def c0016_intervals : List NatInterval := [(4544, 4544), (4545, 4545), (4546, 4546)]

private theorem c0016_intervals_eq :
    witnessIntervals c0016_witnesses = c0016_intervals := by
  rfl

private theorem c0016_checks : witnessesCheck c0016_witnesses = true := by
  simp only [witnessesCheck, c0016_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk065.w10_check, B699LowIndex.I11TerminalData.Chunk065.w11_check, B699LowIndex.I11TerminalData.Chunk065.w12_check, Bool.and_self]

private theorem c0016_cover : coverCheck 4544 4546 c0016_intervals = true := by
  decide

private theorem c0016_sound : IntervalSound (4544, 4546) := by
  have hc : coverCheck 4544 4546 (witnessIntervals c0016_witnesses) = true := by
    rw [c0016_intervals_eq]
    exact c0016_cover
  exact interval_sound_of_witness_checks (witnesses := c0016_witnesses)
    (lo := 4544) (hi := 4546) c0016_checks hc

private def c0017_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk065.w13]
private def c0017_intervals : List NatInterval := [(4550, 4554)]

private theorem c0017_intervals_eq :
    witnessIntervals c0017_witnesses = c0017_intervals := by
  rfl

private theorem c0017_checks : witnessesCheck c0017_witnesses = true := by
  simp only [witnessesCheck, c0017_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk065.w13_check, Bool.and_self]

private theorem c0017_cover : coverCheck 4550 4554 c0017_intervals = true := by
  decide

private theorem c0017_sound : IntervalSound (4550, 4554) := by
  have hc : coverCheck 4550 4554 (witnessIntervals c0017_witnesses) = true := by
    rw [c0017_intervals_eq]
    exact c0017_cover
  exact interval_sound_of_witness_checks (witnesses := c0017_witnesses)
    (lo := 4550) (hi := 4554) c0017_checks hc

private def c0018_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk065.w14, B699LowIndex.I11TerminalData.Chunk065.w15, B699LowIndex.I11TerminalData.Chunk066.w0]
private def c0018_intervals : List NatInterval := [(4557, 4559), (4560, 4560), (4561, 4570)]

private theorem c0018_intervals_eq :
    witnessIntervals c0018_witnesses = c0018_intervals := by
  rfl

private theorem c0018_checks : witnessesCheck c0018_witnesses = true := by
  simp only [witnessesCheck, c0018_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk065.w14_check, B699LowIndex.I11TerminalData.Chunk065.w15_check, B699LowIndex.I11TerminalData.Chunk066.w0_check, Bool.and_self]

private theorem c0018_cover : coverCheck 4557 4570 c0018_intervals = true := by
  decide

private theorem c0018_sound : IntervalSound (4557, 4570) := by
  have hc : coverCheck 4557 4570 (witnessIntervals c0018_witnesses) = true := by
    rw [c0018_intervals_eq]
    exact c0018_cover
  exact interval_sound_of_witness_checks (witnesses := c0018_witnesses)
    (lo := 4557) (hi := 4570) c0018_checks hc

private def c0019_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk066.w1, B699LowIndex.I11TerminalData.Chunk066.w2, B699LowIndex.I11TerminalData.Chunk066.w3, B699LowIndex.I11TerminalData.Chunk066.w4, B699LowIndex.I11TerminalData.Chunk066.w5, B699LowIndex.I11TerminalData.Chunk066.w6, B699LowIndex.I11TerminalData.Chunk066.w7]
private def c0019_intervals : List NatInterval := [(4576, 4577), (4578, 4578), (4579, 4579), (4580, 4580), (4581, 4581), (4582, 4582), (4583, 4585)]

private theorem c0019_intervals_eq :
    witnessIntervals c0019_witnesses = c0019_intervals := by
  rfl

private theorem c0019_checks : witnessesCheck c0019_witnesses = true := by
  simp only [witnessesCheck, c0019_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk066.w1_check, B699LowIndex.I11TerminalData.Chunk066.w2_check, B699LowIndex.I11TerminalData.Chunk066.w3_check, B699LowIndex.I11TerminalData.Chunk066.w4_check, B699LowIndex.I11TerminalData.Chunk066.w5_check, B699LowIndex.I11TerminalData.Chunk066.w6_check, B699LowIndex.I11TerminalData.Chunk066.w7_check, Bool.and_self]

private theorem c0019_cover : coverCheck 4576 4585 c0019_intervals = true := by
  decide

private theorem c0019_sound : IntervalSound (4576, 4585) := by
  have hc : coverCheck 4576 4585 (witnessIntervals c0019_witnesses) = true := by
    rw [c0019_intervals_eq]
    exact c0019_cover
  exact interval_sound_of_witness_checks (witnesses := c0019_witnesses)
    (lo := 4576) (hi := 4585) c0019_checks hc

private def c0020_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk066.w8, B699LowIndex.I11TerminalData.Chunk066.w9]
private def c0020_intervals : List NatInterval := [(4592, 4601), (4602, 4602)]

private theorem c0020_intervals_eq :
    witnessIntervals c0020_witnesses = c0020_intervals := by
  rfl

private theorem c0020_checks : witnessesCheck c0020_witnesses = true := by
  simp only [witnessesCheck, c0020_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk066.w8_check, B699LowIndex.I11TerminalData.Chunk066.w9_check, Bool.and_self]

private theorem c0020_cover : coverCheck 4592 4602 c0020_intervals = true := by
  decide

private theorem c0020_sound : IntervalSound (4592, 4602) := by
  have hc : coverCheck 4592 4602 (witnessIntervals c0020_witnesses) = true := by
    rw [c0020_intervals_eq]
    exact c0020_cover
  exact interval_sound_of_witness_checks (witnesses := c0020_witnesses)
    (lo := 4592) (hi := 4602) c0020_checks hc

private def c0021_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk066.w10, B699LowIndex.I11TerminalData.Chunk066.w11, B699LowIndex.I11TerminalData.Chunk066.w12, B699LowIndex.I11TerminalData.Chunk066.w13, B699LowIndex.I11TerminalData.Chunk066.w14, B699LowIndex.I11TerminalData.Chunk066.w15]
private def c0021_intervals : List NatInterval := [(4606, 4613), (4614, 4614), (4615, 4615), (4616, 4616), (4617, 4617), (4618, 4618)]

private theorem c0021_intervals_eq :
    witnessIntervals c0021_witnesses = c0021_intervals := by
  rfl

private theorem c0021_checks : witnessesCheck c0021_witnesses = true := by
  simp only [witnessesCheck, c0021_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk066.w10_check, B699LowIndex.I11TerminalData.Chunk066.w11_check, B699LowIndex.I11TerminalData.Chunk066.w12_check, B699LowIndex.I11TerminalData.Chunk066.w13_check, B699LowIndex.I11TerminalData.Chunk066.w14_check, B699LowIndex.I11TerminalData.Chunk066.w15_check, Bool.and_self]

private theorem c0021_cover : coverCheck 4606 4618 c0021_intervals = true := by
  decide

private theorem c0021_sound : IntervalSound (4606, 4618) := by
  have hc : coverCheck 4606 4618 (witnessIntervals c0021_witnesses) = true := by
    rw [c0021_intervals_eq]
    exact c0021_cover
  exact interval_sound_of_witness_checks (witnesses := c0021_witnesses)
    (lo := 4606) (hi := 4618) c0021_checks hc

private def c0022_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk067.w0, B699LowIndex.I11TerminalData.Chunk067.w1, B699LowIndex.I11TerminalData.Chunk067.w2, B699LowIndex.I11TerminalData.Chunk067.w3]
private def c0022_intervals : List NatInterval := [(4624, 4631), (4632, 4632), (4633, 4633), (4634, 4634)]

private theorem c0022_intervals_eq :
    witnessIntervals c0022_witnesses = c0022_intervals := by
  rfl

private theorem c0022_checks : witnessesCheck c0022_witnesses = true := by
  simp only [witnessesCheck, c0022_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk067.w0_check, B699LowIndex.I11TerminalData.Chunk067.w1_check, B699LowIndex.I11TerminalData.Chunk067.w2_check, B699LowIndex.I11TerminalData.Chunk067.w3_check, Bool.and_self]

private theorem c0022_cover : coverCheck 4624 4634 c0022_intervals = true := by
  decide

private theorem c0022_sound : IntervalSound (4624, 4634) := by
  have hc : coverCheck 4624 4634 (witnessIntervals c0022_witnesses) = true := by
    rw [c0022_intervals_eq]
    exact c0022_cover
  exact interval_sound_of_witness_checks (witnesses := c0022_witnesses)
    (lo := 4624) (hi := 4634) c0022_checks hc

private def c0023_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk067.w4, B699LowIndex.I11TerminalData.Chunk067.w5, B699LowIndex.I11TerminalData.Chunk067.w6]
private def c0023_intervals : List NatInterval := [(4644, 4653), (4654, 4661), (4662, 4665)]

private theorem c0023_intervals_eq :
    witnessIntervals c0023_witnesses = c0023_intervals := by
  rfl

private theorem c0023_checks : witnessesCheck c0023_witnesses = true := by
  simp only [witnessesCheck, c0023_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk067.w4_check, B699LowIndex.I11TerminalData.Chunk067.w5_check, B699LowIndex.I11TerminalData.Chunk067.w6_check, Bool.and_self]

private theorem c0023_cover : coverCheck 4644 4665 c0023_intervals = true := by
  decide

private theorem c0023_sound : IntervalSound (4644, 4665) := by
  have hc : coverCheck 4644 4665 (witnessIntervals c0023_witnesses) = true := by
    rw [c0023_intervals_eq]
    exact c0023_cover
  exact interval_sound_of_witness_checks (witnesses := c0023_witnesses)
    (lo := 4644) (hi := 4665) c0023_checks hc

private def c0024_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk067.w7, B699LowIndex.I11TerminalData.Chunk067.w8]
private def c0024_intervals : List NatInterval := [(4672, 4673), (4674, 4682)]

private theorem c0024_intervals_eq :
    witnessIntervals c0024_witnesses = c0024_intervals := by
  rfl

private theorem c0024_checks : witnessesCheck c0024_witnesses = true := by
  simp only [witnessesCheck, c0024_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk067.w7_check, B699LowIndex.I11TerminalData.Chunk067.w8_check, Bool.and_self]

private theorem c0024_cover : coverCheck 4672 4682 c0024_intervals = true := by
  decide

private theorem c0024_sound : IntervalSound (4672, 4682) := by
  have hc : coverCheck 4672 4682 (witnessIntervals c0024_witnesses) = true := by
    rw [c0024_intervals_eq]
    exact c0024_cover
  exact interval_sound_of_witness_checks (witnesses := c0024_witnesses)
    (lo := 4672) (hi := 4682) c0024_checks hc

private def c0025_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk067.w9]
private def c0025_intervals : List NatInterval := [(4698, 4698)]

private theorem c0025_intervals_eq :
    witnessIntervals c0025_witnesses = c0025_intervals := by
  rfl

private theorem c0025_checks : witnessesCheck c0025_witnesses = true := by
  simp only [witnessesCheck, c0025_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk067.w9_check, Bool.and_self]

private theorem c0025_cover : coverCheck 4698 4698 c0025_intervals = true := by
  decide

private theorem c0025_sound : IntervalSound (4698, 4698) := by
  have hc : coverCheck 4698 4698 (witnessIntervals c0025_witnesses) = true := by
    rw [c0025_intervals_eq]
    exact c0025_cover
  exact interval_sound_of_witness_checks (witnesses := c0025_witnesses)
    (lo := 4698) (hi := 4698) c0025_checks hc

private def c0026_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk067.w10, B699LowIndex.I11TerminalData.Chunk067.w11, B699LowIndex.I11TerminalData.Chunk067.w12, B699LowIndex.I11TerminalData.Chunk067.w13]
private def c0026_intervals : List NatInterval := [(4700, 4701), (4702, 4702), (4703, 4713), (4714, 4714)]

private theorem c0026_intervals_eq :
    witnessIntervals c0026_witnesses = c0026_intervals := by
  rfl

private theorem c0026_checks : witnessesCheck c0026_witnesses = true := by
  simp only [witnessesCheck, c0026_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk067.w10_check, B699LowIndex.I11TerminalData.Chunk067.w11_check, B699LowIndex.I11TerminalData.Chunk067.w12_check, B699LowIndex.I11TerminalData.Chunk067.w13_check, Bool.and_self]

private theorem c0026_cover : coverCheck 4700 4714 c0026_intervals = true := by
  decide

private theorem c0026_sound : IntervalSound (4700, 4714) := by
  have hc : coverCheck 4700 4714 (witnessIntervals c0026_witnesses) = true := by
    rw [c0026_intervals_eq]
    exact c0026_cover
  exact interval_sound_of_witness_checks (witnesses := c0026_witnesses)
    (lo := 4700) (hi := 4714) c0026_checks hc

private def c0027_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk067.w14, B699LowIndex.I11TerminalData.Chunk067.w15]
private def c0027_intervals : List NatInterval := [(4725, 4733), (4734, 4735)]

private theorem c0027_intervals_eq :
    witnessIntervals c0027_witnesses = c0027_intervals := by
  rfl

private theorem c0027_checks : witnessesCheck c0027_witnesses = true := by
  simp only [witnessesCheck, c0027_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk067.w14_check, B699LowIndex.I11TerminalData.Chunk067.w15_check, Bool.and_self]

private theorem c0027_cover : coverCheck 4725 4735 c0027_intervals = true := by
  decide

private theorem c0027_sound : IntervalSound (4725, 4735) := by
  have hc : coverCheck 4725 4735 (witnessIntervals c0027_witnesses) = true := by
    rw [c0027_intervals_eq]
    exact c0027_cover
  exact interval_sound_of_witness_checks (witnesses := c0027_witnesses)
    (lo := 4725) (hi := 4735) c0027_checks hc

private def c0028_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk068.w0, B699LowIndex.I11TerminalData.Chunk068.w1]
private def c0028_intervals : List NatInterval := [(4752, 4761), (4762, 4762)]

private theorem c0028_intervals_eq :
    witnessIntervals c0028_witnesses = c0028_intervals := by
  rfl

private theorem c0028_checks : witnessesCheck c0028_witnesses = true := by
  simp only [witnessesCheck, c0028_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk068.w0_check, B699LowIndex.I11TerminalData.Chunk068.w1_check, Bool.and_self]

private theorem c0028_cover : coverCheck 4752 4762 c0028_intervals = true := by
  decide

private theorem c0028_sound : IntervalSound (4752, 4762) := by
  have hc : coverCheck 4752 4762 (witnessIntervals c0028_witnesses) = true := by
    rw [c0028_intervals_eq]
    exact c0028_cover
  exact interval_sound_of_witness_checks (witnesses := c0028_witnesses)
    (lo := 4752) (hi := 4762) c0028_checks hc

private def c0029_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk068.w2, B699LowIndex.I11TerminalData.Chunk068.w3, B699LowIndex.I11TerminalData.Chunk068.w4, B699LowIndex.I11TerminalData.Chunk068.w5, B699LowIndex.I11TerminalData.Chunk068.w6, B699LowIndex.I11TerminalData.Chunk068.w7, B699LowIndex.I11TerminalData.Chunk068.w8, B699LowIndex.I11TerminalData.Chunk068.w9, B699LowIndex.I11TerminalData.Chunk068.w10]
private def c0029_intervals : List NatInterval := [(4775, 4775), (4776, 4776), (4777, 4777), (4778, 4778), (4779, 4779), (4780, 4780), (4781, 4781), (4782, 4782), (4783, 4789)]

private theorem c0029_intervals_eq :
    witnessIntervals c0029_witnesses = c0029_intervals := by
  rfl

private theorem c0029_checks : witnessesCheck c0029_witnesses = true := by
  simp only [witnessesCheck, c0029_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk068.w2_check, B699LowIndex.I11TerminalData.Chunk068.w3_check, B699LowIndex.I11TerminalData.Chunk068.w4_check, B699LowIndex.I11TerminalData.Chunk068.w5_check, B699LowIndex.I11TerminalData.Chunk068.w6_check, B699LowIndex.I11TerminalData.Chunk068.w7_check, B699LowIndex.I11TerminalData.Chunk068.w8_check, B699LowIndex.I11TerminalData.Chunk068.w9_check, B699LowIndex.I11TerminalData.Chunk068.w10_check, Bool.and_self]

private theorem c0029_cover : coverCheck 4775 4789 c0029_intervals = true := by
  decide

private theorem c0029_sound : IntervalSound (4775, 4789) := by
  have hc : coverCheck 4775 4789 (witnessIntervals c0029_witnesses) = true := by
    rw [c0029_intervals_eq]
    exact c0029_cover
  exact interval_sound_of_witness_checks (witnesses := c0029_witnesses)
    (lo := 4775) (hi := 4789) c0029_checks hc

private def c0030_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk068.w11, B699LowIndex.I11TerminalData.Chunk068.w12, B699LowIndex.I11TerminalData.Chunk068.w13]
private def c0030_intervals : List NatInterval := [(4800, 4809), (4810, 4811), (4812, 4812)]

private theorem c0030_intervals_eq :
    witnessIntervals c0030_witnesses = c0030_intervals := by
  rfl

private theorem c0030_checks : witnessesCheck c0030_witnesses = true := by
  simp only [witnessesCheck, c0030_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk068.w11_check, B699LowIndex.I11TerminalData.Chunk068.w12_check, B699LowIndex.I11TerminalData.Chunk068.w13_check, Bool.and_self]

private theorem c0030_cover : coverCheck 4800 4812 c0030_intervals = true := by
  decide

private theorem c0030_sound : IntervalSound (4800, 4812) := by
  have hc : coverCheck 4800 4812 (witnessIntervals c0030_witnesses) = true := by
    rw [c0030_intervals_eq]
    exact c0030_cover
  exact interval_sound_of_witness_checks (witnesses := c0030_witnesses)
    (lo := 4800) (hi := 4812) c0030_checks hc

private def c0031_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk068.w14]
private def c0031_intervals : List NatInterval := [(4816, 4816)]

private theorem c0031_intervals_eq :
    witnessIntervals c0031_witnesses = c0031_intervals := by
  rfl

private theorem c0031_checks : witnessesCheck c0031_witnesses = true := by
  simp only [witnessesCheck, c0031_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk068.w14_check, Bool.and_self]

private theorem c0031_cover : coverCheck 4816 4816 c0031_intervals = true := by
  decide

private theorem c0031_sound : IntervalSound (4816, 4816) := by
  have hc : coverCheck 4816 4816 (witnessIntervals c0031_witnesses) = true := by
    rw [c0031_intervals_eq]
    exact c0031_cover
  exact interval_sound_of_witness_checks (witnesses := c0031_witnesses)
    (lo := 4816) (hi := 4816) c0031_checks hc

def intervals : List NatInterval := [(4544, 4546), (4550, 4554), (4557, 4570), (4576, 4585), (4592, 4602), (4606, 4618), (4624, 4634), (4644, 4665), (4672, 4682), (4698, 4698), (4700, 4714), (4725, 4735), (4752, 4762), (4775, 4789), (4800, 4812), (4816, 4816)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (4544, 4546)) (intervals := [(4550, 4554), (4557, 4570), (4576, 4585), (4592, 4602), (4606, 4618), (4624, 4634), (4644, 4665), (4672, 4682), (4698, 4698), (4700, 4714), (4725, 4735), (4752, 4762), (4775, 4789), (4800, 4812), (4816, 4816)]) c0016_sound (intervals_sound_cons (I := (4550, 4554)) (intervals := [(4557, 4570), (4576, 4585), (4592, 4602), (4606, 4618), (4624, 4634), (4644, 4665), (4672, 4682), (4698, 4698), (4700, 4714), (4725, 4735), (4752, 4762), (4775, 4789), (4800, 4812), (4816, 4816)]) c0017_sound (intervals_sound_cons (I := (4557, 4570)) (intervals := [(4576, 4585), (4592, 4602), (4606, 4618), (4624, 4634), (4644, 4665), (4672, 4682), (4698, 4698), (4700, 4714), (4725, 4735), (4752, 4762), (4775, 4789), (4800, 4812), (4816, 4816)]) c0018_sound (intervals_sound_cons (I := (4576, 4585)) (intervals := [(4592, 4602), (4606, 4618), (4624, 4634), (4644, 4665), (4672, 4682), (4698, 4698), (4700, 4714), (4725, 4735), (4752, 4762), (4775, 4789), (4800, 4812), (4816, 4816)]) c0019_sound (intervals_sound_cons (I := (4592, 4602)) (intervals := [(4606, 4618), (4624, 4634), (4644, 4665), (4672, 4682), (4698, 4698), (4700, 4714), (4725, 4735), (4752, 4762), (4775, 4789), (4800, 4812), (4816, 4816)]) c0020_sound (intervals_sound_cons (I := (4606, 4618)) (intervals := [(4624, 4634), (4644, 4665), (4672, 4682), (4698, 4698), (4700, 4714), (4725, 4735), (4752, 4762), (4775, 4789), (4800, 4812), (4816, 4816)]) c0021_sound (intervals_sound_cons (I := (4624, 4634)) (intervals := [(4644, 4665), (4672, 4682), (4698, 4698), (4700, 4714), (4725, 4735), (4752, 4762), (4775, 4789), (4800, 4812), (4816, 4816)]) c0022_sound (intervals_sound_cons (I := (4644, 4665)) (intervals := [(4672, 4682), (4698, 4698), (4700, 4714), (4725, 4735), (4752, 4762), (4775, 4789), (4800, 4812), (4816, 4816)]) c0023_sound (intervals_sound_cons (I := (4672, 4682)) (intervals := [(4698, 4698), (4700, 4714), (4725, 4735), (4752, 4762), (4775, 4789), (4800, 4812), (4816, 4816)]) c0024_sound (intervals_sound_cons (I := (4698, 4698)) (intervals := [(4700, 4714), (4725, 4735), (4752, 4762), (4775, 4789), (4800, 4812), (4816, 4816)]) c0025_sound (intervals_sound_cons (I := (4700, 4714)) (intervals := [(4725, 4735), (4752, 4762), (4775, 4789), (4800, 4812), (4816, 4816)]) c0026_sound (intervals_sound_cons (I := (4725, 4735)) (intervals := [(4752, 4762), (4775, 4789), (4800, 4812), (4816, 4816)]) c0027_sound (intervals_sound_cons (I := (4752, 4762)) (intervals := [(4775, 4789), (4800, 4812), (4816, 4816)]) c0028_sound (intervals_sound_cons (I := (4775, 4789)) (intervals := [(4800, 4812), (4816, 4816)]) c0029_sound (intervals_sound_cons (I := (4800, 4812)) (intervals := [(4816, 4816)]) c0030_sound (intervals_sound_cons (I := (4816, 4816)) (intervals := []) c0031_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G001
