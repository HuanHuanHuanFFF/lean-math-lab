import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk173
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk174
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk175
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk176

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G037
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0592_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk173.w2, B699LowIndex.I11TerminalData.Chunk173.w3, B699LowIndex.I11TerminalData.Chunk173.w4, B699LowIndex.I11TerminalData.Chunk173.w5, B699LowIndex.I11TerminalData.Chunk173.w6, B699LowIndex.I11TerminalData.Chunk173.w7, B699LowIndex.I11TerminalData.Chunk173.w8]
private def c0592_intervals : List NatInterval := [(16513, 16513), (16514, 16514), (16515, 16515), (16516, 16516), (16517, 16517), (16518, 16518), (16519, 16522)]

private theorem c0592_intervals_eq :
    witnessIntervals c0592_witnesses = c0592_intervals := by
  rfl

private theorem c0592_checks : witnessesCheck c0592_witnesses = true := by
  simp only [witnessesCheck, c0592_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk173.w2_check, B699LowIndex.I11TerminalData.Chunk173.w3_check, B699LowIndex.I11TerminalData.Chunk173.w4_check, B699LowIndex.I11TerminalData.Chunk173.w5_check, B699LowIndex.I11TerminalData.Chunk173.w6_check, B699LowIndex.I11TerminalData.Chunk173.w7_check, B699LowIndex.I11TerminalData.Chunk173.w8_check, Bool.and_self]

private theorem c0592_cover : coverCheck 16513 16522 c0592_intervals = true := by
  decide

private theorem c0592_sound : IntervalSound (16513, 16522) := by
  have hc : coverCheck 16513 16522 (witnessIntervals c0592_witnesses) = true := by
    rw [c0592_intervals_eq]
    exact c0592_cover
  exact interval_sound_of_witness_checks (witnesses := c0592_witnesses)
    (lo := 16513) (hi := 16522) c0592_checks hc

private def c0593_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk173.w9]
private def c0593_intervals : List NatInterval := [(16611, 16615)]

private theorem c0593_intervals_eq :
    witnessIntervals c0593_witnesses = c0593_intervals := by
  rfl

private theorem c0593_checks : witnessesCheck c0593_witnesses = true := by
  simp only [witnessesCheck, c0593_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk173.w9_check, Bool.and_self]

private theorem c0593_cover : coverCheck 16611 16615 c0593_intervals = true := by
  decide

private theorem c0593_sound : IntervalSound (16611, 16615) := by
  have hc : coverCheck 16611 16615 (witnessIntervals c0593_witnesses) = true := by
    rw [c0593_intervals_eq]
    exact c0593_cover
  exact interval_sound_of_witness_checks (witnesses := c0593_witnesses)
    (lo := 16611) (hi := 16615) c0593_checks hc

private def c0594_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk173.w10, B699LowIndex.I11TerminalData.Chunk173.w11]
private def c0594_intervals : List NatInterval := [(16709, 16713), (16714, 16714)]

private theorem c0594_intervals_eq :
    witnessIntervals c0594_witnesses = c0594_intervals := by
  rfl

private theorem c0594_checks : witnessesCheck c0594_witnesses = true := by
  simp only [witnessesCheck, c0594_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk173.w10_check, B699LowIndex.I11TerminalData.Chunk173.w11_check, Bool.and_self]

private theorem c0594_cover : coverCheck 16709 16714 c0594_intervals = true := by
  decide

private theorem c0594_sound : IntervalSound (16709, 16714) := by
  have hc : coverCheck 16709 16714 (witnessIntervals c0594_witnesses) = true := by
    rw [c0594_intervals_eq]
    exact c0594_cover
  exact interval_sound_of_witness_checks (witnesses := c0594_witnesses)
    (lo := 16709) (hi := 16714) c0594_checks hc

private def c0595_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk173.w12, B699LowIndex.I11TerminalData.Chunk173.w13]
private def c0595_intervals : List NatInterval := [(16758, 16758), (16759, 16760)]

private theorem c0595_intervals_eq :
    witnessIntervals c0595_witnesses = c0595_intervals := by
  rfl

private theorem c0595_checks : witnessesCheck c0595_witnesses = true := by
  simp only [witnessesCheck, c0595_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk173.w12_check, B699LowIndex.I11TerminalData.Chunk173.w13_check, Bool.and_self]

private theorem c0595_cover : coverCheck 16758 16760 c0595_intervals = true := by
  decide

private theorem c0595_sound : IntervalSound (16758, 16760) := by
  have hc : coverCheck 16758 16760 (witnessIntervals c0595_witnesses) = true := by
    rw [c0595_intervals_eq]
    exact c0595_cover
  exact interval_sound_of_witness_checks (witnesses := c0595_witnesses)
    (lo := 16758) (hi := 16760) c0595_checks hc

private def c0596_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk173.w14, B699LowIndex.I11TerminalData.Chunk173.w15, B699LowIndex.I11TerminalData.Chunk174.w0, B699LowIndex.I11TerminalData.Chunk174.w1, B699LowIndex.I11TerminalData.Chunk174.w2]
private def c0596_intervals : List NatInterval := [(16767, 16773), (16774, 16774), (16775, 16775), (16776, 16776), (16777, 16777)]

private theorem c0596_intervals_eq :
    witnessIntervals c0596_witnesses = c0596_intervals := by
  rfl

private theorem c0596_checks : witnessesCheck c0596_witnesses = true := by
  simp only [witnessesCheck, c0596_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk173.w14_check, B699LowIndex.I11TerminalData.Chunk173.w15_check, B699LowIndex.I11TerminalData.Chunk174.w0_check, B699LowIndex.I11TerminalData.Chunk174.w1_check, B699LowIndex.I11TerminalData.Chunk174.w2_check, Bool.and_self]

private theorem c0596_cover : coverCheck 16767 16777 c0596_intervals = true := by
  decide

private theorem c0596_sound : IntervalSound (16767, 16777) := by
  have hc : coverCheck 16767 16777 (witnessIntervals c0596_witnesses) = true := by
    rw [c0596_intervals_eq]
    exact c0596_cover
  exact interval_sound_of_witness_checks (witnesses := c0596_witnesses)
    (lo := 16767) (hi := 16777) c0596_checks hc

private def c0597_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk174.w3, B699LowIndex.I11TerminalData.Chunk174.w4, B699LowIndex.I11TerminalData.Chunk174.w5]
private def c0597_intervals : List NatInterval := [(16856, 16856), (16857, 16857), (16858, 16858)]

private theorem c0597_intervals_eq :
    witnessIntervals c0597_witnesses = c0597_intervals := by
  rfl

private theorem c0597_checks : witnessesCheck c0597_witnesses = true := by
  simp only [witnessesCheck, c0597_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk174.w3_check, B699LowIndex.I11TerminalData.Chunk174.w4_check, B699LowIndex.I11TerminalData.Chunk174.w5_check, Bool.and_self]

private theorem c0597_cover : coverCheck 16856 16858 c0597_intervals = true := by
  decide

private theorem c0597_sound : IntervalSound (16856, 16858) := by
  have hc : coverCheck 16856 16858 (witnessIntervals c0597_witnesses) = true := by
    rw [c0597_intervals_eq]
    exact c0597_cover
  exact interval_sound_of_witness_checks (witnesses := c0597_witnesses)
    (lo := 16856) (hi := 16858) c0597_checks hc

private def c0598_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk174.w6]
private def c0598_intervals : List NatInterval := [(16905, 16906)]

private theorem c0598_intervals_eq :
    witnessIntervals c0598_witnesses = c0598_intervals := by
  rfl

private theorem c0598_checks : witnessesCheck c0598_witnesses = true := by
  simp only [witnessesCheck, c0598_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk174.w6_check, Bool.and_self]

private theorem c0598_cover : coverCheck 16905 16906 c0598_intervals = true := by
  decide

private theorem c0598_sound : IntervalSound (16905, 16906) := by
  have hc : coverCheck 16905 16906 (witnessIntervals c0598_witnesses) = true := by
    rw [c0598_intervals_eq]
    exact c0598_cover
  exact interval_sound_of_witness_checks (witnesses := c0598_witnesses)
    (lo := 16905) (hi := 16906) c0598_checks hc

private def c0599_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk174.w7, B699LowIndex.I11TerminalData.Chunk174.w8, B699LowIndex.I11TerminalData.Chunk174.w9, B699LowIndex.I11TerminalData.Chunk174.w10]
private def c0599_intervals : List NatInterval := [(16960, 16960), (16961, 16961), (16962, 16962), (16963, 16964)]

private theorem c0599_intervals_eq :
    witnessIntervals c0599_witnesses = c0599_intervals := by
  rfl

private theorem c0599_checks : witnessesCheck c0599_witnesses = true := by
  simp only [witnessesCheck, c0599_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk174.w7_check, B699LowIndex.I11TerminalData.Chunk174.w8_check, B699LowIndex.I11TerminalData.Chunk174.w9_check, B699LowIndex.I11TerminalData.Chunk174.w10_check, Bool.and_self]

private theorem c0599_cover : coverCheck 16960 16964 c0599_intervals = true := by
  decide

private theorem c0599_sound : IntervalSound (16960, 16964) := by
  have hc : coverCheck 16960 16964 (witnessIntervals c0599_witnesses) = true := by
    rw [c0599_intervals_eq]
    exact c0599_cover
  exact interval_sound_of_witness_checks (witnesses := c0599_witnesses)
    (lo := 16960) (hi := 16964) c0599_checks hc

private def c0600_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk174.w11, B699LowIndex.I11TerminalData.Chunk174.w12, B699LowIndex.I11TerminalData.Chunk174.w13, B699LowIndex.I11TerminalData.Chunk174.w14, B699LowIndex.I11TerminalData.Chunk174.w15, B699LowIndex.I11TerminalData.Chunk175.w0, B699LowIndex.I11TerminalData.Chunk175.w1, B699LowIndex.I11TerminalData.Chunk175.w2, B699LowIndex.I11TerminalData.Chunk175.w3]
private def c0600_intervals : List NatInterval := [(17003, 17003), (17004, 17004), (17005, 17005), (17006, 17006), (17007, 17007), (17008, 17008), (17009, 17009), (17010, 17010), (17011, 17013)]

private theorem c0600_intervals_eq :
    witnessIntervals c0600_witnesses = c0600_intervals := by
  rfl

private theorem c0600_checks : witnessesCheck c0600_witnesses = true := by
  simp only [witnessesCheck, c0600_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk174.w11_check, B699LowIndex.I11TerminalData.Chunk174.w12_check, B699LowIndex.I11TerminalData.Chunk174.w13_check, B699LowIndex.I11TerminalData.Chunk174.w14_check, B699LowIndex.I11TerminalData.Chunk174.w15_check, B699LowIndex.I11TerminalData.Chunk175.w0_check, B699LowIndex.I11TerminalData.Chunk175.w1_check, B699LowIndex.I11TerminalData.Chunk175.w2_check, B699LowIndex.I11TerminalData.Chunk175.w3_check, Bool.and_self]

private theorem c0600_cover : coverCheck 17003 17013 c0600_intervals = true := by
  decide

private theorem c0600_sound : IntervalSound (17003, 17013) := by
  have hc : coverCheck 17003 17013 (witnessIntervals c0600_witnesses) = true := by
    rw [c0600_intervals_eq]
    exact c0600_cover
  exact interval_sound_of_witness_checks (witnesses := c0600_witnesses)
    (lo := 17003) (hi := 17013) c0600_checks hc

private def c0601_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk175.w4, B699LowIndex.I11TerminalData.Chunk175.w5, B699LowIndex.I11TerminalData.Chunk175.w6]
private def c0601_intervals : List NatInterval := [(17091, 17091), (17092, 17092), (17093, 17098)]

private theorem c0601_intervals_eq :
    witnessIntervals c0601_witnesses = c0601_intervals := by
  rfl

private theorem c0601_checks : witnessesCheck c0601_witnesses = true := by
  simp only [witnessesCheck, c0601_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk175.w4_check, B699LowIndex.I11TerminalData.Chunk175.w5_check, B699LowIndex.I11TerminalData.Chunk175.w6_check, Bool.and_self]

private theorem c0601_cover : coverCheck 17091 17098 c0601_intervals = true := by
  decide

private theorem c0601_sound : IntervalSound (17091, 17098) := by
  have hc : coverCheck 17091 17098 (witnessIntervals c0601_witnesses) = true := by
    rw [c0601_intervals_eq]
    exact c0601_cover
  exact interval_sound_of_witness_checks (witnesses := c0601_witnesses)
    (lo := 17091) (hi := 17098) c0601_checks hc

private def c0602_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk175.w7]
private def c0602_intervals : List NatInterval := [(17101, 17101)]

private theorem c0602_intervals_eq :
    witnessIntervals c0602_witnesses = c0602_intervals := by
  rfl

private theorem c0602_checks : witnessesCheck c0602_witnesses = true := by
  simp only [witnessesCheck, c0602_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk175.w7_check, Bool.and_self]

private theorem c0602_cover : coverCheck 17101 17101 c0602_intervals = true := by
  decide

private theorem c0602_sound : IntervalSound (17101, 17101) := by
  have hc : coverCheck 17101 17101 (witnessIntervals c0602_witnesses) = true := by
    rw [c0602_intervals_eq]
    exact c0602_cover
  exact interval_sound_of_witness_checks (witnesses := c0602_witnesses)
    (lo := 17101) (hi := 17101) c0602_checks hc

private def c0603_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk175.w8, B699LowIndex.I11TerminalData.Chunk175.w9, B699LowIndex.I11TerminalData.Chunk175.w10, B699LowIndex.I11TerminalData.Chunk175.w11, B699LowIndex.I11TerminalData.Chunk175.w12, B699LowIndex.I11TerminalData.Chunk175.w13, B699LowIndex.I11TerminalData.Chunk175.w14, B699LowIndex.I11TerminalData.Chunk175.w15]
private def c0603_intervals : List NatInterval := [(17152, 17152), (17153, 17153), (17154, 17154), (17155, 17155), (17156, 17156), (17157, 17157), (17158, 17158), (17159, 17160)]

private theorem c0603_intervals_eq :
    witnessIntervals c0603_witnesses = c0603_intervals := by
  rfl

private theorem c0603_checks : witnessesCheck c0603_witnesses = true := by
  simp only [witnessesCheck, c0603_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk175.w8_check, B699LowIndex.I11TerminalData.Chunk175.w9_check, B699LowIndex.I11TerminalData.Chunk175.w10_check, B699LowIndex.I11TerminalData.Chunk175.w11_check, B699LowIndex.I11TerminalData.Chunk175.w12_check, B699LowIndex.I11TerminalData.Chunk175.w13_check, B699LowIndex.I11TerminalData.Chunk175.w14_check, B699LowIndex.I11TerminalData.Chunk175.w15_check, Bool.and_self]

private theorem c0603_cover : coverCheck 17152 17160 c0603_intervals = true := by
  decide

private theorem c0603_sound : IntervalSound (17152, 17160) := by
  have hc : coverCheck 17152 17160 (witnessIntervals c0603_witnesses) = true := by
    rw [c0603_intervals_eq]
    exact c0603_cover
  exact interval_sound_of_witness_checks (witnesses := c0603_witnesses)
    (lo := 17152) (hi := 17160) c0603_checks hc

private def c0604_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk176.w0, B699LowIndex.I11TerminalData.Chunk176.w1, B699LowIndex.I11TerminalData.Chunk176.w2, B699LowIndex.I11TerminalData.Chunk176.w3, B699LowIndex.I11TerminalData.Chunk176.w4, B699LowIndex.I11TerminalData.Chunk176.w5, B699LowIndex.I11TerminalData.Chunk176.w6, B699LowIndex.I11TerminalData.Chunk176.w7]
private def c0604_intervals : List NatInterval := [(17250, 17250), (17251, 17251), (17252, 17252), (17253, 17253), (17254, 17254), (17255, 17255), (17256, 17256), (17257, 17260)]

private theorem c0604_intervals_eq :
    witnessIntervals c0604_witnesses = c0604_intervals := by
  rfl

private theorem c0604_checks : witnessesCheck c0604_witnesses = true := by
  simp only [witnessesCheck, c0604_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk176.w0_check, B699LowIndex.I11TerminalData.Chunk176.w1_check, B699LowIndex.I11TerminalData.Chunk176.w2_check, B699LowIndex.I11TerminalData.Chunk176.w3_check, B699LowIndex.I11TerminalData.Chunk176.w4_check, B699LowIndex.I11TerminalData.Chunk176.w5_check, B699LowIndex.I11TerminalData.Chunk176.w6_check, B699LowIndex.I11TerminalData.Chunk176.w7_check, Bool.and_self]

private theorem c0604_cover : coverCheck 17250 17260 c0604_intervals = true := by
  decide

private theorem c0604_sound : IntervalSound (17250, 17260) := by
  have hc : coverCheck 17250 17260 (witnessIntervals c0604_witnesses) = true := by
    rw [c0604_intervals_eq]
    exact c0604_cover
  exact interval_sound_of_witness_checks (witnesses := c0604_witnesses)
    (lo := 17250) (hi := 17260) c0604_checks hc

private def c0605_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk176.w8]
private def c0605_intervals : List NatInterval := [(17344, 17344)]

private theorem c0605_intervals_eq :
    witnessIntervals c0605_witnesses = c0605_intervals := by
  rfl

private theorem c0605_checks : witnessesCheck c0605_witnesses = true := by
  simp only [witnessesCheck, c0605_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk176.w8_check, Bool.and_self]

private theorem c0605_cover : coverCheck 17344 17344 c0605_intervals = true := by
  decide

private theorem c0605_sound : IntervalSound (17344, 17344) := by
  have hc : coverCheck 17344 17344 (witnessIntervals c0605_witnesses) = true := by
    rw [c0605_intervals_eq]
    exact c0605_cover
  exact interval_sound_of_witness_checks (witnesses := c0605_witnesses)
    (lo := 17344) (hi := 17344) c0605_checks hc

private def c0606_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk176.w9, B699LowIndex.I11TerminalData.Chunk176.w10]
private def c0606_intervals : List NatInterval := [(17346, 17351), (17352, 17354)]

private theorem c0606_intervals_eq :
    witnessIntervals c0606_witnesses = c0606_intervals := by
  rfl

private theorem c0606_checks : witnessesCheck c0606_witnesses = true := by
  simp only [witnessesCheck, c0606_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk176.w9_check, B699LowIndex.I11TerminalData.Chunk176.w10_check, Bool.and_self]

private theorem c0606_cover : coverCheck 17346 17354 c0606_intervals = true := by
  decide

private theorem c0606_sound : IntervalSound (17346, 17354) := by
  have hc : coverCheck 17346 17354 (witnessIntervals c0606_witnesses) = true := by
    rw [c0606_intervals_eq]
    exact c0606_cover
  exact interval_sound_of_witness_checks (witnesses := c0606_witnesses)
    (lo := 17346) (hi := 17354) c0606_checks hc

private def c0607_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk176.w11, B699LowIndex.I11TerminalData.Chunk176.w12, B699LowIndex.I11TerminalData.Chunk176.w13]
private def c0607_intervals : List NatInterval := [(17415, 17415), (17416, 17416), (17417, 17418)]

private theorem c0607_intervals_eq :
    witnessIntervals c0607_witnesses = c0607_intervals := by
  rfl

private theorem c0607_checks : witnessesCheck c0607_witnesses = true := by
  simp only [witnessesCheck, c0607_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk176.w11_check, B699LowIndex.I11TerminalData.Chunk176.w12_check, B699LowIndex.I11TerminalData.Chunk176.w13_check, Bool.and_self]

private theorem c0607_cover : coverCheck 17415 17418 c0607_intervals = true := by
  decide

private theorem c0607_sound : IntervalSound (17415, 17418) := by
  have hc : coverCheck 17415 17418 (witnessIntervals c0607_witnesses) = true := by
    rw [c0607_intervals_eq]
    exact c0607_cover
  exact interval_sound_of_witness_checks (witnesses := c0607_witnesses)
    (lo := 17415) (hi := 17418) c0607_checks hc

def intervals : List NatInterval := [(16513, 16522), (16611, 16615), (16709, 16714), (16758, 16760), (16767, 16777), (16856, 16858), (16905, 16906), (16960, 16964), (17003, 17013), (17091, 17098), (17101, 17101), (17152, 17160), (17250, 17260), (17344, 17344), (17346, 17354), (17415, 17418)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (16513, 16522)) (intervals := [(16611, 16615), (16709, 16714), (16758, 16760), (16767, 16777), (16856, 16858), (16905, 16906), (16960, 16964), (17003, 17013), (17091, 17098), (17101, 17101), (17152, 17160), (17250, 17260), (17344, 17344), (17346, 17354), (17415, 17418)]) c0592_sound (intervals_sound_cons (I := (16611, 16615)) (intervals := [(16709, 16714), (16758, 16760), (16767, 16777), (16856, 16858), (16905, 16906), (16960, 16964), (17003, 17013), (17091, 17098), (17101, 17101), (17152, 17160), (17250, 17260), (17344, 17344), (17346, 17354), (17415, 17418)]) c0593_sound (intervals_sound_cons (I := (16709, 16714)) (intervals := [(16758, 16760), (16767, 16777), (16856, 16858), (16905, 16906), (16960, 16964), (17003, 17013), (17091, 17098), (17101, 17101), (17152, 17160), (17250, 17260), (17344, 17344), (17346, 17354), (17415, 17418)]) c0594_sound (intervals_sound_cons (I := (16758, 16760)) (intervals := [(16767, 16777), (16856, 16858), (16905, 16906), (16960, 16964), (17003, 17013), (17091, 17098), (17101, 17101), (17152, 17160), (17250, 17260), (17344, 17344), (17346, 17354), (17415, 17418)]) c0595_sound (intervals_sound_cons (I := (16767, 16777)) (intervals := [(16856, 16858), (16905, 16906), (16960, 16964), (17003, 17013), (17091, 17098), (17101, 17101), (17152, 17160), (17250, 17260), (17344, 17344), (17346, 17354), (17415, 17418)]) c0596_sound (intervals_sound_cons (I := (16856, 16858)) (intervals := [(16905, 16906), (16960, 16964), (17003, 17013), (17091, 17098), (17101, 17101), (17152, 17160), (17250, 17260), (17344, 17344), (17346, 17354), (17415, 17418)]) c0597_sound (intervals_sound_cons (I := (16905, 16906)) (intervals := [(16960, 16964), (17003, 17013), (17091, 17098), (17101, 17101), (17152, 17160), (17250, 17260), (17344, 17344), (17346, 17354), (17415, 17418)]) c0598_sound (intervals_sound_cons (I := (16960, 16964)) (intervals := [(17003, 17013), (17091, 17098), (17101, 17101), (17152, 17160), (17250, 17260), (17344, 17344), (17346, 17354), (17415, 17418)]) c0599_sound (intervals_sound_cons (I := (17003, 17013)) (intervals := [(17091, 17098), (17101, 17101), (17152, 17160), (17250, 17260), (17344, 17344), (17346, 17354), (17415, 17418)]) c0600_sound (intervals_sound_cons (I := (17091, 17098)) (intervals := [(17101, 17101), (17152, 17160), (17250, 17260), (17344, 17344), (17346, 17354), (17415, 17418)]) c0601_sound (intervals_sound_cons (I := (17101, 17101)) (intervals := [(17152, 17160), (17250, 17260), (17344, 17344), (17346, 17354), (17415, 17418)]) c0602_sound (intervals_sound_cons (I := (17152, 17160)) (intervals := [(17250, 17260), (17344, 17344), (17346, 17354), (17415, 17418)]) c0603_sound (intervals_sound_cons (I := (17250, 17260)) (intervals := [(17344, 17344), (17346, 17354), (17415, 17418)]) c0604_sound (intervals_sound_cons (I := (17344, 17344)) (intervals := [(17346, 17354), (17415, 17418)]) c0605_sound (intervals_sound_cons (I := (17346, 17354)) (intervals := [(17415, 17418)]) c0606_sound (intervals_sound_cons (I := (17415, 17418)) (intervals := []) c0607_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G037
