import Mathlib.Tactic.IntervalCases
import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.FiniteChecker

namespace B699.SmoothWindow

theorem crt_row_10 : CommonFour 10 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=7) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_11 : CommonFour 11 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=11) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_12 : CommonFour 12 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=11) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_18 : CommonFour 18 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=17) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_19 : CommonFour 19 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=19) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_27 : CommonFour 27 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=5) (e:=2) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_30 : CommonFour 30 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=29) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_33 : CommonFour 33 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=31) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_48 : CommonFour 48 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=47) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_57 : CommonFour 57 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=19) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  have h1 := noCommon_mod_le (p:=11) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h1
  interval_cases q1 : j % 11 <;> omega

theorem crt_row_64 : CommonFour 64 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=61) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_65 : CommonFour 65 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=31) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  have h1 := noCommon_mod_le (p:=13) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h1
  interval_cases q0 : j % 31 <;> omega

theorem crt_row_66 : CommonFour 66 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=13) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  have h1 := noCommon_mod_le (p:=11) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h1
  interval_cases q0 : j % 13 <;> omega

theorem crt_row_81 : CommonFour 81 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=79) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_82 : CommonFour 82 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=79) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_83 : CommonFour 83 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=83) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_84 : CommonFour 84 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=83) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_99 : CommonFour 99 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=97) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_128 : CommonFour 128 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=127) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_129 : CommonFour 129 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=127) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_162 : CommonFour 162 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=53) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  have h1 := noCommon_mod_le (p:=23) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h1
  interval_cases q0 : j % 53 <;> interval_cases q1 : j % 23 <;> omega

theorem crt_row_163 : CommonFour 163 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=163) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_192 : CommonFour 192 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=191) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_243 : CommonFour 243 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=241) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_246 : CommonFour 246 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=61) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  have h1 := noCommon_mod_le (p:=7) (e:=2) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h1
  interval_cases q0 : j % 61 <;> interval_cases q1 : j % 49 <;> omega

theorem crt_row_489 : CommonFour 489 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=487) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_513 : CommonFour 513 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=73) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  have h1 := noCommon_mod_le (p:=19) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h1
  interval_cases q0 : j % 73 <;> omega

theorem crt_row_514 : CommonFour 514 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=257) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  have h1 := noCommon_mod_le (p:=73) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h1
  interval_cases q1 : j % 73 <;> omega

theorem crt_row_515 : CommonFour 515 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=257) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  have h1 := noCommon_mod_le (p:=103) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h1
  interval_cases q0 : j % 257 <;> omega

theorem crt_row_729 : CommonFour 729 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=727) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_1026 : CommonFour 1026 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=41) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  have h1 := noCommon_mod_le (p:=31) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h1
  have h2 := noCommon_mod_le (p:=5) (e:=2) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h2
  interval_cases q0 : j % 41 <;> interval_cases q1 : j % 31 <;> interval_cases q2 : j % 25 <;> omega

theorem crt_row_1027 : CommonFour 1027 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=79) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  have h1 := noCommon_mod_le (p:=41) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h1
  interval_cases q1 : j % 41 <;> omega

theorem crt_row_1458 : CommonFour 1458 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=97) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  have h1 := noCommon_mod_le (p:=47) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h1
  interval_cases q0 : j % 97 <;> interval_cases q1 : j % 47 <;> omega

theorem crt_row_1539 : CommonFour 1539 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=769) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  have h1 := noCommon_mod_le (p:=53) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h1
  interval_cases q0 : j % 769 <;> interval_cases q1 : j % 53 <;> omega

theorem crt_row_2187 : CommonFour 2187 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=1093) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  have h1 := noCommon_mod_le (p:=23) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h1
  interval_cases q0 : j % 1093 <;> interval_cases q1 : j % 23 <;> omega

theorem crt_row_4098 : CommonFour 4098 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=683) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  have h1 := noCommon_mod_le (p:=241) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h1
  interval_cases q1 : j % 241 <;> omega

theorem crt_row_6561 : CommonFour 6561 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=1093) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  have h1 := noCommon_mod_le (p:=937) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h1
  interval_cases q0 : j % 1093 <;> interval_cases q1 : j % 937 <;> omega

theorem crt_row_6562 : CommonFour 6562 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=937) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  have h1 := noCommon_mod_le (p:=193) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h1
  interval_cases q0 : j % 937 <;> omega

theorem crt_row_6563 : CommonFour 6563 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=6563) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_8193 : CommonFour 8193 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=8191) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_12288 : CommonFour 12288 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=6143) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  have h1 := noCommon_mod_le (p:=1117) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h1
  interval_cases q0 : j % 6143 <;> interval_cases q1 : j % 1117 <;> omega

theorem crt_row_13122 : CommonFour 13122 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=13121) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_13123 : CommonFour 13123 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=13121) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_19683 : CommonFour 19683 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=19681) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_32769 : CommonFour 32769 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=331) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  have h1 := noCommon_mod_le (p:=151) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h1
  interval_cases q1 : j % 151 <;> omega

theorem crt_row_65538 : CommonFour 65538 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=65537) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_262146 : CommonFour 262146 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=43691) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  have h1 := noCommon_mod_le (p:=109) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h1
  interval_cases q1 : j % 109 <;> omega

theorem crt_row_524289 : CommonFour 524289 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=524287) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_531441 : CommonFour 531441 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=4703) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  have h1 := noCommon_mod_le (p:=3851) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h1
  interval_cases q0 : j % 4703 <;> interval_cases q1 : j % 3851 <;> omega

theorem crt_row_786432 : CommonFour 786432 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=786431) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_1062882 : CommonFour 1062882 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=1062881) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  omega

theorem crt_row_1594323 : CommonFour 1594323 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=797161) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  have h1 := noCommon_mod_le (p:=8093) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h1
  interval_cases q0 : j % 797161 <;> interval_cases q1 : j % 8093 <;> omega

theorem crt_row_43046721 : CommonFour 43046721 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=483671) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  have h1 := noCommon_mod_le (p:=4561) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h1
  interval_cases q0 : j % 483671 <;> interval_cases q1 : j % 4561 <;> omega

theorem crt_row_86093442 : CommonFour 86093442 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=29017) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  have h1 := noCommon_mod_le (p:=9199) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h1
  interval_cases q0 : j % 29017 <;> interval_cases q1 : j % 9199 <;> omega

theorem crt_row_129140163 : CommonFour 129140163 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=94747) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  have h1 := noCommon_mod_le (p:=34511) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h1
  interval_cases q0 : j % 94747 <;> interval_cases q1 : j % 34511 <;> omega

theorem crt_row_134217729 : CommonFour 134217729 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=262657) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  have h1 := noCommon_mod_le (p:=87211) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h1
  interval_cases q0 : j % 262657 <;> omega

theorem crt_row_268435458 : CommonFour 268435458 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=15790321) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  have h1 := noCommon_mod_le (p:=87211) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h1
  interval_cases q0 : j % 15790321 <;> omega

theorem crt_row_402653187 : CommonFour 402653187 := by
  intro j hj hjhalf
  by_contra hno
  have h0 := noCommon_mod_le (p:=87211) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h0
  have h1 := noCommon_mod_le (p:=9883) (e:=1) hj hjhalf
    (by norm_num) (by decide) (by decide) (by decide) (by decide) hno
  norm_num at h1
  interval_cases q1 : j % 9883 <;> omega

end B699.SmoothWindow
