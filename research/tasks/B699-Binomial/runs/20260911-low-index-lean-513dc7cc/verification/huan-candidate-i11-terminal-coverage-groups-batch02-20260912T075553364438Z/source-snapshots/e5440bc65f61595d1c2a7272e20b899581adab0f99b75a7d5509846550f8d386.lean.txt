import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk135
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk136
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk137

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G023
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0368_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk135.w9, B699LowIndex.I11TerminalData.Chunk135.w10]
private def c0368_intervals : List NatInterval := [(10368, 10368), (10369, 10378)]

private theorem c0368_intervals_eq :
    witnessIntervals c0368_witnesses = c0368_intervals := by
  rfl

private theorem c0368_checks : witnessesCheck c0368_witnesses = true := by
  simp only [witnessesCheck, c0368_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk135.w9_check, B699LowIndex.I11TerminalData.Chunk135.w10_check, Bool.and_self]

private theorem c0368_cover : coverCheck 10368 10378 c0368_intervals = true := by
  decide

private theorem c0368_sound : IntervalSound (10368, 10378) := by
  have hc : coverCheck 10368 10378 (witnessIntervals c0368_witnesses) = true := by
    rw [c0368_intervals_eq]
    exact c0368_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0368_witnesses)
    (lo := 10368) (hi := 10378) c0368_checks hc

private def c0369_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk135.w11]
private def c0369_intervals : List NatInterval := [(10395, 10398)]

private theorem c0369_intervals_eq :
    witnessIntervals c0369_witnesses = c0369_intervals := by
  rfl

private theorem c0369_checks : witnessesCheck c0369_witnesses = true := by
  simp only [witnessesCheck, c0369_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk135.w11_check, Bool.and_self]

private theorem c0369_cover : coverCheck 10395 10398 c0369_intervals = true := by
  decide

private theorem c0369_sound : IntervalSound (10395, 10398) := by
  have hc : coverCheck 10395 10398 (witnessIntervals c0369_witnesses) = true := by
    rw [c0369_intervals_eq]
    exact c0369_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0369_witnesses)
    (lo := 10395) (hi := 10398) c0369_checks hc

private def c0370_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk135.w12, B699LowIndex.I11TerminalData.Chunk135.w13]
private def c0370_intervals : List NatInterval := [(10400, 10409), (10410, 10410)]

private theorem c0370_intervals_eq :
    witnessIntervals c0370_witnesses = c0370_intervals := by
  rfl

private theorem c0370_checks : witnessesCheck c0370_witnesses = true := by
  simp only [witnessesCheck, c0370_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk135.w12_check, B699LowIndex.I11TerminalData.Chunk135.w13_check, Bool.and_self]

private theorem c0370_cover : coverCheck 10400 10410 c0370_intervals = true := by
  decide

private theorem c0370_sound : IntervalSound (10400, 10410) := by
  have hc : coverCheck 10400 10410 (witnessIntervals c0370_witnesses) = true := by
    rw [c0370_intervals_eq]
    exact c0370_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0370_witnesses)
    (lo := 10400) (hi := 10410) c0370_checks hc

private def c0371_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk135.w14, B699LowIndex.I11TerminalData.Chunk135.w15, B699LowIndex.I11TerminalData.Chunk136.w0]
private def c0371_intervals : List NatInterval := [(10425, 10425), (10426, 10426), (10427, 10435)]

private theorem c0371_intervals_eq :
    witnessIntervals c0371_witnesses = c0371_intervals := by
  rfl

private theorem c0371_checks : witnessesCheck c0371_witnesses = true := by
  simp only [witnessesCheck, c0371_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk135.w14_check, B699LowIndex.I11TerminalData.Chunk135.w15_check, B699LowIndex.I11TerminalData.Chunk136.w0_check, Bool.and_self]

private theorem c0371_cover : coverCheck 10425 10435 c0371_intervals = true := by
  decide

private theorem c0371_sound : IntervalSound (10425, 10435) := by
  have hc : coverCheck 10425 10435 (witnessIntervals c0371_witnesses) = true := by
    rw [c0371_intervals_eq]
    exact c0371_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0371_witnesses)
    (lo := 10425) (hi := 10435) c0371_checks hc

private def c0372_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk136.w1]
private def c0372_intervals : List NatInterval := [(10437, 10442)]

private theorem c0372_intervals_eq :
    witnessIntervals c0372_witnesses = c0372_intervals := by
  rfl

private theorem c0372_checks : witnessesCheck c0372_witnesses = true := by
  simp only [witnessesCheck, c0372_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk136.w1_check, Bool.and_self]

private theorem c0372_cover : coverCheck 10437 10442 c0372_intervals = true := by
  decide

private theorem c0372_sound : IntervalSound (10437, 10442) := by
  have hc : coverCheck 10437 10442 (witnessIntervals c0372_witnesses) = true := by
    rw [c0372_intervals_eq]
    exact c0372_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0372_witnesses)
    (lo := 10437) (hi := 10442) c0372_checks hc

private def c0373_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk136.w2, B699LowIndex.I11TerminalData.Chunk136.w3, B699LowIndex.I11TerminalData.Chunk136.w4, B699LowIndex.I11TerminalData.Chunk136.w5]
private def c0373_intervals : List NatInterval := [(10450, 10450), (10451, 10451), (10452, 10452), (10453, 10459)]

private theorem c0373_intervals_eq :
    witnessIntervals c0373_witnesses = c0373_intervals := by
  rfl

private theorem c0373_checks : witnessesCheck c0373_witnesses = true := by
  simp only [witnessesCheck, c0373_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk136.w2_check, B699LowIndex.I11TerminalData.Chunk136.w3_check, B699LowIndex.I11TerminalData.Chunk136.w4_check, B699LowIndex.I11TerminalData.Chunk136.w5_check, Bool.and_self]

private theorem c0373_cover : coverCheck 10450 10459 c0373_intervals = true := by
  decide

private theorem c0373_sound : IntervalSound (10450, 10459) := by
  have hc : coverCheck 10450 10459 (witnessIntervals c0373_witnesses) = true := by
    rw [c0373_intervals_eq]
    exact c0373_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0373_witnesses)
    (lo := 10450) (hi := 10459) c0373_checks hc

private def c0374_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk136.w6, B699LowIndex.I11TerminalData.Chunk136.w7]
private def c0374_intervals : List NatInterval := [(10476, 10476), (10477, 10486)]

private theorem c0374_intervals_eq :
    witnessIntervals c0374_witnesses = c0374_intervals := by
  rfl

private theorem c0374_checks : witnessesCheck c0374_witnesses = true := by
  simp only [witnessesCheck, c0374_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk136.w6_check, B699LowIndex.I11TerminalData.Chunk136.w7_check, Bool.and_self]

private theorem c0374_cover : coverCheck 10476 10486 c0374_intervals = true := by
  decide

private theorem c0374_sound : IntervalSound (10476, 10486) := by
  have hc : coverCheck 10476 10486 (witnessIntervals c0374_witnesses) = true := by
    rw [c0374_intervals_eq]
    exact c0374_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0374_witnesses)
    (lo := 10476) (hi := 10486) c0374_checks hc

private def c0375_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk136.w8]
private def c0375_intervals : List NatInterval := [(10496, 10496)]

private theorem c0375_intervals_eq :
    witnessIntervals c0375_witnesses = c0375_intervals := by
  rfl

private theorem c0375_checks : witnessesCheck c0375_witnesses = true := by
  simp only [witnessesCheck, c0375_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk136.w8_check, Bool.and_self]

private theorem c0375_cover : coverCheck 10496 10496 c0375_intervals = true := by
  decide

private theorem c0375_sound : IntervalSound (10496, 10496) := by
  have hc : coverCheck 10496 10496 (witnessIntervals c0375_witnesses) = true := by
    rw [c0375_intervals_eq]
    exact c0375_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0375_witnesses)
    (lo := 10496) (hi := 10496) c0375_checks hc

private def c0376_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk136.w9, B699LowIndex.I11TerminalData.Chunk136.w10]
private def c0376_intervals : List NatInterval := [(10500, 10509), (10510, 10510)]

private theorem c0376_intervals_eq :
    witnessIntervals c0376_witnesses = c0376_intervals := by
  rfl

private theorem c0376_checks : witnessesCheck c0376_witnesses = true := by
  simp only [witnessesCheck, c0376_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk136.w9_check, B699LowIndex.I11TerminalData.Chunk136.w10_check, Bool.and_self]

private theorem c0376_cover : coverCheck 10500 10510 c0376_intervals = true := by
  decide

private theorem c0376_sound : IntervalSound (10500, 10510) := by
  have hc : coverCheck 10500 10510 (witnessIntervals c0376_witnesses) = true := by
    rw [c0376_intervals_eq]
    exact c0376_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0376_witnesses)
    (lo := 10500) (hi := 10510) c0376_checks hc

private def c0377_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk136.w11, B699LowIndex.I11TerminalData.Chunk136.w12, B699LowIndex.I11TerminalData.Chunk136.w13]
private def c0377_intervals : List NatInterval := [(10528, 10528), (10529, 10539), (10540, 10540)]

private theorem c0377_intervals_eq :
    witnessIntervals c0377_witnesses = c0377_intervals := by
  rfl

private theorem c0377_checks : witnessesCheck c0377_witnesses = true := by
  simp only [witnessesCheck, c0377_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk136.w11_check, B699LowIndex.I11TerminalData.Chunk136.w12_check, B699LowIndex.I11TerminalData.Chunk136.w13_check, Bool.and_self]

private theorem c0377_cover : coverCheck 10528 10540 c0377_intervals = true := by
  decide

private theorem c0377_sound : IntervalSound (10528, 10540) := by
  have hc : coverCheck 10528 10540 (witnessIntervals c0377_witnesses) = true := by
    rw [c0377_intervals_eq]
    exact c0377_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0377_witnesses)
    (lo := 10528) (hi := 10540) c0377_checks hc

private def c0378_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk136.w14, B699LowIndex.I11TerminalData.Chunk136.w15, B699LowIndex.I11TerminalData.Chunk137.w0]
private def c0378_intervals : List NatInterval := [(10557, 10557), (10558, 10558), (10559, 10567)]

private theorem c0378_intervals_eq :
    witnessIntervals c0378_witnesses = c0378_intervals := by
  rfl

private theorem c0378_checks : witnessesCheck c0378_witnesses = true := by
  simp only [witnessesCheck, c0378_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk136.w14_check, B699LowIndex.I11TerminalData.Chunk136.w15_check, B699LowIndex.I11TerminalData.Chunk137.w0_check, Bool.and_self]

private theorem c0378_cover : coverCheck 10557 10567 c0378_intervals = true := by
  decide

private theorem c0378_sound : IntervalSound (10557, 10567) := by
  have hc : coverCheck 10557 10567 (witnessIntervals c0378_witnesses) = true := by
    rw [c0378_intervals_eq]
    exact c0378_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0378_witnesses)
    (lo := 10557) (hi := 10567) c0378_checks hc

private def c0379_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk137.w1, B699LowIndex.I11TerminalData.Chunk137.w2, B699LowIndex.I11TerminalData.Chunk137.w3, B699LowIndex.I11TerminalData.Chunk137.w4, B699LowIndex.I11TerminalData.Chunk137.w5, B699LowIndex.I11TerminalData.Chunk137.w6]
private def c0379_intervals : List NatInterval := [(10584, 10584), (10585, 10585), (10586, 10586), (10587, 10587), (10588, 10588), (10589, 10594)]

private theorem c0379_intervals_eq :
    witnessIntervals c0379_witnesses = c0379_intervals := by
  rfl

private theorem c0379_checks : witnessesCheck c0379_witnesses = true := by
  simp only [witnessesCheck, c0379_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk137.w1_check, B699LowIndex.I11TerminalData.Chunk137.w2_check, B699LowIndex.I11TerminalData.Chunk137.w3_check, B699LowIndex.I11TerminalData.Chunk137.w4_check, B699LowIndex.I11TerminalData.Chunk137.w5_check, B699LowIndex.I11TerminalData.Chunk137.w6_check, Bool.and_self]

private theorem c0379_cover : coverCheck 10584 10594 c0379_intervals = true := by
  decide

private theorem c0379_sound : IntervalSound (10584, 10594) := by
  have hc : coverCheck 10584 10594 (witnessIntervals c0379_witnesses) = true := by
    rw [c0379_intervals_eq]
    exact c0379_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0379_witnesses)
    (lo := 10584) (hi := 10594) c0379_checks hc

private def c0380_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk137.w7]
private def c0380_intervals : List NatInterval := [(10600, 10602)]

private theorem c0380_intervals_eq :
    witnessIntervals c0380_witnesses = c0380_intervals := by
  rfl

private theorem c0380_checks : witnessesCheck c0380_witnesses = true := by
  simp only [witnessesCheck, c0380_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk137.w7_check, Bool.and_self]

private theorem c0380_cover : coverCheck 10600 10602 c0380_intervals = true := by
  decide

private theorem c0380_sound : IntervalSound (10600, 10602) := by
  have hc : coverCheck 10600 10602 (witnessIntervals c0380_witnesses) = true := by
    rw [c0380_intervals_eq]
    exact c0380_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0380_witnesses)
    (lo := 10600) (hi := 10602) c0380_checks hc

private def c0381_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk137.w8, B699LowIndex.I11TerminalData.Chunk137.w9, B699LowIndex.I11TerminalData.Chunk137.w10]
private def c0381_intervals : List NatInterval := [(10625, 10625), (10626, 10626), (10627, 10635)]

private theorem c0381_intervals_eq :
    witnessIntervals c0381_witnesses = c0381_intervals := by
  rfl

private theorem c0381_checks : witnessesCheck c0381_witnesses = true := by
  simp only [witnessesCheck, c0381_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk137.w8_check, B699LowIndex.I11TerminalData.Chunk137.w9_check, B699LowIndex.I11TerminalData.Chunk137.w10_check, Bool.and_self]

private theorem c0381_cover : coverCheck 10625 10635 c0381_intervals = true := by
  decide

private theorem c0381_sound : IntervalSound (10625, 10635) := by
  have hc : coverCheck 10625 10635 (witnessIntervals c0381_witnesses) = true := by
    rw [c0381_intervals_eq]
    exact c0381_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0381_witnesses)
    (lo := 10625) (hi := 10635) c0381_checks hc

private def c0382_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk137.w11, B699LowIndex.I11TerminalData.Chunk137.w12]
private def c0382_intervals : List NatInterval := [(10638, 10641), (10642, 10643)]

private theorem c0382_intervals_eq :
    witnessIntervals c0382_witnesses = c0382_intervals := by
  rfl

private theorem c0382_checks : witnessesCheck c0382_witnesses = true := by
  simp only [witnessesCheck, c0382_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk137.w11_check, B699LowIndex.I11TerminalData.Chunk137.w12_check, Bool.and_self]

private theorem c0382_cover : coverCheck 10638 10643 c0382_intervals = true := by
  decide

private theorem c0382_sound : IntervalSound (10638, 10643) := by
  have hc : coverCheck 10638 10643 (witnessIntervals c0382_witnesses) = true := by
    rw [c0382_intervals_eq]
    exact c0382_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0382_witnesses)
    (lo := 10638) (hi := 10643) c0382_checks hc

private def c0383_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk137.w13]
private def c0383_intervals : List NatInterval := [(10656, 10660)]

private theorem c0383_intervals_eq :
    witnessIntervals c0383_witnesses = c0383_intervals := by
  rfl

private theorem c0383_checks : witnessesCheck c0383_witnesses = true := by
  simp only [witnessesCheck, c0383_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk137.w13_check, Bool.and_self]

private theorem c0383_cover : coverCheck 10656 10660 c0383_intervals = true := by
  decide

private theorem c0383_sound : IntervalSound (10656, 10660) := by
  have hc : coverCheck 10656 10660 (witnessIntervals c0383_witnesses) = true := by
    rw [c0383_intervals_eq]
    exact c0383_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0383_witnesses)
    (lo := 10656) (hi := 10660) c0383_checks hc

def intervals : List NatInterval := [(10368, 10378), (10395, 10398), (10400, 10410), (10425, 10435), (10437, 10442), (10450, 10459), (10476, 10486), (10496, 10496), (10500, 10510), (10528, 10540), (10557, 10567), (10584, 10594), (10600, 10602), (10625, 10635), (10638, 10643), (10656, 10660)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (10368, 10378)) (intervals := [(10395, 10398), (10400, 10410), (10425, 10435), (10437, 10442), (10450, 10459), (10476, 10486), (10496, 10496), (10500, 10510), (10528, 10540), (10557, 10567), (10584, 10594), (10600, 10602), (10625, 10635), (10638, 10643), (10656, 10660)]) c0368_sound (intervals_sound_cons (I := (10395, 10398)) (intervals := [(10400, 10410), (10425, 10435), (10437, 10442), (10450, 10459), (10476, 10486), (10496, 10496), (10500, 10510), (10528, 10540), (10557, 10567), (10584, 10594), (10600, 10602), (10625, 10635), (10638, 10643), (10656, 10660)]) c0369_sound (intervals_sound_cons (I := (10400, 10410)) (intervals := [(10425, 10435), (10437, 10442), (10450, 10459), (10476, 10486), (10496, 10496), (10500, 10510), (10528, 10540), (10557, 10567), (10584, 10594), (10600, 10602), (10625, 10635), (10638, 10643), (10656, 10660)]) c0370_sound (intervals_sound_cons (I := (10425, 10435)) (intervals := [(10437, 10442), (10450, 10459), (10476, 10486), (10496, 10496), (10500, 10510), (10528, 10540), (10557, 10567), (10584, 10594), (10600, 10602), (10625, 10635), (10638, 10643), (10656, 10660)]) c0371_sound (intervals_sound_cons (I := (10437, 10442)) (intervals := [(10450, 10459), (10476, 10486), (10496, 10496), (10500, 10510), (10528, 10540), (10557, 10567), (10584, 10594), (10600, 10602), (10625, 10635), (10638, 10643), (10656, 10660)]) c0372_sound (intervals_sound_cons (I := (10450, 10459)) (intervals := [(10476, 10486), (10496, 10496), (10500, 10510), (10528, 10540), (10557, 10567), (10584, 10594), (10600, 10602), (10625, 10635), (10638, 10643), (10656, 10660)]) c0373_sound (intervals_sound_cons (I := (10476, 10486)) (intervals := [(10496, 10496), (10500, 10510), (10528, 10540), (10557, 10567), (10584, 10594), (10600, 10602), (10625, 10635), (10638, 10643), (10656, 10660)]) c0374_sound (intervals_sound_cons (I := (10496, 10496)) (intervals := [(10500, 10510), (10528, 10540), (10557, 10567), (10584, 10594), (10600, 10602), (10625, 10635), (10638, 10643), (10656, 10660)]) c0375_sound (intervals_sound_cons (I := (10500, 10510)) (intervals := [(10528, 10540), (10557, 10567), (10584, 10594), (10600, 10602), (10625, 10635), (10638, 10643), (10656, 10660)]) c0376_sound (intervals_sound_cons (I := (10528, 10540)) (intervals := [(10557, 10567), (10584, 10594), (10600, 10602), (10625, 10635), (10638, 10643), (10656, 10660)]) c0377_sound (intervals_sound_cons (I := (10557, 10567)) (intervals := [(10584, 10594), (10600, 10602), (10625, 10635), (10638, 10643), (10656, 10660)]) c0378_sound (intervals_sound_cons (I := (10584, 10594)) (intervals := [(10600, 10602), (10625, 10635), (10638, 10643), (10656, 10660)]) c0379_sound (intervals_sound_cons (I := (10600, 10602)) (intervals := [(10625, 10635), (10638, 10643), (10656, 10660)]) c0380_sound (intervals_sound_cons (I := (10625, 10635)) (intervals := [(10638, 10643), (10656, 10660)]) c0381_sound (intervals_sound_cons (I := (10638, 10643)) (intervals := [(10656, 10660)]) c0382_sound (intervals_sound_cons (I := (10656, 10660)) (intervals := []) c0383_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G023
