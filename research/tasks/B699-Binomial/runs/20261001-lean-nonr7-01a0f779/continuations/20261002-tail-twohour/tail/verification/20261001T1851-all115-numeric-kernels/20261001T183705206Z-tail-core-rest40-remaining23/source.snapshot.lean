import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreRest40
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_121836 : count [19, 17, 13, 11, 7, 5, 3, 2] 121836 = (20835 : Int) := by
  decide

theorem node_8_5297 : count [19, 17, 13, 11, 7, 5, 3, 2] 5297 = (903 : Int) := by
  decide

theorem node_7_121836 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 = (19932 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 = count [19, 17, 13, 11, 7, 5, 3, 2] 121836 - count [19, 17, 13, 11, 7, 5, 3, 2] (121836 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 121836 (by decide)
    _ = (20835 : Int) - (903 : Int) :=
      sub_congr node_8_121836 node_8_5297
    _ = (19932 : Int) := by decide

theorem node_8_4201 : count [19, 17, 13, 11, 7, 5, 3, 2] 4201 = (717 : Int) := by
  decide

theorem node_8_182 : count [19, 17, 13, 11, 7, 5, 3, 2] 182 = (35 : Int) := by
  decide

theorem node_7_4201 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4201 = (682 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4201 = count [19, 17, 13, 11, 7, 5, 3, 2] 4201 - count [19, 17, 13, 11, 7, 5, 3, 2] (4201 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4201 (by decide)
    _ = (717 : Int) - (35 : Int) :=
      sub_congr node_8_4201 node_8_182
    _ = (682 : Int) := by decide

theorem node_6_121836 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 = (19250 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (121836 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 (by decide)
    _ = (19932 : Int) - (682 : Int) :=
      sub_congr node_7_121836 node_7_4201
    _ = (19250 : Int) := by decide

theorem node_8_3930 : count [19, 17, 13, 11, 7, 5, 3, 2] 3930 = (669 : Int) := by
  decide

theorem node_8_170 : count [19, 17, 13, 11, 7, 5, 3, 2] 170 = (32 : Int) := by
  decide

theorem node_7_3930 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3930 = (637 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3930 = count [19, 17, 13, 11, 7, 5, 3, 2] 3930 - count [19, 17, 13, 11, 7, 5, 3, 2] (3930 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3930 (by decide)
    _ = (669 : Int) - (32 : Int) :=
      sub_congr node_8_3930 node_8_170
    _ = (637 : Int) := by decide

theorem node_8_135 : count [19, 17, 13, 11, 7, 5, 3, 2] 135 = (25 : Int) := by
  decide

theorem node_8_5 : count [19, 17, 13, 11, 7, 5, 3, 2] 5 = (1 : Int) := by
  decide

theorem node_7_135 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 135 = (24 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 135 = count [19, 17, 13, 11, 7, 5, 3, 2] 135 - count [19, 17, 13, 11, 7, 5, 3, 2] (135 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 135 (by decide)
    _ = (25 : Int) - (1 : Int) :=
      sub_congr node_8_135 node_8_5
    _ = (24 : Int) := by decide

theorem node_6_3930 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3930 = (613 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3930 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3930 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3930 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3930 (by decide)
    _ = (637 : Int) - (24 : Int) :=
      sub_congr node_7_3930 node_7_135
    _ = (613 : Int) := by decide

theorem node_5_121836 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 = (18637 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (121836 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 (by decide)
    _ = (19250 : Int) - (613 : Int) :=
      sub_congr node_6_121836 node_6_3930
    _ = (18637 : Int) := by decide

theorem node_8_3292 : count [19, 17, 13, 11, 7, 5, 3, 2] 3292 = (557 : Int) := by
  decide

theorem node_8_143 : count [19, 17, 13, 11, 7, 5, 3, 2] 143 = (27 : Int) := by
  decide

theorem node_7_3292 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3292 = (530 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3292 = count [19, 17, 13, 11, 7, 5, 3, 2] 3292 - count [19, 17, 13, 11, 7, 5, 3, 2] (3292 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3292 (by decide)
    _ = (557 : Int) - (27 : Int) :=
      sub_congr node_8_3292 node_8_143
    _ = (530 : Int) := by decide

theorem node_8_113 : count [19, 17, 13, 11, 7, 5, 3, 2] 113 = (23 : Int) := by
  decide

theorem node_8_4 : count [19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  decide

theorem node_7_113 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 113 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 113 = count [19, 17, 13, 11, 7, 5, 3, 2] 113 - count [19, 17, 13, 11, 7, 5, 3, 2] (113 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 113 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_113 node_8_4
    _ = (22 : Int) := by decide

theorem node_6_3292 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3292 = (508 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3292 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3292 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3292 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3292 (by decide)
    _ = (530 : Int) - (22 : Int) :=
      sub_congr node_7_3292 node_7_113
    _ = (508 : Int) := by decide

theorem node_8_106 : count [19, 17, 13, 11, 7, 5, 3, 2] 106 = (20 : Int) := by
  decide

theorem node_7_106 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 106 = (19 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 106 = count [19, 17, 13, 11, 7, 5, 3, 2] 106 - count [19, 17, 13, 11, 7, 5, 3, 2] (106 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 106 (by decide)
    _ = (20 : Int) - (1 : Int) :=
      sub_congr node_8_106 node_8_4
    _ = (19 : Int) := by decide

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

theorem node_6_106 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106 = (18 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 106 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (106 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 106 (by decide)
    _ = (19 : Int) - (1 : Int) :=
      sub_congr node_7_106 node_7_3
    _ = (18 : Int) := by decide

theorem node_5_3292 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3292 = (490 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3292 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3292 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3292 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3292 (by decide)
    _ = (508 : Int) - (18 : Int) :=
      sub_congr node_6_3292 node_6_106
    _ = (490 : Int) := by decide

theorem node_4_121836 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 = (18147 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (121836 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 (by decide)
    _ = (18637 : Int) - (490 : Int) :=
      sub_congr node_5_121836 node_5_3292
    _ = (18147 : Int) := by decide

theorem node_8_2971 : count [19, 17, 13, 11, 7, 5, 3, 2] 2971 = (506 : Int) := by
  decide

theorem node_8_129 : count [19, 17, 13, 11, 7, 5, 3, 2] 129 = (24 : Int) := by
  decide

theorem node_7_2971 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2971 = (482 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2971 = count [19, 17, 13, 11, 7, 5, 3, 2] 2971 - count [19, 17, 13, 11, 7, 5, 3, 2] (2971 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2971 (by decide)
    _ = (506 : Int) - (24 : Int) :=
      sub_congr node_8_2971 node_8_129
    _ = (482 : Int) := by decide

theorem node_8_102 : count [19, 17, 13, 11, 7, 5, 3, 2] 102 = (19 : Int) := by
  decide

theorem node_7_102 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 102 = (18 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 102 = count [19, 17, 13, 11, 7, 5, 3, 2] 102 - count [19, 17, 13, 11, 7, 5, 3, 2] (102 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 102 (by decide)
    _ = (19 : Int) - (1 : Int) :=
      sub_congr node_8_102 node_8_4
    _ = (18 : Int) := by decide

theorem node_6_2971 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2971 = (464 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2971 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2971 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2971 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2971 (by decide)
    _ = (482 : Int) - (18 : Int) :=
      sub_congr node_7_2971 node_7_102
    _ = (464 : Int) := by decide

theorem node_8_95 : count [19, 17, 13, 11, 7, 5, 3, 2] 95 = (17 : Int) := by
  decide

theorem node_7_95 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 95 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 95 = count [19, 17, 13, 11, 7, 5, 3, 2] 95 - count [19, 17, 13, 11, 7, 5, 3, 2] (95 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 95 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_95 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_95 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95 = (15 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 95 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (95 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 95 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_7_95 node_7_3
    _ = (15 : Int) := by decide

theorem node_5_2971 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2971 = (449 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2971 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2971 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2971 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2971 (by decide)
    _ = (464 : Int) - (15 : Int) :=
      sub_congr node_6_2971 node_6_95
    _ = (449 : Int) := by decide

theorem node_8_80 : count [19, 17, 13, 11, 7, 5, 3, 2] 80 = (15 : Int) := by
  decide

theorem node_7_80 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = (14 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = count [19, 17, 13, 11, 7, 5, 3, 2] 80 - count [19, 17, 13, 11, 7, 5, 3, 2] (80 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 80 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_8_80 node_8_3
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

theorem node_6_80 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = (13 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 80 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (80 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 80 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_7_80 node_7_2
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

theorem node_5_80 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = (12 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (80 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_6_80 node_6_2
    _ = (12 : Int) := by decide

theorem node_4_2971 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2971 = (437 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2971 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2971 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2971 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2971 (by decide)
    _ = (449 : Int) - (12 : Int) :=
      sub_congr node_5_2971 node_5_80
    _ = (437 : Int) := by decide

theorem node_3_121836 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 = (17710 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (121836 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 (by decide)
    _ = (18147 : Int) - (437 : Int) :=
      sub_congr node_4_121836 node_4_2971
    _ = (17710 : Int) := by decide

theorem node_8_2833 : count [19, 17, 13, 11, 7, 5, 3, 2] 2833 = (482 : Int) := by
  decide

theorem node_8_123 : count [19, 17, 13, 11, 7, 5, 3, 2] 123 = (23 : Int) := by
  decide

theorem node_7_2833 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2833 = (459 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2833 = count [19, 17, 13, 11, 7, 5, 3, 2] 2833 - count [19, 17, 13, 11, 7, 5, 3, 2] (2833 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2833 (by decide)
    _ = (482 : Int) - (23 : Int) :=
      sub_congr node_8_2833 node_8_123
    _ = (459 : Int) := by decide

theorem node_8_97 : count [19, 17, 13, 11, 7, 5, 3, 2] 97 = (18 : Int) := by
  decide

theorem node_7_97 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 97 = (17 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 97 = count [19, 17, 13, 11, 7, 5, 3, 2] 97 - count [19, 17, 13, 11, 7, 5, 3, 2] (97 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 97 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_8_97 node_8_4
    _ = (17 : Int) := by decide

theorem node_6_2833 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2833 = (442 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2833 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2833 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2833 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2833 (by decide)
    _ = (459 : Int) - (17 : Int) :=
      sub_congr node_7_2833 node_7_97
    _ = (442 : Int) := by decide

theorem node_8_91 : count [19, 17, 13, 11, 7, 5, 3, 2] 91 = (17 : Int) := by
  decide

theorem node_7_91 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 91 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 91 = count [19, 17, 13, 11, 7, 5, 3, 2] 91 - count [19, 17, 13, 11, 7, 5, 3, 2] (91 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 91 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_91 node_8_3
    _ = (16 : Int) := by decide

theorem node_6_91 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91 = (15 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 91 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (91 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 91 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_7_91 node_7_3
    _ = (15 : Int) := by decide

theorem node_5_2833 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2833 = (427 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2833 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2833 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2833 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2833 (by decide)
    _ = (442 : Int) - (15 : Int) :=
      sub_congr node_6_2833 node_6_91
    _ = (427 : Int) := by decide

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

theorem node_5_76 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76 = (11 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (76 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_6_76 node_6_2
    _ = (11 : Int) := by decide

theorem node_4_2833 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2833 = (416 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2833 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2833 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2833 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2833 (by decide)
    _ = (427 : Int) - (11 : Int) :=
      sub_congr node_5_2833 node_5_76
    _ = (416 : Int) := by decide

theorem node_8_69 : count [19, 17, 13, 11, 7, 5, 3, 2] 69 = (12 : Int) := by
  decide

theorem node_7_69 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = (11 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = count [19, 17, 13, 11, 7, 5, 3, 2] 69 - count [19, 17, 13, 11, 7, 5, 3, 2] (69 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 69 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_8_69 node_8_3
    _ = (11 : Int) := by decide

theorem node_6_69 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = (10 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 69 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (69 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 69 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_7_69 node_7_2
    _ = (10 : Int) := by decide

theorem node_5_69 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = (9 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (69 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_6_69 node_6_2
    _ = (9 : Int) := by decide

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

theorem node_4_69 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = (8 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (69 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_5_69 node_5_1
    _ = (8 : Int) := by decide

theorem node_3_2833 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2833 = (408 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2833 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2833 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2833 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2833 (by decide)
    _ = (416 : Int) - (8 : Int) :=
      sub_congr node_4_2833 node_4_69
    _ = (408 : Int) := by decide

theorem node_2_121836 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 = (17302 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (121836 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 (by decide)
    _ = (17710 : Int) - (408 : Int) :=
      sub_congr node_3_121836 node_3_2833
    _ = (17302 : Int) := by decide

theorem node_8_2592 : count [19, 17, 13, 11, 7, 5, 3, 2] 2592 = (439 : Int) := by
  decide

theorem node_8_112 : count [19, 17, 13, 11, 7, 5, 3, 2] 112 = (22 : Int) := by
  decide

theorem node_7_2592 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2592 = (417 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2592 = count [19, 17, 13, 11, 7, 5, 3, 2] 2592 - count [19, 17, 13, 11, 7, 5, 3, 2] (2592 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2592 (by decide)
    _ = (439 : Int) - (22 : Int) :=
      sub_congr node_8_2592 node_8_112
    _ = (417 : Int) := by decide

theorem node_8_89 : count [19, 17, 13, 11, 7, 5, 3, 2] 89 = (17 : Int) := by
  decide

theorem node_7_89 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = count [19, 17, 13, 11, 7, 5, 3, 2] 89 - count [19, 17, 13, 11, 7, 5, 3, 2] (89 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 89 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_89 node_8_3
    _ = (16 : Int) := by decide

theorem node_6_2592 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2592 = (401 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2592 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2592 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2592 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2592 (by decide)
    _ = (417 : Int) - (16 : Int) :=
      sub_congr node_7_2592 node_7_89
    _ = (401 : Int) := by decide

theorem node_8_83 : count [19, 17, 13, 11, 7, 5, 3, 2] 83 = (16 : Int) := by
  decide

theorem node_7_83 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 83 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 83 = count [19, 17, 13, 11, 7, 5, 3, 2] 83 - count [19, 17, 13, 11, 7, 5, 3, 2] (83 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 83 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_83 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_83 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83 = (14 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 83 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (83 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 83 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_7_83 node_7_2
    _ = (14 : Int) := by decide

theorem node_5_2592 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2592 = (387 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2592 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2592 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2592 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2592 (by decide)
    _ = (401 : Int) - (14 : Int) :=
      sub_congr node_6_2592 node_6_83
    _ = (387 : Int) := by decide

theorem node_8_70 : count [19, 17, 13, 11, 7, 5, 3, 2] 70 = (12 : Int) := by
  decide

theorem node_7_70 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 70 = (11 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 70 = count [19, 17, 13, 11, 7, 5, 3, 2] 70 - count [19, 17, 13, 11, 7, 5, 3, 2] (70 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 70 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_8_70 node_8_3
    _ = (11 : Int) := by decide

theorem node_6_70 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70 = (10 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 70 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (70 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 70 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_7_70 node_7_2
    _ = (10 : Int) := by decide

theorem node_5_70 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70 = (9 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (70 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_6_70 node_6_2
    _ = (9 : Int) := by decide

theorem node_4_2592 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2592 = (378 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2592 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2592 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2592 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2592 (by decide)
    _ = (387 : Int) - (9 : Int) :=
      sub_congr node_5_2592 node_5_70
    _ = (378 : Int) := by decide

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

theorem node_4_63 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 = (7 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (63 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_5_63 node_5_1
    _ = (7 : Int) := by decide

theorem node_3_2592 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2592 = (371 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2592 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2592 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2592 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2592 (by decide)
    _ = (378 : Int) - (7 : Int) :=
      sub_congr node_4_2592 node_4_63
    _ = (371 : Int) := by decide

theorem node_8_60 : count [19, 17, 13, 11, 7, 5, 3, 2] 60 = (10 : Int) := by
  decide

theorem node_7_60 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = (9 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = count [19, 17, 13, 11, 7, 5, 3, 2] 60 - count [19, 17, 13, 11, 7, 5, 3, 2] (60 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 60 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_8_60 node_8_2
    _ = (9 : Int) := by decide

theorem node_6_60 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = (8 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 60 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (60 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 60 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_7_60 node_7_2
    _ = (8 : Int) := by decide

theorem node_5_60 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = (7 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (60 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_6_60 node_6_1
    _ = (7 : Int) := by decide

theorem node_4_60 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = (6 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (60 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_5_60 node_5_1
    _ = (6 : Int) := by decide

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_1 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_1 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_60 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = (5 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (60 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_4_60 node_4_1
    _ = (5 : Int) := by decide

theorem node_2_2592 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2592 = (366 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2592 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2592 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2592 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2592 (by decide)
    _ = (371 : Int) - (5 : Int) :=
      sub_congr node_3_2592 node_3_60
    _ = (366 : Int) := by decide

theorem node_1_121836 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 = (16936 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (121836 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 (by decide)
    _ = (17302 : Int) - (366 : Int) :=
      sub_congr node_2_121836 node_2_2592
    _ = (16936 : Int) := by decide

theorem node_8_2298 : count [19, 17, 13, 11, 7, 5, 3, 2] 2298 = (391 : Int) := by
  decide

theorem node_8_99 : count [19, 17, 13, 11, 7, 5, 3, 2] 99 = (18 : Int) := by
  decide

theorem node_7_2298 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = (373 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = count [19, 17, 13, 11, 7, 5, 3, 2] 2298 - count [19, 17, 13, 11, 7, 5, 3, 2] (2298 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2298 (by decide)
    _ = (391 : Int) - (18 : Int) :=
      sub_congr node_8_2298 node_8_99
    _ = (373 : Int) := by decide

theorem node_8_79 : count [19, 17, 13, 11, 7, 5, 3, 2] 79 = (15 : Int) := by
  decide

theorem node_7_79 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 79 = (14 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 79 = count [19, 17, 13, 11, 7, 5, 3, 2] 79 - count [19, 17, 13, 11, 7, 5, 3, 2] (79 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 79 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_8_79 node_8_3
    _ = (14 : Int) := by decide

theorem node_6_2298 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = (359 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2298 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 (by decide)
    _ = (373 : Int) - (14 : Int) :=
      sub_congr node_7_2298 node_7_79
    _ = (359 : Int) := by decide

theorem node_8_74 : count [19, 17, 13, 11, 7, 5, 3, 2] 74 = (14 : Int) := by
  decide

theorem node_7_74 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = count [19, 17, 13, 11, 7, 5, 3, 2] 74 - count [19, 17, 13, 11, 7, 5, 3, 2] (74 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 74 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_74 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_74 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = (12 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 74 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (74 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 74 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_7_74 node_7_2
    _ = (12 : Int) := by decide

theorem node_5_2298 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = (347 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2298 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 (by decide)
    _ = (359 : Int) - (12 : Int) :=
      sub_congr node_6_2298 node_6_74
    _ = (347 : Int) := by decide

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

theorem node_4_2298 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = (339 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2298 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 (by decide)
    _ = (347 : Int) - (8 : Int) :=
      sub_congr node_5_2298 node_5_62
    _ = (339 : Int) := by decide

theorem node_8_56 : count [19, 17, 13, 11, 7, 5, 3, 2] 56 = (9 : Int) := by
  decide

theorem node_7_56 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = count [19, 17, 13, 11, 7, 5, 3, 2] 56 - count [19, 17, 13, 11, 7, 5, 3, 2] (56 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 56 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_56 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_56 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = (7 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 56 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (56 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 56 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_7_56 node_7_1
    _ = (7 : Int) := by decide

theorem node_5_56 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = (6 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (56 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_6_56 node_6_1
    _ = (6 : Int) := by decide

theorem node_4_56 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = (5 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (56 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_5_56 node_5_1
    _ = (5 : Int) := by decide

theorem node_3_2298 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = (334 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2298 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 (by decide)
    _ = (339 : Int) - (5 : Int) :=
      sub_congr node_4_2298 node_4_56
    _ = (334 : Int) := by decide

theorem node_8_53 : count [19, 17, 13, 11, 7, 5, 3, 2] 53 = (9 : Int) := by
  decide

theorem node_7_53 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = count [19, 17, 13, 11, 7, 5, 3, 2] 53 - count [19, 17, 13, 11, 7, 5, 3, 2] (53 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 53 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_53 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_53 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = (7 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 53 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (53 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 53 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_7_53 node_7_1
    _ = (7 : Int) := by decide

theorem node_5_53 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = (6 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (53 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_6_53 node_6_1
    _ = (6 : Int) := by decide

theorem node_4_53 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = (5 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (53 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_5_53 node_5_1
    _ = (5 : Int) := by decide

theorem node_3_53 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = (4 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (53 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_4_53 node_4_1
    _ = (4 : Int) := by decide

theorem node_2_2298 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = (330 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2298 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 (by decide)
    _ = (334 : Int) - (4 : Int) :=
      sub_congr node_3_2298 node_3_53
    _ = (330 : Int) := by decide

theorem node_8_48 : count [19, 17, 13, 11, 7, 5, 3, 2] 48 = (8 : Int) := by
  decide

theorem node_7_48 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = (7 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = count [19, 17, 13, 11, 7, 5, 3, 2] 48 - count [19, 17, 13, 11, 7, 5, 3, 2] (48 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 48 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_8_48 node_8_2
    _ = (7 : Int) := by decide

theorem node_6_48 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = (6 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 48 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (48 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 48 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_7_48 node_7_1
    _ = (6 : Int) := by decide

theorem node_5_48 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = (5 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (48 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_6_48 node_6_1
    _ = (5 : Int) := by decide

theorem node_4_48 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = (4 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (48 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_5_48 node_5_1
    _ = (4 : Int) := by decide

theorem node_3_48 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = (3 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (48 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_4_48 node_4_1
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

theorem node_2_48 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = (2 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (48 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_3_48 node_3_1
    _ = (2 : Int) := by decide

theorem node_1_2298 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = (328 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2298 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 (by decide)
    _ = (330 : Int) - (2 : Int) :=
      sub_congr node_2_2298 node_2_48
    _ = (328 : Int) := by decide

theorem node_0_121836 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 = (16608 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (121836 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 121836 (by decide)
    _ = (16936 : Int) - (328 : Int) :=
      sub_congr node_1_121836 node_1_2298
    _ = (16608 : Int) := by decide

theorem node_8_123042 : count [19, 17, 13, 11, 7, 5, 3, 2] 123042 = (21041 : Int) := by
  decide

theorem node_8_5349 : count [19, 17, 13, 11, 7, 5, 3, 2] 5349 = (910 : Int) := by
  decide

theorem node_7_123042 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 = (20131 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 = count [19, 17, 13, 11, 7, 5, 3, 2] 123042 - count [19, 17, 13, 11, 7, 5, 3, 2] (123042 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 123042 (by decide)
    _ = (21041 : Int) - (910 : Int) :=
      sub_congr node_8_123042 node_8_5349
    _ = (20131 : Int) := by decide

theorem node_8_4242 : count [19, 17, 13, 11, 7, 5, 3, 2] 4242 = (724 : Int) := by
  decide

theorem node_8_184 : count [19, 17, 13, 11, 7, 5, 3, 2] 184 = (35 : Int) := by
  decide

theorem node_7_4242 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4242 = (689 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4242 = count [19, 17, 13, 11, 7, 5, 3, 2] 4242 - count [19, 17, 13, 11, 7, 5, 3, 2] (4242 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4242 (by decide)
    _ = (724 : Int) - (35 : Int) :=
      sub_congr node_8_4242 node_8_184
    _ = (689 : Int) := by decide

theorem node_6_123042 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 = (19442 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (123042 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 (by decide)
    _ = (20131 : Int) - (689 : Int) :=
      sub_congr node_7_123042 node_7_4242
    _ = (19442 : Int) := by decide

theorem node_8_3969 : count [19, 17, 13, 11, 7, 5, 3, 2] 3969 = (676 : Int) := by
  decide

theorem node_8_172 : count [19, 17, 13, 11, 7, 5, 3, 2] 172 = (32 : Int) := by
  decide

theorem node_7_3969 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3969 = (644 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3969 = count [19, 17, 13, 11, 7, 5, 3, 2] 3969 - count [19, 17, 13, 11, 7, 5, 3, 2] (3969 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3969 (by decide)
    _ = (676 : Int) - (32 : Int) :=
      sub_congr node_8_3969 node_8_172
    _ = (644 : Int) := by decide

theorem node_8_136 : count [19, 17, 13, 11, 7, 5, 3, 2] 136 = (25 : Int) := by
  decide

theorem node_7_136 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 136 = (24 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 136 = count [19, 17, 13, 11, 7, 5, 3, 2] 136 - count [19, 17, 13, 11, 7, 5, 3, 2] (136 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 136 (by decide)
    _ = (25 : Int) - (1 : Int) :=
      sub_congr node_8_136 node_8_5
    _ = (24 : Int) := by decide

theorem node_6_3969 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3969 = (620 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3969 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3969 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3969 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3969 (by decide)
    _ = (644 : Int) - (24 : Int) :=
      sub_congr node_7_3969 node_7_136
    _ = (620 : Int) := by decide

theorem node_5_123042 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 = (18822 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (123042 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 (by decide)
    _ = (19442 : Int) - (620 : Int) :=
      sub_congr node_6_123042 node_6_3969
    _ = (18822 : Int) := by decide

theorem node_8_3325 : count [19, 17, 13, 11, 7, 5, 3, 2] 3325 = (565 : Int) := by
  decide

theorem node_8_144 : count [19, 17, 13, 11, 7, 5, 3, 2] 144 = (27 : Int) := by
  decide

theorem node_7_3325 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3325 = (538 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3325 = count [19, 17, 13, 11, 7, 5, 3, 2] 3325 - count [19, 17, 13, 11, 7, 5, 3, 2] (3325 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3325 (by decide)
    _ = (565 : Int) - (27 : Int) :=
      sub_congr node_8_3325 node_8_144
    _ = (538 : Int) := by decide

theorem node_8_114 : count [19, 17, 13, 11, 7, 5, 3, 2] 114 = (23 : Int) := by
  decide

theorem node_7_114 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 114 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 114 = count [19, 17, 13, 11, 7, 5, 3, 2] 114 - count [19, 17, 13, 11, 7, 5, 3, 2] (114 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 114 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_114 node_8_4
    _ = (22 : Int) := by decide

theorem node_6_3325 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3325 = (516 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3325 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3325 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3325 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3325 (by decide)
    _ = (538 : Int) - (22 : Int) :=
      sub_congr node_7_3325 node_7_114
    _ = (516 : Int) := by decide

theorem node_8_107 : count [19, 17, 13, 11, 7, 5, 3, 2] 107 = (21 : Int) := by
  decide

theorem node_7_107 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 107 = (20 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 107 = count [19, 17, 13, 11, 7, 5, 3, 2] 107 - count [19, 17, 13, 11, 7, 5, 3, 2] (107 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 107 (by decide)
    _ = (21 : Int) - (1 : Int) :=
      sub_congr node_8_107 node_8_4
    _ = (20 : Int) := by decide

theorem node_6_107 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 107 = (19 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 107 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 107 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (107 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 107 (by decide)
    _ = (20 : Int) - (1 : Int) :=
      sub_congr node_7_107 node_7_3
    _ = (19 : Int) := by decide

theorem node_5_3325 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3325 = (497 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3325 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3325 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3325 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3325 (by decide)
    _ = (516 : Int) - (19 : Int) :=
      sub_congr node_6_3325 node_6_107
    _ = (497 : Int) := by decide

theorem node_4_123042 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 = (18325 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (123042 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 (by decide)
    _ = (18822 : Int) - (497 : Int) :=
      sub_congr node_5_123042 node_5_3325
    _ = (18325 : Int) := by decide

theorem node_8_3001 : count [19, 17, 13, 11, 7, 5, 3, 2] 3001 = (510 : Int) := by
  decide

theorem node_8_130 : count [19, 17, 13, 11, 7, 5, 3, 2] 130 = (24 : Int) := by
  decide

theorem node_7_3001 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3001 = (486 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3001 = count [19, 17, 13, 11, 7, 5, 3, 2] 3001 - count [19, 17, 13, 11, 7, 5, 3, 2] (3001 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3001 (by decide)
    _ = (510 : Int) - (24 : Int) :=
      sub_congr node_8_3001 node_8_130
    _ = (486 : Int) := by decide

theorem node_8_103 : count [19, 17, 13, 11, 7, 5, 3, 2] 103 = (20 : Int) := by
  decide

theorem node_7_103 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 103 = (19 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 103 = count [19, 17, 13, 11, 7, 5, 3, 2] 103 - count [19, 17, 13, 11, 7, 5, 3, 2] (103 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 103 (by decide)
    _ = (20 : Int) - (1 : Int) :=
      sub_congr node_8_103 node_8_4
    _ = (19 : Int) := by decide

theorem node_6_3001 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3001 = (467 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3001 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3001 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3001 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3001 (by decide)
    _ = (486 : Int) - (19 : Int) :=
      sub_congr node_7_3001 node_7_103
    _ = (467 : Int) := by decide

theorem node_8_96 : count [19, 17, 13, 11, 7, 5, 3, 2] 96 = (17 : Int) := by
  decide

theorem node_7_96 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 96 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 96 = count [19, 17, 13, 11, 7, 5, 3, 2] 96 - count [19, 17, 13, 11, 7, 5, 3, 2] (96 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 96 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_96 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_96 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96 = (15 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 96 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (96 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 96 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_7_96 node_7_3
    _ = (15 : Int) := by decide

theorem node_5_3001 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3001 = (452 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3001 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3001 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3001 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3001 (by decide)
    _ = (467 : Int) - (15 : Int) :=
      sub_congr node_6_3001 node_6_96
    _ = (452 : Int) := by decide

theorem node_8_81 : count [19, 17, 13, 11, 7, 5, 3, 2] 81 = (15 : Int) := by
  decide

theorem node_7_81 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = (14 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = count [19, 17, 13, 11, 7, 5, 3, 2] 81 - count [19, 17, 13, 11, 7, 5, 3, 2] (81 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 81 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_8_81 node_8_3
    _ = (14 : Int) := by decide

theorem node_6_81 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = (13 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 81 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (81 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 81 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_7_81 node_7_2
    _ = (13 : Int) := by decide

theorem node_5_81 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = (12 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (81 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_6_81 node_6_2
    _ = (12 : Int) := by decide

theorem node_4_3001 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3001 = (440 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3001 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3001 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3001 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3001 (by decide)
    _ = (452 : Int) - (12 : Int) :=
      sub_congr node_5_3001 node_5_81
    _ = (440 : Int) := by decide

theorem node_3_123042 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 = (17885 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (123042 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 (by decide)
    _ = (18325 : Int) - (440 : Int) :=
      sub_congr node_4_123042 node_4_3001
    _ = (17885 : Int) := by decide

theorem node_8_2861 : count [19, 17, 13, 11, 7, 5, 3, 2] 2861 = (487 : Int) := by
  decide

theorem node_8_124 : count [19, 17, 13, 11, 7, 5, 3, 2] 124 = (23 : Int) := by
  decide

theorem node_7_2861 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2861 = (464 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2861 = count [19, 17, 13, 11, 7, 5, 3, 2] 2861 - count [19, 17, 13, 11, 7, 5, 3, 2] (2861 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2861 (by decide)
    _ = (487 : Int) - (23 : Int) :=
      sub_congr node_8_2861 node_8_124
    _ = (464 : Int) := by decide

theorem node_8_98 : count [19, 17, 13, 11, 7, 5, 3, 2] 98 = (18 : Int) := by
  decide

theorem node_7_98 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 98 = (17 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 98 = count [19, 17, 13, 11, 7, 5, 3, 2] 98 - count [19, 17, 13, 11, 7, 5, 3, 2] (98 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 98 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_8_98 node_8_4
    _ = (17 : Int) := by decide

theorem node_6_2861 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2861 = (447 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2861 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2861 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2861 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2861 (by decide)
    _ = (464 : Int) - (17 : Int) :=
      sub_congr node_7_2861 node_7_98
    _ = (447 : Int) := by decide

theorem node_8_92 : count [19, 17, 13, 11, 7, 5, 3, 2] 92 = (17 : Int) := by
  decide

theorem node_7_92 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 92 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 92 = count [19, 17, 13, 11, 7, 5, 3, 2] 92 - count [19, 17, 13, 11, 7, 5, 3, 2] (92 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 92 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_92 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_92 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92 = (15 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 92 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (92 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 92 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_7_92 node_7_3
    _ = (15 : Int) := by decide

theorem node_5_2861 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2861 = (432 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2861 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2861 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2861 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2861 (by decide)
    _ = (447 : Int) - (15 : Int) :=
      sub_congr node_6_2861 node_6_92
    _ = (432 : Int) := by decide

theorem node_8_77 : count [19, 17, 13, 11, 7, 5, 3, 2] 77 = (14 : Int) := by
  decide

theorem node_7_77 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = count [19, 17, 13, 11, 7, 5, 3, 2] 77 - count [19, 17, 13, 11, 7, 5, 3, 2] (77 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 77 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_77 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_77 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = (12 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 77 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (77 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 77 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_7_77 node_7_2
    _ = (12 : Int) := by decide

theorem node_5_77 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = (11 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (77 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_6_77 node_6_2
    _ = (11 : Int) := by decide

theorem node_4_2861 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2861 = (421 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2861 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2861 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2861 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2861 (by decide)
    _ = (432 : Int) - (11 : Int) :=
      sub_congr node_5_2861 node_5_77
    _ = (421 : Int) := by decide

theorem node_3_2861 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2861 = (413 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2861 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2861 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2861 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2861 (by decide)
    _ = (421 : Int) - (8 : Int) :=
      sub_congr node_4_2861 node_4_69
    _ = (413 : Int) := by decide

theorem node_2_123042 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 = (17472 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (123042 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 (by decide)
    _ = (17885 : Int) - (413 : Int) :=
      sub_congr node_3_123042 node_3_2861
    _ = (17472 : Int) := by decide

theorem node_8_2617 : count [19, 17, 13, 11, 7, 5, 3, 2] 2617 = (443 : Int) := by
  decide

theorem node_7_2617 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2617 = (420 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2617 = count [19, 17, 13, 11, 7, 5, 3, 2] 2617 - count [19, 17, 13, 11, 7, 5, 3, 2] (2617 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2617 (by decide)
    _ = (443 : Int) - (23 : Int) :=
      sub_congr node_8_2617 node_8_113
    _ = (420 : Int) := by decide

theorem node_8_90 : count [19, 17, 13, 11, 7, 5, 3, 2] 90 = (17 : Int) := by
  decide

theorem node_7_90 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 90 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 90 = count [19, 17, 13, 11, 7, 5, 3, 2] 90 - count [19, 17, 13, 11, 7, 5, 3, 2] (90 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 90 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_90 node_8_3
    _ = (16 : Int) := by decide

theorem node_6_2617 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2617 = (404 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2617 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2617 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2617 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2617 (by decide)
    _ = (420 : Int) - (16 : Int) :=
      sub_congr node_7_2617 node_7_90
    _ = (404 : Int) := by decide

theorem node_8_84 : count [19, 17, 13, 11, 7, 5, 3, 2] 84 = (16 : Int) := by
  decide

theorem node_7_84 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 84 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 84 = count [19, 17, 13, 11, 7, 5, 3, 2] 84 - count [19, 17, 13, 11, 7, 5, 3, 2] (84 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 84 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_84 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_84 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84 = (14 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 84 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (84 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 84 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_7_84 node_7_2
    _ = (14 : Int) := by decide

theorem node_5_2617 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2617 = (390 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2617 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2617 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2617 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2617 (by decide)
    _ = (404 : Int) - (14 : Int) :=
      sub_congr node_6_2617 node_6_84
    _ = (390 : Int) := by decide

theorem node_4_2617 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2617 = (381 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2617 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2617 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2617 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2617 (by decide)
    _ = (390 : Int) - (9 : Int) :=
      sub_congr node_5_2617 node_5_70
    _ = (381 : Int) := by decide

theorem node_3_2617 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2617 = (374 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2617 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2617 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2617 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2617 (by decide)
    _ = (381 : Int) - (7 : Int) :=
      sub_congr node_4_2617 node_4_63
    _ = (374 : Int) := by decide

theorem node_2_2617 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2617 = (369 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2617 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2617 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2617 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2617 (by decide)
    _ = (374 : Int) - (5 : Int) :=
      sub_congr node_3_2617 node_3_60
    _ = (369 : Int) := by decide

theorem node_1_123042 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 = (17103 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (123042 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 (by decide)
    _ = (17472 : Int) - (369 : Int) :=
      sub_congr node_2_123042 node_2_2617
    _ = (17103 : Int) := by decide

theorem node_8_2321 : count [19, 17, 13, 11, 7, 5, 3, 2] 2321 = (393 : Int) := by
  decide

theorem node_8_100 : count [19, 17, 13, 11, 7, 5, 3, 2] 100 = (18 : Int) := by
  decide

theorem node_7_2321 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = (375 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = count [19, 17, 13, 11, 7, 5, 3, 2] 2321 - count [19, 17, 13, 11, 7, 5, 3, 2] (2321 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2321 (by decide)
    _ = (393 : Int) - (18 : Int) :=
      sub_congr node_8_2321 node_8_100
    _ = (375 : Int) := by decide

theorem node_6_2321 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = (361 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2321 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 (by decide)
    _ = (375 : Int) - (14 : Int) :=
      sub_congr node_7_2321 node_7_80
    _ = (361 : Int) := by decide

theorem node_5_2321 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = (349 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2321 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 (by decide)
    _ = (361 : Int) - (12 : Int) :=
      sub_congr node_6_2321 node_6_74
    _ = (349 : Int) := by decide

theorem node_4_2321 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = (341 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2321 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 (by decide)
    _ = (349 : Int) - (8 : Int) :=
      sub_congr node_5_2321 node_5_62
    _ = (341 : Int) := by decide

theorem node_3_2321 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = (336 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2321 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 (by decide)
    _ = (341 : Int) - (5 : Int) :=
      sub_congr node_4_2321 node_4_56
    _ = (336 : Int) := by decide

theorem node_2_2321 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = (332 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2321 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 (by decide)
    _ = (336 : Int) - (4 : Int) :=
      sub_congr node_3_2321 node_3_53
    _ = (332 : Int) := by decide

theorem node_8_49 : count [19, 17, 13, 11, 7, 5, 3, 2] 49 = (8 : Int) := by
  decide

theorem node_7_49 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = (7 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = count [19, 17, 13, 11, 7, 5, 3, 2] 49 - count [19, 17, 13, 11, 7, 5, 3, 2] (49 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 49 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_8_49 node_8_2
    _ = (7 : Int) := by decide

theorem node_6_49 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = (6 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 49 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (49 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 49 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_7_49 node_7_1
    _ = (6 : Int) := by decide

theorem node_5_49 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = (5 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (49 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_6_49 node_6_1
    _ = (5 : Int) := by decide

theorem node_4_49 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = (4 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (49 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_5_49 node_5_1
    _ = (4 : Int) := by decide

theorem node_3_49 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = (3 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (49 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_4_49 node_4_1
    _ = (3 : Int) := by decide

theorem node_2_49 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = (2 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (49 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_3_49 node_3_1
    _ = (2 : Int) := by decide

theorem node_1_2321 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = (330 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2321 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 (by decide)
    _ = (332 : Int) - (2 : Int) :=
      sub_congr node_2_2321 node_2_49
    _ = (330 : Int) := by decide

theorem node_0_123042 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 = (16773 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (123042 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123042 (by decide)
    _ = (17103 : Int) - (330 : Int) :=
      sub_congr node_1_123042 node_1_2321
    _ = (16773 : Int) := by decide

theorem row_106 : count primes 121836 ≤ (16623 : Int) - 15 := by
  rw [show count primes 121836 = (16608 : Int) from node_0_121836]
  decide

theorem row_107 : count primes 123042 ≤ (16788 : Int) - 15 := by
  rw [show count primes 123042 = (16773 : Int) from node_0_123042]
  decide

def pairs : List (Nat × Nat) := [(121836, 16623), (123042, 16788)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl
  · exact row_106
  · exact row_107
end B699CorePrunedSieve.CoreRest40
#check @B699CorePrunedSieve.CoreRest40.pairs_valid
#print axioms B699CorePrunedSieve.CoreRest40.pairs_valid
