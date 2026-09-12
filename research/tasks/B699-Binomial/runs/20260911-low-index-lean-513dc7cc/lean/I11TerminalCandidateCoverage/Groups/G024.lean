import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk137
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk138
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk139
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk140
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk141

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G024
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0384_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk137.w14]
private def c0384_intervals : List NatInterval := [(10665, 10666)]

private theorem c0384_intervals_eq :
    witnessIntervals c0384_witnesses = c0384_intervals := by
  rfl

private theorem c0384_checks : witnessesCheck c0384_witnesses = true := by
  simp only [witnessesCheck, c0384_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk137.w14_check, Bool.and_self]

private theorem c0384_cover : coverCheck 10665 10666 c0384_intervals = true := by
  decide

private theorem c0384_sound : IntervalSound (10665, 10666) := by
  have hc : coverCheck 10665 10666 (witnessIntervals c0384_witnesses) = true := by
    rw [c0384_intervals_eq]
    exact c0384_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0384_witnesses)
    (lo := 10665) (hi := 10666) c0384_checks hc

private def c0385_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk137.w15]
private def c0385_intervals : List NatInterval := [(10675, 10675)]

private theorem c0385_intervals_eq :
    witnessIntervals c0385_witnesses = c0385_intervals := by
  rfl

private theorem c0385_checks : witnessesCheck c0385_witnesses = true := by
  simp only [witnessesCheck, c0385_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk137.w15_check, Bool.and_self]

private theorem c0385_cover : coverCheck 10675 10675 c0385_intervals = true := by
  decide

private theorem c0385_sound : IntervalSound (10675, 10675) := by
  have hc : coverCheck 10675 10675 (witnessIntervals c0385_witnesses) = true := by
    rw [c0385_intervals_eq]
    exact c0385_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0385_witnesses)
    (lo := 10675) (hi := 10675) c0385_checks hc

private def c0386_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk138.w0, B699LowIndex.I11TerminalData.Chunk138.w1, B699LowIndex.I11TerminalData.Chunk138.w2, B699LowIndex.I11TerminalData.Chunk138.w3]
private def c0386_intervals : List NatInterval := [(10682, 10682), (10683, 10683), (10684, 10684), (10685, 10685)]

private theorem c0386_intervals_eq :
    witnessIntervals c0386_witnesses = c0386_intervals := by
  rfl

private theorem c0386_checks : witnessesCheck c0386_witnesses = true := by
  simp only [witnessesCheck, c0386_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk138.w0_check, B699LowIndex.I11TerminalData.Chunk138.w1_check, B699LowIndex.I11TerminalData.Chunk138.w2_check, B699LowIndex.I11TerminalData.Chunk138.w3_check, Bool.and_self]

private theorem c0386_cover : coverCheck 10682 10685 c0386_intervals = true := by
  decide

private theorem c0386_sound : IntervalSound (10682, 10685) := by
  have hc : coverCheck 10682 10685 (witnessIntervals c0386_witnesses) = true := by
    rw [c0386_intervals_eq]
    exact c0386_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0386_witnesses)
    (lo := 10682) (hi := 10685) c0386_checks hc

private def c0387_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk138.w4, B699LowIndex.I11TerminalData.Chunk138.w5]
private def c0387_intervals : List NatInterval := [(10688, 10697), (10698, 10698)]

private theorem c0387_intervals_eq :
    witnessIntervals c0387_witnesses = c0387_intervals := by
  rfl

private theorem c0387_checks : witnessesCheck c0387_witnesses = true := by
  simp only [witnessesCheck, c0387_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk138.w4_check, B699LowIndex.I11TerminalData.Chunk138.w5_check, Bool.and_self]

private theorem c0387_cover : coverCheck 10688 10698 c0387_intervals = true := by
  decide

private theorem c0387_sound : IntervalSound (10688, 10698) := by
  have hc : coverCheck 10688 10698 (witnessIntervals c0387_witnesses) = true := by
    rw [c0387_intervals_eq]
    exact c0387_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0387_witnesses)
    (lo := 10688) (hi := 10698) c0387_checks hc

private def c0388_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk138.w6, B699LowIndex.I11TerminalData.Chunk138.w7]
private def c0388_intervals : List NatInterval := [(10700, 10701), (10702, 10702)]

private theorem c0388_intervals_eq :
    witnessIntervals c0388_witnesses = c0388_intervals := by
  rfl

private theorem c0388_checks : witnessesCheck c0388_witnesses = true := by
  simp only [witnessesCheck, c0388_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk138.w6_check, B699LowIndex.I11TerminalData.Chunk138.w7_check, Bool.and_self]

private theorem c0388_cover : coverCheck 10700 10702 c0388_intervals = true := by
  decide

private theorem c0388_sound : IntervalSound (10700, 10702) := by
  have hc : coverCheck 10700 10702 (witnessIntervals c0388_witnesses) = true := by
    rw [c0388_intervals_eq]
    exact c0388_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0388_witnesses)
    (lo := 10700) (hi := 10702) c0388_checks hc

private def c0389_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk138.w8, B699LowIndex.I11TerminalData.Chunk138.w9, B699LowIndex.I11TerminalData.Chunk138.w10, B699LowIndex.I11TerminalData.Chunk138.w11]
private def c0389_intervals : List NatInterval := [(10720, 10721), (10722, 10722), (10723, 10733), (10734, 10735)]

private theorem c0389_intervals_eq :
    witnessIntervals c0389_witnesses = c0389_intervals := by
  rfl

private theorem c0389_checks : witnessesCheck c0389_witnesses = true := by
  simp only [witnessesCheck, c0389_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk138.w8_check, B699LowIndex.I11TerminalData.Chunk138.w9_check, B699LowIndex.I11TerminalData.Chunk138.w10_check, B699LowIndex.I11TerminalData.Chunk138.w11_check, Bool.and_self]

private theorem c0389_cover : coverCheck 10720 10735 c0389_intervals = true := by
  decide

private theorem c0389_sound : IntervalSound (10720, 10735) := by
  have hc : coverCheck 10720 10735 (witnessIntervals c0389_witnesses) = true := by
    rw [c0389_intervals_eq]
    exact c0389_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0389_witnesses)
    (lo := 10720) (hi := 10735) c0389_checks hc

private def c0390_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk138.w12, B699LowIndex.I11TerminalData.Chunk138.w13, B699LowIndex.I11TerminalData.Chunk138.w14, B699LowIndex.I11TerminalData.Chunk138.w15]
private def c0390_intervals : List NatInterval := [(10750, 10750), (10751, 10751), (10752, 10752), (10753, 10760)]

private theorem c0390_intervals_eq :
    witnessIntervals c0390_witnesses = c0390_intervals := by
  rfl

private theorem c0390_checks : witnessesCheck c0390_witnesses = true := by
  simp only [witnessesCheck, c0390_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk138.w12_check, B699LowIndex.I11TerminalData.Chunk138.w13_check, B699LowIndex.I11TerminalData.Chunk138.w14_check, B699LowIndex.I11TerminalData.Chunk138.w15_check, Bool.and_self]

private theorem c0390_cover : coverCheck 10750 10760 c0390_intervals = true := by
  decide

private theorem c0390_sound : IntervalSound (10750, 10760) := by
  have hc : coverCheck 10750 10760 (witnessIntervals c0390_witnesses) = true := by
    rw [c0390_intervals_eq]
    exact c0390_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0390_witnesses)
    (lo := 10750) (hi := 10760) c0390_checks hc

private def c0391_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk139.w0, B699LowIndex.I11TerminalData.Chunk139.w1]
private def c0391_intervals : List NatInterval := [(10775, 10781), (10782, 10790)]

private theorem c0391_intervals_eq :
    witnessIntervals c0391_witnesses = c0391_intervals := by
  rfl

private theorem c0391_checks : witnessesCheck c0391_witnesses = true := by
  simp only [witnessesCheck, c0391_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk139.w0_check, B699LowIndex.I11TerminalData.Chunk139.w1_check, Bool.and_self]

private theorem c0391_cover : coverCheck 10775 10790 c0391_intervals = true := by
  decide

private theorem c0391_sound : IntervalSound (10775, 10790) := by
  have hc : coverCheck 10775 10790 (witnessIntervals c0391_witnesses) = true := by
    rw [c0391_intervals_eq]
    exact c0391_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0391_witnesses)
    (lo := 10775) (hi := 10790) c0391_checks hc

private def c0392_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk139.w2, B699LowIndex.I11TerminalData.Chunk139.w3]
private def c0392_intervals : List NatInterval := [(10800, 10809), (10810, 10810)]

private theorem c0392_intervals_eq :
    witnessIntervals c0392_witnesses = c0392_intervals := by
  rfl

private theorem c0392_checks : witnessesCheck c0392_witnesses = true := by
  simp only [witnessesCheck, c0392_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk139.w2_check, B699LowIndex.I11TerminalData.Chunk139.w3_check, Bool.and_self]

private theorem c0392_cover : coverCheck 10800 10810 c0392_intervals = true := by
  decide

private theorem c0392_sound : IntervalSound (10800, 10810) := by
  have hc : coverCheck 10800 10810 (witnessIntervals c0392_witnesses) = true := by
    rw [c0392_intervals_eq]
    exact c0392_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0392_witnesses)
    (lo := 10800) (hi := 10810) c0392_checks hc

private def c0393_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk139.w4, B699LowIndex.I11TerminalData.Chunk139.w5, B699LowIndex.I11TerminalData.Chunk139.w6, B699LowIndex.I11TerminalData.Chunk139.w7, B699LowIndex.I11TerminalData.Chunk139.w8, B699LowIndex.I11TerminalData.Chunk139.w9, B699LowIndex.I11TerminalData.Chunk139.w10]
private def c0393_intervals : List NatInterval := [(10825, 10825), (10826, 10826), (10827, 10827), (10828, 10828), (10829, 10829), (10830, 10830), (10831, 10837)]

private theorem c0393_intervals_eq :
    witnessIntervals c0393_witnesses = c0393_intervals := by
  rfl

private theorem c0393_checks : witnessesCheck c0393_witnesses = true := by
  simp only [witnessesCheck, c0393_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk139.w4_check, B699LowIndex.I11TerminalData.Chunk139.w5_check, B699LowIndex.I11TerminalData.Chunk139.w6_check, B699LowIndex.I11TerminalData.Chunk139.w7_check, B699LowIndex.I11TerminalData.Chunk139.w8_check, B699LowIndex.I11TerminalData.Chunk139.w9_check, B699LowIndex.I11TerminalData.Chunk139.w10_check, Bool.and_self]

private theorem c0393_cover : coverCheck 10825 10837 c0393_intervals = true := by
  decide

private theorem c0393_sound : IntervalSound (10825, 10837) := by
  have hc : coverCheck 10825 10837 (witnessIntervals c0393_witnesses) = true := by
    rw [c0393_intervals_eq]
    exact c0393_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0393_witnesses)
    (lo := 10825) (hi := 10837) c0393_checks hc

private def c0394_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk139.w11, B699LowIndex.I11TerminalData.Chunk139.w12]
private def c0394_intervals : List NatInterval := [(10850, 10857), (10858, 10860)]

private theorem c0394_intervals_eq :
    witnessIntervals c0394_witnesses = c0394_intervals := by
  rfl

private theorem c0394_checks : witnessesCheck c0394_witnesses = true := by
  simp only [witnessesCheck, c0394_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk139.w11_check, B699LowIndex.I11TerminalData.Chunk139.w12_check, Bool.and_self]

private theorem c0394_cover : coverCheck 10850 10860 c0394_intervals = true := by
  decide

private theorem c0394_sound : IntervalSound (10850, 10860) := by
  have hc : coverCheck 10850 10860 (witnessIntervals c0394_witnesses) = true := by
    rw [c0394_intervals_eq]
    exact c0394_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0394_witnesses)
    (lo := 10850) (hi := 10860) c0394_checks hc

private def c0395_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk139.w13, B699LowIndex.I11TerminalData.Chunk139.w14, B699LowIndex.I11TerminalData.Chunk139.w15, B699LowIndex.I11TerminalData.Chunk140.w0, B699LowIndex.I11TerminalData.Chunk140.w1, B699LowIndex.I11TerminalData.Chunk140.w2]
private def c0395_intervals : List NatInterval := [(10878, 10878), (10879, 10879), (10880, 10880), (10881, 10881), (10882, 10882), (10883, 10890)]

private theorem c0395_intervals_eq :
    witnessIntervals c0395_witnesses = c0395_intervals := by
  rfl

private theorem c0395_checks : witnessesCheck c0395_witnesses = true := by
  simp only [witnessesCheck, c0395_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk139.w13_check, B699LowIndex.I11TerminalData.Chunk139.w14_check, B699LowIndex.I11TerminalData.Chunk139.w15_check, B699LowIndex.I11TerminalData.Chunk140.w0_check, B699LowIndex.I11TerminalData.Chunk140.w1_check, B699LowIndex.I11TerminalData.Chunk140.w2_check, Bool.and_self]

private theorem c0395_cover : coverCheck 10878 10890 c0395_intervals = true := by
  decide

private theorem c0395_sound : IntervalSound (10878, 10890) := by
  have hc : coverCheck 10878 10890 (witnessIntervals c0395_witnesses) = true := by
    rw [c0395_intervals_eq]
    exact c0395_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0395_witnesses)
    (lo := 10878) (hi := 10890) c0395_checks hc

private def c0396_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk140.w3]
private def c0396_intervals : List NatInterval := [(10908, 10910)]

private theorem c0396_intervals_eq :
    witnessIntervals c0396_witnesses = c0396_intervals := by
  rfl

private theorem c0396_checks : witnessesCheck c0396_witnesses = true := by
  simp only [witnessesCheck, c0396_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk140.w3_check, Bool.and_self]

private theorem c0396_cover : coverCheck 10908 10910 c0396_intervals = true := by
  decide

private theorem c0396_sound : IntervalSound (10908, 10910) := by
  have hc : coverCheck 10908 10910 (witnessIntervals c0396_witnesses) = true := by
    rw [c0396_intervals_eq]
    exact c0396_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0396_witnesses)
    (lo := 10908) (hi := 10910) c0396_checks hc

private def c0397_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk140.w4]
private def c0397_intervals : List NatInterval := [(10912, 10918)]

private theorem c0397_intervals_eq :
    witnessIntervals c0397_witnesses = c0397_intervals := by
  rfl

private theorem c0397_checks : witnessesCheck c0397_witnesses = true := by
  simp only [witnessesCheck, c0397_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk140.w4_check, Bool.and_self]

private theorem c0397_cover : coverCheck 10912 10918 c0397_intervals = true := by
  decide

private theorem c0397_sound : IntervalSound (10912, 10918) := by
  have hc : coverCheck 10912 10918 (witnessIntervals c0397_witnesses) = true := by
    rw [c0397_intervals_eq]
    exact c0397_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0397_witnesses)
    (lo := 10912) (hi := 10918) c0397_checks hc

private def c0398_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk140.w5, B699LowIndex.I11TerminalData.Chunk140.w6, B699LowIndex.I11TerminalData.Chunk140.w7, B699LowIndex.I11TerminalData.Chunk140.w8, B699LowIndex.I11TerminalData.Chunk140.w9, B699LowIndex.I11TerminalData.Chunk140.w10, B699LowIndex.I11TerminalData.Chunk140.w11, B699LowIndex.I11TerminalData.Chunk140.w12, B699LowIndex.I11TerminalData.Chunk140.w13, B699LowIndex.I11TerminalData.Chunk140.w14, B699LowIndex.I11TerminalData.Chunk140.w15]
private def c0398_intervals : List NatInterval := [(10927, 10927), (10928, 10928), (10929, 10929), (10930, 10930), (10931, 10931), (10932, 10932), (10933, 10933), (10934, 10934), (10935, 10935), (10936, 10936), (10937, 10937)]

private theorem c0398_intervals_eq :
    witnessIntervals c0398_witnesses = c0398_intervals := by
  rfl

private theorem c0398_checks : witnessesCheck c0398_witnesses = true := by
  simp only [witnessesCheck, c0398_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk140.w5_check, B699LowIndex.I11TerminalData.Chunk140.w6_check, B699LowIndex.I11TerminalData.Chunk140.w7_check, B699LowIndex.I11TerminalData.Chunk140.w8_check, B699LowIndex.I11TerminalData.Chunk140.w9_check, B699LowIndex.I11TerminalData.Chunk140.w10_check, B699LowIndex.I11TerminalData.Chunk140.w11_check, B699LowIndex.I11TerminalData.Chunk140.w12_check, B699LowIndex.I11TerminalData.Chunk140.w13_check, B699LowIndex.I11TerminalData.Chunk140.w14_check, B699LowIndex.I11TerminalData.Chunk140.w15_check, Bool.and_self]

private theorem c0398_cover : coverCheck 10927 10937 c0398_intervals = true := by
  decide

private theorem c0398_sound : IntervalSound (10927, 10937) := by
  have hc : coverCheck 10927 10937 (witnessIntervals c0398_witnesses) = true := by
    rw [c0398_intervals_eq]
    exact c0398_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0398_witnesses)
    (lo := 10927) (hi := 10937) c0398_checks hc

private def c0399_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk141.w0]
private def c0399_intervals : List NatInterval := [(10944, 10945)]

private theorem c0399_intervals_eq :
    witnessIntervals c0399_witnesses = c0399_intervals := by
  rfl

private theorem c0399_checks : witnessesCheck c0399_witnesses = true := by
  simp only [witnessesCheck, c0399_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk141.w0_check, Bool.and_self]

private theorem c0399_cover : coverCheck 10944 10945 c0399_intervals = true := by
  decide

private theorem c0399_sound : IntervalSound (10944, 10945) := by
  have hc : coverCheck 10944 10945 (witnessIntervals c0399_witnesses) = true := by
    rw [c0399_intervals_eq]
    exact c0399_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0399_witnesses)
    (lo := 10944) (hi := 10945) c0399_checks hc

def intervals : List NatInterval := [(10665, 10666), (10675, 10675), (10682, 10685), (10688, 10698), (10700, 10702), (10720, 10735), (10750, 10760), (10775, 10790), (10800, 10810), (10825, 10837), (10850, 10860), (10878, 10890), (10908, 10910), (10912, 10918), (10927, 10937), (10944, 10945)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (10665, 10666)) (intervals := [(10675, 10675), (10682, 10685), (10688, 10698), (10700, 10702), (10720, 10735), (10750, 10760), (10775, 10790), (10800, 10810), (10825, 10837), (10850, 10860), (10878, 10890), (10908, 10910), (10912, 10918), (10927, 10937), (10944, 10945)]) c0384_sound (intervals_sound_cons (I := (10675, 10675)) (intervals := [(10682, 10685), (10688, 10698), (10700, 10702), (10720, 10735), (10750, 10760), (10775, 10790), (10800, 10810), (10825, 10837), (10850, 10860), (10878, 10890), (10908, 10910), (10912, 10918), (10927, 10937), (10944, 10945)]) c0385_sound (intervals_sound_cons (I := (10682, 10685)) (intervals := [(10688, 10698), (10700, 10702), (10720, 10735), (10750, 10760), (10775, 10790), (10800, 10810), (10825, 10837), (10850, 10860), (10878, 10890), (10908, 10910), (10912, 10918), (10927, 10937), (10944, 10945)]) c0386_sound (intervals_sound_cons (I := (10688, 10698)) (intervals := [(10700, 10702), (10720, 10735), (10750, 10760), (10775, 10790), (10800, 10810), (10825, 10837), (10850, 10860), (10878, 10890), (10908, 10910), (10912, 10918), (10927, 10937), (10944, 10945)]) c0387_sound (intervals_sound_cons (I := (10700, 10702)) (intervals := [(10720, 10735), (10750, 10760), (10775, 10790), (10800, 10810), (10825, 10837), (10850, 10860), (10878, 10890), (10908, 10910), (10912, 10918), (10927, 10937), (10944, 10945)]) c0388_sound (intervals_sound_cons (I := (10720, 10735)) (intervals := [(10750, 10760), (10775, 10790), (10800, 10810), (10825, 10837), (10850, 10860), (10878, 10890), (10908, 10910), (10912, 10918), (10927, 10937), (10944, 10945)]) c0389_sound (intervals_sound_cons (I := (10750, 10760)) (intervals := [(10775, 10790), (10800, 10810), (10825, 10837), (10850, 10860), (10878, 10890), (10908, 10910), (10912, 10918), (10927, 10937), (10944, 10945)]) c0390_sound (intervals_sound_cons (I := (10775, 10790)) (intervals := [(10800, 10810), (10825, 10837), (10850, 10860), (10878, 10890), (10908, 10910), (10912, 10918), (10927, 10937), (10944, 10945)]) c0391_sound (intervals_sound_cons (I := (10800, 10810)) (intervals := [(10825, 10837), (10850, 10860), (10878, 10890), (10908, 10910), (10912, 10918), (10927, 10937), (10944, 10945)]) c0392_sound (intervals_sound_cons (I := (10825, 10837)) (intervals := [(10850, 10860), (10878, 10890), (10908, 10910), (10912, 10918), (10927, 10937), (10944, 10945)]) c0393_sound (intervals_sound_cons (I := (10850, 10860)) (intervals := [(10878, 10890), (10908, 10910), (10912, 10918), (10927, 10937), (10944, 10945)]) c0394_sound (intervals_sound_cons (I := (10878, 10890)) (intervals := [(10908, 10910), (10912, 10918), (10927, 10937), (10944, 10945)]) c0395_sound (intervals_sound_cons (I := (10908, 10910)) (intervals := [(10912, 10918), (10927, 10937), (10944, 10945)]) c0396_sound (intervals_sound_cons (I := (10912, 10918)) (intervals := [(10927, 10937), (10944, 10945)]) c0397_sound (intervals_sound_cons (I := (10927, 10937)) (intervals := [(10944, 10945)]) c0398_sound (intervals_sound_cons (I := (10944, 10945)) (intervals := []) c0399_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G024
