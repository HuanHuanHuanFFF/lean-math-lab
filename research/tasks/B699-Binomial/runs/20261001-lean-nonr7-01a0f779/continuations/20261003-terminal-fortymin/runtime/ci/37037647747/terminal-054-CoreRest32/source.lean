import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreRest32
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_103656 : count [19, 17, 13, 11, 7, 5, 3, 2] 103656 = (17727 : Int) := by
  decide

theorem node_8_4506 : count [19, 17, 13, 11, 7, 5, 3, 2] 4506 = (768 : Int) := by
  decide

theorem node_7_103656 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = (16959 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = count [19, 17, 13, 11, 7, 5, 3, 2] 103656 - count [19, 17, 13, 11, 7, 5, 3, 2] (103656 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 103656 (by decide)
    _ = (17727 : Int) - (768 : Int) :=
      sub_congr node_8_103656 node_8_4506
    _ = (16959 : Int) := by decide

theorem node_8_3574 : count [19, 17, 13, 11, 7, 5, 3, 2] 3574 = (608 : Int) := by
  decide

theorem node_8_155 : count [19, 17, 13, 11, 7, 5, 3, 2] 155 = (29 : Int) := by
  decide

theorem node_7_3574 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3574 = (579 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3574 = count [19, 17, 13, 11, 7, 5, 3, 2] 3574 - count [19, 17, 13, 11, 7, 5, 3, 2] (3574 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3574 (by decide)
    _ = (608 : Int) - (29 : Int) :=
      sub_congr node_8_3574 node_8_155
    _ = (579 : Int) := by decide

theorem node_6_103656 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = (16380 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (103656 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 (by decide)
    _ = (16959 : Int) - (579 : Int) :=
      sub_congr node_7_103656 node_7_3574
    _ = (16380 : Int) := by decide

theorem node_8_3343 : count [19, 17, 13, 11, 7, 5, 3, 2] 3343 = (569 : Int) := by
  decide

theorem node_8_145 : count [19, 17, 13, 11, 7, 5, 3, 2] 145 = (27 : Int) := by
  decide

theorem node_7_3343 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3343 = (542 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3343 = count [19, 17, 13, 11, 7, 5, 3, 2] 3343 - count [19, 17, 13, 11, 7, 5, 3, 2] (3343 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3343 (by decide)
    _ = (569 : Int) - (27 : Int) :=
      sub_congr node_8_3343 node_8_145
    _ = (542 : Int) := by decide

theorem node_8_115 : count [19, 17, 13, 11, 7, 5, 3, 2] 115 = (23 : Int) := by
  decide

theorem node_8_5 : count [19, 17, 13, 11, 7, 5, 3, 2] 5 = (1 : Int) := by
  decide

theorem node_7_115 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 115 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 115 = count [19, 17, 13, 11, 7, 5, 3, 2] 115 - count [19, 17, 13, 11, 7, 5, 3, 2] (115 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 115 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_115 node_8_5
    _ = (22 : Int) := by decide

theorem node_6_3343 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3343 = (520 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3343 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3343 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3343 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3343 (by decide)
    _ = (542 : Int) - (22 : Int) :=
      sub_congr node_7_3343 node_7_115
    _ = (520 : Int) := by decide

theorem node_5_103656 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = (15860 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (103656 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 (by decide)
    _ = (16380 : Int) - (520 : Int) :=
      sub_congr node_6_103656 node_6_3343
    _ = (15860 : Int) := by decide

theorem node_8_2801 : count [19, 17, 13, 11, 7, 5, 3, 2] 2801 = (477 : Int) := by
  decide

theorem node_8_121 : count [19, 17, 13, 11, 7, 5, 3, 2] 121 = (23 : Int) := by
  decide

theorem node_7_2801 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2801 = (454 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2801 = count [19, 17, 13, 11, 7, 5, 3, 2] 2801 - count [19, 17, 13, 11, 7, 5, 3, 2] (2801 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2801 (by decide)
    _ = (477 : Int) - (23 : Int) :=
      sub_congr node_8_2801 node_8_121
    _ = (454 : Int) := by decide

theorem node_8_96 : count [19, 17, 13, 11, 7, 5, 3, 2] 96 = (17 : Int) := by
  decide

theorem node_8_4 : count [19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  decide

theorem node_7_96 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 96 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 96 = count [19, 17, 13, 11, 7, 5, 3, 2] 96 - count [19, 17, 13, 11, 7, 5, 3, 2] (96 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 96 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_96 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_2801 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2801 = (438 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2801 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2801 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2801 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2801 (by decide)
    _ = (454 : Int) - (16 : Int) :=
      sub_congr node_7_2801 node_7_96
    _ = (438 : Int) := by decide

theorem node_8_90 : count [19, 17, 13, 11, 7, 5, 3, 2] 90 = (17 : Int) := by
  decide

theorem node_8_3 : count [19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  decide

theorem node_7_90 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 90 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 90 = count [19, 17, 13, 11, 7, 5, 3, 2] 90 - count [19, 17, 13, 11, 7, 5, 3, 2] (90 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 90 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_90 node_8_3
    _ = (16 : Int) := by decide

theorem node_8_0 : count [19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [19, 17, 13, 11, 7, 5, 3, 2]

theorem node_7_3 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = count [19, 17, 13, 11, 7, 5, 3, 2] 3 - count [19, 17, 13, 11, 7, 5, 3, 2] (3 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_3 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_90 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90 = (15 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 90 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (90 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 90 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_7_90 node_7_3
    _ = (15 : Int) := by decide

theorem node_5_2801 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2801 = (423 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2801 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2801 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2801 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2801 (by decide)
    _ = (438 : Int) - (15 : Int) :=
      sub_congr node_6_2801 node_6_90
    _ = (423 : Int) := by decide

theorem node_4_103656 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = (15437 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (103656 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 (by decide)
    _ = (15860 : Int) - (423 : Int) :=
      sub_congr node_5_103656 node_5_2801
    _ = (15437 : Int) := by decide

theorem node_8_2528 : count [19, 17, 13, 11, 7, 5, 3, 2] 2528 = (428 : Int) := by
  decide

theorem node_8_109 : count [19, 17, 13, 11, 7, 5, 3, 2] 109 = (22 : Int) := by
  decide

theorem node_7_2528 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 = (406 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 = count [19, 17, 13, 11, 7, 5, 3, 2] 2528 - count [19, 17, 13, 11, 7, 5, 3, 2] (2528 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2528 (by decide)
    _ = (428 : Int) - (22 : Int) :=
      sub_congr node_8_2528 node_8_109
    _ = (406 : Int) := by decide

theorem node_8_87 : count [19, 17, 13, 11, 7, 5, 3, 2] 87 = (16 : Int) := by
  decide

theorem node_7_87 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = count [19, 17, 13, 11, 7, 5, 3, 2] 87 - count [19, 17, 13, 11, 7, 5, 3, 2] (87 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 87 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_87 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_2528 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 = (391 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2528 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 (by decide)
    _ = (406 : Int) - (15 : Int) :=
      sub_congr node_7_2528 node_7_87
    _ = (391 : Int) := by decide

theorem node_8_81 : count [19, 17, 13, 11, 7, 5, 3, 2] 81 = (15 : Int) := by
  decide

theorem node_7_81 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = (14 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = count [19, 17, 13, 11, 7, 5, 3, 2] 81 - count [19, 17, 13, 11, 7, 5, 3, 2] (81 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 81 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_8_81 node_8_3
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

theorem node_6_81 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = (13 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 81 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (81 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 81 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_7_81 node_7_2
    _ = (13 : Int) := by decide

theorem node_5_2528 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 = (378 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2528 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 (by decide)
    _ = (391 : Int) - (13 : Int) :=
      sub_congr node_6_2528 node_6_81
    _ = (378 : Int) := by decide

theorem node_8_68 : count [19, 17, 13, 11, 7, 5, 3, 2] 68 = (12 : Int) := by
  decide

theorem node_7_68 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = (11 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = count [19, 17, 13, 11, 7, 5, 3, 2] 68 - count [19, 17, 13, 11, 7, 5, 3, 2] (68 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 68 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_8_68 node_8_2
    _ = (11 : Int) := by decide

theorem node_6_68 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = (10 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 68 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (68 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 68 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_7_68 node_7_2
    _ = (10 : Int) := by decide

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_2 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_2 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_68 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = (9 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (68 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_6_68 node_6_2
    _ = (9 : Int) := by decide

theorem node_4_2528 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 = (369 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2528 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 (by decide)
    _ = (378 : Int) - (9 : Int) :=
      sub_congr node_5_2528 node_5_68
    _ = (369 : Int) := by decide

theorem node_3_103656 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = (15068 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (103656 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 (by decide)
    _ = (15437 : Int) - (369 : Int) :=
      sub_congr node_4_103656 node_4_2528
    _ = (15068 : Int) := by decide

theorem node_8_2410 : count [19, 17, 13, 11, 7, 5, 3, 2] 2410 = (409 : Int) := by
  decide

theorem node_8_104 : count [19, 17, 13, 11, 7, 5, 3, 2] 104 = (20 : Int) := by
  decide

theorem node_7_2410 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 = (389 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 = count [19, 17, 13, 11, 7, 5, 3, 2] 2410 - count [19, 17, 13, 11, 7, 5, 3, 2] (2410 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2410 (by decide)
    _ = (409 : Int) - (20 : Int) :=
      sub_congr node_8_2410 node_8_104
    _ = (389 : Int) := by decide

theorem node_8_83 : count [19, 17, 13, 11, 7, 5, 3, 2] 83 = (16 : Int) := by
  decide

theorem node_7_83 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 83 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 83 = count [19, 17, 13, 11, 7, 5, 3, 2] 83 - count [19, 17, 13, 11, 7, 5, 3, 2] (83 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 83 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_83 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_2410 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 = (374 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2410 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 (by decide)
    _ = (389 : Int) - (15 : Int) :=
      sub_congr node_7_2410 node_7_83
    _ = (374 : Int) := by decide

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

theorem node_5_2410 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 = (362 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2410 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 (by decide)
    _ = (374 : Int) - (12 : Int) :=
      sub_congr node_6_2410 node_6_77
    _ = (362 : Int) := by decide

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

theorem node_4_2410 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 = (354 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2410 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 (by decide)
    _ = (362 : Int) - (8 : Int) :=
      sub_congr node_5_2410 node_5_65
    _ = (354 : Int) := by decide

theorem node_8_58 : count [19, 17, 13, 11, 7, 5, 3, 2] 58 = (9 : Int) := by
  decide

theorem node_7_58 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = count [19, 17, 13, 11, 7, 5, 3, 2] 58 - count [19, 17, 13, 11, 7, 5, 3, 2] (58 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 58 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_58 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_58 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = (7 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 58 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (58 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 58 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_7_58 node_7_2
    _ = (7 : Int) := by decide

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

theorem node_5_58 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = (6 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (58 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_6_58 node_6_1
    _ = (6 : Int) := by decide

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_1 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_1 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_58 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = (5 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (58 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_5_58 node_5_1
    _ = (5 : Int) := by decide

theorem node_3_2410 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 = (349 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2410 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 (by decide)
    _ = (354 : Int) - (5 : Int) :=
      sub_congr node_4_2410 node_4_58
    _ = (349 : Int) := by decide

theorem node_2_103656 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = (14719 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (103656 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 (by decide)
    _ = (15068 : Int) - (349 : Int) :=
      sub_congr node_3_103656 node_3_2410
    _ = (14719 : Int) := by decide

theorem node_8_2205 : count [19, 17, 13, 11, 7, 5, 3, 2] 2205 = (371 : Int) := by
  decide

theorem node_8_95 : count [19, 17, 13, 11, 7, 5, 3, 2] 95 = (17 : Int) := by
  decide

theorem node_7_2205 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 = (354 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 = count [19, 17, 13, 11, 7, 5, 3, 2] 2205 - count [19, 17, 13, 11, 7, 5, 3, 2] (2205 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2205 (by decide)
    _ = (371 : Int) - (17 : Int) :=
      sub_congr node_8_2205 node_8_95
    _ = (354 : Int) := by decide

theorem node_8_76 : count [19, 17, 13, 11, 7, 5, 3, 2] 76 = (14 : Int) := by
  decide

theorem node_7_76 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 76 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 76 = count [19, 17, 13, 11, 7, 5, 3, 2] 76 - count [19, 17, 13, 11, 7, 5, 3, 2] (76 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 76 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_76 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_2205 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 = (341 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2205 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 (by decide)
    _ = (354 : Int) - (13 : Int) :=
      sub_congr node_7_2205 node_7_76
    _ = (341 : Int) := by decide

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

theorem node_5_2205 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 = (330 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2205 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 (by decide)
    _ = (341 : Int) - (11 : Int) :=
      sub_congr node_6_2205 node_6_71
    _ = (330 : Int) := by decide

theorem node_8_59 : count [19, 17, 13, 11, 7, 5, 3, 2] 59 = (10 : Int) := by
  decide

theorem node_7_59 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = (9 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = count [19, 17, 13, 11, 7, 5, 3, 2] 59 - count [19, 17, 13, 11, 7, 5, 3, 2] (59 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 59 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_8_59 node_8_2
    _ = (9 : Int) := by decide

theorem node_6_59 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = (8 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 59 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (59 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 59 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_7_59 node_7_2
    _ = (8 : Int) := by decide

theorem node_5_59 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = (7 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (59 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_6_59 node_6_1
    _ = (7 : Int) := by decide

theorem node_4_2205 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 = (323 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2205 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 (by decide)
    _ = (330 : Int) - (7 : Int) :=
      sub_congr node_5_2205 node_5_59
    _ = (323 : Int) := by decide

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

theorem node_3_2205 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 = (318 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2205 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 (by decide)
    _ = (323 : Int) - (5 : Int) :=
      sub_congr node_4_2205 node_4_53
    _ = (318 : Int) := by decide

theorem node_8_51 : count [19, 17, 13, 11, 7, 5, 3, 2] 51 = (8 : Int) := by
  decide

theorem node_7_51 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = (7 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = count [19, 17, 13, 11, 7, 5, 3, 2] 51 - count [19, 17, 13, 11, 7, 5, 3, 2] (51 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 51 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_8_51 node_8_2
    _ = (7 : Int) := by decide

theorem node_6_51 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = (6 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 51 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (51 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 51 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_7_51 node_7_1
    _ = (6 : Int) := by decide

theorem node_5_51 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = (5 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (51 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_6_51 node_6_1
    _ = (5 : Int) := by decide

theorem node_4_51 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = (4 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (51 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_5_51 node_5_1
    _ = (4 : Int) := by decide

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_1 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_1 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_51 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = (3 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (51 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_4_51 node_4_1
    _ = (3 : Int) := by decide

theorem node_2_2205 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 = (315 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2205 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 (by decide)
    _ = (318 : Int) - (3 : Int) :=
      sub_congr node_3_2205 node_3_51
    _ = (315 : Int) := by decide

theorem node_1_103656 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = (14404 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (103656 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 (by decide)
    _ = (14719 : Int) - (315 : Int) :=
      sub_congr node_2_103656 node_2_2205
    _ = (14404 : Int) := by decide

theorem node_8_1955 : count [19, 17, 13, 11, 7, 5, 3, 2] 1955 = (331 : Int) := by
  decide

theorem node_8_85 : count [19, 17, 13, 11, 7, 5, 3, 2] 85 = (16 : Int) := by
  decide

theorem node_7_1955 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = (315 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = count [19, 17, 13, 11, 7, 5, 3, 2] 1955 - count [19, 17, 13, 11, 7, 5, 3, 2] (1955 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1955 (by decide)
    _ = (331 : Int) - (16 : Int) :=
      sub_congr node_8_1955 node_8_85
    _ = (315 : Int) := by decide

theorem node_8_67 : count [19, 17, 13, 11, 7, 5, 3, 2] 67 = (12 : Int) := by
  decide

theorem node_7_67 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 67 = (11 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 67 = count [19, 17, 13, 11, 7, 5, 3, 2] 67 - count [19, 17, 13, 11, 7, 5, 3, 2] (67 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 67 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_8_67 node_8_2
    _ = (11 : Int) := by decide

theorem node_6_1955 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = (304 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1955 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 (by decide)
    _ = (315 : Int) - (11 : Int) :=
      sub_congr node_7_1955 node_7_67
    _ = (304 : Int) := by decide

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

theorem node_5_1955 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = (295 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1955 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 (by decide)
    _ = (304 : Int) - (9 : Int) :=
      sub_congr node_6_1955 node_6_63
    _ = (295 : Int) := by decide

theorem node_8_52 : count [19, 17, 13, 11, 7, 5, 3, 2] 52 = (8 : Int) := by
  decide

theorem node_7_52 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = (7 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = count [19, 17, 13, 11, 7, 5, 3, 2] 52 - count [19, 17, 13, 11, 7, 5, 3, 2] (52 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 52 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_8_52 node_8_2
    _ = (7 : Int) := by decide

theorem node_6_52 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = (6 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 52 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (52 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 52 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_7_52 node_7_1
    _ = (6 : Int) := by decide

theorem node_5_52 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = (5 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (52 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_6_52 node_6_1
    _ = (5 : Int) := by decide

theorem node_4_1955 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = (290 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1955 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 (by decide)
    _ = (295 : Int) - (5 : Int) :=
      sub_congr node_5_1955 node_5_52
    _ = (290 : Int) := by decide

theorem node_8_47 : count [19, 17, 13, 11, 7, 5, 3, 2] 47 = (8 : Int) := by
  decide

theorem node_7_47 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 47 = (7 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 47 = count [19, 17, 13, 11, 7, 5, 3, 2] 47 - count [19, 17, 13, 11, 7, 5, 3, 2] (47 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 47 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_8_47 node_8_2
    _ = (7 : Int) := by decide

theorem node_6_47 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 = (6 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 47 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (47 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 47 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_7_47 node_7_1
    _ = (6 : Int) := by decide

theorem node_5_47 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 = (5 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (47 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_6_47 node_6_1
    _ = (5 : Int) := by decide

theorem node_4_47 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 = (4 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (47 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_5_47 node_5_1
    _ = (4 : Int) := by decide

theorem node_3_1955 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = (286 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1955 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 (by decide)
    _ = (290 : Int) - (4 : Int) :=
      sub_congr node_4_1955 node_4_47
    _ = (286 : Int) := by decide

theorem node_8_45 : count [19, 17, 13, 11, 7, 5, 3, 2] 45 = (7 : Int) := by
  decide

theorem node_7_45 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 45 = (6 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 45 = count [19, 17, 13, 11, 7, 5, 3, 2] 45 - count [19, 17, 13, 11, 7, 5, 3, 2] (45 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 45 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_8_45 node_8_1
    _ = (6 : Int) := by decide

theorem node_6_45 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 = (5 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 45 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (45 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 45 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_7_45 node_7_1
    _ = (5 : Int) := by decide

theorem node_5_45 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 = (4 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (45 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_6_45 node_6_1
    _ = (4 : Int) := by decide

theorem node_4_45 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 = (3 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (45 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_5_45 node_5_1
    _ = (3 : Int) := by decide

theorem node_3_45 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 = (2 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (45 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_4_45 node_4_1
    _ = (2 : Int) := by decide

theorem node_2_1955 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = (284 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1955 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 (by decide)
    _ = (286 : Int) - (2 : Int) :=
      sub_congr node_3_1955 node_3_45
    _ = (284 : Int) := by decide

theorem node_8_41 : count [19, 17, 13, 11, 7, 5, 3, 2] 41 = (6 : Int) := by
  decide

theorem node_7_41 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = (5 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = count [19, 17, 13, 11, 7, 5, 3, 2] 41 - count [19, 17, 13, 11, 7, 5, 3, 2] (41 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 41 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_8_41 node_8_1
    _ = (5 : Int) := by decide

theorem node_6_41 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = (4 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 41 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (41 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 41 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_7_41 node_7_1
    _ = (4 : Int) := by decide

theorem node_5_41 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = (3 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (41 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_6_41 node_6_1
    _ = (3 : Int) := by decide

theorem node_4_41 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = (2 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (41 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_5_41 node_5_1
    _ = (2 : Int) := by decide

theorem node_3_41 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (41 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_4_41 node_4_1
    _ = (1 : Int) := by decide

theorem node_3_0 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_2_41 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (41 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_41 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1955 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = (283 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1955 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 (by decide)
    _ = (284 : Int) - (1 : Int) :=
      sub_congr node_2_1955 node_2_41
    _ = (283 : Int) := by decide

theorem node_0_103656 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = (14121 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (103656 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 (by decide)
    _ = (14404 : Int) - (283 : Int) :=
      sub_congr node_1_103656 node_1_1955
    _ = (14121 : Int) := by decide

theorem node_8_104742 : count [19, 17, 13, 11, 7, 5, 3, 2] 104742 = (17911 : Int) := by
  decide

theorem node_8_4554 : count [19, 17, 13, 11, 7, 5, 3, 2] 4554 = (777 : Int) := by
  decide

theorem node_7_104742 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = (17134 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = count [19, 17, 13, 11, 7, 5, 3, 2] 104742 - count [19, 17, 13, 11, 7, 5, 3, 2] (104742 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 104742 (by decide)
    _ = (17911 : Int) - (777 : Int) :=
      sub_congr node_8_104742 node_8_4554
    _ = (17134 : Int) := by decide

theorem node_8_3611 : count [19, 17, 13, 11, 7, 5, 3, 2] 3611 = (615 : Int) := by
  decide

theorem node_8_157 : count [19, 17, 13, 11, 7, 5, 3, 2] 157 = (30 : Int) := by
  decide

theorem node_7_3611 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3611 = (585 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3611 = count [19, 17, 13, 11, 7, 5, 3, 2] 3611 - count [19, 17, 13, 11, 7, 5, 3, 2] (3611 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3611 (by decide)
    _ = (615 : Int) - (30 : Int) :=
      sub_congr node_8_3611 node_8_157
    _ = (585 : Int) := by decide

theorem node_6_104742 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = (16549 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (104742 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 (by decide)
    _ = (17134 : Int) - (585 : Int) :=
      sub_congr node_7_104742 node_7_3611
    _ = (16549 : Int) := by decide

theorem node_8_3378 : count [19, 17, 13, 11, 7, 5, 3, 2] 3378 = (574 : Int) := by
  decide

theorem node_8_146 : count [19, 17, 13, 11, 7, 5, 3, 2] 146 = (27 : Int) := by
  decide

theorem node_7_3378 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3378 = (547 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3378 = count [19, 17, 13, 11, 7, 5, 3, 2] 3378 - count [19, 17, 13, 11, 7, 5, 3, 2] (3378 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3378 (by decide)
    _ = (574 : Int) - (27 : Int) :=
      sub_congr node_8_3378 node_8_146
    _ = (547 : Int) := by decide

theorem node_8_116 : count [19, 17, 13, 11, 7, 5, 3, 2] 116 = (23 : Int) := by
  decide

theorem node_7_116 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 116 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 116 = count [19, 17, 13, 11, 7, 5, 3, 2] 116 - count [19, 17, 13, 11, 7, 5, 3, 2] (116 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 116 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_116 node_8_5
    _ = (22 : Int) := by decide

theorem node_6_3378 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3378 = (525 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3378 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3378 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3378 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3378 (by decide)
    _ = (547 : Int) - (22 : Int) :=
      sub_congr node_7_3378 node_7_116
    _ = (525 : Int) := by decide

theorem node_5_104742 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = (16024 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (104742 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 (by decide)
    _ = (16549 : Int) - (525 : Int) :=
      sub_congr node_6_104742 node_6_3378
    _ = (16024 : Int) := by decide

theorem node_8_2830 : count [19, 17, 13, 11, 7, 5, 3, 2] 2830 = (481 : Int) := by
  decide

theorem node_8_123 : count [19, 17, 13, 11, 7, 5, 3, 2] 123 = (23 : Int) := by
  decide

theorem node_7_2830 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2830 = (458 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2830 = count [19, 17, 13, 11, 7, 5, 3, 2] 2830 - count [19, 17, 13, 11, 7, 5, 3, 2] (2830 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2830 (by decide)
    _ = (481 : Int) - (23 : Int) :=
      sub_congr node_8_2830 node_8_123
    _ = (458 : Int) := by decide

theorem node_8_97 : count [19, 17, 13, 11, 7, 5, 3, 2] 97 = (18 : Int) := by
  decide

theorem node_7_97 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 97 = (17 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 97 = count [19, 17, 13, 11, 7, 5, 3, 2] 97 - count [19, 17, 13, 11, 7, 5, 3, 2] (97 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 97 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_8_97 node_8_4
    _ = (17 : Int) := by decide

theorem node_6_2830 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2830 = (441 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2830 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2830 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2830 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2830 (by decide)
    _ = (458 : Int) - (17 : Int) :=
      sub_congr node_7_2830 node_7_97
    _ = (441 : Int) := by decide

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

theorem node_5_2830 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2830 = (426 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2830 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2830 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2830 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2830 (by decide)
    _ = (441 : Int) - (15 : Int) :=
      sub_congr node_6_2830 node_6_91
    _ = (426 : Int) := by decide

theorem node_4_104742 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = (15598 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (104742 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 (by decide)
    _ = (16024 : Int) - (426 : Int) :=
      sub_congr node_5_104742 node_5_2830
    _ = (15598 : Int) := by decide

theorem node_8_2554 : count [19, 17, 13, 11, 7, 5, 3, 2] 2554 = (434 : Int) := by
  decide

theorem node_8_111 : count [19, 17, 13, 11, 7, 5, 3, 2] 111 = (22 : Int) := by
  decide

theorem node_7_2554 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 = (412 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 = count [19, 17, 13, 11, 7, 5, 3, 2] 2554 - count [19, 17, 13, 11, 7, 5, 3, 2] (2554 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2554 (by decide)
    _ = (434 : Int) - (22 : Int) :=
      sub_congr node_8_2554 node_8_111
    _ = (412 : Int) := by decide

theorem node_8_88 : count [19, 17, 13, 11, 7, 5, 3, 2] 88 = (16 : Int) := by
  decide

theorem node_7_88 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 88 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 88 = count [19, 17, 13, 11, 7, 5, 3, 2] 88 - count [19, 17, 13, 11, 7, 5, 3, 2] (88 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 88 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_88 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_2554 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 = (397 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2554 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 (by decide)
    _ = (412 : Int) - (15 : Int) :=
      sub_congr node_7_2554 node_7_88
    _ = (397 : Int) := by decide

theorem node_8_82 : count [19, 17, 13, 11, 7, 5, 3, 2] 82 = (15 : Int) := by
  decide

theorem node_7_82 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = (14 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = count [19, 17, 13, 11, 7, 5, 3, 2] 82 - count [19, 17, 13, 11, 7, 5, 3, 2] (82 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 82 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_8_82 node_8_3
    _ = (14 : Int) := by decide

theorem node_6_82 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = (13 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 82 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (82 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 82 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_7_82 node_7_2
    _ = (13 : Int) := by decide

theorem node_5_2554 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 = (384 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2554 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 (by decide)
    _ = (397 : Int) - (13 : Int) :=
      sub_congr node_6_2554 node_6_82
    _ = (384 : Int) := by decide

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

theorem node_4_2554 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 = (375 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2554 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 (by decide)
    _ = (384 : Int) - (9 : Int) :=
      sub_congr node_5_2554 node_5_69
    _ = (375 : Int) := by decide

theorem node_3_104742 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = (15223 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (104742 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 (by decide)
    _ = (15598 : Int) - (375 : Int) :=
      sub_congr node_4_104742 node_4_2554
    _ = (15223 : Int) := by decide

theorem node_8_2435 : count [19, 17, 13, 11, 7, 5, 3, 2] 2435 = (413 : Int) := by
  decide

theorem node_8_105 : count [19, 17, 13, 11, 7, 5, 3, 2] 105 = (20 : Int) := by
  decide

theorem node_7_2435 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 = (393 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 = count [19, 17, 13, 11, 7, 5, 3, 2] 2435 - count [19, 17, 13, 11, 7, 5, 3, 2] (2435 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2435 (by decide)
    _ = (413 : Int) - (20 : Int) :=
      sub_congr node_8_2435 node_8_105
    _ = (393 : Int) := by decide

theorem node_6_2435 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 = (378 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2435 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 (by decide)
    _ = (393 : Int) - (15 : Int) :=
      sub_congr node_7_2435 node_7_83
    _ = (378 : Int) := by decide

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

theorem node_5_2435 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 = (366 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2435 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 (by decide)
    _ = (378 : Int) - (12 : Int) :=
      sub_congr node_6_2435 node_6_78
    _ = (366 : Int) := by decide

theorem node_4_2435 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 = (358 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2435 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 (by decide)
    _ = (366 : Int) - (8 : Int) :=
      sub_congr node_5_2435 node_5_65
    _ = (358 : Int) := by decide

theorem node_4_59 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = (6 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (59 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_5_59 node_5_1
    _ = (6 : Int) := by decide

theorem node_3_2435 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 = (352 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2435 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 (by decide)
    _ = (358 : Int) - (6 : Int) :=
      sub_congr node_4_2435 node_4_59
    _ = (352 : Int) := by decide

theorem node_2_104742 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = (14871 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (104742 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 (by decide)
    _ = (15223 : Int) - (352 : Int) :=
      sub_congr node_3_104742 node_3_2435
    _ = (14871 : Int) := by decide

theorem node_8_2228 : count [19, 17, 13, 11, 7, 5, 3, 2] 2228 = (375 : Int) := by
  decide

theorem node_7_2228 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 = (358 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 = count [19, 17, 13, 11, 7, 5, 3, 2] 2228 - count [19, 17, 13, 11, 7, 5, 3, 2] (2228 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2228 (by decide)
    _ = (375 : Int) - (17 : Int) :=
      sub_congr node_8_2228 node_8_96
    _ = (358 : Int) := by decide

theorem node_6_2228 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 = (345 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2228 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 (by decide)
    _ = (358 : Int) - (13 : Int) :=
      sub_congr node_7_2228 node_7_76
    _ = (345 : Int) := by decide

theorem node_5_2228 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 = (334 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2228 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 (by decide)
    _ = (345 : Int) - (11 : Int) :=
      sub_congr node_6_2228 node_6_71
    _ = (334 : Int) := by decide

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

theorem node_4_2228 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 = (327 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2228 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 (by decide)
    _ = (334 : Int) - (7 : Int) :=
      sub_congr node_5_2228 node_5_60
    _ = (327 : Int) := by decide

theorem node_8_54 : count [19, 17, 13, 11, 7, 5, 3, 2] 54 = (9 : Int) := by
  decide

theorem node_7_54 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 54 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 54 = count [19, 17, 13, 11, 7, 5, 3, 2] 54 - count [19, 17, 13, 11, 7, 5, 3, 2] (54 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 54 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_54 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_54 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 = (7 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 54 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (54 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 54 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_7_54 node_7_1
    _ = (7 : Int) := by decide

theorem node_5_54 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 = (6 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (54 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_6_54 node_6_1
    _ = (6 : Int) := by decide

theorem node_4_54 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 = (5 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (54 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_5_54 node_5_1
    _ = (5 : Int) := by decide

theorem node_3_2228 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 = (322 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2228 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 (by decide)
    _ = (327 : Int) - (5 : Int) :=
      sub_congr node_4_2228 node_4_54
    _ = (322 : Int) := by decide

theorem node_2_2228 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 = (319 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2228 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 (by decide)
    _ = (322 : Int) - (3 : Int) :=
      sub_congr node_3_2228 node_3_51
    _ = (319 : Int) := by decide

theorem node_1_104742 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = (14552 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (104742 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 (by decide)
    _ = (14871 : Int) - (319 : Int) :=
      sub_congr node_2_104742 node_2_2228
    _ = (14552 : Int) := by decide

theorem node_8_1976 : count [19, 17, 13, 11, 7, 5, 3, 2] 1976 = (333 : Int) := by
  decide

theorem node_7_1976 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = (317 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = count [19, 17, 13, 11, 7, 5, 3, 2] 1976 - count [19, 17, 13, 11, 7, 5, 3, 2] (1976 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1976 (by decide)
    _ = (333 : Int) - (16 : Int) :=
      sub_congr node_8_1976 node_8_85
    _ = (317 : Int) := by decide

theorem node_6_1976 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = (306 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1976 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 (by decide)
    _ = (317 : Int) - (11 : Int) :=
      sub_congr node_7_1976 node_7_68
    _ = (306 : Int) := by decide

theorem node_5_1976 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = (297 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1976 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 (by decide)
    _ = (306 : Int) - (9 : Int) :=
      sub_congr node_6_1976 node_6_63
    _ = (297 : Int) := by decide

theorem node_4_1976 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = (291 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1976 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 (by decide)
    _ = (297 : Int) - (6 : Int) :=
      sub_congr node_5_1976 node_5_53
    _ = (291 : Int) := by decide

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

theorem node_3_1976 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = (287 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1976 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 (by decide)
    _ = (291 : Int) - (4 : Int) :=
      sub_congr node_4_1976 node_4_48
    _ = (287 : Int) := by decide

theorem node_2_1976 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = (285 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1976 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 (by decide)
    _ = (287 : Int) - (2 : Int) :=
      sub_congr node_3_1976 node_3_45
    _ = (285 : Int) := by decide

theorem node_8_42 : count [19, 17, 13, 11, 7, 5, 3, 2] 42 = (6 : Int) := by
  decide

theorem node_7_42 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = (5 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = count [19, 17, 13, 11, 7, 5, 3, 2] 42 - count [19, 17, 13, 11, 7, 5, 3, 2] (42 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 42 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_8_42 node_8_1
    _ = (5 : Int) := by decide

theorem node_6_42 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = (4 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 42 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (42 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 42 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_7_42 node_7_1
    _ = (4 : Int) := by decide

theorem node_5_42 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = (3 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (42 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_6_42 node_6_1
    _ = (3 : Int) := by decide

theorem node_4_42 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = (2 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (42 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_5_42 node_5_1
    _ = (2 : Int) := by decide

theorem node_3_42 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (42 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_4_42 node_4_1
    _ = (1 : Int) := by decide

theorem node_2_42 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (42 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_42 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1976 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = (284 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1976 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 (by decide)
    _ = (285 : Int) - (1 : Int) :=
      sub_congr node_2_1976 node_2_42
    _ = (284 : Int) := by decide

theorem node_0_104742 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = (14268 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (104742 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 (by decide)
    _ = (14552 : Int) - (284 : Int) :=
      sub_congr node_1_104742 node_1_1976
    _ = (14268 : Int) := by decide

theorem row_90 : count primes 103656 ≤ (14136 : Int) - 15 := by
  rw [show count primes 103656 = (14121 : Int) from node_0_103656]
  decide

theorem row_91 : count primes 104742 ≤ (14283 : Int) - 15 := by
  rw [show count primes 104742 = (14268 : Int) from node_0_104742]
  decide

def pairs : List (Nat × Nat) := [(103656, 14136), (104742, 14283)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl
  · exact row_90
  · exact row_91
end B699CorePrunedSieve.CoreRest32
#check @B699CorePrunedSieve.CoreRest32.pairs_valid
#print axioms B699CorePrunedSieve.CoreRest32.pairs_valid
