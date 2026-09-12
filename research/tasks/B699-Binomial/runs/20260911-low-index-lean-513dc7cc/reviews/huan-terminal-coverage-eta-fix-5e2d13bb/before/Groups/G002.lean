import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk068
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk069
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk070
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk071

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G002
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0032_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk068.w15]
private def c0032_intervals : List NatInterval := [(4825, 4826)]

private theorem c0032_intervals_eq :
    witnessIntervals c0032_witnesses = c0032_intervals := by
  rfl

private theorem c0032_checks : witnessesCheck c0032_witnesses = true := by
  simp only [witnessesCheck, c0032_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk068.w15_check, Bool.and_self]

private theorem c0032_cover : coverCheck 4825 4826 c0032_intervals = true := by
  decide

private theorem c0032_sound : IntervalSound (4825, 4826) := by
  have hc : coverCheck 4825 4826 (witnessIntervals c0032_witnesses) = true := by
    rw [c0032_intervals_eq]
    exact c0032_cover
  exact interval_sound_of_witness_checks (witnesses := c0032_witnesses)
    (lo := 4825) (hi := 4826) c0032_checks hc

private def c0033_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk069.w0, B699LowIndex.I11TerminalData.Chunk069.w1]
private def c0033_intervals : List NatInterval := [(4832, 4841), (4842, 4842)]

private theorem c0033_intervals_eq :
    witnessIntervals c0033_witnesses = c0033_intervals := by
  rfl

private theorem c0033_checks : witnessesCheck c0033_witnesses = true := by
  simp only [witnessesCheck, c0033_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk069.w0_check, B699LowIndex.I11TerminalData.Chunk069.w1_check, Bool.and_self]

private theorem c0033_cover : coverCheck 4832 4842 c0033_intervals = true := by
  decide

private theorem c0033_sound : IntervalSound (4832, 4842) := by
  have hc : coverCheck 4832 4842 (witnessIntervals c0033_witnesses) = true := by
    rw [c0033_intervals_eq]
    exact c0033_cover
  exact interval_sound_of_witness_checks (witnesses := c0033_witnesses)
    (lo := 4832) (hi := 4842) c0033_checks hc

private def c0034_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk069.w2, B699LowIndex.I11TerminalData.Chunk069.w3, B699LowIndex.I11TerminalData.Chunk069.w4, B699LowIndex.I11TerminalData.Chunk069.w5, B699LowIndex.I11TerminalData.Chunk069.w6, B699LowIndex.I11TerminalData.Chunk069.w7, B699LowIndex.I11TerminalData.Chunk069.w8, B699LowIndex.I11TerminalData.Chunk069.w9, B699LowIndex.I11TerminalData.Chunk069.w10, B699LowIndex.I11TerminalData.Chunk069.w11, B699LowIndex.I11TerminalData.Chunk069.w12, B699LowIndex.I11TerminalData.Chunk069.w13]
private def c0034_intervals : List NatInterval := [(4850, 4850), (4851, 4851), (4852, 4852), (4853, 4853), (4854, 4854), (4855, 4855), (4856, 4856), (4857, 4857), (4858, 4858), (4859, 4859), (4860, 4860), (4861, 4861)]

private theorem c0034_intervals_eq :
    witnessIntervals c0034_witnesses = c0034_intervals := by
  rfl

private theorem c0034_checks : witnessesCheck c0034_witnesses = true := by
  simp only [witnessesCheck, c0034_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk069.w2_check, B699LowIndex.I11TerminalData.Chunk069.w3_check, B699LowIndex.I11TerminalData.Chunk069.w4_check, B699LowIndex.I11TerminalData.Chunk069.w5_check, B699LowIndex.I11TerminalData.Chunk069.w6_check, B699LowIndex.I11TerminalData.Chunk069.w7_check, B699LowIndex.I11TerminalData.Chunk069.w8_check, B699LowIndex.I11TerminalData.Chunk069.w9_check, B699LowIndex.I11TerminalData.Chunk069.w10_check, B699LowIndex.I11TerminalData.Chunk069.w11_check, B699LowIndex.I11TerminalData.Chunk069.w12_check, B699LowIndex.I11TerminalData.Chunk069.w13_check, Bool.and_self]

private theorem c0034_cover : coverCheck 4850 4861 c0034_intervals = true := by
  decide

private theorem c0034_sound : IntervalSound (4850, 4861) := by
  have hc : coverCheck 4850 4861 (witnessIntervals c0034_witnesses) = true := by
    rw [c0034_intervals_eq]
    exact c0034_cover
  exact interval_sound_of_witness_checks (witnesses := c0034_witnesses)
    (lo := 4850) (hi := 4861) c0034_checks hc

private def c0035_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk069.w14]
private def c0035_intervals : List NatInterval := [(4864, 4870)]

private theorem c0035_intervals_eq :
    witnessIntervals c0035_witnesses = c0035_intervals := by
  rfl

private theorem c0035_checks : witnessesCheck c0035_witnesses = true := by
  simp only [witnessesCheck, c0035_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk069.w14_check, Bool.and_self]

private theorem c0035_cover : coverCheck 4864 4870 c0035_intervals = true := by
  decide

private theorem c0035_sound : IntervalSound (4864, 4870) := by
  have hc : coverCheck 4864 4870 (witnessIntervals c0035_witnesses) = true := by
    rw [c0035_intervals_eq]
    exact c0035_cover
  exact interval_sound_of_witness_checks (witnesses := c0035_witnesses)
    (lo := 4864) (hi := 4870) c0035_checks hc

private def c0036_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk069.w15]
private def c0036_intervals : List NatInterval := [(4880, 4885)]

private theorem c0036_intervals_eq :
    witnessIntervals c0036_witnesses = c0036_intervals := by
  rfl

private theorem c0036_checks : witnessesCheck c0036_witnesses = true := by
  simp only [witnessesCheck, c0036_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk069.w15_check, Bool.and_self]

private theorem c0036_cover : coverCheck 4880 4885 c0036_intervals = true := by
  decide

private theorem c0036_sound : IntervalSound (4880, 4885) := by
  have hc : coverCheck 4880 4885 (witnessIntervals c0036_witnesses) = true := by
    rw [c0036_intervals_eq]
    exact c0036_cover
  exact interval_sound_of_witness_checks (witnesses := c0036_witnesses)
    (lo := 4880) (hi := 4885) c0036_checks hc

private def c0037_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk070.w0, B699LowIndex.I11TerminalData.Chunk070.w1, B699LowIndex.I11TerminalData.Chunk070.w2]
private def c0037_intervals : List NatInterval := [(4887, 4887), (4888, 4888), (4889, 4890)]

private theorem c0037_intervals_eq :
    witnessIntervals c0037_witnesses = c0037_intervals := by
  rfl

private theorem c0037_checks : witnessesCheck c0037_witnesses = true := by
  simp only [witnessesCheck, c0037_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk070.w0_check, B699LowIndex.I11TerminalData.Chunk070.w1_check, B699LowIndex.I11TerminalData.Chunk070.w2_check, Bool.and_self]

private theorem c0037_cover : coverCheck 4887 4890 c0037_intervals = true := by
  decide

private theorem c0037_sound : IntervalSound (4887, 4890) := by
  have hc : coverCheck 4887 4890 (witnessIntervals c0037_witnesses) = true := by
    rw [c0037_intervals_eq]
    exact c0037_cover
  exact interval_sound_of_witness_checks (witnesses := c0037_witnesses)
    (lo := 4887) (hi := 4890) c0037_checks hc

private def c0038_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk070.w3]
private def c0038_intervals : List NatInterval := [(4896, 4897)]

private theorem c0038_intervals_eq :
    witnessIntervals c0038_witnesses = c0038_intervals := by
  rfl

private theorem c0038_checks : witnessesCheck c0038_witnesses = true := by
  simp only [witnessesCheck, c0038_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk070.w3_check, Bool.and_self]

private theorem c0038_cover : coverCheck 4896 4897 c0038_intervals = true := by
  decide

private theorem c0038_sound : IntervalSound (4896, 4897) := by
  have hc : coverCheck 4896 4897 (witnessIntervals c0038_witnesses) = true := by
    rw [c0038_intervals_eq]
    exact c0038_cover
  exact interval_sound_of_witness_checks (witnesses := c0038_witnesses)
    (lo := 4896) (hi := 4897) c0038_checks hc

private def c0039_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk070.w4, B699LowIndex.I11TerminalData.Chunk070.w5, B699LowIndex.I11TerminalData.Chunk070.w6, B699LowIndex.I11TerminalData.Chunk070.w7]
private def c0039_intervals : List NatInterval := [(4900, 4900), (4901, 4901), (4902, 4902), (4903, 4910)]

private theorem c0039_intervals_eq :
    witnessIntervals c0039_witnesses = c0039_intervals := by
  rfl

private theorem c0039_checks : witnessesCheck c0039_witnesses = true := by
  simp only [witnessesCheck, c0039_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk070.w4_check, B699LowIndex.I11TerminalData.Chunk070.w5_check, B699LowIndex.I11TerminalData.Chunk070.w6_check, B699LowIndex.I11TerminalData.Chunk070.w7_check, Bool.and_self]

private theorem c0039_cover : coverCheck 4900 4910 c0039_intervals = true := by
  decide

private theorem c0039_sound : IntervalSound (4900, 4910) := by
  have hc : coverCheck 4900 4910 (witnessIntervals c0039_witnesses) = true := by
    rw [c0039_intervals_eq]
    exact c0039_cover
  exact interval_sound_of_witness_checks (witnesses := c0039_witnesses)
    (lo := 4900) (hi := 4910) c0039_checks hc

private def c0040_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk070.w8, B699LowIndex.I11TerminalData.Chunk070.w9]
private def c0040_intervals : List NatInterval := [(4914, 4919), (4920, 4922)]

private theorem c0040_intervals_eq :
    witnessIntervals c0040_witnesses = c0040_intervals := by
  rfl

private theorem c0040_checks : witnessesCheck c0040_witnesses = true := by
  simp only [witnessesCheck, c0040_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk070.w8_check, B699LowIndex.I11TerminalData.Chunk070.w9_check, Bool.and_self]

private theorem c0040_cover : coverCheck 4914 4922 c0040_intervals = true := by
  decide

private theorem c0040_sound : IntervalSound (4914, 4922) := by
  have hc : coverCheck 4914 4922 (witnessIntervals c0040_witnesses) = true := by
    rw [c0040_intervals_eq]
    exact c0040_cover
  exact interval_sound_of_witness_checks (witnesses := c0040_witnesses)
    (lo := 4914) (hi := 4922) c0040_checks hc

private def c0041_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk070.w10, B699LowIndex.I11TerminalData.Chunk070.w11, B699LowIndex.I11TerminalData.Chunk070.w12]
private def c0041_intervals : List NatInterval := [(4928, 4929), (4930, 4930), (4931, 4935)]

private theorem c0041_intervals_eq :
    witnessIntervals c0041_witnesses = c0041_intervals := by
  rfl

private theorem c0041_checks : witnessesCheck c0041_witnesses = true := by
  simp only [witnessesCheck, c0041_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk070.w10_check, B699LowIndex.I11TerminalData.Chunk070.w11_check, B699LowIndex.I11TerminalData.Chunk070.w12_check, Bool.and_self]

private theorem c0041_cover : coverCheck 4928 4935 c0041_intervals = true := by
  decide

private theorem c0041_sound : IntervalSound (4928, 4935) := by
  have hc : coverCheck 4928 4935 (witnessIntervals c0041_witnesses) = true := by
    rw [c0041_intervals_eq]
    exact c0041_cover
  exact interval_sound_of_witness_checks (witnesses := c0041_witnesses)
    (lo := 4928) (hi := 4935) c0041_checks hc

private def c0042_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk070.w13, B699LowIndex.I11TerminalData.Chunk070.w14]
private def c0042_intervals : List NatInterval := [(4944, 4953), (4954, 4960)]

private theorem c0042_intervals_eq :
    witnessIntervals c0042_witnesses = c0042_intervals := by
  rfl

private theorem c0042_checks : witnessesCheck c0042_witnesses = true := by
  simp only [witnessesCheck, c0042_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk070.w13_check, B699LowIndex.I11TerminalData.Chunk070.w14_check, Bool.and_self]

private theorem c0042_cover : coverCheck 4944 4960 c0042_intervals = true := by
  decide

private theorem c0042_sound : IntervalSound (4944, 4960) := by
  have hc : coverCheck 4944 4960 (witnessIntervals c0042_witnesses) = true := by
    rw [c0042_intervals_eq]
    exact c0042_cover
  exact interval_sound_of_witness_checks (witnesses := c0042_witnesses)
    (lo := 4944) (hi := 4960) c0042_checks hc

private def c0043_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk070.w15]
private def c0043_intervals : List NatInterval := [(4968, 4970)]

private theorem c0043_intervals_eq :
    witnessIntervals c0043_witnesses = c0043_intervals := by
  rfl

private theorem c0043_checks : witnessesCheck c0043_witnesses = true := by
  simp only [witnessesCheck, c0043_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk070.w15_check, Bool.and_self]

private theorem c0043_cover : coverCheck 4968 4970 c0043_intervals = true := by
  decide

private theorem c0043_sound : IntervalSound (4968, 4970) := by
  have hc : coverCheck 4968 4970 (witnessIntervals c0043_witnesses) = true := by
    rw [c0043_intervals_eq]
    exact c0043_cover
  exact interval_sound_of_witness_checks (witnesses := c0043_witnesses)
    (lo := 4968) (hi := 4970) c0043_checks hc

private def c0044_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk071.w0, B699LowIndex.I11TerminalData.Chunk071.w1, B699LowIndex.I11TerminalData.Chunk071.w2]
private def c0044_intervals : List NatInterval := [(4975, 4983), (4984, 4984), (4985, 4985)]

private theorem c0044_intervals_eq :
    witnessIntervals c0044_witnesses = c0044_intervals := by
  rfl

private theorem c0044_checks : witnessesCheck c0044_witnesses = true := by
  simp only [witnessesCheck, c0044_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk071.w0_check, B699LowIndex.I11TerminalData.Chunk071.w1_check, B699LowIndex.I11TerminalData.Chunk071.w2_check, Bool.and_self]

private theorem c0044_cover : coverCheck 4975 4985 c0044_intervals = true := by
  decide

private theorem c0044_sound : IntervalSound (4975, 4985) := by
  have hc : coverCheck 4975 4985 (witnessIntervals c0044_witnesses) = true := by
    rw [c0044_intervals_eq]
    exact c0044_cover
  exact interval_sound_of_witness_checks (witnesses := c0044_witnesses)
    (lo := 4975) (hi := 4985) c0044_checks hc

private def c0045_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk071.w3, B699LowIndex.I11TerminalData.Chunk071.w4]
private def c0045_intervals : List NatInterval := [(4995, 5003), (5004, 5010)]

private theorem c0045_intervals_eq :
    witnessIntervals c0045_witnesses = c0045_intervals := by
  rfl

private theorem c0045_checks : witnessesCheck c0045_witnesses = true := by
  simp only [witnessesCheck, c0045_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk071.w3_check, B699LowIndex.I11TerminalData.Chunk071.w4_check, Bool.and_self]

private theorem c0045_cover : coverCheck 4995 5010 c0045_intervals = true := by
  decide

private theorem c0045_sound : IntervalSound (4995, 5010) := by
  have hc : coverCheck 4995 5010 (witnessIntervals c0045_witnesses) = true := by
    rw [c0045_intervals_eq]
    exact c0045_cover
  exact interval_sound_of_witness_checks (witnesses := c0045_witnesses)
    (lo := 4995) (hi := 5010) c0045_checks hc

private def c0046_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk071.w5, B699LowIndex.I11TerminalData.Chunk071.w6]
private def c0046_intervals : List NatInterval := [(5024, 5033), (5034, 5034)]

private theorem c0046_intervals_eq :
    witnessIntervals c0046_witnesses = c0046_intervals := by
  rfl

private theorem c0046_checks : witnessesCheck c0046_witnesses = true := by
  simp only [witnessesCheck, c0046_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk071.w5_check, B699LowIndex.I11TerminalData.Chunk071.w6_check, Bool.and_self]

private theorem c0046_cover : coverCheck 5024 5034 c0046_intervals = true := by
  decide

private theorem c0046_sound : IntervalSound (5024, 5034) := by
  have hc : coverCheck 5024 5034 (witnessIntervals c0046_witnesses) = true := by
    rw [c0046_intervals_eq]
    exact c0046_cover
  exact interval_sound_of_witness_checks (witnesses := c0046_witnesses)
    (lo := 5024) (hi := 5034) c0046_checks hc

private def c0047_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk071.w7, B699LowIndex.I11TerminalData.Chunk071.w8, B699LowIndex.I11TerminalData.Chunk071.w9]
private def c0047_intervals : List NatInterval := [(5047, 5049), (5050, 5050), (5051, 5060)]

private theorem c0047_intervals_eq :
    witnessIntervals c0047_witnesses = c0047_intervals := by
  rfl

private theorem c0047_checks : witnessesCheck c0047_witnesses = true := by
  simp only [witnessesCheck, c0047_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk071.w7_check, B699LowIndex.I11TerminalData.Chunk071.w8_check, B699LowIndex.I11TerminalData.Chunk071.w9_check, Bool.and_self]

private theorem c0047_cover : coverCheck 5047 5060 c0047_intervals = true := by
  decide

private theorem c0047_sound : IntervalSound (5047, 5060) := by
  have hc : coverCheck 5047 5060 (witnessIntervals c0047_witnesses) = true := by
    rw [c0047_intervals_eq]
    exact c0047_cover
  exact interval_sound_of_witness_checks (witnesses := c0047_witnesses)
    (lo := 5047) (hi := 5060) c0047_checks hc

def intervals : List NatInterval := [(4825, 4826), (4832, 4842), (4850, 4861), (4864, 4870), (4880, 4885), (4887, 4890), (4896, 4897), (4900, 4910), (4914, 4922), (4928, 4935), (4944, 4960), (4968, 4970), (4975, 4985), (4995, 5010), (5024, 5034), (5047, 5060)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (4825, 4826)) (intervals := [(4832, 4842), (4850, 4861), (4864, 4870), (4880, 4885), (4887, 4890), (4896, 4897), (4900, 4910), (4914, 4922), (4928, 4935), (4944, 4960), (4968, 4970), (4975, 4985), (4995, 5010), (5024, 5034), (5047, 5060)]) c0032_sound (intervals_sound_cons (I := (4832, 4842)) (intervals := [(4850, 4861), (4864, 4870), (4880, 4885), (4887, 4890), (4896, 4897), (4900, 4910), (4914, 4922), (4928, 4935), (4944, 4960), (4968, 4970), (4975, 4985), (4995, 5010), (5024, 5034), (5047, 5060)]) c0033_sound (intervals_sound_cons (I := (4850, 4861)) (intervals := [(4864, 4870), (4880, 4885), (4887, 4890), (4896, 4897), (4900, 4910), (4914, 4922), (4928, 4935), (4944, 4960), (4968, 4970), (4975, 4985), (4995, 5010), (5024, 5034), (5047, 5060)]) c0034_sound (intervals_sound_cons (I := (4864, 4870)) (intervals := [(4880, 4885), (4887, 4890), (4896, 4897), (4900, 4910), (4914, 4922), (4928, 4935), (4944, 4960), (4968, 4970), (4975, 4985), (4995, 5010), (5024, 5034), (5047, 5060)]) c0035_sound (intervals_sound_cons (I := (4880, 4885)) (intervals := [(4887, 4890), (4896, 4897), (4900, 4910), (4914, 4922), (4928, 4935), (4944, 4960), (4968, 4970), (4975, 4985), (4995, 5010), (5024, 5034), (5047, 5060)]) c0036_sound (intervals_sound_cons (I := (4887, 4890)) (intervals := [(4896, 4897), (4900, 4910), (4914, 4922), (4928, 4935), (4944, 4960), (4968, 4970), (4975, 4985), (4995, 5010), (5024, 5034), (5047, 5060)]) c0037_sound (intervals_sound_cons (I := (4896, 4897)) (intervals := [(4900, 4910), (4914, 4922), (4928, 4935), (4944, 4960), (4968, 4970), (4975, 4985), (4995, 5010), (5024, 5034), (5047, 5060)]) c0038_sound (intervals_sound_cons (I := (4900, 4910)) (intervals := [(4914, 4922), (4928, 4935), (4944, 4960), (4968, 4970), (4975, 4985), (4995, 5010), (5024, 5034), (5047, 5060)]) c0039_sound (intervals_sound_cons (I := (4914, 4922)) (intervals := [(4928, 4935), (4944, 4960), (4968, 4970), (4975, 4985), (4995, 5010), (5024, 5034), (5047, 5060)]) c0040_sound (intervals_sound_cons (I := (4928, 4935)) (intervals := [(4944, 4960), (4968, 4970), (4975, 4985), (4995, 5010), (5024, 5034), (5047, 5060)]) c0041_sound (intervals_sound_cons (I := (4944, 4960)) (intervals := [(4968, 4970), (4975, 4985), (4995, 5010), (5024, 5034), (5047, 5060)]) c0042_sound (intervals_sound_cons (I := (4968, 4970)) (intervals := [(4975, 4985), (4995, 5010), (5024, 5034), (5047, 5060)]) c0043_sound (intervals_sound_cons (I := (4975, 4985)) (intervals := [(4995, 5010), (5024, 5034), (5047, 5060)]) c0044_sound (intervals_sound_cons (I := (4995, 5010)) (intervals := [(5024, 5034), (5047, 5060)]) c0045_sound (intervals_sound_cons (I := (5024, 5034)) (intervals := [(5047, 5060)]) c0046_sound (intervals_sound_cons (I := (5047, 5060)) (intervals := []) c0047_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G002
