import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk146
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk147
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk148
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk149
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk150

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G027
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0432_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk146.w12]
private def c0432_intervals : List NatInterval := [(11610, 11610)]

private theorem c0432_intervals_eq :
    witnessIntervals c0432_witnesses = c0432_intervals := by
  rfl

private theorem c0432_checks : witnessesCheck c0432_witnesses = true := by
  simp only [witnessesCheck, c0432_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk146.w12_check, Bool.and_self]

private theorem c0432_cover : coverCheck 11610 11610 c0432_intervals = true := by
  decide

private theorem c0432_sound : IntervalSound (11610, 11610) := by
  have hc : coverCheck 11610 11610 (witnessIntervals c0432_witnesses) = true := by
    rw [c0432_intervals_eq]
    exact c0432_cover
  exact interval_sound_of_witness_checks (witnesses := c0432_witnesses)
    (lo := 11610) (hi := 11610) c0432_checks hc

private def c0433_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk146.w13, B699LowIndex.I11TerminalData.Chunk146.w14, B699LowIndex.I11TerminalData.Chunk146.w15, B699LowIndex.I11TerminalData.Chunk147.w0, B699LowIndex.I11TerminalData.Chunk147.w1]
private def c0433_intervals : List NatInterval := [(11613, 11613), (11614, 11614), (11615, 11615), (11616, 11616), (11617, 11623)]

private theorem c0433_intervals_eq :
    witnessIntervals c0433_witnesses = c0433_intervals := by
  rfl

private theorem c0433_checks : witnessesCheck c0433_witnesses = true := by
  simp only [witnessesCheck, c0433_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk146.w13_check, B699LowIndex.I11TerminalData.Chunk146.w14_check, B699LowIndex.I11TerminalData.Chunk146.w15_check, B699LowIndex.I11TerminalData.Chunk147.w0_check, B699LowIndex.I11TerminalData.Chunk147.w1_check, Bool.and_self]

private theorem c0433_cover : coverCheck 11613 11623 c0433_intervals = true := by
  decide

private theorem c0433_sound : IntervalSound (11613, 11623) := by
  have hc : coverCheck 11613 11623 (witnessIntervals c0433_witnesses) = true := by
    rw [c0433_intervals_eq]
    exact c0433_cover
  exact interval_sound_of_witness_checks (witnesses := c0433_witnesses)
    (lo := 11613) (hi := 11623) c0433_checks hc

private def c0434_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk147.w2]
private def c0434_intervals : List NatInterval := [(11625, 11626)]

private theorem c0434_intervals_eq :
    witnessIntervals c0434_witnesses = c0434_intervals := by
  rfl

private theorem c0434_checks : witnessesCheck c0434_witnesses = true := by
  simp only [witnessesCheck, c0434_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk147.w2_check, Bool.and_self]

private theorem c0434_cover : coverCheck 11625 11626 c0434_intervals = true := by
  decide

private theorem c0434_sound : IntervalSound (11625, 11626) := by
  have hc : coverCheck 11625 11626 (witnessIntervals c0434_witnesses) = true := by
    rw [c0434_intervals_eq]
    exact c0434_cover
  exact interval_sound_of_witness_checks (witnesses := c0434_witnesses)
    (lo := 11625) (hi := 11626) c0434_checks hc

private def c0435_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk147.w3, B699LowIndex.I11TerminalData.Chunk147.w4, B699LowIndex.I11TerminalData.Chunk147.w5, B699LowIndex.I11TerminalData.Chunk147.w6, B699LowIndex.I11TerminalData.Chunk147.w7, B699LowIndex.I11TerminalData.Chunk147.w8, B699LowIndex.I11TerminalData.Chunk147.w9, B699LowIndex.I11TerminalData.Chunk147.w10]
private def c0435_intervals : List NatInterval := [(11650, 11650), (11651, 11651), (11652, 11652), (11653, 11653), (11654, 11654), (11655, 11655), (11656, 11656), (11657, 11658)]

private theorem c0435_intervals_eq :
    witnessIntervals c0435_witnesses = c0435_intervals := by
  rfl

private theorem c0435_checks : witnessesCheck c0435_witnesses = true := by
  simp only [witnessesCheck, c0435_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk147.w3_check, B699LowIndex.I11TerminalData.Chunk147.w4_check, B699LowIndex.I11TerminalData.Chunk147.w5_check, B699LowIndex.I11TerminalData.Chunk147.w6_check, B699LowIndex.I11TerminalData.Chunk147.w7_check, B699LowIndex.I11TerminalData.Chunk147.w8_check, B699LowIndex.I11TerminalData.Chunk147.w9_check, B699LowIndex.I11TerminalData.Chunk147.w10_check, Bool.and_self]

private theorem c0435_cover : coverCheck 11650 11658 c0435_intervals = true := by
  decide

private theorem c0435_sound : IntervalSound (11650, 11658) := by
  have hc : coverCheck 11650 11658 (witnessIntervals c0435_witnesses) = true := by
    rw [c0435_intervals_eq]
    exact c0435_cover
  exact interval_sound_of_witness_checks (witnesses := c0435_witnesses)
    (lo := 11650) (hi := 11658) c0435_checks hc

private def c0436_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk147.w11, B699LowIndex.I11TerminalData.Chunk147.w12, B699LowIndex.I11TerminalData.Chunk147.w13, B699LowIndex.I11TerminalData.Chunk147.w14, B699LowIndex.I11TerminalData.Chunk147.w15, B699LowIndex.I11TerminalData.Chunk148.w0]
private def c0436_intervals : List NatInterval := [(11664, 11667), (11668, 11668), (11669, 11669), (11670, 11670), (11671, 11671), (11672, 11672)]

private theorem c0436_intervals_eq :
    witnessIntervals c0436_witnesses = c0436_intervals := by
  rfl

private theorem c0436_checks : witnessesCheck c0436_witnesses = true := by
  simp only [witnessesCheck, c0436_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk147.w11_check, B699LowIndex.I11TerminalData.Chunk147.w12_check, B699LowIndex.I11TerminalData.Chunk147.w13_check, B699LowIndex.I11TerminalData.Chunk147.w14_check, B699LowIndex.I11TerminalData.Chunk147.w15_check, B699LowIndex.I11TerminalData.Chunk148.w0_check, Bool.and_self]

private theorem c0436_cover : coverCheck 11664 11672 c0436_intervals = true := by
  decide

private theorem c0436_sound : IntervalSound (11664, 11672) := by
  have hc : coverCheck 11664 11672 (witnessIntervals c0436_witnesses) = true := by
    rw [c0436_intervals_eq]
    exact c0436_cover
  exact interval_sound_of_witness_checks (witnesses := c0436_witnesses)
    (lo := 11664) (hi := 11672) c0436_checks hc

private def c0437_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk148.w1]
private def c0437_intervals : List NatInterval := [(11680, 11685)]

private theorem c0437_intervals_eq :
    witnessIntervals c0437_witnesses = c0437_intervals := by
  rfl

private theorem c0437_checks : witnessesCheck c0437_witnesses = true := by
  simp only [witnessesCheck, c0437_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk148.w1_check, Bool.and_self]

private theorem c0437_cover : coverCheck 11680 11685 c0437_intervals = true := by
  decide

private theorem c0437_sound : IntervalSound (11680, 11685) := by
  have hc : coverCheck 11680 11685 (witnessIntervals c0437_witnesses) = true := by
    rw [c0437_intervals_eq]
    exact c0437_cover
  exact interval_sound_of_witness_checks (witnesses := c0437_witnesses)
    (lo := 11680) (hi := 11685) c0437_checks hc

private def c0438_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk148.w2]
private def c0438_intervals : List NatInterval := [(11700, 11701)]

private theorem c0438_intervals_eq :
    witnessIntervals c0438_witnesses = c0438_intervals := by
  rfl

private theorem c0438_checks : witnessesCheck c0438_witnesses = true := by
  simp only [witnessesCheck, c0438_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk148.w2_check, Bool.and_self]

private theorem c0438_cover : coverCheck 11700 11701 c0438_intervals = true := by
  decide

private theorem c0438_sound : IntervalSound (11700, 11701) := by
  have hc : coverCheck 11700 11701 (witnessIntervals c0438_witnesses) = true := by
    rw [c0438_intervals_eq]
    exact c0438_cover
  exact interval_sound_of_witness_checks (witnesses := c0438_witnesses)
    (lo := 11700) (hi := 11701) c0438_checks hc

private def c0439_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk148.w3, B699LowIndex.I11TerminalData.Chunk148.w4, B699LowIndex.I11TerminalData.Chunk148.w5, B699LowIndex.I11TerminalData.Chunk148.w6, B699LowIndex.I11TerminalData.Chunk148.w7, B699LowIndex.I11TerminalData.Chunk148.w8]
private def c0439_intervals : List NatInterval := [(11712, 11712), (11713, 11713), (11714, 11714), (11715, 11715), (11716, 11716), (11717, 11722)]

private theorem c0439_intervals_eq :
    witnessIntervals c0439_witnesses = c0439_intervals := by
  rfl

private theorem c0439_checks : witnessesCheck c0439_witnesses = true := by
  simp only [witnessesCheck, c0439_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk148.w3_check, B699LowIndex.I11TerminalData.Chunk148.w4_check, B699LowIndex.I11TerminalData.Chunk148.w5_check, B699LowIndex.I11TerminalData.Chunk148.w6_check, B699LowIndex.I11TerminalData.Chunk148.w7_check, B699LowIndex.I11TerminalData.Chunk148.w8_check, Bool.and_self]

private theorem c0439_cover : coverCheck 11712 11722 c0439_intervals = true := by
  decide

private theorem c0439_sound : IntervalSound (11712, 11722) := by
  have hc : coverCheck 11712 11722 (witnessIntervals c0439_witnesses) = true := by
    rw [c0439_intervals_eq]
    exact c0439_cover
  exact interval_sound_of_witness_checks (witnesses := c0439_witnesses)
    (lo := 11712) (hi := 11722) c0439_checks hc

private def c0440_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk148.w9]
private def c0440_intervals : List NatInterval := [(11725, 11728)]

private theorem c0440_intervals_eq :
    witnessIntervals c0440_witnesses = c0440_intervals := by
  rfl

private theorem c0440_checks : witnessesCheck c0440_witnesses = true := by
  simp only [witnessesCheck, c0440_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk148.w9_check, Bool.and_self]

private theorem c0440_cover : coverCheck 11725 11728 c0440_intervals = true := by
  decide

private theorem c0440_sound : IntervalSound (11725, 11728) := by
  have hc : coverCheck 11725 11728 (witnessIntervals c0440_witnesses) = true := by
    rw [c0440_intervals_eq]
    exact c0440_cover
  exact interval_sound_of_witness_checks (witnesses := c0440_witnesses)
    (lo := 11725) (hi := 11728) c0440_checks hc

private def c0441_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk148.w10, B699LowIndex.I11TerminalData.Chunk148.w11, B699LowIndex.I11TerminalData.Chunk148.w12]
private def c0441_intervals : List NatInterval := [(11745, 11753), (11754, 11754), (11755, 11755)]

private theorem c0441_intervals_eq :
    witnessIntervals c0441_witnesses = c0441_intervals := by
  rfl

private theorem c0441_checks : witnessesCheck c0441_witnesses = true := by
  simp only [witnessesCheck, c0441_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk148.w10_check, B699LowIndex.I11TerminalData.Chunk148.w11_check, B699LowIndex.I11TerminalData.Chunk148.w12_check, Bool.and_self]

private theorem c0441_cover : coverCheck 11745 11755 c0441_intervals = true := by
  decide

private theorem c0441_sound : IntervalSound (11745, 11755) := by
  have hc : coverCheck 11745 11755 (witnessIntervals c0441_witnesses) = true := by
    rw [c0441_intervals_eq]
    exact c0441_cover
  exact interval_sound_of_witness_checks (witnesses := c0441_witnesses)
    (lo := 11745) (hi := 11755) c0441_checks hc

private def c0442_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk148.w13]
private def c0442_intervals : List NatInterval := [(11760, 11760)]

private theorem c0442_intervals_eq :
    witnessIntervals c0442_witnesses = c0442_intervals := by
  rfl

private theorem c0442_checks : witnessesCheck c0442_witnesses = true := by
  simp only [witnessesCheck, c0442_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk148.w13_check, Bool.and_self]

private theorem c0442_cover : coverCheck 11760 11760 c0442_intervals = true := by
  decide

private theorem c0442_sound : IntervalSound (11760, 11760) := by
  have hc : coverCheck 11760 11760 (witnessIntervals c0442_witnesses) = true := by
    rw [c0442_intervals_eq]
    exact c0442_cover
  exact interval_sound_of_witness_checks (witnesses := c0442_witnesses)
    (lo := 11760) (hi := 11760) c0442_checks hc

private def c0443_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk148.w14, B699LowIndex.I11TerminalData.Chunk148.w15, B699LowIndex.I11TerminalData.Chunk149.w0]
private def c0443_intervals : List NatInterval := [(11775, 11775), (11776, 11776), (11777, 11785)]

private theorem c0443_intervals_eq :
    witnessIntervals c0443_witnesses = c0443_intervals := by
  rfl

private theorem c0443_checks : witnessesCheck c0443_witnesses = true := by
  simp only [witnessesCheck, c0443_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk148.w14_check, B699LowIndex.I11TerminalData.Chunk148.w15_check, B699LowIndex.I11TerminalData.Chunk149.w0_check, Bool.and_self]

private theorem c0443_cover : coverCheck 11775 11785 c0443_intervals = true := by
  decide

private theorem c0443_sound : IntervalSound (11775, 11785) := by
  have hc : coverCheck 11775 11785 (witnessIntervals c0443_witnesses) = true := by
    rw [c0443_intervals_eq]
    exact c0443_cover
  exact interval_sound_of_witness_checks (witnesses := c0443_witnesses)
    (lo := 11775) (hi := 11785) c0443_checks hc

private def c0444_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk149.w1, B699LowIndex.I11TerminalData.Chunk149.w2, B699LowIndex.I11TerminalData.Chunk149.w3, B699LowIndex.I11TerminalData.Chunk149.w4]
private def c0444_intervals : List NatInterval := [(11800, 11800), (11801, 11811), (11812, 11817), (11818, 11818)]

private theorem c0444_intervals_eq :
    witnessIntervals c0444_witnesses = c0444_intervals := by
  rfl

private theorem c0444_checks : witnessesCheck c0444_witnesses = true := by
  simp only [witnessesCheck, c0444_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk149.w1_check, B699LowIndex.I11TerminalData.Chunk149.w2_check, B699LowIndex.I11TerminalData.Chunk149.w3_check, B699LowIndex.I11TerminalData.Chunk149.w4_check, Bool.and_self]

private theorem c0444_cover : coverCheck 11800 11818 c0444_intervals = true := by
  decide

private theorem c0444_sound : IntervalSound (11800, 11818) := by
  have hc : coverCheck 11800 11818 (witnessIntervals c0444_witnesses) = true := by
    rw [c0444_intervals_eq]
    exact c0444_cover
  exact interval_sound_of_witness_checks (witnesses := c0444_witnesses)
    (lo := 11800) (hi := 11818) c0444_checks hc

private def c0445_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk149.w5, B699LowIndex.I11TerminalData.Chunk149.w6]
private def c0445_intervals : List NatInterval := [(11826, 11831), (11832, 11835)]

private theorem c0445_intervals_eq :
    witnessIntervals c0445_witnesses = c0445_intervals := by
  rfl

private theorem c0445_checks : witnessesCheck c0445_witnesses = true := by
  simp only [witnessesCheck, c0445_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk149.w5_check, B699LowIndex.I11TerminalData.Chunk149.w6_check, Bool.and_self]

private theorem c0445_cover : coverCheck 11826 11835 c0445_intervals = true := by
  decide

private theorem c0445_sound : IntervalSound (11826, 11835) := by
  have hc : coverCheck 11826 11835 (witnessIntervals c0445_witnesses) = true := by
    rw [c0445_intervals_eq]
    exact c0445_cover
  exact interval_sound_of_witness_checks (witnesses := c0445_witnesses)
    (lo := 11826) (hi := 11835) c0445_checks hc

private def c0446_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk149.w7]
private def c0446_intervals : List NatInterval := [(11850, 11850)]

private theorem c0446_intervals_eq :
    witnessIntervals c0446_witnesses = c0446_intervals := by
  rfl

private theorem c0446_checks : witnessesCheck c0446_witnesses = true := by
  simp only [witnessesCheck, c0446_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk149.w7_check, Bool.and_self]

private theorem c0446_cover : coverCheck 11850 11850 c0446_intervals = true := by
  decide

private theorem c0446_sound : IntervalSound (11850, 11850) := by
  have hc : coverCheck 11850 11850 (witnessIntervals c0446_witnesses) = true := by
    rw [c0446_intervals_eq]
    exact c0446_cover
  exact interval_sound_of_witness_checks (witnesses := c0446_witnesses)
    (lo := 11850) (hi := 11850) c0446_checks hc

private def c0447_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk149.w8, B699LowIndex.I11TerminalData.Chunk149.w9, B699LowIndex.I11TerminalData.Chunk149.w10, B699LowIndex.I11TerminalData.Chunk149.w11, B699LowIndex.I11TerminalData.Chunk149.w12, B699LowIndex.I11TerminalData.Chunk149.w13, B699LowIndex.I11TerminalData.Chunk149.w14, B699LowIndex.I11TerminalData.Chunk149.w15, B699LowIndex.I11TerminalData.Chunk150.w0, B699LowIndex.I11TerminalData.Chunk150.w1, B699LowIndex.I11TerminalData.Chunk150.w2]
private def c0447_intervals : List NatInterval := [(11853, 11853), (11854, 11854), (11855, 11855), (11856, 11856), (11857, 11857), (11858, 11858), (11859, 11859), (11860, 11860), (11861, 11861), (11862, 11862), (11863, 11863)]

private theorem c0447_intervals_eq :
    witnessIntervals c0447_witnesses = c0447_intervals := by
  rfl

private theorem c0447_checks : witnessesCheck c0447_witnesses = true := by
  simp only [witnessesCheck, c0447_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk149.w8_check, B699LowIndex.I11TerminalData.Chunk149.w9_check, B699LowIndex.I11TerminalData.Chunk149.w10_check, B699LowIndex.I11TerminalData.Chunk149.w11_check, B699LowIndex.I11TerminalData.Chunk149.w12_check, B699LowIndex.I11TerminalData.Chunk149.w13_check, B699LowIndex.I11TerminalData.Chunk149.w14_check, B699LowIndex.I11TerminalData.Chunk149.w15_check, B699LowIndex.I11TerminalData.Chunk150.w0_check, B699LowIndex.I11TerminalData.Chunk150.w1_check, B699LowIndex.I11TerminalData.Chunk150.w2_check, Bool.and_self]

private theorem c0447_cover : coverCheck 11853 11863 c0447_intervals = true := by
  decide

private theorem c0447_sound : IntervalSound (11853, 11863) := by
  have hc : coverCheck 11853 11863 (witnessIntervals c0447_witnesses) = true := by
    rw [c0447_intervals_eq]
    exact c0447_cover
  exact interval_sound_of_witness_checks (witnesses := c0447_witnesses)
    (lo := 11853) (hi := 11863) c0447_checks hc

def intervals : List NatInterval := [(11610, 11610), (11613, 11623), (11625, 11626), (11650, 11658), (11664, 11672), (11680, 11685), (11700, 11701), (11712, 11722), (11725, 11728), (11745, 11755), (11760, 11760), (11775, 11785), (11800, 11818), (11826, 11835), (11850, 11850), (11853, 11863)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (11610, 11610)) (intervals := [(11613, 11623), (11625, 11626), (11650, 11658), (11664, 11672), (11680, 11685), (11700, 11701), (11712, 11722), (11725, 11728), (11745, 11755), (11760, 11760), (11775, 11785), (11800, 11818), (11826, 11835), (11850, 11850), (11853, 11863)]) c0432_sound (intervals_sound_cons (I := (11613, 11623)) (intervals := [(11625, 11626), (11650, 11658), (11664, 11672), (11680, 11685), (11700, 11701), (11712, 11722), (11725, 11728), (11745, 11755), (11760, 11760), (11775, 11785), (11800, 11818), (11826, 11835), (11850, 11850), (11853, 11863)]) c0433_sound (intervals_sound_cons (I := (11625, 11626)) (intervals := [(11650, 11658), (11664, 11672), (11680, 11685), (11700, 11701), (11712, 11722), (11725, 11728), (11745, 11755), (11760, 11760), (11775, 11785), (11800, 11818), (11826, 11835), (11850, 11850), (11853, 11863)]) c0434_sound (intervals_sound_cons (I := (11650, 11658)) (intervals := [(11664, 11672), (11680, 11685), (11700, 11701), (11712, 11722), (11725, 11728), (11745, 11755), (11760, 11760), (11775, 11785), (11800, 11818), (11826, 11835), (11850, 11850), (11853, 11863)]) c0435_sound (intervals_sound_cons (I := (11664, 11672)) (intervals := [(11680, 11685), (11700, 11701), (11712, 11722), (11725, 11728), (11745, 11755), (11760, 11760), (11775, 11785), (11800, 11818), (11826, 11835), (11850, 11850), (11853, 11863)]) c0436_sound (intervals_sound_cons (I := (11680, 11685)) (intervals := [(11700, 11701), (11712, 11722), (11725, 11728), (11745, 11755), (11760, 11760), (11775, 11785), (11800, 11818), (11826, 11835), (11850, 11850), (11853, 11863)]) c0437_sound (intervals_sound_cons (I := (11700, 11701)) (intervals := [(11712, 11722), (11725, 11728), (11745, 11755), (11760, 11760), (11775, 11785), (11800, 11818), (11826, 11835), (11850, 11850), (11853, 11863)]) c0438_sound (intervals_sound_cons (I := (11712, 11722)) (intervals := [(11725, 11728), (11745, 11755), (11760, 11760), (11775, 11785), (11800, 11818), (11826, 11835), (11850, 11850), (11853, 11863)]) c0439_sound (intervals_sound_cons (I := (11725, 11728)) (intervals := [(11745, 11755), (11760, 11760), (11775, 11785), (11800, 11818), (11826, 11835), (11850, 11850), (11853, 11863)]) c0440_sound (intervals_sound_cons (I := (11745, 11755)) (intervals := [(11760, 11760), (11775, 11785), (11800, 11818), (11826, 11835), (11850, 11850), (11853, 11863)]) c0441_sound (intervals_sound_cons (I := (11760, 11760)) (intervals := [(11775, 11785), (11800, 11818), (11826, 11835), (11850, 11850), (11853, 11863)]) c0442_sound (intervals_sound_cons (I := (11775, 11785)) (intervals := [(11800, 11818), (11826, 11835), (11850, 11850), (11853, 11863)]) c0443_sound (intervals_sound_cons (I := (11800, 11818)) (intervals := [(11826, 11835), (11850, 11850), (11853, 11863)]) c0444_sound (intervals_sound_cons (I := (11826, 11835)) (intervals := [(11850, 11850), (11853, 11863)]) c0445_sound (intervals_sound_cons (I := (11850, 11850)) (intervals := [(11853, 11863)]) c0446_sound (intervals_sound_cons (I := (11853, 11863)) (intervals := []) c0447_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G027
