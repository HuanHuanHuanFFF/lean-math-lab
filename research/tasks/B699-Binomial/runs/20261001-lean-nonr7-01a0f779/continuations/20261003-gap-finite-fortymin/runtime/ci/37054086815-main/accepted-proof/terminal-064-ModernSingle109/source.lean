module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.ModernPrunedCount
import all research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.ModernPrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
public section
namespace B699ModernPrunedSieve.ModernSingle109
open B699ModernPrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_125440 : count [19, 17, 13, 11, 7, 5, 3, 2] 125440 = (21450 : Int) := by
  decide

theorem node_8_5453 : count [19, 17, 13, 11, 7, 5, 3, 2] 5453 = (929 : Int) := by
  decide

theorem node_7_125440 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = (20521 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = count [19, 17, 13, 11, 7, 5, 3, 2] 125440 - count [19, 17, 13, 11, 7, 5, 3, 2] (125440 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 125440 (by decide)
    _ = (21450 : Int) - (929 : Int) :=
      sub_congr node_8_125440 node_8_5453
    _ = (20521 : Int) := by decide

theorem node_8_4325 : count [19, 17, 13, 11, 7, 5, 3, 2] 4325 = (737 : Int) := by
  decide

theorem node_8_188 : count [19, 17, 13, 11, 7, 5, 3, 2] 188 = (35 : Int) := by
  decide

theorem node_7_4325 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4325 = (702 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4325 = count [19, 17, 13, 11, 7, 5, 3, 2] 4325 - count [19, 17, 13, 11, 7, 5, 3, 2] (4325 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4325 (by decide)
    _ = (737 : Int) - (35 : Int) :=
      sub_congr node_8_4325 node_8_188
    _ = (702 : Int) := by decide

theorem node_6_125440 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = (19819 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (125440 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 (by decide)
    _ = (20521 : Int) - (702 : Int) :=
      sub_congr node_7_125440 node_7_4325
    _ = (19819 : Int) := by decide

theorem node_8_4046 : count [19, 17, 13, 11, 7, 5, 3, 2] 4046 = (689 : Int) := by
  decide

theorem node_8_175 : count [19, 17, 13, 11, 7, 5, 3, 2] 175 = (33 : Int) := by
  decide

theorem node_7_4046 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4046 = (656 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4046 = count [19, 17, 13, 11, 7, 5, 3, 2] 4046 - count [19, 17, 13, 11, 7, 5, 3, 2] (4046 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4046 (by decide)
    _ = (689 : Int) - (33 : Int) :=
      sub_congr node_8_4046 node_8_175
    _ = (656 : Int) := by decide

theorem node_8_139 : count [19, 17, 13, 11, 7, 5, 3, 2] 139 = (27 : Int) := by
  decide

theorem node_8_6 : count [19, 17, 13, 11, 7, 5, 3, 2] 6 = (1 : Int) := by
  decide

theorem node_7_139 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 139 = (26 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 139 = count [19, 17, 13, 11, 7, 5, 3, 2] 139 - count [19, 17, 13, 11, 7, 5, 3, 2] (139 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 139 (by decide)
    _ = (27 : Int) - (1 : Int) :=
      sub_congr node_8_139 node_8_6
    _ = (26 : Int) := by decide

theorem node_6_4046 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4046 = (630 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4046 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4046 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (4046 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 4046 (by decide)
    _ = (656 : Int) - (26 : Int) :=
      sub_congr node_7_4046 node_7_139
    _ = (630 : Int) := by decide

theorem node_5_125440 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = (19189 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (125440 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 (by decide)
    _ = (19819 : Int) - (630 : Int) :=
      sub_congr node_6_125440 node_6_4046
    _ = (19189 : Int) := by decide

theorem node_8_3390 : count [19, 17, 13, 11, 7, 5, 3, 2] 3390 = (576 : Int) := by
  decide

theorem node_8_147 : count [19, 17, 13, 11, 7, 5, 3, 2] 147 = (27 : Int) := by
  decide

theorem node_7_3390 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3390 = (549 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3390 = count [19, 17, 13, 11, 7, 5, 3, 2] 3390 - count [19, 17, 13, 11, 7, 5, 3, 2] (3390 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3390 (by decide)
    _ = (576 : Int) - (27 : Int) :=
      sub_congr node_8_3390 node_8_147
    _ = (549 : Int) := by decide

theorem node_8_116 : count [19, 17, 13, 11, 7, 5, 3, 2] 116 = (23 : Int) := by
  decide

theorem node_8_5 : count [19, 17, 13, 11, 7, 5, 3, 2] 5 = (1 : Int) := by
  decide

theorem node_7_116 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 116 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 116 = count [19, 17, 13, 11, 7, 5, 3, 2] 116 - count [19, 17, 13, 11, 7, 5, 3, 2] (116 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 116 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_116 node_8_5
    _ = (22 : Int) := by decide

theorem node_6_3390 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3390 = (527 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3390 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3390 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3390 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3390 (by decide)
    _ = (549 : Int) - (22 : Int) :=
      sub_congr node_7_3390 node_7_116
    _ = (527 : Int) := by decide

theorem node_8_109 : count [19, 17, 13, 11, 7, 5, 3, 2] 109 = (22 : Int) := by
  decide

theorem node_8_4 : count [19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  decide

theorem node_7_109 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 109 = (21 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 109 = count [19, 17, 13, 11, 7, 5, 3, 2] 109 - count [19, 17, 13, 11, 7, 5, 3, 2] (109 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 109 (by decide)
    _ = (22 : Int) - (1 : Int) :=
      sub_congr node_8_109 node_8_4
    _ = (21 : Int) := by decide

theorem node_8_3 : count [19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  decide

theorem node_8_0 : count [19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [19, 17, 13, 11, 7, 5, 3, 2]

theorem node_7_3 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = count [19, 17, 13, 11, 7, 5, 3, 2] 3 - count [19, 17, 13, 11, 7, 5, 3, 2] (3 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_3 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_109 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109 = (20 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 109 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (109 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 109 (by decide)
    _ = (21 : Int) - (1 : Int) :=
      sub_congr node_7_109 node_7_3
    _ = (20 : Int) := by decide

theorem node_5_3390 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3390 = (507 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3390 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3390 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3390 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3390 (by decide)
    _ = (527 : Int) - (20 : Int) :=
      sub_congr node_6_3390 node_6_109
    _ = (507 : Int) := by decide

theorem node_4_125440 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = (18682 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (125440 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 (by decide)
    _ = (19189 : Int) - (507 : Int) :=
      sub_congr node_5_125440 node_5_3390
    _ = (18682 : Int) := by decide

theorem node_8_3059 : count [19, 17, 13, 11, 7, 5, 3, 2] 3059 = (519 : Int) := by
  decide

theorem node_8_133 : count [19, 17, 13, 11, 7, 5, 3, 2] 133 = (25 : Int) := by
  decide

theorem node_7_3059 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 = (494 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 = count [19, 17, 13, 11, 7, 5, 3, 2] 3059 - count [19, 17, 13, 11, 7, 5, 3, 2] (3059 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3059 (by decide)
    _ = (519 : Int) - (25 : Int) :=
      sub_congr node_8_3059 node_8_133
    _ = (494 : Int) := by decide

theorem node_8_105 : count [19, 17, 13, 11, 7, 5, 3, 2] 105 = (20 : Int) := by
  decide

theorem node_7_105 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 105 = (19 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 105 = count [19, 17, 13, 11, 7, 5, 3, 2] 105 - count [19, 17, 13, 11, 7, 5, 3, 2] (105 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 105 (by decide)
    _ = (20 : Int) - (1 : Int) :=
      sub_congr node_8_105 node_8_4
    _ = (19 : Int) := by decide

theorem node_6_3059 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 = (475 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3059 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 (by decide)
    _ = (494 : Int) - (19 : Int) :=
      sub_congr node_7_3059 node_7_105
    _ = (475 : Int) := by decide

theorem node_8_98 : count [19, 17, 13, 11, 7, 5, 3, 2] 98 = (18 : Int) := by
  decide

theorem node_7_98 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 98 = (17 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 98 = count [19, 17, 13, 11, 7, 5, 3, 2] 98 - count [19, 17, 13, 11, 7, 5, 3, 2] (98 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 98 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_8_98 node_8_4
    _ = (17 : Int) := by decide

theorem node_6_98 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98 = (16 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 98 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (98 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 98 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_7_98 node_7_3
    _ = (16 : Int) := by decide

theorem node_5_3059 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 = (459 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3059 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 (by decide)
    _ = (475 : Int) - (16 : Int) :=
      sub_congr node_6_3059 node_6_98
    _ = (459 : Int) := by decide

theorem node_8_82 : count [19, 17, 13, 11, 7, 5, 3, 2] 82 = (15 : Int) := by
  decide

theorem node_7_82 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = (14 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = count [19, 17, 13, 11, 7, 5, 3, 2] 82 - count [19, 17, 13, 11, 7, 5, 3, 2] (82 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 82 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_8_82 node_8_3
    _ = (14 : Int) := by decide

theorem node_8_2 : count [19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  decide

theorem node_7_2 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [19, 17, 13, 11, 7, 5, 3, 2] 2 - count [19, 17, 13, 11, 7, 5, 3, 2] (2 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_2 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_82 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = (13 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 82 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (82 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 82 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_7_82 node_7_2
    _ = (13 : Int) := by decide

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_2 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_2 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_82 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = (12 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (82 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_6_82 node_6_2
    _ = (12 : Int) := by decide

theorem node_4_3059 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 = (447 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3059 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 (by decide)
    _ = (459 : Int) - (12 : Int) :=
      sub_congr node_5_3059 node_5_82
    _ = (447 : Int) := by decide

theorem node_3_125440 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = (18235 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (125440 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 (by decide)
    _ = (18682 : Int) - (447 : Int) :=
      sub_congr node_4_125440 node_4_3059
    _ = (18235 : Int) := by decide

theorem node_8_2917 : count [19, 17, 13, 11, 7, 5, 3, 2] 2917 = (496 : Int) := by
  decide

theorem node_8_126 : count [19, 17, 13, 11, 7, 5, 3, 2] 126 = (23 : Int) := by
  decide

theorem node_7_2917 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 = (473 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 = count [19, 17, 13, 11, 7, 5, 3, 2] 2917 - count [19, 17, 13, 11, 7, 5, 3, 2] (2917 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2917 (by decide)
    _ = (496 : Int) - (23 : Int) :=
      sub_congr node_8_2917 node_8_126
    _ = (473 : Int) := by decide

theorem node_8_100 : count [19, 17, 13, 11, 7, 5, 3, 2] 100 = (18 : Int) := by
  decide

theorem node_7_100 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 100 = (17 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 100 = count [19, 17, 13, 11, 7, 5, 3, 2] 100 - count [19, 17, 13, 11, 7, 5, 3, 2] (100 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 100 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_8_100 node_8_4
    _ = (17 : Int) := by decide

theorem node_6_2917 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 = (456 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2917 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 (by decide)
    _ = (473 : Int) - (17 : Int) :=
      sub_congr node_7_2917 node_7_100
    _ = (456 : Int) := by decide

theorem node_8_94 : count [19, 17, 13, 11, 7, 5, 3, 2] 94 = (17 : Int) := by
  decide

theorem node_7_94 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 94 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 94 = count [19, 17, 13, 11, 7, 5, 3, 2] 94 - count [19, 17, 13, 11, 7, 5, 3, 2] (94 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 94 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_94 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_94 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94 = (15 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 94 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (94 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 94 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_7_94 node_7_3
    _ = (15 : Int) := by decide

theorem node_5_2917 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 = (441 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2917 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 (by decide)
    _ = (456 : Int) - (15 : Int) :=
      sub_congr node_6_2917 node_6_94
    _ = (441 : Int) := by decide

theorem node_8_78 : count [19, 17, 13, 11, 7, 5, 3, 2] 78 = (14 : Int) := by
  decide

theorem node_7_78 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = count [19, 17, 13, 11, 7, 5, 3, 2] 78 - count [19, 17, 13, 11, 7, 5, 3, 2] (78 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 78 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_78 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_78 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = (12 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (78 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_7_78 node_7_2
    _ = (12 : Int) := by decide

theorem node_5_78 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = (11 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 78 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (78 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 78 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_6_78 node_6_2
    _ = (11 : Int) := by decide

theorem node_4_2917 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 = (430 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2917 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 (by decide)
    _ = (441 : Int) - (11 : Int) :=
      sub_congr node_5_2917 node_5_78
    _ = (430 : Int) := by decide

theorem node_8_71 : count [19, 17, 13, 11, 7, 5, 3, 2] 71 = (13 : Int) := by
  decide

theorem node_7_71 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = (12 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = count [19, 17, 13, 11, 7, 5, 3, 2] 71 - count [19, 17, 13, 11, 7, 5, 3, 2] (71 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 71 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_8_71 node_8_3
    _ = (12 : Int) := by decide

theorem node_6_71 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = (11 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (71 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_7_71 node_7_2
    _ = (11 : Int) := by decide

theorem node_5_71 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = (10 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (71 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_6_71 node_6_2
    _ = (10 : Int) := by decide

theorem node_8_1 : count [19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  decide

theorem node_7_1 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [19, 17, 13, 11, 7, 5, 3, 2] 1 - count [19, 17, 13, 11, 7, 5, 3, 2] (1 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_1 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_1 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_1 node_7_0
    _ = (1 : Int) := by decide

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_1 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_1 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_71 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = (9 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (71 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_5_71 node_5_1
    _ = (9 : Int) := by decide

theorem node_3_2917 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 = (421 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2917 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 (by decide)
    _ = (430 : Int) - (9 : Int) :=
      sub_congr node_4_2917 node_4_71
    _ = (421 : Int) := by decide

theorem node_2_125440 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = (17814 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (125440 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 (by decide)
    _ = (18235 : Int) - (421 : Int) :=
      sub_congr node_3_125440 node_3_2917
    _ = (17814 : Int) := by decide

theorem node_8_2668 : count [19, 17, 13, 11, 7, 5, 3, 2] 2668 = (451 : Int) := by
  decide

theorem node_7_2668 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = (428 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = count [19, 17, 13, 11, 7, 5, 3, 2] 2668 - count [19, 17, 13, 11, 7, 5, 3, 2] (2668 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2668 (by decide)
    _ = (451 : Int) - (23 : Int) :=
      sub_congr node_8_2668 node_8_116
    _ = (428 : Int) := by decide

theorem node_8_92 : count [19, 17, 13, 11, 7, 5, 3, 2] 92 = (17 : Int) := by
  decide

theorem node_7_92 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 92 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 92 = count [19, 17, 13, 11, 7, 5, 3, 2] 92 - count [19, 17, 13, 11, 7, 5, 3, 2] (92 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 92 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_92 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_2668 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = (412 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2668 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 (by decide)
    _ = (428 : Int) - (16 : Int) :=
      sub_congr node_7_2668 node_7_92
    _ = (412 : Int) := by decide

theorem node_8_86 : count [19, 17, 13, 11, 7, 5, 3, 2] 86 = (16 : Int) := by
  decide

theorem node_7_86 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = count [19, 17, 13, 11, 7, 5, 3, 2] 86 - count [19, 17, 13, 11, 7, 5, 3, 2] (86 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 86 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_86 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_86 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = (14 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (86 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_7_86 node_7_2
    _ = (14 : Int) := by decide

theorem node_5_2668 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = (398 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2668 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 (by decide)
    _ = (412 : Int) - (14 : Int) :=
      sub_congr node_6_2668 node_6_86
    _ = (398 : Int) := by decide

theorem node_8_72 : count [19, 17, 13, 11, 7, 5, 3, 2] 72 = (13 : Int) := by
  decide

theorem node_7_72 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = (12 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = count [19, 17, 13, 11, 7, 5, 3, 2] 72 - count [19, 17, 13, 11, 7, 5, 3, 2] (72 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 72 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_8_72 node_8_3
    _ = (12 : Int) := by decide

theorem node_6_72 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = (11 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 72 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (72 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 72 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_7_72 node_7_2
    _ = (11 : Int) := by decide

theorem node_5_72 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = (10 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (72 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_6_72 node_6_2
    _ = (10 : Int) := by decide

theorem node_4_2668 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = (388 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2668 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 (by decide)
    _ = (398 : Int) - (10 : Int) :=
      sub_congr node_5_2668 node_5_72
    _ = (388 : Int) := by decide

theorem node_8_65 : count [19, 17, 13, 11, 7, 5, 3, 2] 65 = (11 : Int) := by
  decide

theorem node_7_65 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = (10 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = count [19, 17, 13, 11, 7, 5, 3, 2] 65 - count [19, 17, 13, 11, 7, 5, 3, 2] (65 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 65 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_8_65 node_8_2
    _ = (10 : Int) := by decide

theorem node_6_65 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = (9 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 65 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (65 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 65 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_7_65 node_7_2
    _ = (9 : Int) := by decide

theorem node_5_65 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = (8 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (65 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_6_65 node_6_2
    _ = (8 : Int) := by decide

theorem node_4_65 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = (7 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (65 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_5_65 node_5_1
    _ = (7 : Int) := by decide

theorem node_3_2668 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = (381 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2668 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 (by decide)
    _ = (388 : Int) - (7 : Int) :=
      sub_congr node_4_2668 node_4_65
    _ = (381 : Int) := by decide

theorem node_8_62 : count [19, 17, 13, 11, 7, 5, 3, 2] 62 = (11 : Int) := by
  decide

theorem node_7_62 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = (10 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = count [19, 17, 13, 11, 7, 5, 3, 2] 62 - count [19, 17, 13, 11, 7, 5, 3, 2] (62 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 62 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_8_62 node_8_2
    _ = (10 : Int) := by decide

theorem node_6_62 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = (9 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 62 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (62 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 62 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_7_62 node_7_2
    _ = (9 : Int) := by decide

theorem node_5_62 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = (8 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (62 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_6_62 node_6_2
    _ = (8 : Int) := by decide

theorem node_4_62 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = (7 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (62 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_5_62 node_5_1
    _ = (7 : Int) := by decide

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_1 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_1 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_62 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = (6 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (62 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_4_62 node_4_1
    _ = (6 : Int) := by decide

theorem node_2_2668 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = (375 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2668 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 (by decide)
    _ = (381 : Int) - (6 : Int) :=
      sub_congr node_3_2668 node_3_62
    _ = (375 : Int) := by decide

theorem node_1_125440 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = (17439 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (125440 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 (by decide)
    _ = (17814 : Int) - (375 : Int) :=
      sub_congr node_2_125440 node_2_2668
    _ = (17439 : Int) := by decide

theorem node_8_2366 : count [19, 17, 13, 11, 7, 5, 3, 2] 2366 = (400 : Int) := by
  decide

theorem node_8_102 : count [19, 17, 13, 11, 7, 5, 3, 2] 102 = (19 : Int) := by
  decide

theorem node_7_2366 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = (381 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = count [19, 17, 13, 11, 7, 5, 3, 2] 2366 - count [19, 17, 13, 11, 7, 5, 3, 2] (2366 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2366 (by decide)
    _ = (400 : Int) - (19 : Int) :=
      sub_congr node_8_2366 node_8_102
    _ = (381 : Int) := by decide

theorem node_8_81 : count [19, 17, 13, 11, 7, 5, 3, 2] 81 = (15 : Int) := by
  decide

theorem node_7_81 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = (14 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = count [19, 17, 13, 11, 7, 5, 3, 2] 81 - count [19, 17, 13, 11, 7, 5, 3, 2] (81 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 81 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_8_81 node_8_3
    _ = (14 : Int) := by decide

theorem node_6_2366 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = (367 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2366 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 (by decide)
    _ = (381 : Int) - (14 : Int) :=
      sub_congr node_7_2366 node_7_81
    _ = (367 : Int) := by decide

theorem node_8_76 : count [19, 17, 13, 11, 7, 5, 3, 2] 76 = (14 : Int) := by
  decide

theorem node_7_76 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 76 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 76 = count [19, 17, 13, 11, 7, 5, 3, 2] 76 - count [19, 17, 13, 11, 7, 5, 3, 2] (76 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 76 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_76 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_76 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76 = (12 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 76 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (76 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 76 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_7_76 node_7_2
    _ = (12 : Int) := by decide

theorem node_5_2366 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = (355 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2366 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 (by decide)
    _ = (367 : Int) - (12 : Int) :=
      sub_congr node_6_2366 node_6_76
    _ = (355 : Int) := by decide

theorem node_8_63 : count [19, 17, 13, 11, 7, 5, 3, 2] 63 = (11 : Int) := by
  decide

theorem node_7_63 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 63 = (10 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 63 = count [19, 17, 13, 11, 7, 5, 3, 2] 63 - count [19, 17, 13, 11, 7, 5, 3, 2] (63 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 63 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_8_63 node_8_2
    _ = (10 : Int) := by decide

theorem node_6_63 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 = (9 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 63 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (63 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 63 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_7_63 node_7_2
    _ = (9 : Int) := by decide

theorem node_5_63 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 = (8 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (63 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_6_63 node_6_2
    _ = (8 : Int) := by decide

theorem node_4_2366 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = (347 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2366 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 (by decide)
    _ = (355 : Int) - (8 : Int) :=
      sub_congr node_5_2366 node_5_63
    _ = (347 : Int) := by decide

theorem node_8_57 : count [19, 17, 13, 11, 7, 5, 3, 2] 57 = (9 : Int) := by
  decide

theorem node_7_57 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = count [19, 17, 13, 11, 7, 5, 3, 2] 57 - count [19, 17, 13, 11, 7, 5, 3, 2] (57 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 57 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_57 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_57 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = (7 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 57 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (57 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 57 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_7_57 node_7_1
    _ = (7 : Int) := by decide

theorem node_5_57 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = (6 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (57 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_6_57 node_6_1
    _ = (6 : Int) := by decide

theorem node_4_57 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = (5 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (57 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_5_57 node_5_1
    _ = (5 : Int) := by decide

theorem node_3_2366 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = (342 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2366 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 (by decide)
    _ = (347 : Int) - (5 : Int) :=
      sub_congr node_4_2366 node_4_57
    _ = (342 : Int) := by decide

theorem node_8_55 : count [19, 17, 13, 11, 7, 5, 3, 2] 55 = (9 : Int) := by
  decide

theorem node_7_55 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = count [19, 17, 13, 11, 7, 5, 3, 2] 55 - count [19, 17, 13, 11, 7, 5, 3, 2] (55 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 55 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_55 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_55 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = (7 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 55 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (55 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 55 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_7_55 node_7_1
    _ = (7 : Int) := by decide

theorem node_5_55 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = (6 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (55 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_6_55 node_6_1
    _ = (6 : Int) := by decide

theorem node_4_55 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = (5 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (55 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_5_55 node_5_1
    _ = (5 : Int) := by decide

theorem node_3_55 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = (4 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (55 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_4_55 node_4_1
    _ = (4 : Int) := by decide

theorem node_2_2366 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = (338 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2366 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 (by decide)
    _ = (342 : Int) - (4 : Int) :=
      sub_congr node_3_2366 node_3_55
    _ = (338 : Int) := by decide

theorem node_8_50 : count [19, 17, 13, 11, 7, 5, 3, 2] 50 = (8 : Int) := by
  decide

theorem node_7_50 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = (7 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = count [19, 17, 13, 11, 7, 5, 3, 2] 50 - count [19, 17, 13, 11, 7, 5, 3, 2] (50 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 50 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_8_50 node_8_2
    _ = (7 : Int) := by decide

theorem node_6_50 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = (6 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 50 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (50 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 50 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_7_50 node_7_1
    _ = (6 : Int) := by decide

theorem node_5_50 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = (5 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (50 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_6_50 node_6_1
    _ = (5 : Int) := by decide

theorem node_4_50 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = (4 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (50 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_5_50 node_5_1
    _ = (4 : Int) := by decide

theorem node_3_50 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = (3 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (50 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_4_50 node_4_1
    _ = (3 : Int) := by decide

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_1 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_1 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_50 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = (2 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (50 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_3_50 node_3_1
    _ = (2 : Int) := by decide

theorem node_1_2366 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = (336 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2366 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 (by decide)
    _ = (338 : Int) - (2 : Int) :=
      sub_congr node_2_2366 node_2_50
    _ = (336 : Int) := by decide

theorem node_0_125440 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = (17103 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (125440 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 (by decide)
    _ = (17439 : Int) - (336 : Int) :=
      sub_congr node_1_125440 node_1_2366
    _ = (17103 : Int) := by decide

theorem row_109 : count primes 125440 ≤ (17118 : Int) - 15 := by
  rw [show count primes 125440 = (17103 : Int) from node_0_125440]
  decide

def pairs : List (Nat × Nat) := [(125440, 17118)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl
  · exact row_109
end B699ModernPrunedSieve.ModernSingle109
#check @B699ModernPrunedSieve.ModernSingle109.pairs_valid
#print axioms B699ModernPrunedSieve.ModernSingle109.pairs_valid
