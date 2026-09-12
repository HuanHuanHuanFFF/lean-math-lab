import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk105
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk106
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk107

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G013
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0208_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk105.w0, B699LowIndex.I11TerminalData.Chunk105.w1]
private def c0208_intervals : List NatInterval := [(7550, 7559), (7560, 7562)]

private theorem c0208_intervals_eq :
    witnessIntervals c0208_witnesses = c0208_intervals := by
  rfl

private theorem c0208_checks : witnessesCheck c0208_witnesses = true := by
  simp only [witnessesCheck, c0208_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk105.w0_check, B699LowIndex.I11TerminalData.Chunk105.w1_check, Bool.and_self]

private theorem c0208_cover : coverCheck 7550 7562 c0208_intervals = true := by
  decide

private theorem c0208_sound : IntervalSound (7550, 7562) := by
  have hc : coverCheck 7550 7562 (witnessIntervals c0208_witnesses) = true := by
    rw [c0208_intervals_eq]
    exact c0208_cover
  exact interval_sound_of_witness_checks (witnesses := c0208_witnesses)
    (lo := 7550) (hi := 7562) c0208_checks hc

private def c0209_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk105.w2]
private def c0209_intervals : List NatInterval := [(7568, 7570)]

private theorem c0209_intervals_eq :
    witnessIntervals c0209_witnesses = c0209_intervals := by
  rfl

private theorem c0209_checks : witnessesCheck c0209_witnesses = true := by
  simp only [witnessesCheck, c0209_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk105.w2_check, Bool.and_self]

private theorem c0209_cover : coverCheck 7568 7570 c0209_intervals = true := by
  decide

private theorem c0209_sound : IntervalSound (7568, 7570) := by
  have hc : coverCheck 7568 7570 (witnessIntervals c0209_witnesses) = true := by
    rw [c0209_intervals_eq]
    exact c0209_cover
  exact interval_sound_of_witness_checks (witnesses := c0209_witnesses)
    (lo := 7568) (hi := 7570) c0209_checks hc

private def c0210_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk105.w3]
private def c0210_intervals : List NatInterval := [(7575, 7578)]

private theorem c0210_intervals_eq :
    witnessIntervals c0210_witnesses = c0210_intervals := by
  rfl

private theorem c0210_checks : witnessesCheck c0210_witnesses = true := by
  simp only [witnessesCheck, c0210_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk105.w3_check, Bool.and_self]

private theorem c0210_cover : coverCheck 7575 7578 c0210_intervals = true := by
  decide

private theorem c0210_sound : IntervalSound (7575, 7578) := by
  have hc : coverCheck 7575 7578 (witnessIntervals c0210_witnesses) = true := by
    rw [c0210_intervals_eq]
    exact c0210_cover
  exact interval_sound_of_witness_checks (witnesses := c0210_witnesses)
    (lo := 7575) (hi := 7578) c0210_checks hc

private def c0211_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk105.w4]
private def c0211_intervals : List NatInterval := [(7584, 7585)]

private theorem c0211_intervals_eq :
    witnessIntervals c0211_witnesses = c0211_intervals := by
  rfl

private theorem c0211_checks : witnessesCheck c0211_witnesses = true := by
  simp only [witnessesCheck, c0211_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk105.w4_check, Bool.and_self]

private theorem c0211_cover : coverCheck 7584 7585 c0211_intervals = true := by
  decide

private theorem c0211_sound : IntervalSound (7584, 7585) := by
  have hc : coverCheck 7584 7585 (witnessIntervals c0211_witnesses) = true := by
    rw [c0211_intervals_eq]
    exact c0211_cover
  exact interval_sound_of_witness_checks (witnesses := c0211_witnesses)
    (lo := 7584) (hi := 7585) c0211_checks hc

private def c0212_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk105.w5, B699LowIndex.I11TerminalData.Chunk105.w6]
private def c0212_intervals : List NatInterval := [(7587, 7593), (7594, 7597)]

private theorem c0212_intervals_eq :
    witnessIntervals c0212_witnesses = c0212_intervals := by
  rfl

private theorem c0212_checks : witnessesCheck c0212_witnesses = true := by
  simp only [witnessesCheck, c0212_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk105.w5_check, B699LowIndex.I11TerminalData.Chunk105.w6_check, Bool.and_self]

private theorem c0212_cover : coverCheck 7587 7597 c0212_intervals = true := by
  decide

private theorem c0212_sound : IntervalSound (7587, 7597) := by
  have hc : coverCheck 7587 7597 (witnessIntervals c0212_witnesses) = true := by
    rw [c0212_intervals_eq]
    exact c0212_cover
  exact interval_sound_of_witness_checks (witnesses := c0212_witnesses)
    (lo := 7587) (hi := 7597) c0212_checks hc

private def c0213_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk105.w7, B699LowIndex.I11TerminalData.Chunk105.w8, B699LowIndex.I11TerminalData.Chunk105.w9]
private def c0213_intervals : List NatInterval := [(7600, 7601), (7602, 7602), (7603, 7610)]

private theorem c0213_intervals_eq :
    witnessIntervals c0213_witnesses = c0213_intervals := by
  rfl

private theorem c0213_checks : witnessesCheck c0213_witnesses = true := by
  simp only [witnessesCheck, c0213_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk105.w7_check, B699LowIndex.I11TerminalData.Chunk105.w8_check, B699LowIndex.I11TerminalData.Chunk105.w9_check, Bool.and_self]

private theorem c0213_cover : coverCheck 7600 7610 c0213_intervals = true := by
  decide

private theorem c0213_sound : IntervalSound (7600, 7610) := by
  have hc : coverCheck 7600 7610 (witnessIntervals c0213_witnesses) = true := by
    rw [c0213_intervals_eq]
    exact c0213_cover
  exact interval_sound_of_witness_checks (witnesses := c0213_witnesses)
    (lo := 7600) (hi := 7610) c0213_checks hc

private def c0214_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk105.w10, B699LowIndex.I11TerminalData.Chunk105.w11, B699LowIndex.I11TerminalData.Chunk105.w12, B699LowIndex.I11TerminalData.Chunk105.w13, B699LowIndex.I11TerminalData.Chunk105.w14]
private def c0214_intervals : List NatInterval := [(7616, 7617), (7618, 7618), (7619, 7619), (7620, 7620), (7621, 7626)]

private theorem c0214_intervals_eq :
    witnessIntervals c0214_witnesses = c0214_intervals := by
  rfl

private theorem c0214_checks : witnessesCheck c0214_witnesses = true := by
  simp only [witnessesCheck, c0214_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk105.w10_check, B699LowIndex.I11TerminalData.Chunk105.w11_check, B699LowIndex.I11TerminalData.Chunk105.w12_check, B699LowIndex.I11TerminalData.Chunk105.w13_check, B699LowIndex.I11TerminalData.Chunk105.w14_check, Bool.and_self]

private theorem c0214_cover : coverCheck 7616 7626 c0214_intervals = true := by
  decide

private theorem c0214_sound : IntervalSound (7616, 7626) := by
  have hc : coverCheck 7616 7626 (witnessIntervals c0214_witnesses) = true := by
    rw [c0214_intervals_eq]
    exact c0214_cover
  exact interval_sound_of_witness_checks (witnesses := c0214_witnesses)
    (lo := 7616) (hi := 7626) c0214_checks hc

private def c0215_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk105.w15, B699LowIndex.I11TerminalData.Chunk106.w0, B699LowIndex.I11TerminalData.Chunk106.w1, B699LowIndex.I11TerminalData.Chunk106.w2]
private def c0215_intervals : List NatInterval := [(7632, 7632), (7633, 7633), (7634, 7634), (7635, 7635)]

private theorem c0215_intervals_eq :
    witnessIntervals c0215_witnesses = c0215_intervals := by
  rfl

private theorem c0215_checks : witnessesCheck c0215_witnesses = true := by
  simp only [witnessesCheck, c0215_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk105.w15_check, B699LowIndex.I11TerminalData.Chunk106.w0_check, B699LowIndex.I11TerminalData.Chunk106.w1_check, B699LowIndex.I11TerminalData.Chunk106.w2_check, Bool.and_self]

private theorem c0215_cover : coverCheck 7632 7635 c0215_intervals = true := by
  decide

private theorem c0215_sound : IntervalSound (7632, 7635) := by
  have hc : coverCheck 7632 7635 (witnessIntervals c0215_witnesses) = true := by
    rw [c0215_intervals_eq]
    exact c0215_cover
  exact interval_sound_of_witness_checks (witnesses := c0215_witnesses)
    (lo := 7632) (hi := 7635) c0215_checks hc

private def c0216_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk106.w3]
private def c0216_intervals : List NatInterval := [(7641, 7642)]

private theorem c0216_intervals_eq :
    witnessIntervals c0216_witnesses = c0216_intervals := by
  rfl

private theorem c0216_checks : witnessesCheck c0216_witnesses = true := by
  simp only [witnessesCheck, c0216_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk106.w3_check, Bool.and_self]

private theorem c0216_cover : coverCheck 7641 7642 c0216_intervals = true := by
  decide

private theorem c0216_sound : IntervalSound (7641, 7642) := by
  have hc : coverCheck 7641 7642 (witnessIntervals c0216_witnesses) = true := by
    rw [c0216_intervals_eq]
    exact c0216_cover
  exact interval_sound_of_witness_checks (witnesses := c0216_witnesses)
    (lo := 7641) (hi := 7642) c0216_checks hc

private def c0217_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk106.w4, B699LowIndex.I11TerminalData.Chunk106.w5]
private def c0217_intervals : List NatInterval := [(7644, 7653), (7654, 7658)]

private theorem c0217_intervals_eq :
    witnessIntervals c0217_witnesses = c0217_intervals := by
  rfl

private theorem c0217_checks : witnessesCheck c0217_witnesses = true := by
  simp only [witnessesCheck, c0217_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk106.w4_check, B699LowIndex.I11TerminalData.Chunk106.w5_check, Bool.and_self]

private theorem c0217_cover : coverCheck 7644 7658 c0217_intervals = true := by
  decide

private theorem c0217_sound : IntervalSound (7644, 7658) := by
  have hc : coverCheck 7644 7658 (witnessIntervals c0217_witnesses) = true := by
    rw [c0217_intervals_eq]
    exact c0217_cover
  exact interval_sound_of_witness_checks (witnesses := c0217_witnesses)
    (lo := 7644) (hi := 7658) c0217_checks hc

private def c0218_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk106.w6, B699LowIndex.I11TerminalData.Chunk106.w7]
private def c0218_intervals : List NatInterval := [(7668, 7668), (7669, 7678)]

private theorem c0218_intervals_eq :
    witnessIntervals c0218_witnesses = c0218_intervals := by
  rfl

private theorem c0218_checks : witnessesCheck c0218_witnesses = true := by
  simp only [witnessesCheck, c0218_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk106.w6_check, B699LowIndex.I11TerminalData.Chunk106.w7_check, Bool.and_self]

private theorem c0218_cover : coverCheck 7668 7678 c0218_intervals = true := by
  decide

private theorem c0218_sound : IntervalSound (7668, 7678) := by
  have hc : coverCheck 7668 7678 (witnessIntervals c0218_witnesses) = true := by
    rw [c0218_intervals_eq]
    exact c0218_cover
  exact interval_sound_of_witness_checks (witnesses := c0218_witnesses)
    (lo := 7668) (hi := 7678) c0218_checks hc

private def c0219_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk106.w8, B699LowIndex.I11TerminalData.Chunk106.w9]
private def c0219_intervals : List NatInterval := [(7680, 7683), (7684, 7685)]

private theorem c0219_intervals_eq :
    witnessIntervals c0219_witnesses = c0219_intervals := by
  rfl

private theorem c0219_checks : witnessesCheck c0219_witnesses = true := by
  simp only [witnessesCheck, c0219_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk106.w8_check, B699LowIndex.I11TerminalData.Chunk106.w9_check, Bool.and_self]

private theorem c0219_cover : coverCheck 7680 7685 c0219_intervals = true := by
  decide

private theorem c0219_sound : IntervalSound (7680, 7685) := by
  have hc : coverCheck 7680 7685 (witnessIntervals c0219_witnesses) = true := by
    rw [c0219_intervals_eq]
    exact c0219_cover
  exact interval_sound_of_witness_checks (witnesses := c0219_witnesses)
    (lo := 7680) (hi := 7685) c0219_checks hc

private def c0220_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk106.w10, B699LowIndex.I11TerminalData.Chunk106.w11]
private def c0220_intervals : List NatInterval := [(7695, 7701), (7702, 7706)]

private theorem c0220_intervals_eq :
    witnessIntervals c0220_witnesses = c0220_intervals := by
  rfl

private theorem c0220_checks : witnessesCheck c0220_witnesses = true := by
  simp only [witnessesCheck, c0220_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk106.w10_check, B699LowIndex.I11TerminalData.Chunk106.w11_check, Bool.and_self]

private theorem c0220_cover : coverCheck 7695 7706 c0220_intervals = true := by
  decide

private theorem c0220_sound : IntervalSound (7695, 7706) := by
  have hc : coverCheck 7695 7706 (witnessIntervals c0220_witnesses) = true := by
    rw [c0220_intervals_eq]
    exact c0220_cover
  exact interval_sound_of_witness_checks (witnesses := c0220_witnesses)
    (lo := 7695) (hi := 7706) c0220_checks hc

private def c0221_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk106.w12]
private def c0221_intervals : List NatInterval := [(7722, 7722)]

private theorem c0221_intervals_eq :
    witnessIntervals c0221_witnesses = c0221_intervals := by
  rfl

private theorem c0221_checks : witnessesCheck c0221_witnesses = true := by
  simp only [witnessesCheck, c0221_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk106.w12_check, Bool.and_self]

private theorem c0221_cover : coverCheck 7722 7722 c0221_intervals = true := by
  decide

private theorem c0221_sound : IntervalSound (7722, 7722) := by
  have hc : coverCheck 7722 7722 (witnessIntervals c0221_witnesses) = true := by
    rw [c0221_intervals_eq]
    exact c0221_cover
  exact interval_sound_of_witness_checks (witnesses := c0221_witnesses)
    (lo := 7722) (hi := 7722) c0221_checks hc

private def c0222_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk106.w13, B699LowIndex.I11TerminalData.Chunk106.w14]
private def c0222_intervals : List NatInterval := [(7725, 7733), (7734, 7735)]

private theorem c0222_intervals_eq :
    witnessIntervals c0222_witnesses = c0222_intervals := by
  rfl

private theorem c0222_checks : witnessesCheck c0222_witnesses = true := by
  simp only [witnessesCheck, c0222_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk106.w13_check, B699LowIndex.I11TerminalData.Chunk106.w14_check, Bool.and_self]

private theorem c0222_cover : coverCheck 7725 7735 c0222_intervals = true := by
  decide

private theorem c0222_sound : IntervalSound (7725, 7735) := by
  have hc : coverCheck 7725 7735 (witnessIntervals c0222_witnesses) = true := by
    rw [c0222_intervals_eq]
    exact c0222_cover
  exact interval_sound_of_witness_checks (witnesses := c0222_witnesses)
    (lo := 7725) (hi := 7735) c0222_checks hc

private def c0223_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk106.w15, B699LowIndex.I11TerminalData.Chunk107.w0, B699LowIndex.I11TerminalData.Chunk107.w1]
private def c0223_intervals : List NatInterval := [(7744, 7751), (7752, 7752), (7753, 7760)]

private theorem c0223_intervals_eq :
    witnessIntervals c0223_witnesses = c0223_intervals := by
  rfl

private theorem c0223_checks : witnessesCheck c0223_witnesses = true := by
  simp only [witnessesCheck, c0223_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk106.w15_check, B699LowIndex.I11TerminalData.Chunk107.w0_check, B699LowIndex.I11TerminalData.Chunk107.w1_check, Bool.and_self]

private theorem c0223_cover : coverCheck 7744 7760 c0223_intervals = true := by
  decide

private theorem c0223_sound : IntervalSound (7744, 7760) := by
  have hc : coverCheck 7744 7760 (witnessIntervals c0223_witnesses) = true := by
    rw [c0223_intervals_eq]
    exact c0223_cover
  exact interval_sound_of_witness_checks (witnesses := c0223_witnesses)
    (lo := 7744) (hi := 7760) c0223_checks hc

def intervals : List NatInterval := [(7550, 7562), (7568, 7570), (7575, 7578), (7584, 7585), (7587, 7597), (7600, 7610), (7616, 7626), (7632, 7635), (7641, 7642), (7644, 7658), (7668, 7678), (7680, 7685), (7695, 7706), (7722, 7722), (7725, 7735), (7744, 7760)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (7550, 7562)) (intervals := [(7568, 7570), (7575, 7578), (7584, 7585), (7587, 7597), (7600, 7610), (7616, 7626), (7632, 7635), (7641, 7642), (7644, 7658), (7668, 7678), (7680, 7685), (7695, 7706), (7722, 7722), (7725, 7735), (7744, 7760)]) c0208_sound (intervals_sound_cons (I := (7568, 7570)) (intervals := [(7575, 7578), (7584, 7585), (7587, 7597), (7600, 7610), (7616, 7626), (7632, 7635), (7641, 7642), (7644, 7658), (7668, 7678), (7680, 7685), (7695, 7706), (7722, 7722), (7725, 7735), (7744, 7760)]) c0209_sound (intervals_sound_cons (I := (7575, 7578)) (intervals := [(7584, 7585), (7587, 7597), (7600, 7610), (7616, 7626), (7632, 7635), (7641, 7642), (7644, 7658), (7668, 7678), (7680, 7685), (7695, 7706), (7722, 7722), (7725, 7735), (7744, 7760)]) c0210_sound (intervals_sound_cons (I := (7584, 7585)) (intervals := [(7587, 7597), (7600, 7610), (7616, 7626), (7632, 7635), (7641, 7642), (7644, 7658), (7668, 7678), (7680, 7685), (7695, 7706), (7722, 7722), (7725, 7735), (7744, 7760)]) c0211_sound (intervals_sound_cons (I := (7587, 7597)) (intervals := [(7600, 7610), (7616, 7626), (7632, 7635), (7641, 7642), (7644, 7658), (7668, 7678), (7680, 7685), (7695, 7706), (7722, 7722), (7725, 7735), (7744, 7760)]) c0212_sound (intervals_sound_cons (I := (7600, 7610)) (intervals := [(7616, 7626), (7632, 7635), (7641, 7642), (7644, 7658), (7668, 7678), (7680, 7685), (7695, 7706), (7722, 7722), (7725, 7735), (7744, 7760)]) c0213_sound (intervals_sound_cons (I := (7616, 7626)) (intervals := [(7632, 7635), (7641, 7642), (7644, 7658), (7668, 7678), (7680, 7685), (7695, 7706), (7722, 7722), (7725, 7735), (7744, 7760)]) c0214_sound (intervals_sound_cons (I := (7632, 7635)) (intervals := [(7641, 7642), (7644, 7658), (7668, 7678), (7680, 7685), (7695, 7706), (7722, 7722), (7725, 7735), (7744, 7760)]) c0215_sound (intervals_sound_cons (I := (7641, 7642)) (intervals := [(7644, 7658), (7668, 7678), (7680, 7685), (7695, 7706), (7722, 7722), (7725, 7735), (7744, 7760)]) c0216_sound (intervals_sound_cons (I := (7644, 7658)) (intervals := [(7668, 7678), (7680, 7685), (7695, 7706), (7722, 7722), (7725, 7735), (7744, 7760)]) c0217_sound (intervals_sound_cons (I := (7668, 7678)) (intervals := [(7680, 7685), (7695, 7706), (7722, 7722), (7725, 7735), (7744, 7760)]) c0218_sound (intervals_sound_cons (I := (7680, 7685)) (intervals := [(7695, 7706), (7722, 7722), (7725, 7735), (7744, 7760)]) c0219_sound (intervals_sound_cons (I := (7695, 7706)) (intervals := [(7722, 7722), (7725, 7735), (7744, 7760)]) c0220_sound (intervals_sound_cons (I := (7722, 7722)) (intervals := [(7725, 7735), (7744, 7760)]) c0221_sound (intervals_sound_cons (I := (7725, 7735)) (intervals := [(7744, 7760)]) c0222_sound (intervals_sound_cons (I := (7744, 7760)) (intervals := []) c0223_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G013
