import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk160
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk161
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk162
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk163

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G032
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0512_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk160.w14, B699LowIndex.I11TerminalData.Chunk160.w15]
private def c0512_intervals : List NatInterval := [(13250, 13259), (13260, 13260)]

private theorem c0512_intervals_eq :
    witnessIntervals c0512_witnesses = c0512_intervals := by
  rfl

private theorem c0512_checks : witnessesCheck c0512_witnesses = true := by
  simp only [witnessesCheck, c0512_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk160.w14_check, B699LowIndex.I11TerminalData.Chunk160.w15_check, Bool.and_self]

private theorem c0512_cover : coverCheck 13250 13260 c0512_intervals = true := by
  decide

private theorem c0512_sound : IntervalSound (13250, 13260) := by
  have hc : coverCheck 13250 13260 (witnessIntervals c0512_witnesses) = true := by
    rw [c0512_intervals_eq]
    exact c0512_cover
  exact interval_sound_of_witness_checks (witnesses := c0512_witnesses)
    (lo := 13250) (hi := 13260) c0512_checks hc

private def c0513_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk161.w0, B699LowIndex.I11TerminalData.Chunk161.w1, B699LowIndex.I11TerminalData.Chunk161.w2, B699LowIndex.I11TerminalData.Chunk161.w3, B699LowIndex.I11TerminalData.Chunk161.w4, B699LowIndex.I11TerminalData.Chunk161.w5, B699LowIndex.I11TerminalData.Chunk161.w6, B699LowIndex.I11TerminalData.Chunk161.w7, B699LowIndex.I11TerminalData.Chunk161.w8, B699LowIndex.I11TerminalData.Chunk161.w9, B699LowIndex.I11TerminalData.Chunk161.w10]
private def c0513_intervals : List NatInterval := [(13280, 13280), (13281, 13281), (13282, 13282), (13283, 13283), (13284, 13284), (13285, 13285), (13286, 13286), (13287, 13287), (13288, 13288), (13289, 13289), (13290, 13290)]

private theorem c0513_intervals_eq :
    witnessIntervals c0513_witnesses = c0513_intervals := by
  rfl

private theorem c0513_checks : witnessesCheck c0513_witnesses = true := by
  simp only [witnessesCheck, c0513_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk161.w0_check, B699LowIndex.I11TerminalData.Chunk161.w1_check, B699LowIndex.I11TerminalData.Chunk161.w2_check, B699LowIndex.I11TerminalData.Chunk161.w3_check, B699LowIndex.I11TerminalData.Chunk161.w4_check, B699LowIndex.I11TerminalData.Chunk161.w5_check, B699LowIndex.I11TerminalData.Chunk161.w6_check, B699LowIndex.I11TerminalData.Chunk161.w7_check, B699LowIndex.I11TerminalData.Chunk161.w8_check, B699LowIndex.I11TerminalData.Chunk161.w9_check, B699LowIndex.I11TerminalData.Chunk161.w10_check, Bool.and_self]

private theorem c0513_cover : coverCheck 13280 13290 c0513_intervals = true := by
  decide

private theorem c0513_sound : IntervalSound (13280, 13290) := by
  have hc : coverCheck 13280 13290 (witnessIntervals c0513_witnesses) = true := by
    rw [c0513_intervals_eq]
    exact c0513_cover
  exact interval_sound_of_witness_checks (witnesses := c0513_witnesses)
    (lo := 13280) (hi := 13290) c0513_checks hc

private def c0514_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk161.w11, B699LowIndex.I11TerminalData.Chunk161.w12]
private def c0514_intervals : List NatInterval := [(13312, 13319), (13320, 13321)]

private theorem c0514_intervals_eq :
    witnessIntervals c0514_witnesses = c0514_intervals := by
  rfl

private theorem c0514_checks : witnessesCheck c0514_witnesses = true := by
  simp only [witnessesCheck, c0514_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk161.w11_check, B699LowIndex.I11TerminalData.Chunk161.w12_check, Bool.and_self]

private theorem c0514_cover : coverCheck 13312 13321 c0514_intervals = true := by
  decide

private theorem c0514_sound : IntervalSound (13312, 13321) := by
  have hc : coverCheck 13312 13321 (witnessIntervals c0514_witnesses) = true := by
    rw [c0514_intervals_eq]
    exact c0514_cover
  exact interval_sound_of_witness_checks (witnesses := c0514_witnesses)
    (lo := 13312) (hi := 13321) c0514_checks hc

private def c0515_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk161.w13]
private def c0515_intervals : List NatInterval := [(13338, 13338)]

private theorem c0515_intervals_eq :
    witnessIntervals c0515_witnesses = c0515_intervals := by
  rfl

private theorem c0515_checks : witnessesCheck c0515_witnesses = true := by
  simp only [witnessesCheck, c0515_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk161.w13_check, Bool.and_self]

private theorem c0515_cover : coverCheck 13338 13338 c0515_intervals = true := by
  decide

private theorem c0515_sound : IntervalSound (13338, 13338) := by
  have hc : coverCheck 13338 13338 (witnessIntervals c0515_witnesses) = true := by
    rw [c0515_intervals_eq]
    exact c0515_cover
  exact interval_sound_of_witness_checks (witnesses := c0515_witnesses)
    (lo := 13338) (hi := 13338) c0515_checks hc

private def c0516_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk161.w14]
private def c0516_intervals : List NatInterval := [(13344, 13348)]

private theorem c0516_intervals_eq :
    witnessIntervals c0516_witnesses = c0516_intervals := by
  rfl

private theorem c0516_checks : witnessesCheck c0516_witnesses = true := by
  simp only [witnessesCheck, c0516_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk161.w14_check, Bool.and_self]

private theorem c0516_cover : coverCheck 13344 13348 c0516_intervals = true := by
  decide

private theorem c0516_sound : IntervalSound (13344, 13348) := by
  have hc : coverCheck 13344 13348 (witnessIntervals c0516_witnesses) = true := by
    rw [c0516_intervals_eq]
    exact c0516_cover
  exact interval_sound_of_witness_checks (witnesses := c0516_witnesses)
    (lo := 13344) (hi := 13348) c0516_checks hc

private def c0517_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk161.w15, B699LowIndex.I11TerminalData.Chunk162.w0, B699LowIndex.I11TerminalData.Chunk162.w1, B699LowIndex.I11TerminalData.Chunk162.w2, B699LowIndex.I11TerminalData.Chunk162.w3]
private def c0517_intervals : List NatInterval := [(13375, 13377), (13378, 13378), (13379, 13379), (13380, 13380), (13381, 13386)]

private theorem c0517_intervals_eq :
    witnessIntervals c0517_witnesses = c0517_intervals := by
  rfl

private theorem c0517_checks : witnessesCheck c0517_witnesses = true := by
  simp only [witnessesCheck, c0517_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk161.w15_check, B699LowIndex.I11TerminalData.Chunk162.w0_check, B699LowIndex.I11TerminalData.Chunk162.w1_check, B699LowIndex.I11TerminalData.Chunk162.w2_check, B699LowIndex.I11TerminalData.Chunk162.w3_check, Bool.and_self]

private theorem c0517_cover : coverCheck 13375 13386 c0517_intervals = true := by
  decide

private theorem c0517_sound : IntervalSound (13375, 13386) := by
  have hc : coverCheck 13375 13386 (witnessIntervals c0517_witnesses) = true := by
    rw [c0517_intervals_eq]
    exact c0517_cover
  exact interval_sound_of_witness_checks (witnesses := c0517_witnesses)
    (lo := 13375) (hi := 13386) c0517_checks hc

private def c0518_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk162.w4]
private def c0518_intervals : List NatInterval := [(13426, 13429)]

private theorem c0518_intervals_eq :
    witnessIntervals c0518_witnesses = c0518_intervals := by
  rfl

private theorem c0518_checks : witnessesCheck c0518_witnesses = true := by
  simp only [witnessesCheck, c0518_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk162.w4_check, Bool.and_self]

private theorem c0518_cover : coverCheck 13426 13429 c0518_intervals = true := by
  decide

private theorem c0518_sound : IntervalSound (13426, 13429) := by
  have hc : coverCheck 13426 13429 (witnessIntervals c0518_witnesses) = true := by
    rw [c0518_intervals_eq]
    exact c0518_cover
  exact interval_sound_of_witness_checks (witnesses := c0518_witnesses)
    (lo := 13426) (hi := 13429) c0518_checks hc

private def c0519_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk162.w5]
private def c0519_intervals : List NatInterval := [(13446, 13450)]

private theorem c0519_intervals_eq :
    witnessIntervals c0519_witnesses = c0519_intervals := by
  rfl

private theorem c0519_checks : witnessesCheck c0519_witnesses = true := by
  simp only [witnessesCheck, c0519_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk162.w5_check, Bool.and_self]

private theorem c0519_cover : coverCheck 13446 13450 c0519_intervals = true := by
  decide

private theorem c0519_sound : IntervalSound (13446, 13450) := by
  have hc : coverCheck 13446 13450 (witnessIntervals c0519_witnesses) = true := by
    rw [c0519_intervals_eq]
    exact c0519_cover
  exact interval_sound_of_witness_checks (witnesses := c0519_witnesses)
    (lo := 13446) (hi := 13450) c0519_checks hc

private def c0520_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk162.w6, B699LowIndex.I11TerminalData.Chunk162.w7]
private def c0520_intervals : List NatInterval := [(13473, 13479), (13480, 13483)]

private theorem c0520_intervals_eq :
    witnessIntervals c0520_witnesses = c0520_intervals := by
  rfl

private theorem c0520_checks : witnessesCheck c0520_witnesses = true := by
  simp only [witnessesCheck, c0520_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk162.w6_check, B699LowIndex.I11TerminalData.Chunk162.w7_check, Bool.and_self]

private theorem c0520_cover : coverCheck 13473 13483 c0520_intervals = true := by
  decide

private theorem c0520_sound : IntervalSound (13473, 13483) := by
  have hc : coverCheck 13473 13483 (witnessIntervals c0520_witnesses) = true := by
    rw [c0520_intervals_eq]
    exact c0520_cover
  exact interval_sound_of_witness_checks (witnesses := c0520_witnesses)
    (lo := 13473) (hi := 13483) c0520_checks hc

private def c0521_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk162.w8, B699LowIndex.I11TerminalData.Chunk162.w9]
private def c0521_intervals : List NatInterval := [(13500, 13509), (13510, 13510)]

private theorem c0521_intervals_eq :
    witnessIntervals c0521_witnesses = c0521_intervals := by
  rfl

private theorem c0521_checks : witnessesCheck c0521_witnesses = true := by
  simp only [witnessesCheck, c0521_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk162.w8_check, B699LowIndex.I11TerminalData.Chunk162.w9_check, Bool.and_self]

private theorem c0521_cover : coverCheck 13500 13510 c0521_intervals = true := by
  decide

private theorem c0521_sound : IntervalSound (13500, 13510) := by
  have hc : coverCheck 13500 13510 (witnessIntervals c0521_witnesses) = true := by
    rw [c0521_intervals_eq]
    exact c0521_cover
  exact interval_sound_of_witness_checks (witnesses := c0521_witnesses)
    (lo := 13500) (hi := 13510) c0521_checks hc

private def c0522_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk162.w10, B699LowIndex.I11TerminalData.Chunk162.w11]
private def c0522_intervals : List NatInterval := [(13527, 13533), (13534, 13534)]

private theorem c0522_intervals_eq :
    witnessIntervals c0522_witnesses = c0522_intervals := by
  rfl

private theorem c0522_checks : witnessesCheck c0522_witnesses = true := by
  simp only [witnessesCheck, c0522_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk162.w10_check, B699LowIndex.I11TerminalData.Chunk162.w11_check, Bool.and_self]

private theorem c0522_cover : coverCheck 13527 13534 c0522_intervals = true := by
  decide

private theorem c0522_sound : IntervalSound (13527, 13534) := by
  have hc : coverCheck 13527 13534 (witnessIntervals c0522_witnesses) = true := by
    rw [c0522_intervals_eq]
    exact c0522_cover
  exact interval_sound_of_witness_checks (witnesses := c0522_witnesses)
    (lo := 13527) (hi := 13534) c0522_checks hc

private def c0523_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk162.w12, B699LowIndex.I11TerminalData.Chunk162.w13]
private def c0523_intervals : List NatInterval := [(13536, 13536), (13537, 13537)]

private theorem c0523_intervals_eq :
    witnessIntervals c0523_witnesses = c0523_intervals := by
  rfl

private theorem c0523_checks : witnessesCheck c0523_witnesses = true := by
  simp only [witnessesCheck, c0523_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk162.w12_check, B699LowIndex.I11TerminalData.Chunk162.w13_check, Bool.and_self]

private theorem c0523_cover : coverCheck 13536 13537 c0523_intervals = true := by
  decide

private theorem c0523_sound : IntervalSound (13536, 13537) := by
  have hc : coverCheck 13536 13537 (witnessIntervals c0523_witnesses) = true := by
    rw [c0523_intervals_eq]
    exact c0523_cover
  exact interval_sound_of_witness_checks (witnesses := c0523_witnesses)
    (lo := 13536) (hi := 13537) c0523_checks hc

private def c0524_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk162.w14, B699LowIndex.I11TerminalData.Chunk162.w15]
private def c0524_intervals : List NatInterval := [(13573, 13577), (13578, 13578)]

private theorem c0524_intervals_eq :
    witnessIntervals c0524_witnesses = c0524_intervals := by
  rfl

private theorem c0524_checks : witnessesCheck c0524_witnesses = true := by
  simp only [witnessesCheck, c0524_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk162.w14_check, B699LowIndex.I11TerminalData.Chunk162.w15_check, Bool.and_self]

private theorem c0524_cover : coverCheck 13573 13578 c0524_intervals = true := by
  decide

private theorem c0524_sound : IntervalSound (13573, 13578) := by
  have hc : coverCheck 13573 13578 (witnessIntervals c0524_witnesses) = true := by
    rw [c0524_intervals_eq]
    exact c0524_cover
  exact interval_sound_of_witness_checks (witnesses := c0524_witnesses)
    (lo := 13573) (hi := 13578) c0524_checks hc

private def c0525_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk163.w0, B699LowIndex.I11TerminalData.Chunk163.w1, B699LowIndex.I11TerminalData.Chunk163.w2]
private def c0525_intervals : List NatInterval := [(13608, 13608), (13609, 13609), (13610, 13610)]

private theorem c0525_intervals_eq :
    witnessIntervals c0525_witnesses = c0525_intervals := by
  rfl

private theorem c0525_checks : witnessesCheck c0525_witnesses = true := by
  simp only [witnessesCheck, c0525_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk163.w0_check, B699LowIndex.I11TerminalData.Chunk163.w1_check, B699LowIndex.I11TerminalData.Chunk163.w2_check, Bool.and_self]

private theorem c0525_cover : coverCheck 13608 13610 c0525_intervals = true := by
  decide

private theorem c0525_sound : IntervalSound (13608, 13610) := by
  have hc : coverCheck 13608 13610 (witnessIntervals c0525_witnesses) = true := by
    rw [c0525_intervals_eq]
    exact c0525_cover
  exact interval_sound_of_witness_checks (witnesses := c0525_witnesses)
    (lo := 13608) (hi := 13610) c0525_checks hc

private def c0526_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk163.w3, B699LowIndex.I11TerminalData.Chunk163.w4]
private def c0526_intervals : List NatInterval := [(13625, 13629), (13630, 13635)]

private theorem c0526_intervals_eq :
    witnessIntervals c0526_witnesses = c0526_intervals := by
  rfl

private theorem c0526_checks : witnessesCheck c0526_witnesses = true := by
  simp only [witnessesCheck, c0526_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk163.w3_check, B699LowIndex.I11TerminalData.Chunk163.w4_check, Bool.and_self]

private theorem c0526_cover : coverCheck 13625 13635 c0526_intervals = true := by
  decide

private theorem c0526_sound : IntervalSound (13625, 13635) := by
  have hc : coverCheck 13625 13635 (witnessIntervals c0526_witnesses) = true := by
    rw [c0526_intervals_eq]
    exact c0526_cover
  exact interval_sound_of_witness_checks (witnesses := c0526_witnesses)
    (lo := 13625) (hi := 13635) c0526_checks hc

private def c0527_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk163.w5]
private def c0527_intervals : List NatInterval := [(13671, 13674)]

private theorem c0527_intervals_eq :
    witnessIntervals c0527_witnesses = c0527_intervals := by
  rfl

private theorem c0527_checks : witnessesCheck c0527_witnesses = true := by
  simp only [witnessesCheck, c0527_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk163.w5_check, Bool.and_self]

private theorem c0527_cover : coverCheck 13671 13674 c0527_intervals = true := by
  decide

private theorem c0527_sound : IntervalSound (13671, 13674) := by
  have hc : coverCheck 13671 13674 (witnessIntervals c0527_witnesses) = true := by
    rw [c0527_intervals_eq]
    exact c0527_cover
  exact interval_sound_of_witness_checks (witnesses := c0527_witnesses)
    (lo := 13671) (hi := 13674) c0527_checks hc

def intervals : List NatInterval := [(13250, 13260), (13280, 13290), (13312, 13321), (13338, 13338), (13344, 13348), (13375, 13386), (13426, 13429), (13446, 13450), (13473, 13483), (13500, 13510), (13527, 13534), (13536, 13537), (13573, 13578), (13608, 13610), (13625, 13635), (13671, 13674)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (13250, 13260)) (intervals := [(13280, 13290), (13312, 13321), (13338, 13338), (13344, 13348), (13375, 13386), (13426, 13429), (13446, 13450), (13473, 13483), (13500, 13510), (13527, 13534), (13536, 13537), (13573, 13578), (13608, 13610), (13625, 13635), (13671, 13674)]) c0512_sound (intervals_sound_cons (I := (13280, 13290)) (intervals := [(13312, 13321), (13338, 13338), (13344, 13348), (13375, 13386), (13426, 13429), (13446, 13450), (13473, 13483), (13500, 13510), (13527, 13534), (13536, 13537), (13573, 13578), (13608, 13610), (13625, 13635), (13671, 13674)]) c0513_sound (intervals_sound_cons (I := (13312, 13321)) (intervals := [(13338, 13338), (13344, 13348), (13375, 13386), (13426, 13429), (13446, 13450), (13473, 13483), (13500, 13510), (13527, 13534), (13536, 13537), (13573, 13578), (13608, 13610), (13625, 13635), (13671, 13674)]) c0514_sound (intervals_sound_cons (I := (13338, 13338)) (intervals := [(13344, 13348), (13375, 13386), (13426, 13429), (13446, 13450), (13473, 13483), (13500, 13510), (13527, 13534), (13536, 13537), (13573, 13578), (13608, 13610), (13625, 13635), (13671, 13674)]) c0515_sound (intervals_sound_cons (I := (13344, 13348)) (intervals := [(13375, 13386), (13426, 13429), (13446, 13450), (13473, 13483), (13500, 13510), (13527, 13534), (13536, 13537), (13573, 13578), (13608, 13610), (13625, 13635), (13671, 13674)]) c0516_sound (intervals_sound_cons (I := (13375, 13386)) (intervals := [(13426, 13429), (13446, 13450), (13473, 13483), (13500, 13510), (13527, 13534), (13536, 13537), (13573, 13578), (13608, 13610), (13625, 13635), (13671, 13674)]) c0517_sound (intervals_sound_cons (I := (13426, 13429)) (intervals := [(13446, 13450), (13473, 13483), (13500, 13510), (13527, 13534), (13536, 13537), (13573, 13578), (13608, 13610), (13625, 13635), (13671, 13674)]) c0518_sound (intervals_sound_cons (I := (13446, 13450)) (intervals := [(13473, 13483), (13500, 13510), (13527, 13534), (13536, 13537), (13573, 13578), (13608, 13610), (13625, 13635), (13671, 13674)]) c0519_sound (intervals_sound_cons (I := (13473, 13483)) (intervals := [(13500, 13510), (13527, 13534), (13536, 13537), (13573, 13578), (13608, 13610), (13625, 13635), (13671, 13674)]) c0520_sound (intervals_sound_cons (I := (13500, 13510)) (intervals := [(13527, 13534), (13536, 13537), (13573, 13578), (13608, 13610), (13625, 13635), (13671, 13674)]) c0521_sound (intervals_sound_cons (I := (13527, 13534)) (intervals := [(13536, 13537), (13573, 13578), (13608, 13610), (13625, 13635), (13671, 13674)]) c0522_sound (intervals_sound_cons (I := (13536, 13537)) (intervals := [(13573, 13578), (13608, 13610), (13625, 13635), (13671, 13674)]) c0523_sound (intervals_sound_cons (I := (13573, 13578)) (intervals := [(13608, 13610), (13625, 13635), (13671, 13674)]) c0524_sound (intervals_sound_cons (I := (13608, 13610)) (intervals := [(13625, 13635), (13671, 13674)]) c0525_sound (intervals_sound_cons (I := (13625, 13635)) (intervals := [(13671, 13674)]) c0526_sound (intervals_sound_cons (I := (13671, 13674)) (intervals := []) c0527_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G032
