import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk155
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk156
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk157
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk158

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G030
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0480_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk155.w11, B699LowIndex.I11TerminalData.Chunk155.w12]
private def c0480_intervals : List NatInterval := [(12420, 12423), (12424, 12430)]

private theorem c0480_intervals_eq :
    witnessIntervals c0480_witnesses = c0480_intervals := by
  rfl

private theorem c0480_checks : witnessesCheck c0480_witnesses = true := by
  simp only [witnessesCheck, c0480_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk155.w11_check, B699LowIndex.I11TerminalData.Chunk155.w12_check, Bool.and_self]

private theorem c0480_cover : coverCheck 12420 12430 c0480_intervals = true := by
  decide

private theorem c0480_sound : IntervalSound (12420, 12430) := by
  have hc : coverCheck 12420 12430 (witnessIntervals c0480_witnesses) = true := by
    rw [c0480_intervals_eq]
    exact c0480_cover
  exact interval_sound_of_witness_checks (witnesses := c0480_witnesses)
    (lo := 12420) (hi := 12430) c0480_checks hc

private def c0481_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk155.w13, B699LowIndex.I11TerminalData.Chunk155.w14, B699LowIndex.I11TerminalData.Chunk155.w15, B699LowIndex.I11TerminalData.Chunk156.w0, B699LowIndex.I11TerminalData.Chunk156.w1]
private def c0481_intervals : List NatInterval := [(12447, 12447), (12448, 12448), (12449, 12449), (12450, 12450), (12451, 12458)]

private theorem c0481_intervals_eq :
    witnessIntervals c0481_witnesses = c0481_intervals := by
  rfl

private theorem c0481_checks : witnessesCheck c0481_witnesses = true := by
  simp only [witnessesCheck, c0481_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk155.w13_check, B699LowIndex.I11TerminalData.Chunk155.w14_check, B699LowIndex.I11TerminalData.Chunk155.w15_check, B699LowIndex.I11TerminalData.Chunk156.w0_check, B699LowIndex.I11TerminalData.Chunk156.w1_check, Bool.and_self]

private theorem c0481_cover : coverCheck 12447 12458 c0481_intervals = true := by
  decide

private theorem c0481_sound : IntervalSound (12447, 12458) := by
  have hc : coverCheck 12447 12458 (witnessIntervals c0481_witnesses) = true := by
    rw [c0481_intervals_eq]
    exact c0481_cover
  exact interval_sound_of_witness_checks (witnesses := c0481_witnesses)
    (lo := 12447) (hi := 12458) c0481_checks hc

private def c0482_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk156.w2, B699LowIndex.I11TerminalData.Chunk156.w3]
private def c0482_intervals : List NatInterval := [(12475, 12483), (12484, 12485)]

private theorem c0482_intervals_eq :
    witnessIntervals c0482_witnesses = c0482_intervals := by
  rfl

private theorem c0482_checks : witnessesCheck c0482_witnesses = true := by
  simp only [witnessesCheck, c0482_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk156.w2_check, B699LowIndex.I11TerminalData.Chunk156.w3_check, Bool.and_self]

private theorem c0482_cover : coverCheck 12475 12485 c0482_intervals = true := by
  decide

private theorem c0482_sound : IntervalSound (12475, 12485) := by
  have hc : coverCheck 12475 12485 (witnessIntervals c0482_witnesses) = true := by
    rw [c0482_intervals_eq]
    exact c0482_cover
  exact interval_sound_of_witness_checks (witnesses := c0482_witnesses)
    (lo := 12475) (hi := 12485) c0482_checks hc

private def c0483_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk156.w4, B699LowIndex.I11TerminalData.Chunk156.w5]
private def c0483_intervals : List NatInterval := [(12500, 12507), (12508, 12510)]

private theorem c0483_intervals_eq :
    witnessIntervals c0483_witnesses = c0483_intervals := by
  rfl

private theorem c0483_checks : witnessesCheck c0483_witnesses = true := by
  simp only [witnessesCheck, c0483_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk156.w4_check, B699LowIndex.I11TerminalData.Chunk156.w5_check, Bool.and_self]

private theorem c0483_cover : coverCheck 12500 12510 c0483_intervals = true := by
  decide

private theorem c0483_sound : IntervalSound (12500, 12510) := by
  have hc : coverCheck 12500 12510 (witnessIntervals c0483_witnesses) = true := by
    rw [c0483_intervals_eq]
    exact c0483_cover
  exact interval_sound_of_witness_checks (witnesses := c0483_witnesses)
    (lo := 12500) (hi := 12510) c0483_checks hc

private def c0484_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk156.w6, B699LowIndex.I11TerminalData.Chunk156.w7]
private def c0484_intervals : List NatInterval := [(12544, 12551), (12552, 12554)]

private theorem c0484_intervals_eq :
    witnessIntervals c0484_witnesses = c0484_intervals := by
  rfl

private theorem c0484_checks : witnessesCheck c0484_witnesses = true := by
  simp only [witnessesCheck, c0484_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk156.w6_check, B699LowIndex.I11TerminalData.Chunk156.w7_check, Bool.and_self]

private theorem c0484_cover : coverCheck 12544 12554 c0484_intervals = true := by
  decide

private theorem c0484_sound : IntervalSound (12544, 12554) := by
  have hc : coverCheck 12544 12554 (witnessIntervals c0484_witnesses) = true := by
    rw [c0484_intervals_eq]
    exact c0484_cover
  exact interval_sound_of_witness_checks (witnesses := c0484_witnesses)
    (lo := 12544) (hi := 12554) c0484_checks hc

private def c0485_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk156.w8]
private def c0485_intervals : List NatInterval := [(12582, 12586)]

private theorem c0485_intervals_eq :
    witnessIntervals c0485_witnesses = c0485_intervals := by
  rfl

private theorem c0485_checks : witnessesCheck c0485_witnesses = true := by
  simp only [witnessesCheck, c0485_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk156.w8_check, Bool.and_self]

private theorem c0485_cover : coverCheck 12582 12586 c0485_intervals = true := by
  decide

private theorem c0485_sound : IntervalSound (12582, 12586) := by
  have hc : coverCheck 12582 12586 (witnessIntervals c0485_witnesses) = true := by
    rw [c0485_intervals_eq]
    exact c0485_cover
  exact interval_sound_of_witness_checks (witnesses := c0485_witnesses)
    (lo := 12582) (hi := 12586) c0485_checks hc

private def c0486_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk156.w9, B699LowIndex.I11TerminalData.Chunk156.w10]
private def c0486_intervals : List NatInterval := [(12609, 12611), (12612, 12618)]

private theorem c0486_intervals_eq :
    witnessIntervals c0486_witnesses = c0486_intervals := by
  rfl

private theorem c0486_checks : witnessesCheck c0486_witnesses = true := by
  simp only [witnessesCheck, c0486_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk156.w9_check, B699LowIndex.I11TerminalData.Chunk156.w10_check, Bool.and_self]

private theorem c0486_cover : coverCheck 12609 12618 c0486_intervals = true := by
  decide

private theorem c0486_sound : IntervalSound (12609, 12618) := by
  have hc : coverCheck 12609 12618 (witnessIntervals c0486_witnesses) = true := by
    rw [c0486_intervals_eq]
    exact c0486_cover
  exact interval_sound_of_witness_checks (witnesses := c0486_witnesses)
    (lo := 12609) (hi := 12618) c0486_checks hc

private def c0487_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk156.w11, B699LowIndex.I11TerminalData.Chunk156.w12]
private def c0487_intervals : List NatInterval := [(12640, 12647), (12648, 12650)]

private theorem c0487_intervals_eq :
    witnessIntervals c0487_witnesses = c0487_intervals := by
  rfl

private theorem c0487_checks : witnessesCheck c0487_witnesses = true := by
  simp only [witnessesCheck, c0487_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk156.w11_check, B699LowIndex.I11TerminalData.Chunk156.w12_check, Bool.and_self]

private theorem c0487_cover : coverCheck 12640 12650 c0487_intervals = true := by
  decide

private theorem c0487_sound : IntervalSound (12640, 12650) := by
  have hc : coverCheck 12640 12650 (witnessIntervals c0487_witnesses) = true := by
    rw [c0487_intervals_eq]
    exact c0487_cover
  exact interval_sound_of_witness_checks (witnesses := c0487_witnesses)
    (lo := 12640) (hi := 12650) c0487_checks hc

private def c0488_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk156.w13]
private def c0488_intervals : List NatInterval := [(12672, 12673)]

private theorem c0488_intervals_eq :
    witnessIntervals c0488_witnesses = c0488_intervals := by
  rfl

private theorem c0488_checks : witnessesCheck c0488_witnesses = true := by
  simp only [witnessesCheck, c0488_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk156.w13_check, Bool.and_self]

private theorem c0488_cover : coverCheck 12672 12673 c0488_intervals = true := by
  decide

private theorem c0488_sound : IntervalSound (12672, 12673) := by
  have hc : coverCheck 12672 12673 (witnessIntervals c0488_witnesses) = true := by
    rw [c0488_intervals_eq]
    exact c0488_cover
  exact interval_sound_of_witness_checks (witnesses := c0488_witnesses)
    (lo := 12672) (hi := 12673) c0488_checks hc

private def c0489_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk156.w14, B699LowIndex.I11TerminalData.Chunk156.w15]
private def c0489_intervals : List NatInterval := [(12691, 12699), (12700, 12700)]

private theorem c0489_intervals_eq :
    witnessIntervals c0489_witnesses = c0489_intervals := by
  rfl

private theorem c0489_checks : witnessesCheck c0489_witnesses = true := by
  simp only [witnessesCheck, c0489_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk156.w14_check, B699LowIndex.I11TerminalData.Chunk156.w15_check, Bool.and_self]

private theorem c0489_cover : coverCheck 12691 12700 c0489_intervals = true := by
  decide

private theorem c0489_sound : IntervalSound (12691, 12700) := by
  have hc : coverCheck 12691 12700 (witnessIntervals c0489_witnesses) = true := by
    rw [c0489_intervals_eq]
    exact c0489_cover
  exact interval_sound_of_witness_checks (witnesses := c0489_witnesses)
    (lo := 12691) (hi := 12700) c0489_checks hc

private def c0490_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk157.w0, B699LowIndex.I11TerminalData.Chunk157.w1, B699LowIndex.I11TerminalData.Chunk157.w2]
private def c0490_intervals : List NatInterval := [(12740, 12749), (12750, 12753), (12754, 12754)]

private theorem c0490_intervals_eq :
    witnessIntervals c0490_witnesses = c0490_intervals := by
  rfl

private theorem c0490_checks : witnessesCheck c0490_witnesses = true := by
  simp only [witnessesCheck, c0490_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk157.w0_check, B699LowIndex.I11TerminalData.Chunk157.w1_check, B699LowIndex.I11TerminalData.Chunk157.w2_check, Bool.and_self]

private theorem c0490_cover : coverCheck 12740 12754 c0490_intervals = true := by
  decide

private theorem c0490_sound : IntervalSound (12740, 12754) := by
  have hc : coverCheck 12740 12754 (witnessIntervals c0490_witnesses) = true := by
    rw [c0490_intervals_eq]
    exact c0490_cover
  exact interval_sound_of_witness_checks (witnesses := c0490_witnesses)
    (lo := 12740) (hi := 12754) c0490_checks hc

private def c0491_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk157.w3, B699LowIndex.I11TerminalData.Chunk157.w4, B699LowIndex.I11TerminalData.Chunk157.w5, B699LowIndex.I11TerminalData.Chunk157.w6, B699LowIndex.I11TerminalData.Chunk157.w7, B699LowIndex.I11TerminalData.Chunk157.w8]
private def c0491_intervals : List NatInterval := [(12771, 12773), (12774, 12774), (12775, 12775), (12776, 12776), (12777, 12777), (12778, 12778)]

private theorem c0491_intervals_eq :
    witnessIntervals c0491_witnesses = c0491_intervals := by
  rfl

private theorem c0491_checks : witnessesCheck c0491_witnesses = true := by
  simp only [witnessesCheck, c0491_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk157.w3_check, B699LowIndex.I11TerminalData.Chunk157.w4_check, B699LowIndex.I11TerminalData.Chunk157.w5_check, B699LowIndex.I11TerminalData.Chunk157.w6_check, B699LowIndex.I11TerminalData.Chunk157.w7_check, B699LowIndex.I11TerminalData.Chunk157.w8_check, Bool.and_self]

private theorem c0491_cover : coverCheck 12771 12778 c0491_intervals = true := by
  decide

private theorem c0491_sound : IntervalSound (12771, 12778) := by
  have hc : coverCheck 12771 12778 (witnessIntervals c0491_witnesses) = true := by
    rw [c0491_intervals_eq]
    exact c0491_cover
  exact interval_sound_of_witness_checks (witnesses := c0491_witnesses)
    (lo := 12771) (hi := 12778) c0491_checks hc

private def c0492_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk157.w9, B699LowIndex.I11TerminalData.Chunk157.w10]
private def c0492_intervals : List NatInterval := [(12798, 12801), (12802, 12808)]

private theorem c0492_intervals_eq :
    witnessIntervals c0492_witnesses = c0492_intervals := by
  rfl

private theorem c0492_checks : witnessesCheck c0492_witnesses = true := by
  simp only [witnessesCheck, c0492_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk157.w9_check, B699LowIndex.I11TerminalData.Chunk157.w10_check, Bool.and_self]

private theorem c0492_cover : coverCheck 12798 12808 c0492_intervals = true := by
  decide

private theorem c0492_sound : IntervalSound (12798, 12808) := by
  have hc : coverCheck 12798 12808 (witnessIntervals c0492_witnesses) = true := by
    rw [c0492_intervals_eq]
    exact c0492_cover
  exact interval_sound_of_witness_checks (witnesses := c0492_witnesses)
    (lo := 12798) (hi := 12808) c0492_checks hc

private def c0493_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk157.w11]
private def c0493_intervals : List NatInterval := [(12832, 12835)]

private theorem c0493_intervals_eq :
    witnessIntervals c0493_witnesses = c0493_intervals := by
  rfl

private theorem c0493_checks : witnessesCheck c0493_witnesses = true := by
  simp only [witnessesCheck, c0493_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk157.w11_check, Bool.and_self]

private theorem c0493_cover : coverCheck 12832 12835 c0493_intervals = true := by
  decide

private theorem c0493_sound : IntervalSound (12832, 12835) := by
  have hc : coverCheck 12832 12835 (witnessIntervals c0493_witnesses) = true := by
    rw [c0493_intervals_eq]
    exact c0493_cover
  exact interval_sound_of_witness_checks (witnesses := c0493_witnesses)
    (lo := 12832) (hi := 12835) c0493_checks hc

private def c0494_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk157.w12, B699LowIndex.I11TerminalData.Chunk157.w13, B699LowIndex.I11TerminalData.Chunk157.w14]
private def c0494_intervals : List NatInterval := [(12838, 12839), (12840, 12840), (12841, 12842)]

private theorem c0494_intervals_eq :
    witnessIntervals c0494_witnesses = c0494_intervals := by
  rfl

private theorem c0494_checks : witnessesCheck c0494_witnesses = true := by
  simp only [witnessesCheck, c0494_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk157.w12_check, B699LowIndex.I11TerminalData.Chunk157.w13_check, B699LowIndex.I11TerminalData.Chunk157.w14_check, Bool.and_self]

private theorem c0494_cover : coverCheck 12838 12842 c0494_intervals = true := by
  decide

private theorem c0494_sound : IntervalSound (12838, 12842) := by
  have hc : coverCheck 12838 12842 (witnessIntervals c0494_witnesses) = true := by
    rw [c0494_intervals_eq]
    exact c0494_cover
  exact interval_sound_of_witness_checks (witnesses := c0494_witnesses)
    (lo := 12838) (hi := 12842) c0494_checks hc

private def c0495_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk157.w15, B699LowIndex.I11TerminalData.Chunk158.w0, B699LowIndex.I11TerminalData.Chunk158.w1, B699LowIndex.I11TerminalData.Chunk158.w2, B699LowIndex.I11TerminalData.Chunk158.w3, B699LowIndex.I11TerminalData.Chunk158.w4, B699LowIndex.I11TerminalData.Chunk158.w5]
private def c0495_intervals : List NatInterval := [(12879, 12879), (12880, 12880), (12881, 12881), (12882, 12882), (12883, 12883), (12884, 12884), (12885, 12885)]

private theorem c0495_intervals_eq :
    witnessIntervals c0495_witnesses = c0495_intervals := by
  rfl

private theorem c0495_checks : witnessesCheck c0495_witnesses = true := by
  simp only [witnessesCheck, c0495_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk157.w15_check, B699LowIndex.I11TerminalData.Chunk158.w0_check, B699LowIndex.I11TerminalData.Chunk158.w1_check, B699LowIndex.I11TerminalData.Chunk158.w2_check, B699LowIndex.I11TerminalData.Chunk158.w3_check, B699LowIndex.I11TerminalData.Chunk158.w4_check, B699LowIndex.I11TerminalData.Chunk158.w5_check, Bool.and_self]

private theorem c0495_cover : coverCheck 12879 12885 c0495_intervals = true := by
  decide

private theorem c0495_sound : IntervalSound (12879, 12885) := by
  have hc : coverCheck 12879 12885 (witnessIntervals c0495_witnesses) = true := by
    rw [c0495_intervals_eq]
    exact c0495_cover
  exact interval_sound_of_witness_checks (witnesses := c0495_witnesses)
    (lo := 12879) (hi := 12885) c0495_checks hc

def intervals : List NatInterval := [(12420, 12430), (12447, 12458), (12475, 12485), (12500, 12510), (12544, 12554), (12582, 12586), (12609, 12618), (12640, 12650), (12672, 12673), (12691, 12700), (12740, 12754), (12771, 12778), (12798, 12808), (12832, 12835), (12838, 12842), (12879, 12885)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (12420, 12430)) (intervals := [(12447, 12458), (12475, 12485), (12500, 12510), (12544, 12554), (12582, 12586), (12609, 12618), (12640, 12650), (12672, 12673), (12691, 12700), (12740, 12754), (12771, 12778), (12798, 12808), (12832, 12835), (12838, 12842), (12879, 12885)]) c0480_sound (intervals_sound_cons (I := (12447, 12458)) (intervals := [(12475, 12485), (12500, 12510), (12544, 12554), (12582, 12586), (12609, 12618), (12640, 12650), (12672, 12673), (12691, 12700), (12740, 12754), (12771, 12778), (12798, 12808), (12832, 12835), (12838, 12842), (12879, 12885)]) c0481_sound (intervals_sound_cons (I := (12475, 12485)) (intervals := [(12500, 12510), (12544, 12554), (12582, 12586), (12609, 12618), (12640, 12650), (12672, 12673), (12691, 12700), (12740, 12754), (12771, 12778), (12798, 12808), (12832, 12835), (12838, 12842), (12879, 12885)]) c0482_sound (intervals_sound_cons (I := (12500, 12510)) (intervals := [(12544, 12554), (12582, 12586), (12609, 12618), (12640, 12650), (12672, 12673), (12691, 12700), (12740, 12754), (12771, 12778), (12798, 12808), (12832, 12835), (12838, 12842), (12879, 12885)]) c0483_sound (intervals_sound_cons (I := (12544, 12554)) (intervals := [(12582, 12586), (12609, 12618), (12640, 12650), (12672, 12673), (12691, 12700), (12740, 12754), (12771, 12778), (12798, 12808), (12832, 12835), (12838, 12842), (12879, 12885)]) c0484_sound (intervals_sound_cons (I := (12582, 12586)) (intervals := [(12609, 12618), (12640, 12650), (12672, 12673), (12691, 12700), (12740, 12754), (12771, 12778), (12798, 12808), (12832, 12835), (12838, 12842), (12879, 12885)]) c0485_sound (intervals_sound_cons (I := (12609, 12618)) (intervals := [(12640, 12650), (12672, 12673), (12691, 12700), (12740, 12754), (12771, 12778), (12798, 12808), (12832, 12835), (12838, 12842), (12879, 12885)]) c0486_sound (intervals_sound_cons (I := (12640, 12650)) (intervals := [(12672, 12673), (12691, 12700), (12740, 12754), (12771, 12778), (12798, 12808), (12832, 12835), (12838, 12842), (12879, 12885)]) c0487_sound (intervals_sound_cons (I := (12672, 12673)) (intervals := [(12691, 12700), (12740, 12754), (12771, 12778), (12798, 12808), (12832, 12835), (12838, 12842), (12879, 12885)]) c0488_sound (intervals_sound_cons (I := (12691, 12700)) (intervals := [(12740, 12754), (12771, 12778), (12798, 12808), (12832, 12835), (12838, 12842), (12879, 12885)]) c0489_sound (intervals_sound_cons (I := (12740, 12754)) (intervals := [(12771, 12778), (12798, 12808), (12832, 12835), (12838, 12842), (12879, 12885)]) c0490_sound (intervals_sound_cons (I := (12771, 12778)) (intervals := [(12798, 12808), (12832, 12835), (12838, 12842), (12879, 12885)]) c0491_sound (intervals_sound_cons (I := (12798, 12808)) (intervals := [(12832, 12835), (12838, 12842), (12879, 12885)]) c0492_sound (intervals_sound_cons (I := (12832, 12835)) (intervals := [(12838, 12842), (12879, 12885)]) c0493_sound (intervals_sound_cons (I := (12838, 12842)) (intervals := [(12879, 12885)]) c0494_sound (intervals_sound_cons (I := (12879, 12885)) (intervals := []) c0495_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G030
