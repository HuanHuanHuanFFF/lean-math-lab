import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk198
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk199
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk200

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G046
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0736_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk198.w7]
private def c0736_intervals : List NatInterval := [(25353, 25354)]

private theorem c0736_intervals_eq :
    witnessIntervals c0736_witnesses = c0736_intervals := by
  rfl

private theorem c0736_checks : witnessesCheck c0736_witnesses = true := by
  simp only [witnessesCheck, c0736_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk198.w7_check, Bool.and_self]

private theorem c0736_cover : coverCheck 25353 25354 c0736_intervals = true := by
  decide

private theorem c0736_sound : IntervalSound (25353, 25354) := by
  have hc : coverCheck 25353 25354 (witnessIntervals c0736_witnesses) = true := by
    rw [c0736_intervals_eq]
    exact c0736_cover
  exact interval_sound_of_witness_checks (witnesses := c0736_witnesses)
    (lo := 25353) (hi := 25354) c0736_checks hc

private def c0737_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk198.w8, B699LowIndex.I11TerminalData.Chunk198.w9, B699LowIndex.I11TerminalData.Chunk198.w10]
private def c0737_intervals : List NatInterval := [(25382, 25383), (25384, 25384), (25385, 25385)]

private theorem c0737_intervals_eq :
    witnessIntervals c0737_witnesses = c0737_intervals := by
  rfl

private theorem c0737_checks : witnessesCheck c0737_witnesses = true := by
  simp only [witnessesCheck, c0737_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk198.w8_check, B699LowIndex.I11TerminalData.Chunk198.w9_check, B699LowIndex.I11TerminalData.Chunk198.w10_check, Bool.and_self]

private theorem c0737_cover : coverCheck 25382 25385 c0737_intervals = true := by
  decide

private theorem c0737_sound : IntervalSound (25382, 25385) := by
  have hc : coverCheck 25382 25385 (witnessIntervals c0737_witnesses) = true := by
    rw [c0737_intervals_eq]
    exact c0737_cover
  exact interval_sound_of_witness_checks (witnesses := c0737_witnesses)
    (lo := 25382) (hi := 25385) c0737_checks hc

private def c0738_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk198.w11, B699LowIndex.I11TerminalData.Chunk198.w12]
private def c0738_intervals : List NatInterval := [(25600, 25600), (25601, 25606)]

private theorem c0738_intervals_eq :
    witnessIntervals c0738_witnesses = c0738_intervals := by
  rfl

private theorem c0738_checks : witnessesCheck c0738_witnesses = true := by
  simp only [witnessesCheck, c0738_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk198.w11_check, B699LowIndex.I11TerminalData.Chunk198.w12_check, Bool.and_self]

private theorem c0738_cover : coverCheck 25600 25606 c0738_intervals = true := by
  decide

private theorem c0738_sound : IntervalSound (25600, 25606) := by
  have hc : coverCheck 25600 25606 (witnessIntervals c0738_witnesses) = true := by
    rw [c0738_intervals_eq]
    exact c0738_cover
  exact interval_sound_of_witness_checks (witnesses := c0738_witnesses)
    (lo := 25600) (hi := 25606) c0738_checks hc

private def c0739_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk198.w13, B699LowIndex.I11TerminalData.Chunk198.w14, B699LowIndex.I11TerminalData.Chunk198.w15, B699LowIndex.I11TerminalData.Chunk199.w0, B699LowIndex.I11TerminalData.Chunk199.w1, B699LowIndex.I11TerminalData.Chunk199.w2]
private def c0739_intervals : List NatInterval := [(25728, 25728), (25729, 25729), (25730, 25730), (25731, 25731), (25732, 25732), (25733, 25735)]

private theorem c0739_intervals_eq :
    witnessIntervals c0739_witnesses = c0739_intervals := by
  rfl

private theorem c0739_checks : witnessesCheck c0739_witnesses = true := by
  simp only [witnessesCheck, c0739_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk198.w13_check, B699LowIndex.I11TerminalData.Chunk198.w14_check, B699LowIndex.I11TerminalData.Chunk198.w15_check, B699LowIndex.I11TerminalData.Chunk199.w0_check, B699LowIndex.I11TerminalData.Chunk199.w1_check, B699LowIndex.I11TerminalData.Chunk199.w2_check, Bool.and_self]

private theorem c0739_cover : coverCheck 25728 25735 c0739_intervals = true := by
  decide

private theorem c0739_sound : IntervalSound (25728, 25735) := by
  have hc : coverCheck 25728 25735 (witnessIntervals c0739_witnesses) = true := by
    rw [c0739_intervals_eq]
    exact c0739_cover
  exact interval_sound_of_witness_checks (witnesses := c0739_witnesses)
    (lo := 25728) (hi := 25735) c0739_checks hc

private def c0740_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk199.w3, B699LowIndex.I11TerminalData.Chunk199.w4]
private def c0740_intervals : List NatInterval := [(25758, 25758), (25759, 25760)]

private theorem c0740_intervals_eq :
    witnessIntervals c0740_witnesses = c0740_intervals := by
  rfl

private theorem c0740_checks : witnessesCheck c0740_witnesses = true := by
  simp only [witnessesCheck, c0740_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk199.w3_check, B699LowIndex.I11TerminalData.Chunk199.w4_check, Bool.and_self]

private theorem c0740_cover : coverCheck 25758 25760 c0740_intervals = true := by
  decide

private theorem c0740_sound : IntervalSound (25758, 25760) := by
  have hc : coverCheck 25758 25760 (witnessIntervals c0740_witnesses) = true := by
    rw [c0740_intervals_eq]
    exact c0740_cover
  exact interval_sound_of_witness_checks (witnesses := c0740_witnesses)
    (lo := 25758) (hi := 25760) c0740_checks hc

private def c0741_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk199.w5, B699LowIndex.I11TerminalData.Chunk199.w6]
private def c0741_intervals : List NatInterval := [(25920, 25929), (25930, 25930)]

private theorem c0741_intervals_eq :
    witnessIntervals c0741_witnesses = c0741_intervals := by
  rfl

private theorem c0741_checks : witnessesCheck c0741_witnesses = true := by
  simp only [witnessesCheck, c0741_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk199.w5_check, B699LowIndex.I11TerminalData.Chunk199.w6_check, Bool.and_self]

private theorem c0741_cover : coverCheck 25920 25930 c0741_intervals = true := by
  decide

private theorem c0741_sound : IntervalSound (25920, 25930) := by
  have hc : coverCheck 25920 25930 (witnessIntervals c0741_witnesses) = true := by
    rw [c0741_intervals_eq]
    exact c0741_cover
  exact interval_sound_of_witness_checks (witnesses := c0741_witnesses)
    (lo := 25920) (hi := 25930) c0741_checks hc

private def c0742_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk199.w7, B699LowIndex.I11TerminalData.Chunk199.w8]
private def c0742_intervals : List NatInterval := [(26001, 26009), (26010, 26010)]

private theorem c0742_intervals_eq :
    witnessIntervals c0742_witnesses = c0742_intervals := by
  rfl

private theorem c0742_checks : witnessesCheck c0742_witnesses = true := by
  simp only [witnessesCheck, c0742_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk199.w7_check, B699LowIndex.I11TerminalData.Chunk199.w8_check, Bool.and_self]

private theorem c0742_cover : coverCheck 26001 26010 c0742_intervals = true := by
  decide

private theorem c0742_sound : IntervalSound (26001, 26010) := by
  have hc : coverCheck 26001 26010 (witnessIntervals c0742_witnesses) = true := by
    rw [c0742_intervals_eq]
    exact c0742_cover
  exact interval_sound_of_witness_checks (witnesses := c0742_witnesses)
    (lo := 26001) (hi := 26010) c0742_checks hc

private def c0743_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk199.w9, B699LowIndex.I11TerminalData.Chunk199.w10, B699LowIndex.I11TerminalData.Chunk199.w11]
private def c0743_intervals : List NatInterval := [(26244, 26247), (26248, 26248), (26249, 26254)]

private theorem c0743_intervals_eq :
    witnessIntervals c0743_witnesses = c0743_intervals := by
  rfl

private theorem c0743_checks : witnessesCheck c0743_witnesses = true := by
  simp only [witnessesCheck, c0743_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk199.w9_check, B699LowIndex.I11TerminalData.Chunk199.w10_check, B699LowIndex.I11TerminalData.Chunk199.w11_check, Bool.and_self]

private theorem c0743_cover : coverCheck 26244 26254 c0743_intervals = true := by
  decide

private theorem c0743_sound : IntervalSound (26244, 26254) := by
  have hc : coverCheck 26244 26254 (witnessIntervals c0743_witnesses) = true := by
    rw [c0743_intervals_eq]
    exact c0743_cover
  exact interval_sound_of_witness_checks (witnesses := c0743_witnesses)
    (lo := 26244) (hi := 26254) c0743_checks hc

private def c0744_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk199.w12]
private def c0744_intervals : List NatInterval := [(26375, 26378)]

private theorem c0744_intervals_eq :
    witnessIntervals c0744_witnesses = c0744_intervals := by
  rfl

private theorem c0744_checks : witnessesCheck c0744_witnesses = true := by
  simp only [witnessesCheck, c0744_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk199.w12_check, Bool.and_self]

private theorem c0744_cover : coverCheck 26375 26378 c0744_intervals = true := by
  decide

private theorem c0744_sound : IntervalSound (26375, 26378) := by
  have hc : coverCheck 26375 26378 (witnessIntervals c0744_witnesses) = true := by
    rw [c0744_intervals_eq]
    exact c0744_cover
  exact interval_sound_of_witness_checks (witnesses := c0744_witnesses)
    (lo := 26375) (hi := 26378) c0744_checks hc

private def c0745_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk199.w13]
private def c0745_intervals : List NatInterval := [(26411, 26416)]

private theorem c0745_intervals_eq :
    witnessIntervals c0745_witnesses = c0745_intervals := by
  rfl

private theorem c0745_checks : witnessesCheck c0745_witnesses = true := by
  simp only [witnessesCheck, c0745_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk199.w13_check, Bool.and_self]

private theorem c0745_cover : coverCheck 26411 26416 c0745_intervals = true := by
  decide

private theorem c0745_sound : IntervalSound (26411, 26416) := by
  have hc : coverCheck 26411 26416 (witnessIntervals c0745_witnesses) = true := by
    rw [c0745_intervals_eq]
    exact c0745_cover
  exact interval_sound_of_witness_checks (witnesses := c0745_witnesses)
    (lo := 26411) (hi := 26416) c0745_checks hc

private def c0746_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk199.w14]
private def c0746_intervals : List NatInterval := [(26496, 26497)]

private theorem c0746_intervals_eq :
    witnessIntervals c0746_witnesses = c0746_intervals := by
  rfl

private theorem c0746_checks : witnessesCheck c0746_witnesses = true := by
  simp only [witnessesCheck, c0746_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk199.w14_check, Bool.and_self]

private theorem c0746_cover : coverCheck 26496 26497 c0746_intervals = true := by
  decide

private theorem c0746_sound : IntervalSound (26496, 26497) := by
  have hc : coverCheck 26496 26497 (witnessIntervals c0746_witnesses) = true := by
    rw [c0746_intervals_eq]
    exact c0746_cover
  exact interval_sound_of_witness_checks (witnesses := c0746_witnesses)
    (lo := 26496) (hi := 26497) c0746_checks hc

private def c0747_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk199.w15]
private def c0747_intervals : List NatInterval := [(26500, 26506)]

private theorem c0747_intervals_eq :
    witnessIntervals c0747_witnesses = c0747_intervals := by
  rfl

private theorem c0747_checks : witnessesCheck c0747_witnesses = true := by
  simp only [witnessesCheck, c0747_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk199.w15_check, Bool.and_self]

private theorem c0747_cover : coverCheck 26500 26506 c0747_intervals = true := by
  decide

private theorem c0747_sound : IntervalSound (26500, 26506) := by
  have hc : coverCheck 26500 26506 (witnessIntervals c0747_witnesses) = true := by
    rw [c0747_intervals_eq]
    exact c0747_cover
  exact interval_sound_of_witness_checks (witnesses := c0747_witnesses)
    (lo := 26500) (hi := 26506) c0747_checks hc

private def c0748_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk200.w0]
private def c0748_intervals : List NatInterval := [(26568, 26570)]

private theorem c0748_intervals_eq :
    witnessIntervals c0748_witnesses = c0748_intervals := by
  rfl

private theorem c0748_checks : witnessesCheck c0748_witnesses = true := by
  simp only [witnessesCheck, c0748_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk200.w0_check, Bool.and_self]

private theorem c0748_cover : coverCheck 26568 26570 c0748_intervals = true := by
  decide

private theorem c0748_sound : IntervalSound (26568, 26570) := by
  have hc : coverCheck 26568 26570 (witnessIntervals c0748_witnesses) = true := by
    rw [c0748_intervals_eq]
    exact c0748_cover
  exact interval_sound_of_witness_checks (witnesses := c0748_witnesses)
    (lo := 26568) (hi := 26570) c0748_checks hc

private def c0749_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk200.w1, B699LowIndex.I11TerminalData.Chunk200.w2, B699LowIndex.I11TerminalData.Chunk200.w3]
private def c0749_intervals : List NatInterval := [(26625, 26625), (26626, 26626), (26627, 26634)]

private theorem c0749_intervals_eq :
    witnessIntervals c0749_witnesses = c0749_intervals := by
  rfl

private theorem c0749_checks : witnessesCheck c0749_witnesses = true := by
  simp only [witnessesCheck, c0749_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk200.w1_check, B699LowIndex.I11TerminalData.Chunk200.w2_check, B699LowIndex.I11TerminalData.Chunk200.w3_check, Bool.and_self]

private theorem c0749_cover : coverCheck 26625 26634 c0749_intervals = true := by
  decide

private theorem c0749_sound : IntervalSound (26625, 26634) := by
  have hc : coverCheck 26625 26634 (witnessIntervals c0749_witnesses) = true := by
    rw [c0749_intervals_eq]
    exact c0749_cover
  exact interval_sound_of_witness_checks (witnesses := c0749_witnesses)
    (lo := 26625) (hi := 26634) c0749_checks hc

private def c0750_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk200.w4, B699LowIndex.I11TerminalData.Chunk200.w5, B699LowIndex.I11TerminalData.Chunk200.w6, B699LowIndex.I11TerminalData.Chunk200.w7, B699LowIndex.I11TerminalData.Chunk200.w8, B699LowIndex.I11TerminalData.Chunk200.w9, B699LowIndex.I11TerminalData.Chunk200.w10, B699LowIndex.I11TerminalData.Chunk200.w11]
private def c0750_intervals : List NatInterval := [(26752, 26752), (26753, 26753), (26754, 26754), (26755, 26755), (26756, 26756), (26757, 26757), (26758, 26758), (26759, 26762)]

private theorem c0750_intervals_eq :
    witnessIntervals c0750_witnesses = c0750_intervals := by
  rfl

private theorem c0750_checks : witnessesCheck c0750_witnesses = true := by
  simp only [witnessesCheck, c0750_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk200.w4_check, B699LowIndex.I11TerminalData.Chunk200.w5_check, B699LowIndex.I11TerminalData.Chunk200.w6_check, B699LowIndex.I11TerminalData.Chunk200.w7_check, B699LowIndex.I11TerminalData.Chunk200.w8_check, B699LowIndex.I11TerminalData.Chunk200.w9_check, B699LowIndex.I11TerminalData.Chunk200.w10_check, B699LowIndex.I11TerminalData.Chunk200.w11_check, Bool.and_self]

private theorem c0750_cover : coverCheck 26752 26762 c0750_intervals = true := by
  decide

private theorem c0750_sound : IntervalSound (26752, 26762) := by
  have hc : coverCheck 26752 26762 (witnessIntervals c0750_witnesses) = true := by
    rw [c0750_intervals_eq]
    exact c0750_cover
  exact interval_sound_of_witness_checks (witnesses := c0750_witnesses)
    (lo := 26752) (hi := 26762) c0750_checks hc

private def c0751_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk200.w12]
private def c0751_intervals : List NatInterval := [(26816, 26821)]

private theorem c0751_intervals_eq :
    witnessIntervals c0751_witnesses = c0751_intervals := by
  rfl

private theorem c0751_checks : witnessesCheck c0751_witnesses = true := by
  simp only [witnessesCheck, c0751_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk200.w12_check, Bool.and_self]

private theorem c0751_cover : coverCheck 26816 26821 c0751_intervals = true := by
  decide

private theorem c0751_sound : IntervalSound (26816, 26821) := by
  have hc : coverCheck 26816 26821 (witnessIntervals c0751_witnesses) = true := by
    rw [c0751_intervals_eq]
    exact c0751_cover
  exact interval_sound_of_witness_checks (witnesses := c0751_witnesses)
    (lo := 26816) (hi := 26821) c0751_checks hc

def intervals : List NatInterval := [(25353, 25354), (25382, 25385), (25600, 25606), (25728, 25735), (25758, 25760), (25920, 25930), (26001, 26010), (26244, 26254), (26375, 26378), (26411, 26416), (26496, 26497), (26500, 26506), (26568, 26570), (26625, 26634), (26752, 26762), (26816, 26821)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (25353, 25354)) (intervals := [(25382, 25385), (25600, 25606), (25728, 25735), (25758, 25760), (25920, 25930), (26001, 26010), (26244, 26254), (26375, 26378), (26411, 26416), (26496, 26497), (26500, 26506), (26568, 26570), (26625, 26634), (26752, 26762), (26816, 26821)]) c0736_sound (intervals_sound_cons (I := (25382, 25385)) (intervals := [(25600, 25606), (25728, 25735), (25758, 25760), (25920, 25930), (26001, 26010), (26244, 26254), (26375, 26378), (26411, 26416), (26496, 26497), (26500, 26506), (26568, 26570), (26625, 26634), (26752, 26762), (26816, 26821)]) c0737_sound (intervals_sound_cons (I := (25600, 25606)) (intervals := [(25728, 25735), (25758, 25760), (25920, 25930), (26001, 26010), (26244, 26254), (26375, 26378), (26411, 26416), (26496, 26497), (26500, 26506), (26568, 26570), (26625, 26634), (26752, 26762), (26816, 26821)]) c0738_sound (intervals_sound_cons (I := (25728, 25735)) (intervals := [(25758, 25760), (25920, 25930), (26001, 26010), (26244, 26254), (26375, 26378), (26411, 26416), (26496, 26497), (26500, 26506), (26568, 26570), (26625, 26634), (26752, 26762), (26816, 26821)]) c0739_sound (intervals_sound_cons (I := (25758, 25760)) (intervals := [(25920, 25930), (26001, 26010), (26244, 26254), (26375, 26378), (26411, 26416), (26496, 26497), (26500, 26506), (26568, 26570), (26625, 26634), (26752, 26762), (26816, 26821)]) c0740_sound (intervals_sound_cons (I := (25920, 25930)) (intervals := [(26001, 26010), (26244, 26254), (26375, 26378), (26411, 26416), (26496, 26497), (26500, 26506), (26568, 26570), (26625, 26634), (26752, 26762), (26816, 26821)]) c0741_sound (intervals_sound_cons (I := (26001, 26010)) (intervals := [(26244, 26254), (26375, 26378), (26411, 26416), (26496, 26497), (26500, 26506), (26568, 26570), (26625, 26634), (26752, 26762), (26816, 26821)]) c0742_sound (intervals_sound_cons (I := (26244, 26254)) (intervals := [(26375, 26378), (26411, 26416), (26496, 26497), (26500, 26506), (26568, 26570), (26625, 26634), (26752, 26762), (26816, 26821)]) c0743_sound (intervals_sound_cons (I := (26375, 26378)) (intervals := [(26411, 26416), (26496, 26497), (26500, 26506), (26568, 26570), (26625, 26634), (26752, 26762), (26816, 26821)]) c0744_sound (intervals_sound_cons (I := (26411, 26416)) (intervals := [(26496, 26497), (26500, 26506), (26568, 26570), (26625, 26634), (26752, 26762), (26816, 26821)]) c0745_sound (intervals_sound_cons (I := (26496, 26497)) (intervals := [(26500, 26506), (26568, 26570), (26625, 26634), (26752, 26762), (26816, 26821)]) c0746_sound (intervals_sound_cons (I := (26500, 26506)) (intervals := [(26568, 26570), (26625, 26634), (26752, 26762), (26816, 26821)]) c0747_sound (intervals_sound_cons (I := (26568, 26570)) (intervals := [(26625, 26634), (26752, 26762), (26816, 26821)]) c0748_sound (intervals_sound_cons (I := (26625, 26634)) (intervals := [(26752, 26762), (26816, 26821)]) c0749_sound (intervals_sound_cons (I := (26752, 26762)) (intervals := [(26816, 26821)]) c0750_sound (intervals_sound_cons (I := (26816, 26821)) (intervals := []) c0751_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G046
