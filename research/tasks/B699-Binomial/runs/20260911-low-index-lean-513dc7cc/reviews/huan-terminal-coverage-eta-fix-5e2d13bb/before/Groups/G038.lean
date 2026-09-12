import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk176
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk177
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk178

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G038
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0608_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk176.w14, B699LowIndex.I11TerminalData.Chunk176.w15]
private def c0608_intervals : List NatInterval := [(17496, 17501), (17502, 17506)]

private theorem c0608_intervals_eq :
    witnessIntervals c0608_witnesses = c0608_intervals := by
  rfl

private theorem c0608_checks : witnessesCheck c0608_witnesses = true := by
  simp only [witnessesCheck, c0608_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk176.w14_check, B699LowIndex.I11TerminalData.Chunk176.w15_check, Bool.and_self]

private theorem c0608_cover : coverCheck 17496 17506 c0608_intervals = true := by
  decide

private theorem c0608_sound : IntervalSound (17496, 17506) := by
  have hc : coverCheck 17496 17506 (witnessIntervals c0608_witnesses) = true := by
    rw [c0608_intervals_eq]
    exact c0608_cover
  exact interval_sound_of_witness_checks (witnesses := c0608_witnesses)
    (lo := 17496) (hi := 17506) c0608_checks hc

private def c0609_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk177.w0]
private def c0609_intervals : List NatInterval := [(17542, 17546)]

private theorem c0609_intervals_eq :
    witnessIntervals c0609_witnesses = c0609_intervals := by
  rfl

private theorem c0609_checks : witnessesCheck c0609_witnesses = true := by
  simp only [witnessesCheck, c0609_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk177.w0_check, Bool.and_self]

private theorem c0609_cover : coverCheck 17542 17546 c0609_intervals = true := by
  decide

private theorem c0609_sound : IntervalSound (17542, 17546) := by
  have hc : coverCheck 17542 17546 (witnessIntervals c0609_witnesses) = true := by
    rw [c0609_intervals_eq]
    exact c0609_cover
  exact interval_sound_of_witness_checks (witnesses := c0609_witnesses)
    (lo := 17542) (hi := 17546) c0609_checks hc

private def c0610_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk177.w1]
private def c0610_intervals : List NatInterval := [(17600, 17601)]

private theorem c0610_intervals_eq :
    witnessIntervals c0610_witnesses = c0610_intervals := by
  rfl

private theorem c0610_checks : witnessesCheck c0610_witnesses = true := by
  simp only [witnessesCheck, c0610_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk177.w1_check, Bool.and_self]

private theorem c0610_cover : coverCheck 17600 17601 c0610_intervals = true := by
  decide

private theorem c0610_sound : IntervalSound (17600, 17601) := by
  have hc : coverCheck 17600 17601 (witnessIntervals c0610_witnesses) = true := by
    rw [c0610_intervals_eq]
    exact c0610_cover
  exact interval_sound_of_witness_checks (witnesses := c0610_witnesses)
    (lo := 17600) (hi := 17601) c0610_checks hc

private def c0611_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk177.w2]
private def c0611_intervals : List NatInterval := [(17664, 17668)]

private theorem c0611_intervals_eq :
    witnessIntervals c0611_witnesses = c0611_intervals := by
  rfl

private theorem c0611_checks : witnessesCheck c0611_witnesses = true := by
  simp only [witnessesCheck, c0611_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk177.w2_check, Bool.and_self]

private theorem c0611_cover : coverCheck 17664 17668 c0611_intervals = true := by
  decide

private theorem c0611_sound : IntervalSound (17664, 17668) := by
  have hc : coverCheck 17664 17668 (witnessIntervals c0611_witnesses) = true := by
    rw [c0611_intervals_eq]
    exact c0611_cover
  exact interval_sound_of_witness_checks (witnesses := c0611_witnesses)
    (lo := 17664) (hi := 17668) c0611_checks hc

private def c0612_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk177.w3, B699LowIndex.I11TerminalData.Chunk177.w4]
private def c0612_intervals : List NatInterval := [(17738, 17747), (17748, 17748)]

private theorem c0612_intervals_eq :
    witnessIntervals c0612_witnesses = c0612_intervals := by
  rfl

private theorem c0612_checks : witnessesCheck c0612_witnesses = true := by
  simp only [witnessesCheck, c0612_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk177.w3_check, B699LowIndex.I11TerminalData.Chunk177.w4_check, Bool.and_self]

private theorem c0612_cover : coverCheck 17738 17748 c0612_intervals = true := by
  decide

private theorem c0612_sound : IntervalSound (17738, 17748) := by
  have hc : coverCheck 17738 17748 (witnessIntervals c0612_witnesses) = true := by
    rw [c0612_intervals_eq]
    exact c0612_cover
  exact interval_sound_of_witness_checks (witnesses := c0612_witnesses)
    (lo := 17738) (hi := 17748) c0612_checks hc

private def c0613_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk177.w5]
private def c0613_intervals : List NatInterval := [(17792, 17797)]

private theorem c0613_intervals_eq :
    witnessIntervals c0613_witnesses = c0613_intervals := by
  rfl

private theorem c0613_checks : witnessesCheck c0613_witnesses = true := by
  simp only [witnessesCheck, c0613_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk177.w5_check, Bool.and_self]

private theorem c0613_cover : coverCheck 17792 17797 c0613_intervals = true := by
  decide

private theorem c0613_sound : IntervalSound (17792, 17797) := by
  have hc : coverCheck 17792 17797 (witnessIntervals c0613_witnesses) = true := by
    rw [c0613_intervals_eq]
    exact c0613_cover
  exact interval_sound_of_witness_checks (witnesses := c0613_witnesses)
    (lo := 17792) (hi := 17797) c0613_checks hc

private def c0614_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk177.w6]
private def c0614_intervals : List NatInterval := [(17885, 17885)]

private theorem c0614_intervals_eq :
    witnessIntervals c0614_witnesses = c0614_intervals := by
  rfl

private theorem c0614_checks : witnessesCheck c0614_witnesses = true := by
  simp only [witnessesCheck, c0614_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk177.w6_check, Bool.and_self]

private theorem c0614_cover : coverCheck 17885 17885 c0614_intervals = true := by
  decide

private theorem c0614_sound : IntervalSound (17885, 17885) := by
  have hc : coverCheck 17885 17885 (witnessIntervals c0614_witnesses) = true := by
    rw [c0614_intervals_eq]
    exact c0614_cover
  exact interval_sound_of_witness_checks (witnesses := c0614_witnesses)
    (lo := 17885) (hi := 17885) c0614_checks hc

private def c0615_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk177.w7, B699LowIndex.I11TerminalData.Chunk177.w8]
private def c0615_intervals : List NatInterval := [(17983, 17991), (17992, 17993)]

private theorem c0615_intervals_eq :
    witnessIntervals c0615_witnesses = c0615_intervals := by
  rfl

private theorem c0615_checks : witnessesCheck c0615_witnesses = true := by
  simp only [witnessesCheck, c0615_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk177.w7_check, B699LowIndex.I11TerminalData.Chunk177.w8_check, Bool.and_self]

private theorem c0615_cover : coverCheck 17983 17993 c0615_intervals = true := by
  decide

private theorem c0615_sound : IntervalSound (17983, 17993) := by
  have hc : coverCheck 17983 17993 (witnessIntervals c0615_witnesses) = true := by
    rw [c0615_intervals_eq]
    exact c0615_cover
  exact interval_sound_of_witness_checks (witnesses := c0615_witnesses)
    (lo := 17983) (hi := 17993) c0615_checks hc

private def c0616_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk177.w9]
private def c0616_intervals : List NatInterval := [(18130, 18135)]

private theorem c0616_intervals_eq :
    witnessIntervals c0616_witnesses = c0616_intervals := by
  rfl

private theorem c0616_checks : witnessesCheck c0616_witnesses = true := by
  simp only [witnessesCheck, c0616_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk177.w9_check, Bool.and_self]

private theorem c0616_cover : coverCheck 18130 18135 c0616_intervals = true := by
  decide

private theorem c0616_sound : IntervalSound (18130, 18135) := by
  have hc : coverCheck 18130 18135 (witnessIntervals c0616_witnesses) = true := by
    rw [c0616_intervals_eq]
    exact c0616_cover
  exact interval_sound_of_witness_checks (witnesses := c0616_witnesses)
    (lo := 18130) (hi := 18135) c0616_checks hc

private def c0617_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk177.w10, B699LowIndex.I11TerminalData.Chunk177.w11, B699LowIndex.I11TerminalData.Chunk177.w12]
private def c0617_intervals : List NatInterval := [(18179, 18179), (18180, 18180), (18181, 18186)]

private theorem c0617_intervals_eq :
    witnessIntervals c0617_witnesses = c0617_intervals := by
  rfl

private theorem c0617_checks : witnessesCheck c0617_witnesses = true := by
  simp only [witnessesCheck, c0617_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk177.w10_check, B699LowIndex.I11TerminalData.Chunk177.w11_check, B699LowIndex.I11TerminalData.Chunk177.w12_check, Bool.and_self]

private theorem c0617_cover : coverCheck 18179 18186 c0617_intervals = true := by
  decide

private theorem c0617_sound : IntervalSound (18179, 18186) := by
  have hc : coverCheck 18179 18186 (witnessIntervals c0617_witnesses) = true := by
    rw [c0617_intervals_eq]
    exact c0617_cover
  exact interval_sound_of_witness_checks (witnesses := c0617_witnesses)
    (lo := 18179) (hi := 18186) c0617_checks hc

private def c0618_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk177.w13, B699LowIndex.I11TerminalData.Chunk177.w14]
private def c0618_intervals : List NatInterval := [(18228, 18233), (18234, 18235)]

private theorem c0618_intervals_eq :
    witnessIntervals c0618_witnesses = c0618_intervals := by
  rfl

private theorem c0618_checks : witnessesCheck c0618_witnesses = true := by
  simp only [witnessesCheck, c0618_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk177.w13_check, B699LowIndex.I11TerminalData.Chunk177.w14_check, Bool.and_self]

private theorem c0618_cover : coverCheck 18228 18235 c0618_intervals = true := by
  decide

private theorem c0618_sound : IntervalSound (18228, 18235) := by
  have hc : coverCheck 18228 18235 (witnessIntervals c0618_witnesses) = true := by
    rw [c0618_intervals_eq]
    exact c0618_cover
  exact interval_sound_of_witness_checks (witnesses := c0618_witnesses)
    (lo := 18228) (hi := 18235) c0618_checks hc

private def c0619_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk177.w15]
private def c0619_intervals : List NatInterval := [(18250, 18250)]

private theorem c0619_intervals_eq :
    witnessIntervals c0619_witnesses = c0619_intervals := by
  rfl

private theorem c0619_checks : witnessesCheck c0619_witnesses = true := by
  simp only [witnessesCheck, c0619_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk177.w15_check, Bool.and_self]

private theorem c0619_cover : coverCheck 18250 18250 c0619_intervals = true := by
  decide

private theorem c0619_sound : IntervalSound (18250, 18250) := by
  have hc : coverCheck 18250 18250 (witnessIntervals c0619_witnesses) = true := by
    rw [c0619_intervals_eq]
    exact c0619_cover
  exact interval_sound_of_witness_checks (witnesses := c0619_witnesses)
    (lo := 18250) (hi := 18250) c0619_checks hc

private def c0620_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk178.w0, B699LowIndex.I11TerminalData.Chunk178.w1]
private def c0620_intervals : List NatInterval := [(18306, 18311), (18312, 18314)]

private theorem c0620_intervals_eq :
    witnessIntervals c0620_witnesses = c0620_intervals := by
  rfl

private theorem c0620_checks : witnessesCheck c0620_witnesses = true := by
  simp only [witnessesCheck, c0620_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk178.w0_check, B699LowIndex.I11TerminalData.Chunk178.w1_check, Bool.and_self]

private theorem c0620_cover : coverCheck 18306 18314 c0620_intervals = true := by
  decide

private theorem c0620_sound : IntervalSound (18306, 18314) := by
  have hc : coverCheck 18306 18314 (witnessIntervals c0620_witnesses) = true := by
    rw [c0620_intervals_eq]
    exact c0620_cover
  exact interval_sound_of_witness_checks (witnesses := c0620_witnesses)
    (lo := 18306) (hi := 18314) c0620_checks hc

private def c0621_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk178.w2, B699LowIndex.I11TerminalData.Chunk178.w3]
private def c0621_intervals : List NatInterval := [(18375, 18381), (18382, 18385)]

private theorem c0621_intervals_eq :
    witnessIntervals c0621_witnesses = c0621_intervals := by
  rfl

private theorem c0621_checks : witnessesCheck c0621_witnesses = true := by
  simp only [witnessesCheck, c0621_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk178.w2_check, B699LowIndex.I11TerminalData.Chunk178.w3_check, Bool.and_self]

private theorem c0621_cover : coverCheck 18375 18385 c0621_intervals = true := by
  decide

private theorem c0621_sound : IntervalSound (18375, 18385) := by
  have hc : coverCheck 18375 18385 (witnessIntervals c0621_witnesses) = true := by
    rw [c0621_intervals_eq]
    exact c0621_cover
  exact interval_sound_of_witness_checks (witnesses := c0621_witnesses)
    (lo := 18375) (hi := 18385) c0621_checks hc

private def c0622_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk178.w4]
private def c0622_intervals : List NatInterval := [(18432, 18434)]

private theorem c0622_intervals_eq :
    witnessIntervals c0622_witnesses = c0622_intervals := by
  rfl

private theorem c0622_checks : witnessesCheck c0622_witnesses = true := by
  simp only [witnessesCheck, c0622_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk178.w4_check, Bool.and_self]

private theorem c0622_cover : coverCheck 18432 18434 c0622_intervals = true := by
  decide

private theorem c0622_sound : IntervalSound (18432, 18434) := by
  have hc : coverCheck 18432 18434 (witnessIntervals c0622_witnesses) = true := by
    rw [c0622_intervals_eq]
    exact c0622_cover
  exact interval_sound_of_witness_checks (witnesses := c0622_witnesses)
    (lo := 18432) (hi := 18434) c0622_checks hc

private def c0623_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk178.w5, B699LowIndex.I11TerminalData.Chunk178.w6, B699LowIndex.I11TerminalData.Chunk178.w7, B699LowIndex.I11TerminalData.Chunk178.w8, B699LowIndex.I11TerminalData.Chunk178.w9, B699LowIndex.I11TerminalData.Chunk178.w10]
private def c0623_intervals : List NatInterval := [(18473, 18473), (18474, 18474), (18475, 18475), (18476, 18476), (18477, 18477), (18478, 18478)]

private theorem c0623_intervals_eq :
    witnessIntervals c0623_witnesses = c0623_intervals := by
  rfl

private theorem c0623_checks : witnessesCheck c0623_witnesses = true := by
  simp only [witnessesCheck, c0623_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk178.w5_check, B699LowIndex.I11TerminalData.Chunk178.w6_check, B699LowIndex.I11TerminalData.Chunk178.w7_check, B699LowIndex.I11TerminalData.Chunk178.w8_check, B699LowIndex.I11TerminalData.Chunk178.w9_check, B699LowIndex.I11TerminalData.Chunk178.w10_check, Bool.and_self]

private theorem c0623_cover : coverCheck 18473 18478 c0623_intervals = true := by
  decide

private theorem c0623_sound : IntervalSound (18473, 18478) := by
  have hc : coverCheck 18473 18478 (witnessIntervals c0623_witnesses) = true := by
    rw [c0623_intervals_eq]
    exact c0623_cover
  exact interval_sound_of_witness_checks (witnesses := c0623_witnesses)
    (lo := 18473) (hi := 18478) c0623_checks hc

def intervals : List NatInterval := [(17496, 17506), (17542, 17546), (17600, 17601), (17664, 17668), (17738, 17748), (17792, 17797), (17885, 17885), (17983, 17993), (18130, 18135), (18179, 18186), (18228, 18235), (18250, 18250), (18306, 18314), (18375, 18385), (18432, 18434), (18473, 18478)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (17496, 17506)) (intervals := [(17542, 17546), (17600, 17601), (17664, 17668), (17738, 17748), (17792, 17797), (17885, 17885), (17983, 17993), (18130, 18135), (18179, 18186), (18228, 18235), (18250, 18250), (18306, 18314), (18375, 18385), (18432, 18434), (18473, 18478)]) c0608_sound (intervals_sound_cons (I := (17542, 17546)) (intervals := [(17600, 17601), (17664, 17668), (17738, 17748), (17792, 17797), (17885, 17885), (17983, 17993), (18130, 18135), (18179, 18186), (18228, 18235), (18250, 18250), (18306, 18314), (18375, 18385), (18432, 18434), (18473, 18478)]) c0609_sound (intervals_sound_cons (I := (17600, 17601)) (intervals := [(17664, 17668), (17738, 17748), (17792, 17797), (17885, 17885), (17983, 17993), (18130, 18135), (18179, 18186), (18228, 18235), (18250, 18250), (18306, 18314), (18375, 18385), (18432, 18434), (18473, 18478)]) c0610_sound (intervals_sound_cons (I := (17664, 17668)) (intervals := [(17738, 17748), (17792, 17797), (17885, 17885), (17983, 17993), (18130, 18135), (18179, 18186), (18228, 18235), (18250, 18250), (18306, 18314), (18375, 18385), (18432, 18434), (18473, 18478)]) c0611_sound (intervals_sound_cons (I := (17738, 17748)) (intervals := [(17792, 17797), (17885, 17885), (17983, 17993), (18130, 18135), (18179, 18186), (18228, 18235), (18250, 18250), (18306, 18314), (18375, 18385), (18432, 18434), (18473, 18478)]) c0612_sound (intervals_sound_cons (I := (17792, 17797)) (intervals := [(17885, 17885), (17983, 17993), (18130, 18135), (18179, 18186), (18228, 18235), (18250, 18250), (18306, 18314), (18375, 18385), (18432, 18434), (18473, 18478)]) c0613_sound (intervals_sound_cons (I := (17885, 17885)) (intervals := [(17983, 17993), (18130, 18135), (18179, 18186), (18228, 18235), (18250, 18250), (18306, 18314), (18375, 18385), (18432, 18434), (18473, 18478)]) c0614_sound (intervals_sound_cons (I := (17983, 17993)) (intervals := [(18130, 18135), (18179, 18186), (18228, 18235), (18250, 18250), (18306, 18314), (18375, 18385), (18432, 18434), (18473, 18478)]) c0615_sound (intervals_sound_cons (I := (18130, 18135)) (intervals := [(18179, 18186), (18228, 18235), (18250, 18250), (18306, 18314), (18375, 18385), (18432, 18434), (18473, 18478)]) c0616_sound (intervals_sound_cons (I := (18179, 18186)) (intervals := [(18228, 18235), (18250, 18250), (18306, 18314), (18375, 18385), (18432, 18434), (18473, 18478)]) c0617_sound (intervals_sound_cons (I := (18228, 18235)) (intervals := [(18250, 18250), (18306, 18314), (18375, 18385), (18432, 18434), (18473, 18478)]) c0618_sound (intervals_sound_cons (I := (18250, 18250)) (intervals := [(18306, 18314), (18375, 18385), (18432, 18434), (18473, 18478)]) c0619_sound (intervals_sound_cons (I := (18306, 18314)) (intervals := [(18375, 18385), (18432, 18434), (18473, 18478)]) c0620_sound (intervals_sound_cons (I := (18375, 18385)) (intervals := [(18432, 18434), (18473, 18478)]) c0621_sound (intervals_sound_cons (I := (18432, 18434)) (intervals := [(18473, 18478)]) c0622_sound (intervals_sound_cons (I := (18473, 18478)) (intervals := []) c0623_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G038
