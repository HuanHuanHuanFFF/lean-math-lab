import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk168
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk169
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk170

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G035
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0560_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk168.w3, B699LowIndex.I11TerminalData.Chunk168.w4]
private def c0560_intervals : List NatInterval := [(14994, 14994), (14995, 14995)]

private theorem c0560_intervals_eq :
    witnessIntervals c0560_witnesses = c0560_intervals := by
  rfl

private theorem c0560_checks : witnessesCheck c0560_witnesses = true := by
  simp only [witnessesCheck, c0560_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk168.w3_check, B699LowIndex.I11TerminalData.Chunk168.w4_check, Bool.and_self]

private theorem c0560_cover : coverCheck 14994 14995 c0560_intervals = true := by
  decide

private theorem c0560_sound : IntervalSound (14994, 14995) := by
  have hc : coverCheck 14994 14995 (witnessIntervals c0560_witnesses) = true := by
    rw [c0560_intervals_eq]
    exact c0560_cover
  exact interval_sound_of_witness_checks (witnesses := c0560_witnesses)
    (lo := 14994) (hi := 14995) c0560_checks hc

private def c0561_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk168.w5, B699LowIndex.I11TerminalData.Chunk168.w6, B699LowIndex.I11TerminalData.Chunk168.w7, B699LowIndex.I11TerminalData.Chunk168.w8, B699LowIndex.I11TerminalData.Chunk168.w9]
private def c0561_intervals : List NatInterval := [(15000, 15000), (15001, 15001), (15002, 15002), (15003, 15003), (15004, 15004)]

private theorem c0561_intervals_eq :
    witnessIntervals c0561_witnesses = c0561_intervals := by
  rfl

private theorem c0561_checks : witnessesCheck c0561_witnesses = true := by
  simp only [witnessesCheck, c0561_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk168.w5_check, B699LowIndex.I11TerminalData.Chunk168.w6_check, B699LowIndex.I11TerminalData.Chunk168.w7_check, B699LowIndex.I11TerminalData.Chunk168.w8_check, B699LowIndex.I11TerminalData.Chunk168.w9_check, Bool.and_self]

private theorem c0561_cover : coverCheck 15000 15004 c0561_intervals = true := by
  decide

private theorem c0561_sound : IntervalSound (15000, 15004) := by
  have hc : coverCheck 15000 15004 (witnessIntervals c0561_witnesses) = true := by
    rw [c0561_intervals_eq]
    exact c0561_cover
  exact interval_sound_of_witness_checks (witnesses := c0561_witnesses)
    (lo := 15000) (hi := 15004) c0561_checks hc

private def c0562_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk168.w10, B699LowIndex.I11TerminalData.Chunk168.w11, B699LowIndex.I11TerminalData.Chunk168.w12]
private def c0562_intervals : List NatInterval := [(15008, 15008), (15009, 15009), (15010, 15010)]

private theorem c0562_intervals_eq :
    witnessIntervals c0562_witnesses = c0562_intervals := by
  rfl

private theorem c0562_checks : witnessesCheck c0562_witnesses = true := by
  simp only [witnessesCheck, c0562_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk168.w10_check, B699LowIndex.I11TerminalData.Chunk168.w11_check, B699LowIndex.I11TerminalData.Chunk168.w12_check, Bool.and_self]

private theorem c0562_cover : coverCheck 15008 15010 c0562_intervals = true := by
  decide

private theorem c0562_sound : IntervalSound (15008, 15010) := by
  have hc : coverCheck 15008 15010 (witnessIntervals c0562_witnesses) = true := by
    rw [c0562_intervals_eq]
    exact c0562_cover
  exact interval_sound_of_witness_checks (witnesses := c0562_witnesses)
    (lo := 15008) (hi := 15010) c0562_checks hc

private def c0563_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk168.w13, B699LowIndex.I11TerminalData.Chunk168.w14, B699LowIndex.I11TerminalData.Chunk168.w15, B699LowIndex.I11TerminalData.Chunk169.w0, B699LowIndex.I11TerminalData.Chunk169.w1, B699LowIndex.I11TerminalData.Chunk169.w2, B699LowIndex.I11TerminalData.Chunk169.w3, B699LowIndex.I11TerminalData.Chunk169.w4]
private def c0563_intervals : List NatInterval := [(15043, 15043), (15044, 15044), (15045, 15045), (15046, 15046), (15047, 15047), (15048, 15048), (15049, 15049), (15050, 15050)]

private theorem c0563_intervals_eq :
    witnessIntervals c0563_witnesses = c0563_intervals := by
  rfl

private theorem c0563_checks : witnessesCheck c0563_witnesses = true := by
  simp only [witnessesCheck, c0563_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk168.w13_check, B699LowIndex.I11TerminalData.Chunk168.w14_check, B699LowIndex.I11TerminalData.Chunk168.w15_check, B699LowIndex.I11TerminalData.Chunk169.w0_check, B699LowIndex.I11TerminalData.Chunk169.w1_check, B699LowIndex.I11TerminalData.Chunk169.w2_check, B699LowIndex.I11TerminalData.Chunk169.w3_check, B699LowIndex.I11TerminalData.Chunk169.w4_check, Bool.and_self]

private theorem c0563_cover : coverCheck 15043 15050 c0563_intervals = true := by
  decide

private theorem c0563_sound : IntervalSound (15043, 15050) := by
  have hc : coverCheck 15043 15050 (witnessIntervals c0563_witnesses) = true := by
    rw [c0563_intervals_eq]
    exact c0563_cover
  exact interval_sound_of_witness_checks (witnesses := c0563_witnesses)
    (lo := 15043) (hi := 15050) c0563_checks hc

private def c0564_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk169.w5, B699LowIndex.I11TerminalData.Chunk169.w6]
private def c0564_intervals : List NatInterval := [(15072, 15072), (15073, 15076)]

private theorem c0564_intervals_eq :
    witnessIntervals c0564_witnesses = c0564_intervals := by
  rfl

private theorem c0564_checks : witnessesCheck c0564_witnesses = true := by
  simp only [witnessesCheck, c0564_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk169.w5_check, B699LowIndex.I11TerminalData.Chunk169.w6_check, Bool.and_self]

private theorem c0564_cover : coverCheck 15072 15076 c0564_intervals = true := by
  decide

private theorem c0564_sound : IntervalSound (15072, 15076) := by
  have hc : coverCheck 15072 15076 (witnessIntervals c0564_witnesses) = true := by
    rw [c0564_intervals_eq]
    exact c0564_cover
  exact interval_sound_of_witness_checks (witnesses := c0564_witnesses)
    (lo := 15072) (hi := 15076) c0564_checks hc

private def c0565_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk169.w7, B699LowIndex.I11TerminalData.Chunk169.w8]
private def c0565_intervals : List NatInterval := [(15141, 15149), (15150, 15151)]

private theorem c0565_intervals_eq :
    witnessIntervals c0565_witnesses = c0565_intervals := by
  rfl

private theorem c0565_checks : witnessesCheck c0565_witnesses = true := by
  simp only [witnessesCheck, c0565_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk169.w7_check, B699LowIndex.I11TerminalData.Chunk169.w8_check, Bool.and_self]

private theorem c0565_cover : coverCheck 15141 15151 c0565_intervals = true := by
  decide

private theorem c0565_sound : IntervalSound (15141, 15151) := by
  have hc : coverCheck 15141 15151 (witnessIntervals c0565_witnesses) = true := by
    rw [c0565_intervals_eq]
    exact c0565_cover
  exact interval_sound_of_witness_checks (witnesses := c0565_witnesses)
    (lo := 15141) (hi := 15151) c0565_checks hc

private def c0566_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk169.w9]
private def c0566_intervals : List NatInterval := [(15200, 15200)]

private theorem c0566_intervals_eq :
    witnessIntervals c0566_witnesses = c0566_intervals := by
  rfl

private theorem c0566_checks : witnessesCheck c0566_witnesses = true := by
  simp only [witnessesCheck, c0566_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk169.w9_check, Bool.and_self]

private theorem c0566_cover : coverCheck 15200 15200 c0566_intervals = true := by
  decide

private theorem c0566_sound : IntervalSound (15200, 15200) := by
  have hc : coverCheck 15200 15200 (witnessIntervals c0566_witnesses) = true := by
    rw [c0566_intervals_eq]
    exact c0566_cover
  exact interval_sound_of_witness_checks (witnesses := c0566_witnesses)
    (lo := 15200) (hi := 15200) c0566_checks hc

private def c0567_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk169.w10, B699LowIndex.I11TerminalData.Chunk169.w11]
private def c0567_intervals : List NatInterval := [(15232, 15237), (15238, 15242)]

private theorem c0567_intervals_eq :
    witnessIntervals c0567_witnesses = c0567_intervals := by
  rfl

private theorem c0567_checks : witnessesCheck c0567_witnesses = true := by
  simp only [witnessesCheck, c0567_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk169.w10_check, B699LowIndex.I11TerminalData.Chunk169.w11_check, Bool.and_self]

private theorem c0567_cover : coverCheck 15232 15242 c0567_intervals = true := by
  decide

private theorem c0567_sound : IntervalSound (15232, 15242) := by
  have hc : coverCheck 15232 15242 (witnessIntervals c0567_witnesses) = true := by
    rw [c0567_intervals_eq]
    exact c0567_cover
  exact interval_sound_of_witness_checks (witnesses := c0567_witnesses)
    (lo := 15232) (hi := 15242) c0567_checks hc

private def c0568_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk169.w12]
private def c0568_intervals : List NatInterval := [(15296, 15298)]

private theorem c0568_intervals_eq :
    witnessIntervals c0568_witnesses = c0568_intervals := by
  rfl

private theorem c0568_checks : witnessesCheck c0568_witnesses = true := by
  simp only [witnessesCheck, c0568_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk169.w12_check, Bool.and_self]

private theorem c0568_cover : coverCheck 15296 15298 c0568_intervals = true := by
  decide

private theorem c0568_sound : IntervalSound (15296, 15298) := by
  have hc : coverCheck 15296 15298 (witnessIntervals c0568_witnesses) = true := by
    rw [c0568_intervals_eq]
    exact c0568_cover
  exact interval_sound_of_witness_checks (witnesses := c0568_witnesses)
    (lo := 15296) (hi := 15298) c0568_checks hc

private def c0569_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk169.w13]
private def c0569_intervals : List NatInterval := [(15337, 15338)]

private theorem c0569_intervals_eq :
    witnessIntervals c0569_witnesses = c0569_intervals := by
  rfl

private theorem c0569_checks : witnessesCheck c0569_witnesses = true := by
  simp only [witnessesCheck, c0569_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk169.w13_check, Bool.and_self]

private theorem c0569_cover : coverCheck 15337 15338 c0569_intervals = true := by
  decide

private theorem c0569_sound : IntervalSound (15337, 15338) := by
  have hc : coverCheck 15337 15338 (witnessIntervals c0569_witnesses) = true := by
    rw [c0569_intervals_eq]
    exact c0569_cover
  exact interval_sound_of_witness_checks (witnesses := c0569_witnesses)
    (lo := 15337) (hi := 15338) c0569_checks hc

private def c0570_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk169.w14, B699LowIndex.I11TerminalData.Chunk169.w15]
private def c0570_intervals : List NatInterval := [(15390, 15393), (15394, 15400)]

private theorem c0570_intervals_eq :
    witnessIntervals c0570_witnesses = c0570_intervals := by
  rfl

private theorem c0570_checks : witnessesCheck c0570_witnesses = true := by
  simp only [witnessesCheck, c0570_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk169.w14_check, B699LowIndex.I11TerminalData.Chunk169.w15_check, Bool.and_self]

private theorem c0570_cover : coverCheck 15390 15400 c0570_intervals = true := by
  decide

private theorem c0570_sound : IntervalSound (15390, 15400) := by
  have hc : coverCheck 15390 15400 (witnessIntervals c0570_witnesses) = true := by
    rw [c0570_intervals_eq]
    exact c0570_cover
  exact interval_sound_of_witness_checks (witnesses := c0570_witnesses)
    (lo := 15390) (hi := 15400) c0570_checks hc

private def c0571_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk170.w0, B699LowIndex.I11TerminalData.Chunk170.w1, B699LowIndex.I11TerminalData.Chunk170.w2, B699LowIndex.I11TerminalData.Chunk170.w3, B699LowIndex.I11TerminalData.Chunk170.w4, B699LowIndex.I11TerminalData.Chunk170.w5]
private def c0571_intervals : List NatInterval := [(15488, 15488), (15489, 15489), (15490, 15490), (15491, 15491), (15492, 15492), (15493, 15494)]

private theorem c0571_intervals_eq :
    witnessIntervals c0571_witnesses = c0571_intervals := by
  rfl

private theorem c0571_checks : witnessesCheck c0571_witnesses = true := by
  simp only [witnessesCheck, c0571_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk170.w0_check, B699LowIndex.I11TerminalData.Chunk170.w1_check, B699LowIndex.I11TerminalData.Chunk170.w2_check, B699LowIndex.I11TerminalData.Chunk170.w3_check, B699LowIndex.I11TerminalData.Chunk170.w4_check, B699LowIndex.I11TerminalData.Chunk170.w5_check, Bool.and_self]

private theorem c0571_cover : coverCheck 15488 15494 c0571_intervals = true := by
  decide

private theorem c0571_sound : IntervalSound (15488, 15494) := by
  have hc : coverCheck 15488 15494 (witnessIntervals c0571_witnesses) = true := by
    rw [c0571_intervals_eq]
    exact c0571_cover
  exact interval_sound_of_witness_checks (witnesses := c0571_witnesses)
    (lo := 15488) (hi := 15494) c0571_checks hc

private def c0572_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk170.w6, B699LowIndex.I11TerminalData.Chunk170.w7]
private def c0572_intervals : List NatInterval := [(15552, 15561), (15562, 15562)]

private theorem c0572_intervals_eq :
    witnessIntervals c0572_witnesses = c0572_intervals := by
  rfl

private theorem c0572_checks : witnessesCheck c0572_witnesses = true := by
  simp only [witnessesCheck, c0572_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk170.w6_check, B699LowIndex.I11TerminalData.Chunk170.w7_check, Bool.and_self]

private theorem c0572_cover : coverCheck 15552 15562 c0572_intervals = true := by
  decide

private theorem c0572_sound : IntervalSound (15552, 15562) := by
  have hc : coverCheck 15552 15562 (witnessIntervals c0572_witnesses) = true := by
    rw [c0572_intervals_eq]
    exact c0572_cover
  exact interval_sound_of_witness_checks (witnesses := c0572_witnesses)
    (lo := 15552) (hi := 15562) c0572_checks hc

private def c0573_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk170.w8]
private def c0573_intervals : List NatInterval := [(15584, 15592)]

private theorem c0573_intervals_eq :
    witnessIntervals c0573_witnesses = c0573_intervals := by
  rfl

private theorem c0573_checks : witnessesCheck c0573_witnesses = true := by
  simp only [witnessesCheck, c0573_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk170.w8_check, Bool.and_self]

private theorem c0573_cover : coverCheck 15584 15592 c0573_intervals = true := by
  decide

private theorem c0573_sound : IntervalSound (15584, 15592) := by
  have hc : coverCheck 15584 15592 (witnessIntervals c0573_witnesses) = true := by
    rw [c0573_intervals_eq]
    exact c0573_cover
  exact interval_sound_of_witness_checks (witnesses := c0573_witnesses)
    (lo := 15584) (hi := 15592) c0573_checks hc

private def c0574_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk170.w9]
private def c0574_intervals : List NatInterval := [(15625, 15626)]

private theorem c0574_intervals_eq :
    witnessIntervals c0574_witnesses = c0574_intervals := by
  rfl

private theorem c0574_checks : witnessesCheck c0574_witnesses = true := by
  simp only [witnessesCheck, c0574_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk170.w9_check, Bool.and_self]

private theorem c0574_cover : coverCheck 15625 15626 c0574_intervals = true := by
  decide

private theorem c0574_sound : IntervalSound (15625, 15626) := by
  have hc : coverCheck 15625 15626 (witnessIntervals c0574_witnesses) = true := by
    rw [c0574_intervals_eq]
    exact c0574_cover
  exact interval_sound_of_witness_checks (witnesses := c0574_witnesses)
    (lo := 15625) (hi := 15626) c0574_checks hc

private def c0575_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk170.w10, B699LowIndex.I11TerminalData.Chunk170.w11, B699LowIndex.I11TerminalData.Chunk170.w12]
private def c0575_intervals : List NatInterval := [(15631, 15639), (15640, 15640), (15641, 15641)]

private theorem c0575_intervals_eq :
    witnessIntervals c0575_witnesses = c0575_intervals := by
  rfl

private theorem c0575_checks : witnessesCheck c0575_witnesses = true := by
  simp only [witnessesCheck, c0575_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk170.w10_check, B699LowIndex.I11TerminalData.Chunk170.w11_check, B699LowIndex.I11TerminalData.Chunk170.w12_check, Bool.and_self]

private theorem c0575_cover : coverCheck 15631 15641 c0575_intervals = true := by
  decide

private theorem c0575_sound : IntervalSound (15631, 15641) := by
  have hc : coverCheck 15631 15641 (witnessIntervals c0575_witnesses) = true := by
    rw [c0575_intervals_eq]
    exact c0575_cover
  exact interval_sound_of_witness_checks (witnesses := c0575_witnesses)
    (lo := 15631) (hi := 15641) c0575_checks hc

def intervals : List NatInterval := [(14994, 14995), (15000, 15004), (15008, 15010), (15043, 15050), (15072, 15076), (15141, 15151), (15200, 15200), (15232, 15242), (15296, 15298), (15337, 15338), (15390, 15400), (15488, 15494), (15552, 15562), (15584, 15592), (15625, 15626), (15631, 15641)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (14994, 14995)) (intervals := [(15000, 15004), (15008, 15010), (15043, 15050), (15072, 15076), (15141, 15151), (15200, 15200), (15232, 15242), (15296, 15298), (15337, 15338), (15390, 15400), (15488, 15494), (15552, 15562), (15584, 15592), (15625, 15626), (15631, 15641)]) c0560_sound (intervals_sound_cons (I := (15000, 15004)) (intervals := [(15008, 15010), (15043, 15050), (15072, 15076), (15141, 15151), (15200, 15200), (15232, 15242), (15296, 15298), (15337, 15338), (15390, 15400), (15488, 15494), (15552, 15562), (15584, 15592), (15625, 15626), (15631, 15641)]) c0561_sound (intervals_sound_cons (I := (15008, 15010)) (intervals := [(15043, 15050), (15072, 15076), (15141, 15151), (15200, 15200), (15232, 15242), (15296, 15298), (15337, 15338), (15390, 15400), (15488, 15494), (15552, 15562), (15584, 15592), (15625, 15626), (15631, 15641)]) c0562_sound (intervals_sound_cons (I := (15043, 15050)) (intervals := [(15072, 15076), (15141, 15151), (15200, 15200), (15232, 15242), (15296, 15298), (15337, 15338), (15390, 15400), (15488, 15494), (15552, 15562), (15584, 15592), (15625, 15626), (15631, 15641)]) c0563_sound (intervals_sound_cons (I := (15072, 15076)) (intervals := [(15141, 15151), (15200, 15200), (15232, 15242), (15296, 15298), (15337, 15338), (15390, 15400), (15488, 15494), (15552, 15562), (15584, 15592), (15625, 15626), (15631, 15641)]) c0564_sound (intervals_sound_cons (I := (15141, 15151)) (intervals := [(15200, 15200), (15232, 15242), (15296, 15298), (15337, 15338), (15390, 15400), (15488, 15494), (15552, 15562), (15584, 15592), (15625, 15626), (15631, 15641)]) c0565_sound (intervals_sound_cons (I := (15200, 15200)) (intervals := [(15232, 15242), (15296, 15298), (15337, 15338), (15390, 15400), (15488, 15494), (15552, 15562), (15584, 15592), (15625, 15626), (15631, 15641)]) c0566_sound (intervals_sound_cons (I := (15232, 15242)) (intervals := [(15296, 15298), (15337, 15338), (15390, 15400), (15488, 15494), (15552, 15562), (15584, 15592), (15625, 15626), (15631, 15641)]) c0567_sound (intervals_sound_cons (I := (15296, 15298)) (intervals := [(15337, 15338), (15390, 15400), (15488, 15494), (15552, 15562), (15584, 15592), (15625, 15626), (15631, 15641)]) c0568_sound (intervals_sound_cons (I := (15337, 15338)) (intervals := [(15390, 15400), (15488, 15494), (15552, 15562), (15584, 15592), (15625, 15626), (15631, 15641)]) c0569_sound (intervals_sound_cons (I := (15390, 15400)) (intervals := [(15488, 15494), (15552, 15562), (15584, 15592), (15625, 15626), (15631, 15641)]) c0570_sound (intervals_sound_cons (I := (15488, 15494)) (intervals := [(15552, 15562), (15584, 15592), (15625, 15626), (15631, 15641)]) c0571_sound (intervals_sound_cons (I := (15552, 15562)) (intervals := [(15584, 15592), (15625, 15626), (15631, 15641)]) c0572_sound (intervals_sound_cons (I := (15584, 15592)) (intervals := [(15625, 15626), (15631, 15641)]) c0573_sound (intervals_sound_cons (I := (15625, 15626)) (intervals := [(15631, 15641)]) c0574_sound (intervals_sound_cons (I := (15631, 15641)) (intervals := []) c0575_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G035
