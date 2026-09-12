import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk187
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk188
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk189
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk190

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G042
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0672_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk187.w10]
private def c0672_intervals : List NatInterval := [(21222, 21227)]

private theorem c0672_intervals_eq :
    witnessIntervals c0672_witnesses = c0672_intervals := by
  rfl

private theorem c0672_checks : witnessesCheck c0672_witnesses = true := by
  simp only [witnessesCheck, c0672_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk187.w10_check, Bool.and_self]

private theorem c0672_cover : coverCheck 21222 21227 c0672_intervals = true := by
  decide

private theorem c0672_sound : IntervalSound (21222, 21227) := by
  have hc : coverCheck 21222 21227 (witnessIntervals c0672_witnesses) = true := by
    rw [c0672_intervals_eq]
    exact c0672_cover
  exact interval_sound_of_witness_checks (witnesses := c0672_witnesses)
    (lo := 21222) (hi := 21227) c0672_checks hc

private def c0673_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk187.w11, B699LowIndex.I11TerminalData.Chunk187.w12]
private def c0673_intervals : List NatInterval := [(21250, 21257), (21258, 21258)]

private theorem c0673_intervals_eq :
    witnessIntervals c0673_witnesses = c0673_intervals := by
  rfl

private theorem c0673_checks : witnessesCheck c0673_witnesses = true := by
  simp only [witnessesCheck, c0673_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk187.w11_check, B699LowIndex.I11TerminalData.Chunk187.w12_check, Bool.and_self]

private theorem c0673_cover : coverCheck 21250 21258 c0673_intervals = true := by
  decide

private theorem c0673_sound : IntervalSound (21250, 21258) := by
  have hc : coverCheck 21250 21258 (witnessIntervals c0673_witnesses) = true := by
    rw [c0673_intervals_eq]
    exact c0673_cover
  exact interval_sound_of_witness_checks (witnesses := c0673_witnesses)
    (lo := 21250) (hi := 21258) c0673_checks hc

private def c0674_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk187.w13, B699LowIndex.I11TerminalData.Chunk187.w14]
private def c0674_intervals : List NatInterval := [(21312, 21312), (21313, 21313)]

private theorem c0674_intervals_eq :
    witnessIntervals c0674_witnesses = c0674_intervals := by
  rfl

private theorem c0674_checks : witnessesCheck c0674_witnesses = true := by
  simp only [witnessesCheck, c0674_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk187.w13_check, B699LowIndex.I11TerminalData.Chunk187.w14_check, Bool.and_self]

private theorem c0674_cover : coverCheck 21312 21313 c0674_intervals = true := by
  decide

private theorem c0674_sound : IntervalSound (21312, 21313) := by
  have hc : coverCheck 21312 21313 (witnessIntervals c0674_witnesses) = true := by
    rw [c0674_intervals_eq]
    exact c0674_cover
  exact interval_sound_of_witness_checks (witnesses := c0674_witnesses)
    (lo := 21312) (hi := 21313) c0674_checks hc

private def c0675_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk187.w15]
private def c0675_intervals : List NatInterval := [(21315, 21322)]

private theorem c0675_intervals_eq :
    witnessIntervals c0675_witnesses = c0675_intervals := by
  rfl

private theorem c0675_checks : witnessesCheck c0675_witnesses = true := by
  simp only [witnessesCheck, c0675_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk187.w15_check, Bool.and_self]

private theorem c0675_cover : coverCheck 21315 21322 c0675_intervals = true := by
  decide

private theorem c0675_sound : IntervalSound (21315, 21322) := by
  have hc : coverCheck 21315 21322 (witnessIntervals c0675_witnesses) = true := by
    rw [c0675_intervals_eq]
    exact c0675_cover
  exact interval_sound_of_witness_checks (witnesses := c0675_witnesses)
    (lo := 21315) (hi := 21322) c0675_checks hc

private def c0676_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk188.w0, B699LowIndex.I11TerminalData.Chunk188.w1]
private def c0676_intervals : List NatInterval := [(21376, 21376), (21377, 21386)]

private theorem c0676_intervals_eq :
    witnessIntervals c0676_witnesses = c0676_intervals := by
  rfl

private theorem c0676_checks : witnessesCheck c0676_witnesses = true := by
  simp only [witnessesCheck, c0676_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk188.w0_check, B699LowIndex.I11TerminalData.Chunk188.w1_check, Bool.and_self]

private theorem c0676_cover : coverCheck 21376 21386 c0676_intervals = true := by
  decide

private theorem c0676_sound : IntervalSound (21376, 21386) := by
  have hc : coverCheck 21376 21386 (witnessIntervals c0676_witnesses) = true := by
    rw [c0676_intervals_eq]
    exact c0676_cover
  exact interval_sound_of_witness_checks (witnesses := c0676_witnesses)
    (lo := 21376) (hi := 21386) c0676_checks hc

private def c0677_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk188.w2, B699LowIndex.I11TerminalData.Chunk188.w3, B699LowIndex.I11TerminalData.Chunk188.w4]
private def c0677_intervals : List NatInterval := [(21465, 21465), (21466, 21466), (21467, 21472)]

private theorem c0677_intervals_eq :
    witnessIntervals c0677_witnesses = c0677_intervals := by
  rfl

private theorem c0677_checks : witnessesCheck c0677_witnesses = true := by
  simp only [witnessesCheck, c0677_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk188.w2_check, B699LowIndex.I11TerminalData.Chunk188.w3_check, B699LowIndex.I11TerminalData.Chunk188.w4_check, Bool.and_self]

private theorem c0677_cover : coverCheck 21465 21472 c0677_intervals = true := by
  decide

private theorem c0677_sound : IntervalSound (21465, 21472) := by
  have hc : coverCheck 21465 21472 (witnessIntervals c0677_witnesses) = true := by
    rw [c0677_intervals_eq]
    exact c0677_cover
  exact interval_sound_of_witness_checks (witnesses := c0677_witnesses)
    (lo := 21465) (hi := 21472) c0677_checks hc

private def c0678_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk188.w5, B699LowIndex.I11TerminalData.Chunk188.w6]
private def c0678_intervals : List NatInterval := [(21504, 21513), (21514, 21514)]

private theorem c0678_intervals_eq :
    witnessIntervals c0678_witnesses = c0678_intervals := by
  rfl

private theorem c0678_checks : witnessesCheck c0678_witnesses = true := by
  simp only [witnessesCheck, c0678_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk188.w5_check, B699LowIndex.I11TerminalData.Chunk188.w6_check, Bool.and_self]

private theorem c0678_cover : coverCheck 21504 21514 c0678_intervals = true := by
  decide

private theorem c0678_sound : IntervalSound (21504, 21514) := by
  have hc : coverCheck 21504 21514 (witnessIntervals c0678_witnesses) = true := by
    rw [c0678_intervals_eq]
    exact c0678_cover
  exact interval_sound_of_witness_checks (witnesses := c0678_witnesses)
    (lo := 21504) (hi := 21514) c0678_checks hc

private def c0679_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk188.w7]
private def c0679_intervals : List NatInterval := [(21568, 21570)]

private theorem c0679_intervals_eq :
    witnessIntervals c0679_witnesses = c0679_intervals := by
  rfl

private theorem c0679_checks : witnessesCheck c0679_witnesses = true := by
  simp only [witnessesCheck, c0679_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk188.w7_check, Bool.and_self]

private theorem c0679_cover : coverCheck 21568 21570 c0679_intervals = true := by
  decide

private theorem c0679_sound : IntervalSound (21568, 21570) := by
  have hc : coverCheck 21568 21570 (witnessIntervals c0679_witnesses) = true := by
    rw [c0679_intervals_eq]
    exact c0679_cover
  exact interval_sound_of_witness_checks (witnesses := c0679_witnesses)
    (lo := 21568) (hi := 21570) c0679_checks hc

private def c0680_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk188.w8, B699LowIndex.I11TerminalData.Chunk188.w9, B699LowIndex.I11TerminalData.Chunk188.w10, B699LowIndex.I11TerminalData.Chunk188.w11, B699LowIndex.I11TerminalData.Chunk188.w12, B699LowIndex.I11TerminalData.Chunk188.w13, B699LowIndex.I11TerminalData.Chunk188.w14, B699LowIndex.I11TerminalData.Chunk188.w15, B699LowIndex.I11TerminalData.Chunk189.w0, B699LowIndex.I11TerminalData.Chunk189.w1, B699LowIndex.I11TerminalData.Chunk189.w2]
private def c0680_intervals : List NatInterval := [(21627, 21627), (21628, 21628), (21629, 21629), (21630, 21630), (21631, 21631), (21632, 21632), (21633, 21633), (21634, 21634), (21635, 21635), (21636, 21636), (21637, 21637)]

private theorem c0680_intervals_eq :
    witnessIntervals c0680_witnesses = c0680_intervals := by
  rfl

private theorem c0680_checks : witnessesCheck c0680_witnesses = true := by
  simp only [witnessesCheck, c0680_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk188.w8_check, B699LowIndex.I11TerminalData.Chunk188.w9_check, B699LowIndex.I11TerminalData.Chunk188.w10_check, B699LowIndex.I11TerminalData.Chunk188.w11_check, B699LowIndex.I11TerminalData.Chunk188.w12_check, B699LowIndex.I11TerminalData.Chunk188.w13_check, B699LowIndex.I11TerminalData.Chunk188.w14_check, B699LowIndex.I11TerminalData.Chunk188.w15_check, B699LowIndex.I11TerminalData.Chunk189.w0_check, B699LowIndex.I11TerminalData.Chunk189.w1_check, B699LowIndex.I11TerminalData.Chunk189.w2_check, Bool.and_self]

private theorem c0680_cover : coverCheck 21627 21637 c0680_intervals = true := by
  decide

private theorem c0680_sound : IntervalSound (21627, 21637) := by
  have hc : coverCheck 21627 21637 (witnessIntervals c0680_witnesses) = true := by
    rw [c0680_intervals_eq]
    exact c0680_cover
  exact interval_sound_of_witness_checks (witnesses := c0680_witnesses)
    (lo := 21627) (hi := 21637) c0680_checks hc

private def c0681_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk189.w3, B699LowIndex.I11TerminalData.Chunk189.w4, B699LowIndex.I11TerminalData.Chunk189.w5]
private def c0681_intervals : List NatInterval := [(21708, 21711), (21712, 21712), (21713, 21717)]

private theorem c0681_intervals_eq :
    witnessIntervals c0681_witnesses = c0681_intervals := by
  rfl

private theorem c0681_checks : witnessesCheck c0681_witnesses = true := by
  simp only [witnessesCheck, c0681_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk189.w3_check, B699LowIndex.I11TerminalData.Chunk189.w4_check, B699LowIndex.I11TerminalData.Chunk189.w5_check, Bool.and_self]

private theorem c0681_cover : coverCheck 21708 21717 c0681_intervals = true := by
  decide

private theorem c0681_sound : IntervalSound (21708, 21717) := by
  have hc : coverCheck 21708 21717 (witnessIntervals c0681_witnesses) = true := by
    rw [c0681_intervals_eq]
    exact c0681_cover
  exact interval_sound_of_witness_checks (witnesses := c0681_witnesses)
    (lo := 21708) (hi := 21717) c0681_checks hc

private def c0682_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk189.w6, B699LowIndex.I11TerminalData.Chunk189.w7]
private def c0682_intervals : List NatInterval := [(21756, 21761), (21762, 21766)]

private theorem c0682_intervals_eq :
    witnessIntervals c0682_witnesses = c0682_intervals := by
  rfl

private theorem c0682_checks : witnessesCheck c0682_witnesses = true := by
  simp only [witnessesCheck, c0682_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk189.w6_check, B699LowIndex.I11TerminalData.Chunk189.w7_check, Bool.and_self]

private theorem c0682_cover : coverCheck 21756 21766 c0682_intervals = true := by
  decide

private theorem c0682_sound : IntervalSound (21756, 21766) := by
  have hc : coverCheck 21756 21766 (witnessIntervals c0682_witnesses) = true := by
    rw [c0682_intervals_eq]
    exact c0682_cover
  exact interval_sound_of_witness_checks (witnesses := c0682_witnesses)
    (lo := 21756) (hi := 21766) c0682_checks hc

private def c0683_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk189.w8]
private def c0683_intervals : List NatInterval := [(21875, 21880)]

private theorem c0683_intervals_eq :
    witnessIntervals c0683_witnesses = c0683_intervals := by
  rfl

private theorem c0683_checks : witnessesCheck c0683_witnesses = true := by
  simp only [witnessesCheck, c0683_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk189.w8_check, Bool.and_self]

private theorem c0683_cover : coverCheck 21875 21880 c0683_intervals = true := by
  decide

private theorem c0683_sound : IntervalSound (21875, 21880) := by
  have hc : coverCheck 21875 21880 (witnessIntervals c0683_witnesses) = true := by
    rw [c0683_intervals_eq]
    exact c0683_cover
  exact interval_sound_of_witness_checks (witnesses := c0683_witnesses)
    (lo := 21875) (hi := 21880) c0683_checks hc

private def c0684_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk189.w9, B699LowIndex.I11TerminalData.Chunk189.w10, B699LowIndex.I11TerminalData.Chunk189.w11, B699LowIndex.I11TerminalData.Chunk189.w12, B699LowIndex.I11TerminalData.Chunk189.w13, B699LowIndex.I11TerminalData.Chunk189.w14, B699LowIndex.I11TerminalData.Chunk189.w15, B699LowIndex.I11TerminalData.Chunk190.w0, B699LowIndex.I11TerminalData.Chunk190.w1]
private def c0684_intervals : List NatInterval := [(21952, 21953), (21954, 21954), (21955, 21955), (21956, 21956), (21957, 21957), (21958, 21958), (21959, 21959), (21960, 21960), (21961, 21962)]

private theorem c0684_intervals_eq :
    witnessIntervals c0684_witnesses = c0684_intervals := by
  rfl

private theorem c0684_checks : witnessesCheck c0684_witnesses = true := by
  simp only [witnessesCheck, c0684_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk189.w9_check, B699LowIndex.I11TerminalData.Chunk189.w10_check, B699LowIndex.I11TerminalData.Chunk189.w11_check, B699LowIndex.I11TerminalData.Chunk189.w12_check, B699LowIndex.I11TerminalData.Chunk189.w13_check, B699LowIndex.I11TerminalData.Chunk189.w14_check, B699LowIndex.I11TerminalData.Chunk189.w15_check, B699LowIndex.I11TerminalData.Chunk190.w0_check, B699LowIndex.I11TerminalData.Chunk190.w1_check, Bool.and_self]

private theorem c0684_cover : coverCheck 21952 21962 c0684_intervals = true := by
  decide

private theorem c0684_sound : IntervalSound (21952, 21962) := by
  have hc : coverCheck 21952 21962 (witnessIntervals c0684_witnesses) = true := by
    rw [c0684_intervals_eq]
    exact c0684_cover
  exact interval_sound_of_witness_checks (witnesses := c0684_witnesses)
    (lo := 21952) (hi := 21962) c0684_checks hc

private def c0685_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk190.w2, B699LowIndex.I11TerminalData.Chunk190.w3]
private def c0685_intervals : List NatInterval := [(22001, 22007), (22008, 22010)]

private theorem c0685_intervals_eq :
    witnessIntervals c0685_witnesses = c0685_intervals := by
  rfl

private theorem c0685_checks : witnessesCheck c0685_witnesses = true := by
  simp only [witnessesCheck, c0685_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk190.w2_check, B699LowIndex.I11TerminalData.Chunk190.w3_check, Bool.and_self]

private theorem c0685_cover : coverCheck 22001 22010 c0685_intervals = true := by
  decide

private theorem c0685_sound : IntervalSound (22001, 22010) := by
  have hc : coverCheck 22001 22010 (witnessIntervals c0685_witnesses) = true := by
    rw [c0685_intervals_eq]
    exact c0685_cover
  exact interval_sound_of_witness_checks (witnesses := c0685_witnesses)
    (lo := 22001) (hi := 22010) c0685_checks hc

private def c0686_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk190.w4]
private def c0686_intervals : List NatInterval := [(22148, 22154)]

private theorem c0686_intervals_eq :
    witnessIntervals c0686_witnesses = c0686_intervals := by
  rfl

private theorem c0686_checks : witnessesCheck c0686_witnesses = true := by
  simp only [witnessesCheck, c0686_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk190.w4_check, Bool.and_self]

private theorem c0686_cover : coverCheck 22148 22154 c0686_intervals = true := by
  decide

private theorem c0686_sound : IntervalSound (22148, 22154) := by
  have hc : coverCheck 22148 22154 (witnessIntervals c0686_witnesses) = true := by
    rw [c0686_intervals_eq]
    exact c0686_cover
  exact interval_sound_of_witness_checks (witnesses := c0686_witnesses)
    (lo := 22148) (hi := 22154) c0686_checks hc

private def c0687_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk190.w5, B699LowIndex.I11TerminalData.Chunk190.w6]
private def c0687_intervals : List NatInterval := [(22197, 22203), (22204, 22204)]

private theorem c0687_intervals_eq :
    witnessIntervals c0687_witnesses = c0687_intervals := by
  rfl

private theorem c0687_checks : witnessesCheck c0687_witnesses = true := by
  simp only [witnessesCheck, c0687_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk190.w5_check, B699LowIndex.I11TerminalData.Chunk190.w6_check, Bool.and_self]

private theorem c0687_cover : coverCheck 22197 22204 c0687_intervals = true := by
  decide

private theorem c0687_sound : IntervalSound (22197, 22204) := by
  have hc : coverCheck 22197 22204 (witnessIntervals c0687_witnesses) = true := by
    rw [c0687_intervals_eq]
    exact c0687_cover
  exact interval_sound_of_witness_checks (witnesses := c0687_witnesses)
    (lo := 22197) (hi := 22204) c0687_checks hc

def intervals : List NatInterval := [(21222, 21227), (21250, 21258), (21312, 21313), (21315, 21322), (21376, 21386), (21465, 21472), (21504, 21514), (21568, 21570), (21627, 21637), (21708, 21717), (21756, 21766), (21875, 21880), (21952, 21962), (22001, 22010), (22148, 22154), (22197, 22204)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (21222, 21227)) (intervals := [(21250, 21258), (21312, 21313), (21315, 21322), (21376, 21386), (21465, 21472), (21504, 21514), (21568, 21570), (21627, 21637), (21708, 21717), (21756, 21766), (21875, 21880), (21952, 21962), (22001, 22010), (22148, 22154), (22197, 22204)]) c0672_sound (intervals_sound_cons (I := (21250, 21258)) (intervals := [(21312, 21313), (21315, 21322), (21376, 21386), (21465, 21472), (21504, 21514), (21568, 21570), (21627, 21637), (21708, 21717), (21756, 21766), (21875, 21880), (21952, 21962), (22001, 22010), (22148, 22154), (22197, 22204)]) c0673_sound (intervals_sound_cons (I := (21312, 21313)) (intervals := [(21315, 21322), (21376, 21386), (21465, 21472), (21504, 21514), (21568, 21570), (21627, 21637), (21708, 21717), (21756, 21766), (21875, 21880), (21952, 21962), (22001, 22010), (22148, 22154), (22197, 22204)]) c0674_sound (intervals_sound_cons (I := (21315, 21322)) (intervals := [(21376, 21386), (21465, 21472), (21504, 21514), (21568, 21570), (21627, 21637), (21708, 21717), (21756, 21766), (21875, 21880), (21952, 21962), (22001, 22010), (22148, 22154), (22197, 22204)]) c0675_sound (intervals_sound_cons (I := (21376, 21386)) (intervals := [(21465, 21472), (21504, 21514), (21568, 21570), (21627, 21637), (21708, 21717), (21756, 21766), (21875, 21880), (21952, 21962), (22001, 22010), (22148, 22154), (22197, 22204)]) c0676_sound (intervals_sound_cons (I := (21465, 21472)) (intervals := [(21504, 21514), (21568, 21570), (21627, 21637), (21708, 21717), (21756, 21766), (21875, 21880), (21952, 21962), (22001, 22010), (22148, 22154), (22197, 22204)]) c0677_sound (intervals_sound_cons (I := (21504, 21514)) (intervals := [(21568, 21570), (21627, 21637), (21708, 21717), (21756, 21766), (21875, 21880), (21952, 21962), (22001, 22010), (22148, 22154), (22197, 22204)]) c0678_sound (intervals_sound_cons (I := (21568, 21570)) (intervals := [(21627, 21637), (21708, 21717), (21756, 21766), (21875, 21880), (21952, 21962), (22001, 22010), (22148, 22154), (22197, 22204)]) c0679_sound (intervals_sound_cons (I := (21627, 21637)) (intervals := [(21708, 21717), (21756, 21766), (21875, 21880), (21952, 21962), (22001, 22010), (22148, 22154), (22197, 22204)]) c0680_sound (intervals_sound_cons (I := (21708, 21717)) (intervals := [(21756, 21766), (21875, 21880), (21952, 21962), (22001, 22010), (22148, 22154), (22197, 22204)]) c0681_sound (intervals_sound_cons (I := (21756, 21766)) (intervals := [(21875, 21880), (21952, 21962), (22001, 22010), (22148, 22154), (22197, 22204)]) c0682_sound (intervals_sound_cons (I := (21875, 21880)) (intervals := [(21952, 21962), (22001, 22010), (22148, 22154), (22197, 22204)]) c0683_sound (intervals_sound_cons (I := (21952, 21962)) (intervals := [(22001, 22010), (22148, 22154), (22197, 22204)]) c0684_sound (intervals_sound_cons (I := (22001, 22010)) (intervals := [(22148, 22154), (22197, 22204)]) c0685_sound (intervals_sound_cons (I := (22148, 22154)) (intervals := [(22197, 22204)]) c0686_sound (intervals_sound_cons (I := (22197, 22204)) (intervals := []) c0687_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G042
