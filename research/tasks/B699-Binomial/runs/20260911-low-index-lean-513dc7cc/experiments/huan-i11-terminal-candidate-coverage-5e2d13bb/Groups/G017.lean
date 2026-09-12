import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk117
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk118
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk119
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk120

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G017
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0272_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk117.w15]
private def c0272_intervals : List NatInterval := [(8613, 8618)]

private theorem c0272_intervals_eq :
    witnessIntervals c0272_witnesses = c0272_intervals := by
  rfl

private theorem c0272_checks : witnessesCheck c0272_witnesses = true := by
  simp only [witnessesCheck, c0272_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk117.w15_check, Bool.and_self]

private theorem c0272_cover : coverCheck 8613 8618 c0272_intervals = true := by
  decide

private theorem c0272_sound : IntervalSound (8613, 8618) := by
  have hc : coverCheck 8613 8618 (witnessIntervals c0272_witnesses) = true := by
    rw [c0272_intervals_eq]
    exact c0272_cover
  exact interval_sound_of_witness_checks (witnesses := c0272_witnesses)
    (lo := 8613) (hi := 8618) c0272_checks hc

private def c0273_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk118.w0, B699LowIndex.I11TerminalData.Chunk118.w1]
private def c0273_intervals : List NatInterval := [(8625, 8633), (8634, 8634)]

private theorem c0273_intervals_eq :
    witnessIntervals c0273_witnesses = c0273_intervals := by
  rfl

private theorem c0273_checks : witnessesCheck c0273_witnesses = true := by
  simp only [witnessesCheck, c0273_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk118.w0_check, B699LowIndex.I11TerminalData.Chunk118.w1_check, Bool.and_self]

private theorem c0273_cover : coverCheck 8625 8634 c0273_intervals = true := by
  decide

private theorem c0273_sound : IntervalSound (8625, 8634) := by
  have hc : coverCheck 8625 8634 (witnessIntervals c0273_witnesses) = true := by
    rw [c0273_intervals_eq]
    exact c0273_cover
  exact interval_sound_of_witness_checks (witnesses := c0273_witnesses)
    (lo := 8625) (hi := 8634) c0273_checks hc

private def c0274_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk118.w2, B699LowIndex.I11TerminalData.Chunk118.w3]
private def c0274_intervals : List NatInterval := [(8640, 8640), (8641, 8650)]

private theorem c0274_intervals_eq :
    witnessIntervals c0274_witnesses = c0274_intervals := by
  rfl

private theorem c0274_checks : witnessesCheck c0274_witnesses = true := by
  simp only [witnessesCheck, c0274_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk118.w2_check, B699LowIndex.I11TerminalData.Chunk118.w3_check, Bool.and_self]

private theorem c0274_cover : coverCheck 8640 8650 c0274_intervals = true := by
  decide

private theorem c0274_sound : IntervalSound (8640, 8650) := by
  have hc : coverCheck 8640 8650 (witnessIntervals c0274_witnesses) = true := by
    rw [c0274_intervals_eq]
    exact c0274_cover
  exact interval_sound_of_witness_checks (witnesses := c0274_witnesses)
    (lo := 8640) (hi := 8650) c0274_checks hc

private def c0275_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk118.w4, B699LowIndex.I11TerminalData.Chunk118.w5]
private def c0275_intervals : List NatInterval := [(8672, 8679), (8680, 8683)]

private theorem c0275_intervals_eq :
    witnessIntervals c0275_witnesses = c0275_intervals := by
  rfl

private theorem c0275_checks : witnessesCheck c0275_witnesses = true := by
  simp only [witnessesCheck, c0275_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk118.w4_check, B699LowIndex.I11TerminalData.Chunk118.w5_check, Bool.and_self]

private theorem c0275_cover : coverCheck 8672 8683 c0275_intervals = true := by
  decide

private theorem c0275_sound : IntervalSound (8672, 8683) := by
  have hc : coverCheck 8672 8683 (witnessIntervals c0275_witnesses) = true := by
    rw [c0275_intervals_eq]
    exact c0275_cover
  exact interval_sound_of_witness_checks (witnesses := c0275_witnesses)
    (lo := 8672) (hi := 8683) c0275_checks hc

private def c0276_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk118.w6, B699LowIndex.I11TerminalData.Chunk118.w7]
private def c0276_intervals : List NatInterval := [(8700, 8709), (8710, 8710)]

private theorem c0276_intervals_eq :
    witnessIntervals c0276_witnesses = c0276_intervals := by
  rfl

private theorem c0276_checks : witnessesCheck c0276_witnesses = true := by
  simp only [witnessesCheck, c0276_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk118.w6_check, B699LowIndex.I11TerminalData.Chunk118.w7_check, Bool.and_self]

private theorem c0276_cover : coverCheck 8700 8710 c0276_intervals = true := by
  decide

private theorem c0276_sound : IntervalSound (8700, 8710) := by
  have hc : coverCheck 8700 8710 (witnessIntervals c0276_witnesses) = true := by
    rw [c0276_intervals_eq]
    exact c0276_cover
  exact interval_sound_of_witness_checks (witnesses := c0276_witnesses)
    (lo := 8700) (hi := 8710) c0276_checks hc

private def c0277_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk118.w8, B699LowIndex.I11TerminalData.Chunk118.w9, B699LowIndex.I11TerminalData.Chunk118.w10]
private def c0277_intervals : List NatInterval := [(8722, 8729), (8730, 8730), (8731, 8732)]

private theorem c0277_intervals_eq :
    witnessIntervals c0277_witnesses = c0277_intervals := by
  rfl

private theorem c0277_checks : witnessesCheck c0277_witnesses = true := by
  simp only [witnessesCheck, c0277_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk118.w8_check, B699LowIndex.I11TerminalData.Chunk118.w9_check, B699LowIndex.I11TerminalData.Chunk118.w10_check, Bool.and_self]

private theorem c0277_cover : coverCheck 8722 8732 c0277_intervals = true := by
  decide

private theorem c0277_sound : IntervalSound (8722, 8732) := by
  have hc : coverCheck 8722 8732 (witnessIntervals c0277_witnesses) = true := by
    rw [c0277_intervals_eq]
    exact c0277_cover
  exact interval_sound_of_witness_checks (witnesses := c0277_witnesses)
    (lo := 8722) (hi := 8732) c0277_checks hc

private def c0278_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk118.w11, B699LowIndex.I11TerminalData.Chunk118.w12]
private def c0278_intervals : List NatInterval := [(8750, 8757), (8758, 8758)]

private theorem c0278_intervals_eq :
    witnessIntervals c0278_witnesses = c0278_intervals := by
  rfl

private theorem c0278_checks : witnessesCheck c0278_witnesses = true := by
  simp only [witnessesCheck, c0278_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk118.w11_check, B699LowIndex.I11TerminalData.Chunk118.w12_check, Bool.and_self]

private theorem c0278_cover : coverCheck 8750 8758 c0278_intervals = true := by
  decide

private theorem c0278_sound : IntervalSound (8750, 8758) := by
  have hc : coverCheck 8750 8758 (witnessIntervals c0278_witnesses) = true := by
    rw [c0278_intervals_eq]
    exact c0278_cover
  exact interval_sound_of_witness_checks (witnesses := c0278_witnesses)
    (lo := 8750) (hi := 8758) c0278_checks hc

private def c0279_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk118.w13, B699LowIndex.I11TerminalData.Chunk118.w14, B699LowIndex.I11TerminalData.Chunk118.w15, B699LowIndex.I11TerminalData.Chunk119.w0, B699LowIndex.I11TerminalData.Chunk119.w1, B699LowIndex.I11TerminalData.Chunk119.w2, B699LowIndex.I11TerminalData.Chunk119.w3, B699LowIndex.I11TerminalData.Chunk119.w4, B699LowIndex.I11TerminalData.Chunk119.w5]
private def c0279_intervals : List NatInterval := [(8771, 8771), (8772, 8772), (8773, 8773), (8774, 8774), (8775, 8775), (8776, 8776), (8777, 8777), (8778, 8778), (8779, 8785)]

private theorem c0279_intervals_eq :
    witnessIntervals c0279_witnesses = c0279_intervals := by
  rfl

private theorem c0279_checks : witnessesCheck c0279_witnesses = true := by
  simp only [witnessesCheck, c0279_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk118.w13_check, B699LowIndex.I11TerminalData.Chunk118.w14_check, B699LowIndex.I11TerminalData.Chunk118.w15_check, B699LowIndex.I11TerminalData.Chunk119.w0_check, B699LowIndex.I11TerminalData.Chunk119.w1_check, B699LowIndex.I11TerminalData.Chunk119.w2_check, B699LowIndex.I11TerminalData.Chunk119.w3_check, B699LowIndex.I11TerminalData.Chunk119.w4_check, B699LowIndex.I11TerminalData.Chunk119.w5_check, Bool.and_self]

private theorem c0279_cover : coverCheck 8771 8785 c0279_intervals = true := by
  decide

private theorem c0279_sound : IntervalSound (8771, 8785) := by
  have hc : coverCheck 8771 8785 (witnessIntervals c0279_witnesses) = true := by
    rw [c0279_intervals_eq]
    exact c0279_cover
  exact interval_sound_of_witness_checks (witnesses := c0279_witnesses)
    (lo := 8771) (hi := 8785) c0279_checks hc

private def c0280_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk119.w6, B699LowIndex.I11TerminalData.Chunk119.w7, B699LowIndex.I11TerminalData.Chunk119.w8, B699LowIndex.I11TerminalData.Chunk119.w9]
private def c0280_intervals : List NatInterval := [(8800, 8800), (8801, 8801), (8802, 8802), (8803, 8810)]

private theorem c0280_intervals_eq :
    witnessIntervals c0280_witnesses = c0280_intervals := by
  rfl

private theorem c0280_checks : witnessesCheck c0280_witnesses = true := by
  simp only [witnessesCheck, c0280_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk119.w6_check, B699LowIndex.I11TerminalData.Chunk119.w7_check, B699LowIndex.I11TerminalData.Chunk119.w8_check, B699LowIndex.I11TerminalData.Chunk119.w9_check, Bool.and_self]

private theorem c0280_cover : coverCheck 8800 8810 c0280_intervals = true := by
  decide

private theorem c0280_sound : IntervalSound (8800, 8810) := by
  have hc : coverCheck 8800 8810 (witnessIntervals c0280_witnesses) = true := by
    rw [c0280_intervals_eq]
    exact c0280_cover
  exact interval_sound_of_witness_checks (witnesses := c0280_witnesses)
    (lo := 8800) (hi := 8810) c0280_checks hc

private def c0281_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk119.w10, B699LowIndex.I11TerminalData.Chunk119.w11]
private def c0281_intervals : List NatInterval := [(8825, 8831), (8832, 8839)]

private theorem c0281_intervals_eq :
    witnessIntervals c0281_witnesses = c0281_intervals := by
  rfl

private theorem c0281_checks : witnessesCheck c0281_witnesses = true := by
  simp only [witnessesCheck, c0281_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk119.w10_check, B699LowIndex.I11TerminalData.Chunk119.w11_check, Bool.and_self]

private theorem c0281_cover : coverCheck 8825 8839 c0281_intervals = true := by
  decide

private theorem c0281_sound : IntervalSound (8825, 8839) := by
  have hc : coverCheck 8825 8839 (witnessIntervals c0281_witnesses) = true := by
    rw [c0281_intervals_eq]
    exact c0281_cover
  exact interval_sound_of_witness_checks (witnesses := c0281_witnesses)
    (lo := 8825) (hi := 8839) c0281_checks hc

private def c0282_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk119.w12, B699LowIndex.I11TerminalData.Chunk119.w13]
private def c0282_intervals : List NatInterval := [(8856, 8859), (8860, 8860)]

private theorem c0282_intervals_eq :
    witnessIntervals c0282_witnesses = c0282_intervals := by
  rfl

private theorem c0282_checks : witnessesCheck c0282_witnesses = true := by
  simp only [witnessesCheck, c0282_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk119.w12_check, B699LowIndex.I11TerminalData.Chunk119.w13_check, Bool.and_self]

private theorem c0282_cover : coverCheck 8856 8860 c0282_intervals = true := by
  decide

private theorem c0282_sound : IntervalSound (8856, 8860) := by
  have hc : coverCheck 8856 8860 (witnessIntervals c0282_witnesses) = true := by
    rw [c0282_intervals_eq]
    exact c0282_cover
  exact interval_sound_of_witness_checks (witnesses := c0282_witnesses)
    (lo := 8856) (hi := 8860) c0282_checks hc

private def c0283_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk119.w14]
private def c0283_intervals : List NatInterval := [(8864, 8866)]

private theorem c0283_intervals_eq :
    witnessIntervals c0283_witnesses = c0283_intervals := by
  rfl

private theorem c0283_checks : witnessesCheck c0283_witnesses = true := by
  simp only [witnessesCheck, c0283_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk119.w14_check, Bool.and_self]

private theorem c0283_cover : coverCheck 8864 8866 c0283_intervals = true := by
  decide

private theorem c0283_sound : IntervalSound (8864, 8866) := by
  have hc : coverCheck 8864 8866 (witnessIntervals c0283_witnesses) = true := by
    rw [c0283_intervals_eq]
    exact c0283_cover
  exact interval_sound_of_witness_checks (witnesses := c0283_witnesses)
    (lo := 8864) (hi := 8866) c0283_checks hc

private def c0284_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk119.w15, B699LowIndex.I11TerminalData.Chunk120.w0, B699LowIndex.I11TerminalData.Chunk120.w1]
private def c0284_intervals : List NatInterval := [(8869, 8877), (8878, 8878), (8879, 8879)]

private theorem c0284_intervals_eq :
    witnessIntervals c0284_witnesses = c0284_intervals := by
  rfl

private theorem c0284_checks : witnessesCheck c0284_witnesses = true := by
  simp only [witnessesCheck, c0284_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk119.w15_check, B699LowIndex.I11TerminalData.Chunk120.w0_check, B699LowIndex.I11TerminalData.Chunk120.w1_check, Bool.and_self]

private theorem c0284_cover : coverCheck 8869 8879 c0284_intervals = true := by
  decide

private theorem c0284_sound : IntervalSound (8869, 8879) := by
  have hc : coverCheck 8869 8879 (witnessIntervals c0284_witnesses) = true := by
    rw [c0284_intervals_eq]
    exact c0284_cover
  exact interval_sound_of_witness_checks (witnesses := c0284_witnesses)
    (lo := 8869) (hi := 8879) c0284_checks hc

private def c0285_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk120.w2, B699LowIndex.I11TerminalData.Chunk120.w3, B699LowIndex.I11TerminalData.Chunk120.w4]
private def c0285_intervals : List NatInterval := [(8883, 8883), (8884, 8884), (8885, 8885)]

private theorem c0285_intervals_eq :
    witnessIntervals c0285_witnesses = c0285_intervals := by
  rfl

private theorem c0285_checks : witnessesCheck c0285_witnesses = true := by
  simp only [witnessesCheck, c0285_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk120.w2_check, B699LowIndex.I11TerminalData.Chunk120.w3_check, B699LowIndex.I11TerminalData.Chunk120.w4_check, Bool.and_self]

private theorem c0285_cover : coverCheck 8883 8885 c0285_intervals = true := by
  decide

private theorem c0285_sound : IntervalSound (8883, 8885) := by
  have hc : coverCheck 8883 8885 (witnessIntervals c0285_witnesses) = true := by
    rw [c0285_intervals_eq]
    exact c0285_cover
  exact interval_sound_of_witness_checks (witnesses := c0285_witnesses)
    (lo := 8883) (hi := 8885) c0285_checks hc

private def c0286_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk120.w5, B699LowIndex.I11TerminalData.Chunk120.w6, B699LowIndex.I11TerminalData.Chunk120.w7, B699LowIndex.I11TerminalData.Chunk120.w8]
private def c0286_intervals : List NatInterval := [(8900, 8903), (8904, 8904), (8905, 8905), (8906, 8906)]

private theorem c0286_intervals_eq :
    witnessIntervals c0286_witnesses = c0286_intervals := by
  rfl

private theorem c0286_checks : witnessesCheck c0286_witnesses = true := by
  simp only [witnessesCheck, c0286_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk120.w5_check, B699LowIndex.I11TerminalData.Chunk120.w6_check, B699LowIndex.I11TerminalData.Chunk120.w7_check, B699LowIndex.I11TerminalData.Chunk120.w8_check, Bool.and_self]

private theorem c0286_cover : coverCheck 8900 8906 c0286_intervals = true := by
  decide

private theorem c0286_sound : IntervalSound (8900, 8906) := by
  have hc : coverCheck 8900 8906 (witnessIntervals c0286_witnesses) = true := by
    rw [c0286_intervals_eq]
    exact c0286_cover
  exact interval_sound_of_witness_checks (witnesses := c0286_witnesses)
    (lo := 8900) (hi := 8906) c0286_checks hc

private def c0287_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk120.w9]
private def c0287_intervals : List NatInterval := [(8910, 8910)]

private theorem c0287_intervals_eq :
    witnessIntervals c0287_witnesses = c0287_intervals := by
  rfl

private theorem c0287_checks : witnessesCheck c0287_witnesses = true := by
  simp only [witnessesCheck, c0287_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk120.w9_check, Bool.and_self]

private theorem c0287_cover : coverCheck 8910 8910 c0287_intervals = true := by
  decide

private theorem c0287_sound : IntervalSound (8910, 8910) := by
  have hc : coverCheck 8910 8910 (witnessIntervals c0287_witnesses) = true := by
    rw [c0287_intervals_eq]
    exact c0287_cover
  exact interval_sound_of_witness_checks (witnesses := c0287_witnesses)
    (lo := 8910) (hi := 8910) c0287_checks hc

def intervals : List NatInterval := [(8613, 8618), (8625, 8634), (8640, 8650), (8672, 8683), (8700, 8710), (8722, 8732), (8750, 8758), (8771, 8785), (8800, 8810), (8825, 8839), (8856, 8860), (8864, 8866), (8869, 8879), (8883, 8885), (8900, 8906), (8910, 8910)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (8613, 8618)) (intervals := [(8625, 8634), (8640, 8650), (8672, 8683), (8700, 8710), (8722, 8732), (8750, 8758), (8771, 8785), (8800, 8810), (8825, 8839), (8856, 8860), (8864, 8866), (8869, 8879), (8883, 8885), (8900, 8906), (8910, 8910)]) c0272_sound (intervals_sound_cons (I := (8625, 8634)) (intervals := [(8640, 8650), (8672, 8683), (8700, 8710), (8722, 8732), (8750, 8758), (8771, 8785), (8800, 8810), (8825, 8839), (8856, 8860), (8864, 8866), (8869, 8879), (8883, 8885), (8900, 8906), (8910, 8910)]) c0273_sound (intervals_sound_cons (I := (8640, 8650)) (intervals := [(8672, 8683), (8700, 8710), (8722, 8732), (8750, 8758), (8771, 8785), (8800, 8810), (8825, 8839), (8856, 8860), (8864, 8866), (8869, 8879), (8883, 8885), (8900, 8906), (8910, 8910)]) c0274_sound (intervals_sound_cons (I := (8672, 8683)) (intervals := [(8700, 8710), (8722, 8732), (8750, 8758), (8771, 8785), (8800, 8810), (8825, 8839), (8856, 8860), (8864, 8866), (8869, 8879), (8883, 8885), (8900, 8906), (8910, 8910)]) c0275_sound (intervals_sound_cons (I := (8700, 8710)) (intervals := [(8722, 8732), (8750, 8758), (8771, 8785), (8800, 8810), (8825, 8839), (8856, 8860), (8864, 8866), (8869, 8879), (8883, 8885), (8900, 8906), (8910, 8910)]) c0276_sound (intervals_sound_cons (I := (8722, 8732)) (intervals := [(8750, 8758), (8771, 8785), (8800, 8810), (8825, 8839), (8856, 8860), (8864, 8866), (8869, 8879), (8883, 8885), (8900, 8906), (8910, 8910)]) c0277_sound (intervals_sound_cons (I := (8750, 8758)) (intervals := [(8771, 8785), (8800, 8810), (8825, 8839), (8856, 8860), (8864, 8866), (8869, 8879), (8883, 8885), (8900, 8906), (8910, 8910)]) c0278_sound (intervals_sound_cons (I := (8771, 8785)) (intervals := [(8800, 8810), (8825, 8839), (8856, 8860), (8864, 8866), (8869, 8879), (8883, 8885), (8900, 8906), (8910, 8910)]) c0279_sound (intervals_sound_cons (I := (8800, 8810)) (intervals := [(8825, 8839), (8856, 8860), (8864, 8866), (8869, 8879), (8883, 8885), (8900, 8906), (8910, 8910)]) c0280_sound (intervals_sound_cons (I := (8825, 8839)) (intervals := [(8856, 8860), (8864, 8866), (8869, 8879), (8883, 8885), (8900, 8906), (8910, 8910)]) c0281_sound (intervals_sound_cons (I := (8856, 8860)) (intervals := [(8864, 8866), (8869, 8879), (8883, 8885), (8900, 8906), (8910, 8910)]) c0282_sound (intervals_sound_cons (I := (8864, 8866)) (intervals := [(8869, 8879), (8883, 8885), (8900, 8906), (8910, 8910)]) c0283_sound (intervals_sound_cons (I := (8869, 8879)) (intervals := [(8883, 8885), (8900, 8906), (8910, 8910)]) c0284_sound (intervals_sound_cons (I := (8883, 8885)) (intervals := [(8900, 8906), (8910, 8910)]) c0285_sound (intervals_sound_cons (I := (8900, 8906)) (intervals := [(8910, 8910)]) c0286_sound (intervals_sound_cons (I := (8910, 8910)) (intervals := []) c0287_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G017
