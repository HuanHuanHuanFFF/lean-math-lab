import Mathlib.Tactic.IntervalCases
import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.FiniteChecker

namespace B699.SmoothWindow

set_option maxRecDepth 8192

theorem bound_row_732 : CommonFour 732 :=
  boundCheck_sound (U:=729) (V:=16275715) (useW:=true) (by decide)

theorem bound_row_768 : CommonFour 768 :=
  boundCheck_sound (U:=576) (V:=24969685) (useW:=true) (by decide)

theorem bound_row_769 : CommonFour 769 :=
  boundCheck_sound (U:=64) (V:=225902209) (useW:=false) (by decide)

theorem bound_row_770 : CommonFour 770 :=
  boundCheck_sound (U:=64) (V:=227081855) (useW:=false) (by decide)

theorem bound_row_771 : CommonFour 771 :=
  boundCheck_sound (U:=192) (V:=76088705) (useW:=false) (by decide)

theorem bound_row_1024 : CommonFour 1024 :=
  boundCheck_sound (U:=256) (V:=177910271) (useW:=false) (by decide)

theorem bound_row_1025 : CommonFour 1025 :=
  boundCheck_sound (U:=256) (V:=178607275) (useW:=false) (by decide)

theorem bound_row_1459 : CommonFour 1459 :=
  boundCheck_sound (U:=972) (V:=193444433) (useW:=true) (by decide)

theorem bound_row_1460 : CommonFour 1460 :=
  boundCheck_sound (U:=243) (V:=775903495) (useW:=false) (by decide)

theorem bound_row_1461 : CommonFour 1461 :=
  boundCheck_sound (U:=729) (V:=259344545) (useW:=true) (by decide)

theorem bound_row_1536 : CommonFour 1536 :=
  boundCheck_sound (U:=384) (V:=601623295) (useW:=false) (by decide)

theorem bound_row_1537 : CommonFour 1537 :=
  boundCheck_sound (U:=128) (V:=1809579265) (useW:=false) (by decide)

theorem bound_row_1538 : CommonFour 1538 :=
  boundCheck_sound (U:=128) (V:=1814297855) (useW:=false) (by decide)

theorem bound_row_2048 : CommonFour 2048 :=
  boundCheck_sound (U:=512) (V:=1427465215) (useW:=false) (by decide)

theorem bound_row_2049 : CommonFour 2049 :=
  boundCheck_sound (U:=1536) (V:=476752441) (useW:=true) (by decide)

theorem bound_row_2050 : CommonFour 2050 :=
  boundCheck_sound (U:=512) (V:=1433053525) (useW:=false) (by decide)

theorem bound_row_2051 : CommonFour 2051 :=
  boundCheck_sound (U:=512) (V:=1435853825) (useW:=false) (by decide)

theorem bound_row_2188 : CommonFour 2188 :=
  boundCheck_sound (U:=729) (V:=1306348135) (useW:=false) (by decide)

theorem bound_row_2189 : CommonFour 2189 :=
  boundCheck_sound (U:=729) (V:=1308739619) (useW:=false) (by decide)

theorem bound_row_2190 : CommonFour 2190 :=
  boundCheck_sound (U:=2187) (V:=437044795) (useW:=true) (by decide)

theorem bound_row_3072 : CommonFour 3072 :=
  boundCheck_sound (U:=2304) (V:=1607468885) (useW:=true) (by decide)

theorem bound_row_3073 : CommonFour 3073 :=
  boundCheck_sound (U:=256) (V:=14486075905) (useW:=false) (by decide)

theorem bound_row_3074 : CommonFour 3074 :=
  boundCheck_sound (U:=256) (V:=14504950271) (useW:=false) (by decide)

theorem bound_row_3075 : CommonFour 3075 :=
  boundCheck_sound (U:=768) (V:=4841281025) (useW:=false) (by decide)

theorem bound_row_4096 : CommonFour 4096 :=
  boundCheck_sound (U:=3072) (V:=3812158805) (useW:=true) (by decide)

theorem bound_row_4097 : CommonFour 4097 :=
  boundCheck_sound (U:=3072) (V:=3815884345) (useW:=true) (by decide)

theorem bound_row_4099 : CommonFour 4099 :=
  boundCheck_sound (U:=1024) (V:=11470030849) (useW:=false) (by decide)

theorem bound_row_4374 : CommonFour 4374 :=
  boundCheck_sound (U:=2187) (V:=6964006873) (useW:=true) (by decide)

theorem bound_row_4375 : CommonFour 4375 :=
  boundCheck_sound (U:=729) (V:=20911139375) (useW:=false) (by decide)

theorem bound_row_4376 : CommonFour 4376 :=
  boundCheck_sound (U:=1458) (V:=10465135625) (useW:=false) (by decide)

theorem bound_row_4377 : CommonFour 4377 :=
  boundCheck_sound (U:=4374) (V:=3491569375) (useW:=true) (by decide)

theorem bound_row_6144 : CommonFour 6144 :=
  boundCheck_sound (U:=1536) (V:=38616968191) (useW:=false) (by decide)

theorem bound_row_6145 : CommonFour 6145 :=
  boundCheck_sound (U:=512) (V:=115926365185) (useW:=false) (by decide)

theorem bound_row_6146 : CommonFour 6146 :=
  boundCheck_sound (U:=512) (V:=116001862655) (useW:=false) (by decide)

theorem bound_row_6147 : CommonFour 6147 :=
  boundCheck_sound (U:=4608) (V:=12897488555) (useW:=true) (by decide)

theorem bound_row_6564 : CommonFour 6564 :=
  boundCheck_sound (U:=6561) (V:=11778662041) (useW:=true) (by decide)

theorem bound_row_8192 : CommonFour 8192 :=
  boundCheck_sound (U:=6144) (V:=30519625045) (useW:=true) (by decide)

theorem bound_row_8194 : CommonFour 8194 :=
  boundCheck_sound (U:=2048) (V:=91648337237) (useW:=false) (by decide)

theorem bound_row_8195 : CommonFour 8195 :=
  boundCheck_sound (U:=2048) (V:=91693092865) (useW:=false) (by decide)

theorem bound_row_12289 : CommonFour 12289 :=
  boundCheck_sound (U:=1024) (V:=927561934849) (useW:=false) (by decide)

theorem bound_row_12290 : CommonFour 12290 :=
  boundCheck_sound (U:=1024) (V:=927863924735) (useW:=false) (by decide)

theorem bound_row_12291 : CommonFour 12291 :=
  boundCheck_sound (U:=3072) (V:=309388662785) (useW:=false) (by decide)

theorem bound_row_13124 : CommonFour 13124 :=
  boundCheck_sound (U:=2187) (V:=564945163123) (useW:=false) (by decide)

theorem bound_row_13125 : CommonFour 13125 :=
  boundCheck_sound (U:=6561) (V:=188372463125) (useW:=true) (by decide)

theorem bound_row_16384 : CommonFour 16384 :=
  boundCheck_sound (U:=4096) (V:=732739346431) (useW:=false) (by decide)

theorem bound_row_16385 : CommonFour 16385 :=
  boundCheck_sound (U:=4096) (V:=732918270635) (useW:=false) (by decide)

theorem bound_row_16386 : CommonFour 16386 :=
  boundCheck_sound (U:=12288) (V:=244365742535) (useW:=true) (by decide)

theorem bound_row_16387 : CommonFour 16387 :=
  boundCheck_sound (U:=4096) (V:=733276217345) (useW:=false) (by decide)

end B699.SmoothWindow
