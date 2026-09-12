import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk234
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk235
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk236

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G059
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0944_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk234.w0]
private def c0944_intervals : List NatInterval := [(81162, 81162)]

private theorem c0944_intervals_eq :
    witnessIntervals c0944_witnesses = c0944_intervals := by
  rfl

private theorem c0944_checks : witnessesCheck c0944_witnesses = true := by
  simp only [witnessesCheck, c0944_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk234.w0_check, Bool.and_self]

private theorem c0944_cover : coverCheck 81162 81162 c0944_intervals = true := by
  decide

private theorem c0944_sound : IntervalSound (81162, 81162) := by
  have hc : coverCheck 81162 81162 (witnessIntervals c0944_witnesses) = true := by
    rw [c0944_intervals_eq]
    exact c0944_cover
  exact interval_sound_of_witness_checks (witnesses := c0944_witnesses)
    (lo := 81162) (hi := 81162) c0944_checks hc

private def c0945_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk234.w1, B699LowIndex.I11TerminalData.Chunk234.w2]
private def c0945_intervals : List NatInterval := [(81408, 81411), (81412, 81415)]

private theorem c0945_intervals_eq :
    witnessIntervals c0945_witnesses = c0945_intervals := by
  rfl

private theorem c0945_checks : witnessesCheck c0945_witnesses = true := by
  simp only [witnessesCheck, c0945_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk234.w1_check, B699LowIndex.I11TerminalData.Chunk234.w2_check, Bool.and_self]

private theorem c0945_cover : coverCheck 81408 81415 c0945_intervals = true := by
  decide

private theorem c0945_sound : IntervalSound (81408, 81415) := by
  have hc : coverCheck 81408 81415 (witnessIntervals c0945_witnesses) = true := by
    rw [c0945_intervals_eq]
    exact c0945_cover
  exact interval_sound_of_witness_checks (witnesses := c0945_witnesses)
    (lo := 81408) (hi := 81415) c0945_checks hc

private def c0946_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk234.w3, B699LowIndex.I11TerminalData.Chunk234.w4, B699LowIndex.I11TerminalData.Chunk234.w5, B699LowIndex.I11TerminalData.Chunk234.w6, B699LowIndex.I11TerminalData.Chunk234.w7, B699LowIndex.I11TerminalData.Chunk234.w8, B699LowIndex.I11TerminalData.Chunk234.w9]
private def c0946_intervals : List NatInterval := [(83349, 83351), (83352, 83352), (83353, 83353), (83354, 83354), (83355, 83355), (83356, 83356), (83357, 83359)]

private theorem c0946_intervals_eq :
    witnessIntervals c0946_witnesses = c0946_intervals := by
  rfl

private theorem c0946_checks : witnessesCheck c0946_witnesses = true := by
  simp only [witnessesCheck, c0946_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk234.w3_check, B699LowIndex.I11TerminalData.Chunk234.w4_check, B699LowIndex.I11TerminalData.Chunk234.w5_check, B699LowIndex.I11TerminalData.Chunk234.w6_check, B699LowIndex.I11TerminalData.Chunk234.w7_check, B699LowIndex.I11TerminalData.Chunk234.w8_check, B699LowIndex.I11TerminalData.Chunk234.w9_check, Bool.and_self]

private theorem c0946_cover : coverCheck 83349 83359 c0946_intervals = true := by
  decide

private theorem c0946_sound : IntervalSound (83349, 83359) := by
  have hc : coverCheck 83349 83359 (witnessIntervals c0946_witnesses) = true := by
    rw [c0946_intervals_eq]
    exact c0946_cover
  exact interval_sound_of_witness_checks (witnesses := c0946_witnesses)
    (lo := 83349) (hi := 83359) c0946_checks hc

private def c0947_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk234.w10]
private def c0947_intervals : List NatInterval := [(84378, 84385)]

private theorem c0947_intervals_eq :
    witnessIntervals c0947_witnesses = c0947_intervals := by
  rfl

private theorem c0947_checks : witnessesCheck c0947_witnesses = true := by
  simp only [witnessesCheck, c0947_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk234.w10_check, Bool.and_self]

private theorem c0947_cover : coverCheck 84378 84385 c0947_intervals = true := by
  decide

private theorem c0947_sound : IntervalSound (84378, 84385) := by
  have hc : coverCheck 84378 84385 (witnessIntervals c0947_witnesses) = true := by
    rw [c0947_intervals_eq]
    exact c0947_cover
  exact interval_sound_of_witness_checks (witnesses := c0947_witnesses)
    (lo := 84378) (hi := 84385) c0947_checks hc

private def c0948_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk234.w11, B699LowIndex.I11TerminalData.Chunk234.w12]
private def c0948_intervals : List NatInterval := [(85000, 85001), (85002, 85002)]

private theorem c0948_intervals_eq :
    witnessIntervals c0948_witnesses = c0948_intervals := by
  rfl

private theorem c0948_checks : witnessesCheck c0948_witnesses = true := by
  simp only [witnessesCheck, c0948_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk234.w11_check, B699LowIndex.I11TerminalData.Chunk234.w12_check, Bool.and_self]

private theorem c0948_cover : coverCheck 85000 85002 c0948_intervals = true := by
  decide

private theorem c0948_sound : IntervalSound (85000, 85002) := by
  have hc : coverCheck 85000 85002 (witnessIntervals c0948_witnesses) = true := by
    rw [c0948_intervals_eq]
    exact c0948_cover
  exact interval_sound_of_witness_checks (witnesses := c0948_witnesses)
    (lo := 85000) (hi := 85002) c0948_checks hc

private def c0949_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk234.w13]
private def c0949_intervals : List NatInterval := [(85760, 85760)]

private theorem c0949_intervals_eq :
    witnessIntervals c0949_witnesses = c0949_intervals := by
  rfl

private theorem c0949_checks : witnessesCheck c0949_witnesses = true := by
  simp only [witnessesCheck, c0949_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk234.w13_check, Bool.and_self]

private theorem c0949_cover : coverCheck 85760 85760 c0949_intervals = true := by
  decide

private theorem c0949_sound : IntervalSound (85760, 85760) := by
  have hc : coverCheck 85760 85760 (witnessIntervals c0949_witnesses) = true := by
    rw [c0949_intervals_eq]
    exact c0949_cover
  exact interval_sound_of_witness_checks (witnesses := c0949_witnesses)
    (lo := 85760) (hi := 85760) c0949_checks hc

private def c0950_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk234.w14]
private def c0950_intervals : List NatInterval := [(86022, 86026)]

private theorem c0950_intervals_eq :
    witnessIntervals c0950_witnesses = c0950_intervals := by
  rfl

private theorem c0950_checks : witnessesCheck c0950_witnesses = true := by
  simp only [witnessesCheck, c0950_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk234.w14_check, Bool.and_self]

private theorem c0950_cover : coverCheck 86022 86026 c0950_intervals = true := by
  decide

private theorem c0950_sound : IntervalSound (86022, 86026) := by
  have hc : coverCheck 86022 86026 (witnessIntervals c0950_witnesses) = true := by
    rw [c0950_intervals_eq]
    exact c0950_cover
  exact interval_sound_of_witness_checks (witnesses := c0950_witnesses)
    (lo := 86022) (hi := 86026) c0950_checks hc

private def c0951_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk234.w15]
private def c0951_intervals : List NatInterval := [(86272, 86275)]

private theorem c0951_intervals_eq :
    witnessIntervals c0951_witnesses = c0951_intervals := by
  rfl

private theorem c0951_checks : witnessesCheck c0951_witnesses = true := by
  simp only [witnessesCheck, c0951_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk234.w15_check, Bool.and_self]

private theorem c0951_cover : coverCheck 86272 86275 c0951_intervals = true := by
  decide

private theorem c0951_sound : IntervalSound (86272, 86275) := by
  have hc : coverCheck 86272 86275 (witnessIntervals c0951_witnesses) = true := by
    rw [c0951_intervals_eq]
    exact c0951_cover
  exact interval_sound_of_witness_checks (witnesses := c0951_witnesses)
    (lo := 86272) (hi := 86275) c0951_checks hc

private def c0952_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk235.w0]
private def c0952_intervals : List NatInterval := [(86784, 86789)]

private theorem c0952_intervals_eq :
    witnessIntervals c0952_witnesses = c0952_intervals := by
  rfl

private theorem c0952_checks : witnessesCheck c0952_witnesses = true := by
  simp only [witnessesCheck, c0952_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk235.w0_check, Bool.and_self]

private theorem c0952_cover : coverCheck 86784 86789 c0952_intervals = true := by
  decide

private theorem c0952_sound : IntervalSound (86784, 86789) := by
  have hc : coverCheck 86784 86789 (witnessIntervals c0952_witnesses) = true := by
    rw [c0952_intervals_eq]
    exact c0952_cover
  exact interval_sound_of_witness_checks (witnesses := c0952_witnesses)
    (lo := 86784) (hi := 86789) c0952_checks hc

private def c0953_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk235.w1, B699LowIndex.I11TerminalData.Chunk235.w2]
private def c0953_intervals : List NatInterval := [(87808, 87813), (87814, 87818)]

private theorem c0953_intervals_eq :
    witnessIntervals c0953_witnesses = c0953_intervals := by
  rfl

private theorem c0953_checks : witnessesCheck c0953_witnesses = true := by
  simp only [witnessesCheck, c0953_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk235.w1_check, B699LowIndex.I11TerminalData.Chunk235.w2_check, Bool.and_self]

private theorem c0953_cover : coverCheck 87808 87818 c0953_intervals = true := by
  decide

private theorem c0953_sound : IntervalSound (87808, 87818) := by
  have hc : coverCheck 87808 87818 (witnessIntervals c0953_witnesses) = true := by
    rw [c0953_intervals_eq]
    exact c0953_cover
  exact interval_sound_of_witness_checks (witnesses := c0953_witnesses)
    (lo := 87808) (hi := 87818) c0953_checks hc

private def c0954_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk235.w3, B699LowIndex.I11TerminalData.Chunk235.w4, B699LowIndex.I11TerminalData.Chunk235.w5, B699LowIndex.I11TerminalData.Chunk235.w6, B699LowIndex.I11TerminalData.Chunk235.w7, B699LowIndex.I11TerminalData.Chunk235.w8]
private def c0954_intervals : List NatInterval := [(88837, 88837), (88838, 88838), (88839, 88839), (88840, 88840), (88841, 88841), (88842, 88842)]

private theorem c0954_intervals_eq :
    witnessIntervals c0954_witnesses = c0954_intervals := by
  rfl

private theorem c0954_checks : witnessesCheck c0954_witnesses = true := by
  simp only [witnessesCheck, c0954_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk235.w3_check, B699LowIndex.I11TerminalData.Chunk235.w4_check, B699LowIndex.I11TerminalData.Chunk235.w5_check, B699LowIndex.I11TerminalData.Chunk235.w6_check, B699LowIndex.I11TerminalData.Chunk235.w7_check, B699LowIndex.I11TerminalData.Chunk235.w8_check, Bool.and_self]

private theorem c0954_cover : coverCheck 88837 88842 c0954_intervals = true := by
  decide

private theorem c0954_sound : IntervalSound (88837, 88842) := by
  have hc : coverCheck 88837 88842 (witnessIntervals c0954_witnesses) = true := by
    rw [c0954_intervals_eq]
    exact c0954_cover
  exact interval_sound_of_witness_checks (witnesses := c0954_witnesses)
    (lo := 88837) (hi := 88842) c0954_checks hc

private def c0955_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk235.w9, B699LowIndex.I11TerminalData.Chunk235.w10, B699LowIndex.I11TerminalData.Chunk235.w11, B699LowIndex.I11TerminalData.Chunk235.w12, B699LowIndex.I11TerminalData.Chunk235.w13, B699LowIndex.I11TerminalData.Chunk235.w14, B699LowIndex.I11TerminalData.Chunk235.w15, B699LowIndex.I11TerminalData.Chunk236.w0, B699LowIndex.I11TerminalData.Chunk236.w1]
private def c0955_intervals : List NatInterval := [(89181, 89181), (89182, 89182), (89183, 89183), (89184, 89184), (89185, 89185), (89186, 89186), (89187, 89187), (89188, 89188), (89189, 89190)]

private theorem c0955_intervals_eq :
    witnessIntervals c0955_witnesses = c0955_intervals := by
  rfl

private theorem c0955_checks : witnessesCheck c0955_witnesses = true := by
  simp only [witnessesCheck, c0955_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk235.w9_check, B699LowIndex.I11TerminalData.Chunk235.w10_check, B699LowIndex.I11TerminalData.Chunk235.w11_check, B699LowIndex.I11TerminalData.Chunk235.w12_check, B699LowIndex.I11TerminalData.Chunk235.w13_check, B699LowIndex.I11TerminalData.Chunk235.w14_check, B699LowIndex.I11TerminalData.Chunk235.w15_check, B699LowIndex.I11TerminalData.Chunk236.w0_check, B699LowIndex.I11TerminalData.Chunk236.w1_check, Bool.and_self]

private theorem c0955_cover : coverCheck 89181 89190 c0955_intervals = true := by
  decide

private theorem c0955_sound : IntervalSound (89181, 89190) := by
  have hc : coverCheck 89181 89190 (witnessIntervals c0955_witnesses) = true := by
    rw [c0955_intervals_eq]
    exact c0955_cover
  exact interval_sound_of_witness_checks (witnesses := c0955_witnesses)
    (lo := 89181) (hi := 89190) c0955_checks hc

private def c0956_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk236.w2]
private def c0956_intervals : List NatInterval := [(89866, 89866)]

private theorem c0956_intervals_eq :
    witnessIntervals c0956_witnesses = c0956_intervals := by
  rfl

private theorem c0956_checks : witnessesCheck c0956_witnesses = true := by
  simp only [witnessesCheck, c0956_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk236.w2_check, Bool.and_self]

private theorem c0956_cover : coverCheck 89866 89866 c0956_intervals = true := by
  decide

private theorem c0956_sound : IntervalSound (89866, 89866) := by
  have hc : coverCheck 89866 89866 (witnessIntervals c0956_witnesses) = true := by
    rw [c0956_intervals_eq]
    exact c0956_cover
  exact interval_sound_of_witness_checks (witnesses := c0956_witnesses)
    (lo := 89866) (hi := 89866) c0956_checks hc

private def c0957_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk236.w3, B699LowIndex.I11TerminalData.Chunk236.w4, B699LowIndex.I11TerminalData.Chunk236.w5]
private def c0957_intervals : List NatInterval := [(90625, 90629), (90630, 90630), (90631, 90634)]

private theorem c0957_intervals_eq :
    witnessIntervals c0957_witnesses = c0957_intervals := by
  rfl

private theorem c0957_checks : witnessesCheck c0957_witnesses = true := by
  simp only [witnessesCheck, c0957_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk236.w3_check, B699LowIndex.I11TerminalData.Chunk236.w4_check, B699LowIndex.I11TerminalData.Chunk236.w5_check, Bool.and_self]

private theorem c0957_cover : coverCheck 90625 90634 c0957_intervals = true := by
  decide

private theorem c0957_sound : IntervalSound (90625, 90634) := by
  have hc : coverCheck 90625 90634 (witnessIntervals c0957_witnesses) = true := by
    rw [c0957_intervals_eq]
    exact c0957_cover
  exact interval_sound_of_witness_checks (witnesses := c0957_witnesses)
    (lo := 90625) (hi := 90634) c0957_checks hc

private def c0958_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk236.w6, B699LowIndex.I11TerminalData.Chunk236.w7, B699LowIndex.I11TerminalData.Chunk236.w8, B699LowIndex.I11TerminalData.Chunk236.w9, B699LowIndex.I11TerminalData.Chunk236.w10, B699LowIndex.I11TerminalData.Chunk236.w11]
private def c0958_intervals : List NatInterval := [(90882, 90882), (90883, 90883), (90884, 90884), (90885, 90885), (90886, 90886), (90887, 90890)]

private theorem c0958_intervals_eq :
    witnessIntervals c0958_witnesses = c0958_intervals := by
  rfl

private theorem c0958_checks : witnessesCheck c0958_witnesses = true := by
  simp only [witnessesCheck, c0958_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk236.w6_check, B699LowIndex.I11TerminalData.Chunk236.w7_check, B699LowIndex.I11TerminalData.Chunk236.w8_check, B699LowIndex.I11TerminalData.Chunk236.w9_check, B699LowIndex.I11TerminalData.Chunk236.w10_check, B699LowIndex.I11TerminalData.Chunk236.w11_check, Bool.and_self]

private theorem c0958_cover : coverCheck 90882 90890 c0958_intervals = true := by
  decide

private theorem c0958_sound : IntervalSound (90882, 90890) := by
  have hc : coverCheck 90882 90890 (witnessIntervals c0958_witnesses) = true := by
    rw [c0958_intervals_eq]
    exact c0958_cover
  exact interval_sound_of_witness_checks (witnesses := c0958_witnesses)
    (lo := 90882) (hi := 90890) c0958_checks hc

private def c0959_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk236.w12, B699LowIndex.I11TerminalData.Chunk236.w13, B699LowIndex.I11TerminalData.Chunk236.w14]
private def c0959_intervals : List NatInterval := [(95013, 95019), (95020, 95020), (95021, 95021)]

private theorem c0959_intervals_eq :
    witnessIntervals c0959_witnesses = c0959_intervals := by
  rfl

private theorem c0959_checks : witnessesCheck c0959_witnesses = true := by
  simp only [witnessesCheck, c0959_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk236.w12_check, B699LowIndex.I11TerminalData.Chunk236.w13_check, B699LowIndex.I11TerminalData.Chunk236.w14_check, Bool.and_self]

private theorem c0959_cover : coverCheck 95013 95021 c0959_intervals = true := by
  decide

private theorem c0959_sound : IntervalSound (95013, 95021) := by
  have hc : coverCheck 95013 95021 (witnessIntervals c0959_witnesses) = true := by
    rw [c0959_intervals_eq]
    exact c0959_cover
  exact interval_sound_of_witness_checks (witnesses := c0959_witnesses)
    (lo := 95013) (hi := 95021) c0959_checks hc

def intervals : List NatInterval := [(81162, 81162), (81408, 81415), (83349, 83359), (84378, 84385), (85000, 85002), (85760, 85760), (86022, 86026), (86272, 86275), (86784, 86789), (87808, 87818), (88837, 88842), (89181, 89190), (89866, 89866), (90625, 90634), (90882, 90890), (95013, 95021)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (81162, 81162)) (intervals := [(81408, 81415), (83349, 83359), (84378, 84385), (85000, 85002), (85760, 85760), (86022, 86026), (86272, 86275), (86784, 86789), (87808, 87818), (88837, 88842), (89181, 89190), (89866, 89866), (90625, 90634), (90882, 90890), (95013, 95021)]) c0944_sound (intervals_sound_cons (I := (81408, 81415)) (intervals := [(83349, 83359), (84378, 84385), (85000, 85002), (85760, 85760), (86022, 86026), (86272, 86275), (86784, 86789), (87808, 87818), (88837, 88842), (89181, 89190), (89866, 89866), (90625, 90634), (90882, 90890), (95013, 95021)]) c0945_sound (intervals_sound_cons (I := (83349, 83359)) (intervals := [(84378, 84385), (85000, 85002), (85760, 85760), (86022, 86026), (86272, 86275), (86784, 86789), (87808, 87818), (88837, 88842), (89181, 89190), (89866, 89866), (90625, 90634), (90882, 90890), (95013, 95021)]) c0946_sound (intervals_sound_cons (I := (84378, 84385)) (intervals := [(85000, 85002), (85760, 85760), (86022, 86026), (86272, 86275), (86784, 86789), (87808, 87818), (88837, 88842), (89181, 89190), (89866, 89866), (90625, 90634), (90882, 90890), (95013, 95021)]) c0947_sound (intervals_sound_cons (I := (85000, 85002)) (intervals := [(85760, 85760), (86022, 86026), (86272, 86275), (86784, 86789), (87808, 87818), (88837, 88842), (89181, 89190), (89866, 89866), (90625, 90634), (90882, 90890), (95013, 95021)]) c0948_sound (intervals_sound_cons (I := (85760, 85760)) (intervals := [(86022, 86026), (86272, 86275), (86784, 86789), (87808, 87818), (88837, 88842), (89181, 89190), (89866, 89866), (90625, 90634), (90882, 90890), (95013, 95021)]) c0949_sound (intervals_sound_cons (I := (86022, 86026)) (intervals := [(86272, 86275), (86784, 86789), (87808, 87818), (88837, 88842), (89181, 89190), (89866, 89866), (90625, 90634), (90882, 90890), (95013, 95021)]) c0950_sound (intervals_sound_cons (I := (86272, 86275)) (intervals := [(86784, 86789), (87808, 87818), (88837, 88842), (89181, 89190), (89866, 89866), (90625, 90634), (90882, 90890), (95013, 95021)]) c0951_sound (intervals_sound_cons (I := (86784, 86789)) (intervals := [(87808, 87818), (88837, 88842), (89181, 89190), (89866, 89866), (90625, 90634), (90882, 90890), (95013, 95021)]) c0952_sound (intervals_sound_cons (I := (87808, 87818)) (intervals := [(88837, 88842), (89181, 89190), (89866, 89866), (90625, 90634), (90882, 90890), (95013, 95021)]) c0953_sound (intervals_sound_cons (I := (88837, 88842)) (intervals := [(89181, 89190), (89866, 89866), (90625, 90634), (90882, 90890), (95013, 95021)]) c0954_sound (intervals_sound_cons (I := (89181, 89190)) (intervals := [(89866, 89866), (90625, 90634), (90882, 90890), (95013, 95021)]) c0955_sound (intervals_sound_cons (I := (89866, 89866)) (intervals := [(90625, 90634), (90882, 90890), (95013, 95021)]) c0956_sound (intervals_sound_cons (I := (90625, 90634)) (intervals := [(90882, 90890), (95013, 95021)]) c0957_sound (intervals_sound_cons (I := (90882, 90890)) (intervals := [(95013, 95021)]) c0958_sound (intervals_sound_cons (I := (95013, 95021)) (intervals := []) c0959_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G059
