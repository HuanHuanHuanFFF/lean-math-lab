import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk236
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk237
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk238
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk239

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G060
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0960_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk236.w15, B699LowIndex.I11TerminalData.Chunk237.w0]
private def c0960_intervals : List NatInterval := [(95744, 95747), (95748, 95752)]

private theorem c0960_intervals_eq :
    witnessIntervals c0960_witnesses = c0960_intervals := by
  rfl

private theorem c0960_checks : witnessesCheck c0960_witnesses = true := by
  simp only [witnessesCheck, c0960_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk236.w15_check, B699LowIndex.I11TerminalData.Chunk237.w0_check, Bool.and_self]

private theorem c0960_cover : coverCheck 95744 95752 c0960_intervals = true := by
  decide

private theorem c0960_sound : IntervalSound (95744, 95752) := by
  have hc : coverCheck 95744 95752 (witnessIntervals c0960_witnesses) = true := by
    rw [c0960_intervals_eq]
    exact c0960_cover
  exact interval_sound_of_witness_checks (witnesses := c0960_witnesses)
    (lo := 95744) (hi := 95752) c0960_checks hc

private def c0961_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk237.w1, B699LowIndex.I11TerminalData.Chunk237.w2, B699LowIndex.I11TerminalData.Chunk237.w3, B699LowIndex.I11TerminalData.Chunk237.w4]
private def c0961_intervals : List NatInterval := [(96256, 96256), (96257, 96257), (96258, 96258), (96259, 96260)]

private theorem c0961_intervals_eq :
    witnessIntervals c0961_witnesses = c0961_intervals := by
  rfl

private theorem c0961_checks : witnessesCheck c0961_witnesses = true := by
  simp only [witnessesCheck, c0961_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk237.w1_check, B699LowIndex.I11TerminalData.Chunk237.w2_check, B699LowIndex.I11TerminalData.Chunk237.w3_check, B699LowIndex.I11TerminalData.Chunk237.w4_check, Bool.and_self]

private theorem c0961_cover : coverCheck 96256 96260 c0961_intervals = true := by
  decide

private theorem c0961_sound : IntervalSound (96256, 96260) := by
  have hc : coverCheck 96256 96260 (witnessIntervals c0961_witnesses) = true := by
    rw [c0961_intervals_eq]
    exact c0961_cover
  exact interval_sound_of_witness_checks (witnesses := c0961_witnesses)
    (lo := 96256) (hi := 96260) c0961_checks hc

private def c0962_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk237.w5]
private def c0962_intervals : List NatInterval := [(100359, 100362)]

private theorem c0962_intervals_eq :
    witnessIntervals c0962_witnesses = c0962_intervals := by
  rfl

private theorem c0962_checks : witnessesCheck c0962_witnesses = true := by
  simp only [witnessesCheck, c0962_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk237.w5_check, Bool.and_self]

private theorem c0962_cover : coverCheck 100359 100362 c0962_intervals = true := by
  decide

private theorem c0962_sound : IntervalSound (100359, 100362) := by
  have hc : coverCheck 100359 100362 (witnessIntervals c0962_witnesses) = true := by
    rw [c0962_intervals_eq]
    exact c0962_cover
  exact interval_sound_of_witness_checks (witnesses := c0962_witnesses)
    (lo := 100359) (hi := 100362) c0962_checks hc

private def c0963_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk237.w6, B699LowIndex.I11TerminalData.Chunk237.w7]
private def c0963_intervals : List NatInterval := [(100608, 100608), (100609, 100612)]

private theorem c0963_intervals_eq :
    witnessIntervals c0963_witnesses = c0963_intervals := by
  rfl

private theorem c0963_checks : witnessesCheck c0963_witnesses = true := by
  simp only [witnessesCheck, c0963_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk237.w6_check, B699LowIndex.I11TerminalData.Chunk237.w7_check, Bool.and_self]

private theorem c0963_cover : coverCheck 100608 100612 c0963_intervals = true := by
  decide

private theorem c0963_sound : IntervalSound (100608, 100612) := by
  have hc : coverCheck 100608 100612 (witnessIntervals c0963_witnesses) = true := by
    rw [c0963_intervals_eq]
    exact c0963_cover
  exact interval_sound_of_witness_checks (witnesses := c0963_witnesses)
    (lo := 100608) (hi := 100612) c0963_checks hc

private def c0964_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk237.w8, B699LowIndex.I11TerminalData.Chunk237.w9, B699LowIndex.I11TerminalData.Chunk237.w10]
private def c0964_intervals : List NatInterval := [(100845, 100845), (100846, 100846), (100847, 100852)]

private theorem c0964_intervals_eq :
    witnessIntervals c0964_witnesses = c0964_intervals := by
  rfl

private theorem c0964_checks : witnessesCheck c0964_witnesses = true := by
  simp only [witnessesCheck, c0964_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk237.w8_check, B699LowIndex.I11TerminalData.Chunk237.w9_check, B699LowIndex.I11TerminalData.Chunk237.w10_check, Bool.and_self]

private theorem c0964_cover : coverCheck 100845 100852 c0964_intervals = true := by
  decide

private theorem c0964_sound : IntervalSound (100845, 100852) := by
  have hc : coverCheck 100845 100852 (witnessIntervals c0964_witnesses) = true := by
    rw [c0964_intervals_eq]
    exact c0964_cover
  exact interval_sound_of_witness_checks (witnesses := c0964_witnesses)
    (lo := 100845) (hi := 100852) c0964_checks hc

private def c0965_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk237.w11]
private def c0965_intervals : List NatInterval := [(101875, 101881)]

private theorem c0965_intervals_eq :
    witnessIntervals c0965_witnesses = c0965_intervals := by
  rfl

private theorem c0965_checks : witnessesCheck c0965_witnesses = true := by
  simp only [witnessesCheck, c0965_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk237.w11_check, Bool.and_self]

private theorem c0965_cover : coverCheck 101875 101881 c0965_intervals = true := by
  decide

private theorem c0965_sound : IntervalSound (101875, 101881) := by
  have hc : coverCheck 101875 101881 (witnessIntervals c0965_witnesses) = true := by
    rw [c0965_intervals_eq]
    exact c0965_cover
  exact interval_sound_of_witness_checks (witnesses := c0965_witnesses)
    (lo := 101875) (hi := 101881) c0965_checks hc

private def c0966_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk237.w12, B699LowIndex.I11TerminalData.Chunk237.w13, B699LowIndex.I11TerminalData.Chunk237.w14, B699LowIndex.I11TerminalData.Chunk237.w15]
private def c0966_intervals : List NatInterval := [(103936, 103936), (103937, 103937), (103938, 103938), (103939, 103939)]

private theorem c0966_intervals_eq :
    witnessIntervals c0966_witnesses = c0966_intervals := by
  rfl

private theorem c0966_checks : witnessesCheck c0966_witnesses = true := by
  simp only [witnessesCheck, c0966_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk237.w12_check, B699LowIndex.I11TerminalData.Chunk237.w13_check, B699LowIndex.I11TerminalData.Chunk237.w14_check, B699LowIndex.I11TerminalData.Chunk237.w15_check, Bool.and_self]

private theorem c0966_cover : coverCheck 103936 103939 c0966_intervals = true := by
  decide

private theorem c0966_sound : IntervalSound (103936, 103939) := by
  have hc : coverCheck 103936 103939 (witnessIntervals c0966_witnesses) = true := by
    rw [c0966_intervals_eq]
    exact c0966_cover
  exact interval_sound_of_witness_checks (witnesses := c0966_witnesses)
    (lo := 103936) (hi := 103939) c0966_checks hc

private def c0967_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk238.w0]
private def c0967_intervals : List NatInterval := [(104960, 104968)]

private theorem c0967_intervals_eq :
    witnessIntervals c0967_witnesses = c0967_intervals := by
  rfl

private theorem c0967_checks : witnessesCheck c0967_witnesses = true := by
  simp only [witnessesCheck, c0967_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk238.w0_check, Bool.and_self]

private theorem c0967_cover : coverCheck 104960 104968 c0967_intervals = true := by
  decide

private theorem c0967_sound : IntervalSound (104960, 104968) := by
  have hc : coverCheck 104960 104968 (witnessIntervals c0967_witnesses) = true := by
    rw [c0967_intervals_eq]
    exact c0967_cover
  exact interval_sound_of_witness_checks (witnesses := c0967_witnesses)
    (lo := 104960) (hi := 104968) c0967_checks hc

private def c0968_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk238.w1, B699LowIndex.I11TerminalData.Chunk238.w2, B699LowIndex.I11TerminalData.Chunk238.w3, B699LowIndex.I11TerminalData.Chunk238.w4, B699LowIndex.I11TerminalData.Chunk238.w5, B699LowIndex.I11TerminalData.Chunk238.w6]
private def c0968_intervals : List NatInterval := [(105219, 105221), (105222, 105222), (105223, 105223), (105224, 105224), (105225, 105225), (105226, 105226)]

private theorem c0968_intervals_eq :
    witnessIntervals c0968_witnesses = c0968_intervals := by
  rfl

private theorem c0968_checks : witnessesCheck c0968_witnesses = true := by
  simp only [witnessesCheck, c0968_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk238.w1_check, B699LowIndex.I11TerminalData.Chunk238.w2_check, B699LowIndex.I11TerminalData.Chunk238.w3_check, B699LowIndex.I11TerminalData.Chunk238.w4_check, B699LowIndex.I11TerminalData.Chunk238.w5_check, B699LowIndex.I11TerminalData.Chunk238.w6_check, Bool.and_self]

private theorem c0968_cover : coverCheck 105219 105226 c0968_intervals = true := by
  decide

private theorem c0968_sound : IntervalSound (105219, 105226) := by
  have hc : coverCheck 105219 105226 (witnessIntervals c0968_witnesses) = true := by
    rw [c0968_intervals_eq]
    exact c0968_cover
  exact interval_sound_of_witness_checks (witnesses := c0968_witnesses)
    (lo := 105219) (hi := 105226) c0968_checks hc

private def c0969_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk238.w7]
private def c0969_intervals : List NatInterval := [(105472, 105472)]

private theorem c0969_intervals_eq :
    witnessIntervals c0969_witnesses = c0969_intervals := by
  rfl

private theorem c0969_checks : witnessesCheck c0969_witnesses = true := by
  simp only [witnessesCheck, c0969_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk238.w7_check, Bool.and_self]

private theorem c0969_cover : coverCheck 105472 105472 c0969_intervals = true := by
  decide

private theorem c0969_sound : IntervalSound (105472, 105472) := by
  have hc : coverCheck 105472 105472 (witnessIntervals c0969_witnesses) = true := by
    rw [c0969_intervals_eq]
    exact c0969_cover
  exact interval_sound_of_witness_checks (witnesses := c0969_witnesses)
    (lo := 105472) (hi := 105472) c0969_checks hc

private def c0970_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk238.w8, B699LowIndex.I11TerminalData.Chunk238.w9]
private def c0970_intervals : List NatInterval := [(105987, 105993), (105994, 105994)]

private theorem c0970_intervals_eq :
    witnessIntervals c0970_witnesses = c0970_intervals := by
  rfl

private theorem c0970_checks : witnessesCheck c0970_witnesses = true := by
  simp only [witnessesCheck, c0970_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk238.w8_check, B699LowIndex.I11TerminalData.Chunk238.w9_check, Bool.and_self]

private theorem c0970_cover : coverCheck 105987 105994 c0970_intervals = true := by
  decide

private theorem c0970_sound : IntervalSound (105987, 105994) := by
  have hc : coverCheck 105987 105994 (witnessIntervals c0970_witnesses) = true := by
    rw [c0970_intervals_eq]
    exact c0970_cover
  exact interval_sound_of_witness_checks (witnesses := c0970_witnesses)
    (lo := 105987) (hi := 105994) c0970_checks hc

private def c0971_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk238.w10]
private def c0971_intervals : List NatInterval := [(106250, 106250)]

private theorem c0971_intervals_eq :
    witnessIntervals c0971_witnesses = c0971_intervals := by
  rfl

private theorem c0971_checks : witnessesCheck c0971_witnesses = true := by
  simp only [witnessesCheck, c0971_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk238.w10_check, Bool.and_self]

private theorem c0971_cover : coverCheck 106250 106250 c0971_intervals = true := by
  decide

private theorem c0971_sound : IntervalSound (106250, 106250) := by
  have hc : coverCheck 106250 106250 (witnessIntervals c0971_witnesses) = true := by
    rw [c0971_intervals_eq]
    exact c0971_cover
  exact interval_sound_of_witness_checks (witnesses := c0971_witnesses)
    (lo := 106250) (hi := 106250) c0971_checks hc

private def c0972_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk238.w11, B699LowIndex.I11TerminalData.Chunk238.w12, B699LowIndex.I11TerminalData.Chunk238.w13]
private def c0972_intervals : List NatInterval := [(106677, 106679), (106680, 106680), (106681, 106683)]

private theorem c0972_intervals_eq :
    witnessIntervals c0972_witnesses = c0972_intervals := by
  rfl

private theorem c0972_checks : witnessesCheck c0972_witnesses = true := by
  simp only [witnessesCheck, c0972_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk238.w11_check, B699LowIndex.I11TerminalData.Chunk238.w12_check, B699LowIndex.I11TerminalData.Chunk238.w13_check, Bool.and_self]

private theorem c0972_cover : coverCheck 106677 106683 c0972_intervals = true := by
  decide

private theorem c0972_sound : IntervalSound (106677, 106683) := by
  have hc : coverCheck 106677 106683 (witnessIntervals c0972_witnesses) = true := by
    rw [c0972_intervals_eq]
    exact c0972_cover
  exact interval_sound_of_witness_checks (witnesses := c0972_witnesses)
    (lo := 106677) (hi := 106683) c0972_checks hc

private def c0973_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk238.w14, B699LowIndex.I11TerminalData.Chunk238.w15, B699LowIndex.I11TerminalData.Chunk239.w0]
private def c0973_intervals : List NatInterval := [(107016, 107016), (107017, 107017), (107018, 107018)]

private theorem c0973_intervals_eq :
    witnessIntervals c0973_witnesses = c0973_intervals := by
  rfl

private theorem c0973_checks : witnessesCheck c0973_witnesses = true := by
  simp only [witnessesCheck, c0973_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk238.w14_check, B699LowIndex.I11TerminalData.Chunk238.w15_check, B699LowIndex.I11TerminalData.Chunk239.w0_check, Bool.and_self]

private theorem c0973_cover : coverCheck 107016 107018 c0973_intervals = true := by
  decide

private theorem c0973_sound : IntervalSound (107016, 107018) := by
  have hc : coverCheck 107016 107018 (witnessIntervals c0973_witnesses) = true := by
    rw [c0973_intervals_eq]
    exact c0973_cover
  exact interval_sound_of_witness_checks (witnesses := c0973_witnesses)
    (lo := 107016) (hi := 107018) c0973_checks hc

private def c0974_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk239.w1]
private def c0974_intervals : List NatInterval := [(108135, 108135)]

private theorem c0974_intervals_eq :
    witnessIntervals c0974_witnesses = c0974_intervals := by
  rfl

private theorem c0974_checks : witnessesCheck c0974_witnesses = true := by
  simp only [witnessesCheck, c0974_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk239.w1_check, Bool.and_self]

private theorem c0974_cover : coverCheck 108135 108135 c0974_intervals = true := by
  decide

private theorem c0974_sound : IntervalSound (108135, 108135) := by
  have hc : coverCheck 108135 108135 (witnessIntervals c0974_witnesses) = true := by
    rw [c0974_intervals_eq]
    exact c0974_cover
  exact interval_sound_of_witness_checks (witnesses := c0974_witnesses)
    (lo := 108135) (hi := 108135) c0974_checks hc

private def c0975_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk239.w2]
private def c0975_intervals : List NatInterval := [(108388, 108388)]

private theorem c0975_intervals_eq :
    witnessIntervals c0975_witnesses = c0975_intervals := by
  rfl

private theorem c0975_checks : witnessesCheck c0975_witnesses = true := by
  simp only [witnessesCheck, c0975_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk239.w2_check, Bool.and_self]

private theorem c0975_cover : coverCheck 108388 108388 c0975_intervals = true := by
  decide

private theorem c0975_sound : IntervalSound (108388, 108388) := by
  have hc : coverCheck 108388 108388 (witnessIntervals c0975_witnesses) = true := by
    rw [c0975_intervals_eq]
    exact c0975_cover
  exact interval_sound_of_witness_checks (witnesses := c0975_witnesses)
    (lo := 108388) (hi := 108388) c0975_checks hc

def intervals : List NatInterval := [(95744, 95752), (96256, 96260), (100359, 100362), (100608, 100612), (100845, 100852), (101875, 101881), (103936, 103939), (104960, 104968), (105219, 105226), (105472, 105472), (105987, 105994), (106250, 106250), (106677, 106683), (107016, 107018), (108135, 108135), (108388, 108388)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (95744, 95752)) (intervals := [(96256, 96260), (100359, 100362), (100608, 100612), (100845, 100852), (101875, 101881), (103936, 103939), (104960, 104968), (105219, 105226), (105472, 105472), (105987, 105994), (106250, 106250), (106677, 106683), (107016, 107018), (108135, 108135), (108388, 108388)]) c0960_sound (intervals_sound_cons (I := (96256, 96260)) (intervals := [(100359, 100362), (100608, 100612), (100845, 100852), (101875, 101881), (103936, 103939), (104960, 104968), (105219, 105226), (105472, 105472), (105987, 105994), (106250, 106250), (106677, 106683), (107016, 107018), (108135, 108135), (108388, 108388)]) c0961_sound (intervals_sound_cons (I := (100359, 100362)) (intervals := [(100608, 100612), (100845, 100852), (101875, 101881), (103936, 103939), (104960, 104968), (105219, 105226), (105472, 105472), (105987, 105994), (106250, 106250), (106677, 106683), (107016, 107018), (108135, 108135), (108388, 108388)]) c0962_sound (intervals_sound_cons (I := (100608, 100612)) (intervals := [(100845, 100852), (101875, 101881), (103936, 103939), (104960, 104968), (105219, 105226), (105472, 105472), (105987, 105994), (106250, 106250), (106677, 106683), (107016, 107018), (108135, 108135), (108388, 108388)]) c0963_sound (intervals_sound_cons (I := (100845, 100852)) (intervals := [(101875, 101881), (103936, 103939), (104960, 104968), (105219, 105226), (105472, 105472), (105987, 105994), (106250, 106250), (106677, 106683), (107016, 107018), (108135, 108135), (108388, 108388)]) c0964_sound (intervals_sound_cons (I := (101875, 101881)) (intervals := [(103936, 103939), (104960, 104968), (105219, 105226), (105472, 105472), (105987, 105994), (106250, 106250), (106677, 106683), (107016, 107018), (108135, 108135), (108388, 108388)]) c0965_sound (intervals_sound_cons (I := (103936, 103939)) (intervals := [(104960, 104968), (105219, 105226), (105472, 105472), (105987, 105994), (106250, 106250), (106677, 106683), (107016, 107018), (108135, 108135), (108388, 108388)]) c0966_sound (intervals_sound_cons (I := (104960, 104968)) (intervals := [(105219, 105226), (105472, 105472), (105987, 105994), (106250, 106250), (106677, 106683), (107016, 107018), (108135, 108135), (108388, 108388)]) c0967_sound (intervals_sound_cons (I := (105219, 105226)) (intervals := [(105472, 105472), (105987, 105994), (106250, 106250), (106677, 106683), (107016, 107018), (108135, 108135), (108388, 108388)]) c0968_sound (intervals_sound_cons (I := (105472, 105472)) (intervals := [(105987, 105994), (106250, 106250), (106677, 106683), (107016, 107018), (108135, 108135), (108388, 108388)]) c0969_sound (intervals_sound_cons (I := (105987, 105994)) (intervals := [(106250, 106250), (106677, 106683), (107016, 107018), (108135, 108135), (108388, 108388)]) c0970_sound (intervals_sound_cons (I := (106250, 106250)) (intervals := [(106677, 106683), (107016, 107018), (108135, 108135), (108388, 108388)]) c0971_sound (intervals_sound_cons (I := (106677, 106683)) (intervals := [(107016, 107018), (108135, 108135), (108388, 108388)]) c0972_sound (intervals_sound_cons (I := (107016, 107018)) (intervals := [(108135, 108135), (108388, 108388)]) c0973_sound (intervals_sound_cons (I := (108135, 108135)) (intervals := [(108388, 108388)]) c0974_sound (intervals_sound_cons (I := (108388, 108388)) (intervals := []) c0975_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G060
