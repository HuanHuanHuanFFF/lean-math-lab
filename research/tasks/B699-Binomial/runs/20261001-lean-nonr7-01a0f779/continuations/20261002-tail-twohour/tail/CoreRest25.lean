import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreRest25
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_89520 : count [19, 17, 13, 11, 7, 5, 3, 2] 89520 = (15312 : Int) := by
  decide

theorem node_8_3892 : count [19, 17, 13, 11, 7, 5, 3, 2] 3892 = (662 : Int) := by
  decide

theorem node_7_89520 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 = (14650 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 = count [19, 17, 13, 11, 7, 5, 3, 2] 89520 - count [19, 17, 13, 11, 7, 5, 3, 2] (89520 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 89520 (by decide)
    _ = (15312 : Int) - (662 : Int) :=
      sub_congr node_8_89520 node_8_3892
    _ = (14650 : Int) := by decide

theorem node_8_3086 : count [19, 17, 13, 11, 7, 5, 3, 2] 3086 = (524 : Int) := by
  decide

theorem node_8_134 : count [19, 17, 13, 11, 7, 5, 3, 2] 134 = (25 : Int) := by
  decide

theorem node_7_3086 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3086 = (499 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3086 = count [19, 17, 13, 11, 7, 5, 3, 2] 3086 - count [19, 17, 13, 11, 7, 5, 3, 2] (3086 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3086 (by decide)
    _ = (524 : Int) - (25 : Int) :=
      sub_congr node_8_3086 node_8_134
    _ = (499 : Int) := by decide

theorem node_6_89520 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 = (14151 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (89520 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 (by decide)
    _ = (14650 : Int) - (499 : Int) :=
      sub_congr node_7_89520 node_7_3086
    _ = (14151 : Int) := by decide

theorem node_8_2887 : count [19, 17, 13, 11, 7, 5, 3, 2] 2887 = (491 : Int) := by
  decide

theorem node_8_125 : count [19, 17, 13, 11, 7, 5, 3, 2] 125 = (23 : Int) := by
  decide

theorem node_7_2887 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2887 = (468 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2887 = count [19, 17, 13, 11, 7, 5, 3, 2] 2887 - count [19, 17, 13, 11, 7, 5, 3, 2] (2887 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2887 (by decide)
    _ = (491 : Int) - (23 : Int) :=
      sub_congr node_8_2887 node_8_125
    _ = (468 : Int) := by decide

theorem node_8_99 : count [19, 17, 13, 11, 7, 5, 3, 2] 99 = (18 : Int) := by
  decide

theorem node_8_4 : count [19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  decide

theorem node_7_99 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 99 = (17 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 99 = count [19, 17, 13, 11, 7, 5, 3, 2] 99 - count [19, 17, 13, 11, 7, 5, 3, 2] (99 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 99 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_8_99 node_8_4
    _ = (17 : Int) := by decide

theorem node_6_2887 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2887 = (451 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2887 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2887 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2887 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2887 (by decide)
    _ = (468 : Int) - (17 : Int) :=
      sub_congr node_7_2887 node_7_99
    _ = (451 : Int) := by decide

theorem node_5_89520 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 = (13700 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (89520 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 (by decide)
    _ = (14151 : Int) - (451 : Int) :=
      sub_congr node_6_89520 node_6_2887
    _ = (13700 : Int) := by decide

theorem node_8_2419 : count [19, 17, 13, 11, 7, 5, 3, 2] 2419 = (412 : Int) := by
  decide

theorem node_8_105 : count [19, 17, 13, 11, 7, 5, 3, 2] 105 = (20 : Int) := by
  decide

theorem node_7_2419 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2419 = (392 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2419 = count [19, 17, 13, 11, 7, 5, 3, 2] 2419 - count [19, 17, 13, 11, 7, 5, 3, 2] (2419 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2419 (by decide)
    _ = (412 : Int) - (20 : Int) :=
      sub_congr node_8_2419 node_8_105
    _ = (392 : Int) := by decide

theorem node_8_83 : count [19, 17, 13, 11, 7, 5, 3, 2] 83 = (16 : Int) := by
  decide

theorem node_8_3 : count [19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  decide

theorem node_7_83 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 83 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 83 = count [19, 17, 13, 11, 7, 5, 3, 2] 83 - count [19, 17, 13, 11, 7, 5, 3, 2] (83 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 83 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_83 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_2419 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2419 = (377 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2419 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2419 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2419 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2419 (by decide)
    _ = (392 : Int) - (15 : Int) :=
      sub_congr node_7_2419 node_7_83
    _ = (377 : Int) := by decide

theorem node_8_78 : count [19, 17, 13, 11, 7, 5, 3, 2] 78 = (14 : Int) := by
  decide

theorem node_7_78 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = count [19, 17, 13, 11, 7, 5, 3, 2] 78 - count [19, 17, 13, 11, 7, 5, 3, 2] (78 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 78 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_78 node_8_3
    _ = (13 : Int) := by decide

theorem node_8_2 : count [19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  decide

theorem node_8_0 : count [19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [19, 17, 13, 11, 7, 5, 3, 2]

theorem node_7_2 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [19, 17, 13, 11, 7, 5, 3, 2] 2 - count [19, 17, 13, 11, 7, 5, 3, 2] (2 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_2 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_78 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = (12 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (78 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_7_78 node_7_2
    _ = (12 : Int) := by decide

theorem node_5_2419 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2419 = (365 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2419 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2419 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2419 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2419 (by decide)
    _ = (377 : Int) - (12 : Int) :=
      sub_congr node_6_2419 node_6_78
    _ = (365 : Int) := by decide

theorem node_4_89520 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 = (13335 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (89520 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 (by decide)
    _ = (13700 : Int) - (365 : Int) :=
      sub_congr node_5_89520 node_5_2419
    _ = (13335 : Int) := by decide

theorem node_8_2183 : count [19, 17, 13, 11, 7, 5, 3, 2] 2183 = (369 : Int) := by
  decide

theorem node_8_94 : count [19, 17, 13, 11, 7, 5, 3, 2] 94 = (17 : Int) := by
  decide

theorem node_7_2183 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2183 = (352 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2183 = count [19, 17, 13, 11, 7, 5, 3, 2] 2183 - count [19, 17, 13, 11, 7, 5, 3, 2] (2183 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2183 (by decide)
    _ = (369 : Int) - (17 : Int) :=
      sub_congr node_8_2183 node_8_94
    _ = (352 : Int) := by decide

theorem node_8_75 : count [19, 17, 13, 11, 7, 5, 3, 2] 75 = (14 : Int) := by
  decide

theorem node_7_75 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = count [19, 17, 13, 11, 7, 5, 3, 2] 75 - count [19, 17, 13, 11, 7, 5, 3, 2] (75 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 75 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_75 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_2183 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2183 = (339 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2183 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2183 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2183 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2183 (by decide)
    _ = (352 : Int) - (13 : Int) :=
      sub_congr node_7_2183 node_7_75
    _ = (339 : Int) := by decide

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

theorem node_5_2183 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2183 = (329 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2183 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2183 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2183 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2183 (by decide)
    _ = (339 : Int) - (10 : Int) :=
      sub_congr node_6_2183 node_6_70
    _ = (329 : Int) := by decide

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

theorem node_8_1 : count [19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  decide

theorem node_7_1 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [19, 17, 13, 11, 7, 5, 3, 2] 1 - count [19, 17, 13, 11, 7, 5, 3, 2] (1 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_1 node_8_0
    _ = (1 : Int) := by decide

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_1 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_1 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_59 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = (7 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (59 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_6_59 node_6_1
    _ = (7 : Int) := by decide

theorem node_4_2183 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2183 = (322 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2183 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2183 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2183 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2183 (by decide)
    _ = (329 : Int) - (7 : Int) :=
      sub_congr node_5_2183 node_5_59
    _ = (322 : Int) := by decide

theorem node_3_89520 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 = (13013 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (89520 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 (by decide)
    _ = (13335 : Int) - (322 : Int) :=
      sub_congr node_4_89520 node_4_2183
    _ = (13013 : Int) := by decide

theorem node_8_2081 : count [19, 17, 13, 11, 7, 5, 3, 2] 2081 = (352 : Int) := by
  decide

theorem node_8_90 : count [19, 17, 13, 11, 7, 5, 3, 2] 90 = (17 : Int) := by
  decide

theorem node_7_2081 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2081 = (335 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2081 = count [19, 17, 13, 11, 7, 5, 3, 2] 2081 - count [19, 17, 13, 11, 7, 5, 3, 2] (2081 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2081 (by decide)
    _ = (352 : Int) - (17 : Int) :=
      sub_congr node_8_2081 node_8_90
    _ = (335 : Int) := by decide

theorem node_8_71 : count [19, 17, 13, 11, 7, 5, 3, 2] 71 = (13 : Int) := by
  decide

theorem node_7_71 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = (12 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = count [19, 17, 13, 11, 7, 5, 3, 2] 71 - count [19, 17, 13, 11, 7, 5, 3, 2] (71 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 71 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_8_71 node_8_3
    _ = (12 : Int) := by decide

theorem node_6_2081 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2081 = (323 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2081 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2081 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2081 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2081 (by decide)
    _ = (335 : Int) - (12 : Int) :=
      sub_congr node_7_2081 node_7_71
    _ = (323 : Int) := by decide

theorem node_8_67 : count [19, 17, 13, 11, 7, 5, 3, 2] 67 = (12 : Int) := by
  decide

theorem node_7_67 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 67 = (11 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 67 = count [19, 17, 13, 11, 7, 5, 3, 2] 67 - count [19, 17, 13, 11, 7, 5, 3, 2] (67 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 67 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_8_67 node_8_2
    _ = (11 : Int) := by decide

theorem node_6_67 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67 = (10 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 67 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (67 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 67 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_7_67 node_7_2
    _ = (10 : Int) := by decide

theorem node_5_2081 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2081 = (313 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2081 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2081 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2081 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2081 (by decide)
    _ = (323 : Int) - (10 : Int) :=
      sub_congr node_6_2081 node_6_67
    _ = (313 : Int) := by decide

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

theorem node_4_2081 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2081 = (307 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2081 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2081 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2081 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2081 (by decide)
    _ = (313 : Int) - (6 : Int) :=
      sub_congr node_5_2081 node_5_56
    _ = (307 : Int) := by decide

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

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_1 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_1 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_50 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = (4 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (50 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_5_50 node_5_1
    _ = (4 : Int) := by decide

theorem node_3_2081 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2081 = (303 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2081 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2081 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2081 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2081 (by decide)
    _ = (307 : Int) - (4 : Int) :=
      sub_congr node_4_2081 node_4_50
    _ = (303 : Int) := by decide

theorem node_2_89520 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 = (12710 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (89520 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 (by decide)
    _ = (13013 : Int) - (303 : Int) :=
      sub_congr node_3_89520 node_3_2081
    _ = (12710 : Int) := by decide

theorem node_8_1904 : count [19, 17, 13, 11, 7, 5, 3, 2] 1904 = (322 : Int) := by
  decide

theorem node_8_82 : count [19, 17, 13, 11, 7, 5, 3, 2] 82 = (15 : Int) := by
  decide

theorem node_7_1904 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1904 = (307 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1904 = count [19, 17, 13, 11, 7, 5, 3, 2] 1904 - count [19, 17, 13, 11, 7, 5, 3, 2] (1904 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1904 (by decide)
    _ = (322 : Int) - (15 : Int) :=
      sub_congr node_8_1904 node_8_82
    _ = (307 : Int) := by decide

theorem node_8_65 : count [19, 17, 13, 11, 7, 5, 3, 2] 65 = (11 : Int) := by
  decide

theorem node_7_65 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = (10 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = count [19, 17, 13, 11, 7, 5, 3, 2] 65 - count [19, 17, 13, 11, 7, 5, 3, 2] (65 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 65 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_8_65 node_8_2
    _ = (10 : Int) := by decide

theorem node_6_1904 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1904 = (297 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1904 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1904 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1904 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1904 (by decide)
    _ = (307 : Int) - (10 : Int) :=
      sub_congr node_7_1904 node_7_65
    _ = (297 : Int) := by decide

theorem node_8_61 : count [19, 17, 13, 11, 7, 5, 3, 2] 61 = (11 : Int) := by
  decide

theorem node_7_61 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = (10 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = count [19, 17, 13, 11, 7, 5, 3, 2] 61 - count [19, 17, 13, 11, 7, 5, 3, 2] (61 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 61 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_8_61 node_8_2
    _ = (10 : Int) := by decide

theorem node_6_61 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = (9 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 61 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (61 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 61 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_7_61 node_7_2
    _ = (9 : Int) := by decide

theorem node_5_1904 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1904 = (288 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1904 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1904 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1904 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1904 (by decide)
    _ = (297 : Int) - (9 : Int) :=
      sub_congr node_6_1904 node_6_61
    _ = (288 : Int) := by decide

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

theorem node_4_1904 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1904 = (283 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1904 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1904 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1904 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1904 (by decide)
    _ = (288 : Int) - (5 : Int) :=
      sub_congr node_5_1904 node_5_51
    _ = (283 : Int) := by decide

theorem node_8_46 : count [19, 17, 13, 11, 7, 5, 3, 2] 46 = (7 : Int) := by
  decide

theorem node_7_46 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = (6 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = count [19, 17, 13, 11, 7, 5, 3, 2] 46 - count [19, 17, 13, 11, 7, 5, 3, 2] (46 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 46 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_8_46 node_8_2
    _ = (6 : Int) := by decide

theorem node_6_46 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = (5 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 46 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (46 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 46 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_7_46 node_7_1
    _ = (5 : Int) := by decide

theorem node_5_46 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = (4 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (46 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_6_46 node_6_1
    _ = (4 : Int) := by decide

theorem node_4_46 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = (3 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (46 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_5_46 node_5_1
    _ = (3 : Int) := by decide

theorem node_3_1904 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1904 = (280 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1904 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1904 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1904 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1904 (by decide)
    _ = (283 : Int) - (3 : Int) :=
      sub_congr node_4_1904 node_4_46
    _ = (280 : Int) := by decide

theorem node_8_44 : count [19, 17, 13, 11, 7, 5, 3, 2] 44 = (7 : Int) := by
  decide

theorem node_7_44 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 44 = (6 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 44 = count [19, 17, 13, 11, 7, 5, 3, 2] 44 - count [19, 17, 13, 11, 7, 5, 3, 2] (44 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 44 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_8_44 node_8_1
    _ = (6 : Int) := by decide

theorem node_6_44 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 = (5 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 44 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (44 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 44 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_7_44 node_7_1
    _ = (5 : Int) := by decide

theorem node_5_44 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 = (4 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (44 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_6_44 node_6_1
    _ = (4 : Int) := by decide

theorem node_4_44 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 = (3 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (44 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_5_44 node_5_1
    _ = (3 : Int) := by decide

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_1 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_1 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_44 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 = (2 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (44 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_4_44 node_4_1
    _ = (2 : Int) := by decide

theorem node_2_1904 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1904 = (278 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1904 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1904 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1904 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1904 (by decide)
    _ = (280 : Int) - (2 : Int) :=
      sub_congr node_3_1904 node_3_44
    _ = (278 : Int) := by decide

theorem node_1_89520 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 = (12432 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (89520 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 (by decide)
    _ = (12710 : Int) - (278 : Int) :=
      sub_congr node_2_89520 node_2_1904
    _ = (12432 : Int) := by decide

theorem node_8_1689 : count [19, 17, 13, 11, 7, 5, 3, 2] 1689 = (286 : Int) := by
  decide

theorem node_8_73 : count [19, 17, 13, 11, 7, 5, 3, 2] 73 = (14 : Int) := by
  decide

theorem node_7_1689 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1689 = (272 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1689 = count [19, 17, 13, 11, 7, 5, 3, 2] 1689 - count [19, 17, 13, 11, 7, 5, 3, 2] (1689 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1689 (by decide)
    _ = (286 : Int) - (14 : Int) :=
      sub_congr node_8_1689 node_8_73
    _ = (272 : Int) := by decide

theorem node_8_58 : count [19, 17, 13, 11, 7, 5, 3, 2] 58 = (9 : Int) := by
  decide

theorem node_7_58 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = count [19, 17, 13, 11, 7, 5, 3, 2] 58 - count [19, 17, 13, 11, 7, 5, 3, 2] (58 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 58 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_58 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_1689 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1689 = (264 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1689 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1689 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1689 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1689 (by decide)
    _ = (272 : Int) - (8 : Int) :=
      sub_congr node_7_1689 node_7_58
    _ = (264 : Int) := by decide

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

theorem node_5_1689 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1689 = (257 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1689 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1689 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1689 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1689 (by decide)
    _ = (264 : Int) - (7 : Int) :=
      sub_congr node_6_1689 node_6_54
    _ = (257 : Int) := by decide

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

theorem node_4_1689 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1689 = (253 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1689 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1689 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1689 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1689 (by decide)
    _ = (257 : Int) - (4 : Int) :=
      sub_congr node_5_1689 node_5_45
    _ = (253 : Int) := by decide

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

theorem node_3_1689 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1689 = (251 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1689 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1689 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1689 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1689 (by decide)
    _ = (253 : Int) - (2 : Int) :=
      sub_congr node_4_1689 node_4_41
    _ = (251 : Int) := by decide

theorem node_8_39 : count [19, 17, 13, 11, 7, 5, 3, 2] 39 = (5 : Int) := by
  decide

theorem node_7_39 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 39 = (4 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 39 = count [19, 17, 13, 11, 7, 5, 3, 2] 39 - count [19, 17, 13, 11, 7, 5, 3, 2] (39 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 39 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_8_39 node_8_1
    _ = (4 : Int) := by decide

theorem node_6_39 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 = (3 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 39 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (39 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 39 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_7_39 node_7_1
    _ = (3 : Int) := by decide

theorem node_5_39 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 = (2 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (39 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_6_39 node_6_1
    _ = (2 : Int) := by decide

theorem node_4_39 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (39 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_5_39 node_5_1
    _ = (1 : Int) := by decide

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_39 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (39 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_39 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1689 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1689 = (250 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1689 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1689 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1689 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1689 (by decide)
    _ = (251 : Int) - (1 : Int) :=
      sub_congr node_3_1689 node_3_39
    _ = (250 : Int) := by decide

theorem node_8_35 : count [19, 17, 13, 11, 7, 5, 3, 2] 35 = (4 : Int) := by
  decide

theorem node_7_35 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = (3 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = count [19, 17, 13, 11, 7, 5, 3, 2] 35 - count [19, 17, 13, 11, 7, 5, 3, 2] (35 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 35 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_8_35 node_8_1
    _ = (3 : Int) := by decide

theorem node_6_35 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = (2 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 35 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (35 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 35 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_7_35 node_7_1
    _ = (2 : Int) := by decide

theorem node_5_35 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (35 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_6_35 node_6_1
    _ = (1 : Int) := by decide

theorem node_4_35 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (35 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_35 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_35 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (35 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_35 node_4_0
    _ = (1 : Int) := by decide

theorem node_3_0 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_2_35 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (35 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_35 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1689 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1689 = (249 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1689 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1689 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1689 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1689 (by decide)
    _ = (250 : Int) - (1 : Int) :=
      sub_congr node_2_1689 node_2_35
    _ = (249 : Int) := by decide

theorem node_0_89520 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 = (12183 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (89520 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89520 (by decide)
    _ = (12432 : Int) - (249 : Int) :=
      sub_congr node_1_89520 node_1_1689
    _ = (12183 : Int) := by decide

theorem node_8_90522 : count [19, 17, 13, 11, 7, 5, 3, 2] 90522 = (15480 : Int) := by
  decide

theorem node_8_3935 : count [19, 17, 13, 11, 7, 5, 3, 2] 3935 = (670 : Int) := by
  decide

theorem node_7_90522 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 = (14810 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 = count [19, 17, 13, 11, 7, 5, 3, 2] 90522 - count [19, 17, 13, 11, 7, 5, 3, 2] (90522 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 90522 (by decide)
    _ = (15480 : Int) - (670 : Int) :=
      sub_congr node_8_90522 node_8_3935
    _ = (14810 : Int) := by decide

theorem node_8_3121 : count [19, 17, 13, 11, 7, 5, 3, 2] 3121 = (529 : Int) := by
  decide

theorem node_8_135 : count [19, 17, 13, 11, 7, 5, 3, 2] 135 = (25 : Int) := by
  decide

theorem node_7_3121 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3121 = (504 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3121 = count [19, 17, 13, 11, 7, 5, 3, 2] 3121 - count [19, 17, 13, 11, 7, 5, 3, 2] (3121 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3121 (by decide)
    _ = (529 : Int) - (25 : Int) :=
      sub_congr node_8_3121 node_8_135
    _ = (504 : Int) := by decide

theorem node_6_90522 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 = (14306 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (90522 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 (by decide)
    _ = (14810 : Int) - (504 : Int) :=
      sub_congr node_7_90522 node_7_3121
    _ = (14306 : Int) := by decide

theorem node_8_2920 : count [19, 17, 13, 11, 7, 5, 3, 2] 2920 = (496 : Int) := by
  decide

theorem node_8_126 : count [19, 17, 13, 11, 7, 5, 3, 2] 126 = (23 : Int) := by
  decide

theorem node_7_2920 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2920 = (473 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2920 = count [19, 17, 13, 11, 7, 5, 3, 2] 2920 - count [19, 17, 13, 11, 7, 5, 3, 2] (2920 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2920 (by decide)
    _ = (496 : Int) - (23 : Int) :=
      sub_congr node_8_2920 node_8_126
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

theorem node_6_2920 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2920 = (456 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2920 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2920 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2920 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2920 (by decide)
    _ = (473 : Int) - (17 : Int) :=
      sub_congr node_7_2920 node_7_100
    _ = (456 : Int) := by decide

theorem node_5_90522 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 = (13850 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (90522 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 (by decide)
    _ = (14306 : Int) - (456 : Int) :=
      sub_congr node_6_90522 node_6_2920
    _ = (13850 : Int) := by decide

theorem node_8_2446 : count [19, 17, 13, 11, 7, 5, 3, 2] 2446 = (415 : Int) := by
  decide

theorem node_8_106 : count [19, 17, 13, 11, 7, 5, 3, 2] 106 = (20 : Int) := by
  decide

theorem node_7_2446 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2446 = (395 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2446 = count [19, 17, 13, 11, 7, 5, 3, 2] 2446 - count [19, 17, 13, 11, 7, 5, 3, 2] (2446 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2446 (by decide)
    _ = (415 : Int) - (20 : Int) :=
      sub_congr node_8_2446 node_8_106
    _ = (395 : Int) := by decide

theorem node_8_84 : count [19, 17, 13, 11, 7, 5, 3, 2] 84 = (16 : Int) := by
  decide

theorem node_7_84 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 84 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 84 = count [19, 17, 13, 11, 7, 5, 3, 2] 84 - count [19, 17, 13, 11, 7, 5, 3, 2] (84 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 84 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_84 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_2446 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2446 = (380 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2446 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2446 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2446 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2446 (by decide)
    _ = (395 : Int) - (15 : Int) :=
      sub_congr node_7_2446 node_7_84
    _ = (380 : Int) := by decide

theorem node_5_2446 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2446 = (368 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2446 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2446 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2446 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2446 (by decide)
    _ = (380 : Int) - (12 : Int) :=
      sub_congr node_6_2446 node_6_78
    _ = (368 : Int) := by decide

theorem node_4_90522 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 = (13482 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (90522 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 (by decide)
    _ = (13850 : Int) - (368 : Int) :=
      sub_congr node_5_90522 node_5_2446
    _ = (13482 : Int) := by decide

theorem node_8_2207 : count [19, 17, 13, 11, 7, 5, 3, 2] 2207 = (372 : Int) := by
  decide

theorem node_8_95 : count [19, 17, 13, 11, 7, 5, 3, 2] 95 = (17 : Int) := by
  decide

theorem node_7_2207 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2207 = (355 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2207 = count [19, 17, 13, 11, 7, 5, 3, 2] 2207 - count [19, 17, 13, 11, 7, 5, 3, 2] (2207 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2207 (by decide)
    _ = (372 : Int) - (17 : Int) :=
      sub_congr node_8_2207 node_8_95
    _ = (355 : Int) := by decide

theorem node_8_76 : count [19, 17, 13, 11, 7, 5, 3, 2] 76 = (14 : Int) := by
  decide

theorem node_7_76 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 76 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 76 = count [19, 17, 13, 11, 7, 5, 3, 2] 76 - count [19, 17, 13, 11, 7, 5, 3, 2] (76 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 76 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_76 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_2207 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2207 = (342 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2207 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2207 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2207 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2207 (by decide)
    _ = (355 : Int) - (13 : Int) :=
      sub_congr node_7_2207 node_7_76
    _ = (342 : Int) := by decide

theorem node_6_71 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = (11 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (71 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_7_71 node_7_2
    _ = (11 : Int) := by decide

theorem node_5_2207 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2207 = (331 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2207 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2207 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2207 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2207 (by decide)
    _ = (342 : Int) - (11 : Int) :=
      sub_congr node_6_2207 node_6_71
    _ = (331 : Int) := by decide

theorem node_4_2207 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2207 = (324 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2207 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2207 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2207 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2207 (by decide)
    _ = (331 : Int) - (7 : Int) :=
      sub_congr node_5_2207 node_5_59
    _ = (324 : Int) := by decide

theorem node_3_90522 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 = (13158 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (90522 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 (by decide)
    _ = (13482 : Int) - (324 : Int) :=
      sub_congr node_4_90522 node_4_2207
    _ = (13158 : Int) := by decide

theorem node_8_2105 : count [19, 17, 13, 11, 7, 5, 3, 2] 2105 = (356 : Int) := by
  decide

theorem node_8_91 : count [19, 17, 13, 11, 7, 5, 3, 2] 91 = (17 : Int) := by
  decide

theorem node_7_2105 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2105 = (339 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2105 = count [19, 17, 13, 11, 7, 5, 3, 2] 2105 - count [19, 17, 13, 11, 7, 5, 3, 2] (2105 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2105 (by decide)
    _ = (356 : Int) - (17 : Int) :=
      sub_congr node_8_2105 node_8_91
    _ = (339 : Int) := by decide

theorem node_8_72 : count [19, 17, 13, 11, 7, 5, 3, 2] 72 = (13 : Int) := by
  decide

theorem node_7_72 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = (12 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = count [19, 17, 13, 11, 7, 5, 3, 2] 72 - count [19, 17, 13, 11, 7, 5, 3, 2] (72 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 72 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_8_72 node_8_3
    _ = (12 : Int) := by decide

theorem node_6_2105 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2105 = (327 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2105 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2105 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2105 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2105 (by decide)
    _ = (339 : Int) - (12 : Int) :=
      sub_congr node_7_2105 node_7_72
    _ = (327 : Int) := by decide

theorem node_5_2105 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2105 = (317 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2105 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2105 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2105 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2105 (by decide)
    _ = (327 : Int) - (10 : Int) :=
      sub_congr node_6_2105 node_6_67
    _ = (317 : Int) := by decide

theorem node_4_2105 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2105 = (311 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2105 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2105 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2105 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2105 (by decide)
    _ = (317 : Int) - (6 : Int) :=
      sub_congr node_5_2105 node_5_56
    _ = (311 : Int) := by decide

theorem node_4_51 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = (4 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (51 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_5_51 node_5_1
    _ = (4 : Int) := by decide

theorem node_3_2105 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2105 = (307 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2105 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2105 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2105 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2105 (by decide)
    _ = (311 : Int) - (4 : Int) :=
      sub_congr node_4_2105 node_4_51
    _ = (307 : Int) := by decide

theorem node_2_90522 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 = (12851 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (90522 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 (by decide)
    _ = (13158 : Int) - (307 : Int) :=
      sub_congr node_3_90522 node_3_2105
    _ = (12851 : Int) := by decide

theorem node_8_1926 : count [19, 17, 13, 11, 7, 5, 3, 2] 1926 = (325 : Int) := by
  decide

theorem node_7_1926 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1926 = (309 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1926 = count [19, 17, 13, 11, 7, 5, 3, 2] 1926 - count [19, 17, 13, 11, 7, 5, 3, 2] (1926 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1926 (by decide)
    _ = (325 : Int) - (16 : Int) :=
      sub_congr node_8_1926 node_8_83
    _ = (309 : Int) := by decide

theorem node_8_66 : count [19, 17, 13, 11, 7, 5, 3, 2] 66 = (11 : Int) := by
  decide

theorem node_7_66 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = (10 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = count [19, 17, 13, 11, 7, 5, 3, 2] 66 - count [19, 17, 13, 11, 7, 5, 3, 2] (66 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 66 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_8_66 node_8_2
    _ = (10 : Int) := by decide

theorem node_6_1926 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1926 = (299 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1926 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1926 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1926 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1926 (by decide)
    _ = (309 : Int) - (10 : Int) :=
      sub_congr node_7_1926 node_7_66
    _ = (299 : Int) := by decide

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

theorem node_5_1926 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1926 = (290 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1926 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1926 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1926 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1926 (by decide)
    _ = (299 : Int) - (9 : Int) :=
      sub_congr node_6_1926 node_6_62
    _ = (290 : Int) := by decide

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

theorem node_4_1926 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1926 = (285 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1926 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1926 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1926 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1926 (by decide)
    _ = (290 : Int) - (5 : Int) :=
      sub_congr node_5_1926 node_5_52
    _ = (285 : Int) := by decide

theorem node_3_1926 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1926 = (282 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1926 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1926 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1926 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1926 (by decide)
    _ = (285 : Int) - (3 : Int) :=
      sub_congr node_4_1926 node_4_46
    _ = (282 : Int) := by decide

theorem node_2_1926 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1926 = (280 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1926 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1926 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1926 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1926 (by decide)
    _ = (282 : Int) - (2 : Int) :=
      sub_congr node_3_1926 node_3_44
    _ = (280 : Int) := by decide

theorem node_1_90522 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 = (12571 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (90522 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 (by decide)
    _ = (12851 : Int) - (280 : Int) :=
      sub_congr node_2_90522 node_2_1926
    _ = (12571 : Int) := by decide

theorem node_8_1707 : count [19, 17, 13, 11, 7, 5, 3, 2] 1707 = (289 : Int) := by
  decide

theorem node_8_74 : count [19, 17, 13, 11, 7, 5, 3, 2] 74 = (14 : Int) := by
  decide

theorem node_7_1707 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1707 = (275 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1707 = count [19, 17, 13, 11, 7, 5, 3, 2] 1707 - count [19, 17, 13, 11, 7, 5, 3, 2] (1707 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1707 (by decide)
    _ = (289 : Int) - (14 : Int) :=
      sub_congr node_8_1707 node_8_74
    _ = (275 : Int) := by decide

theorem node_6_1707 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1707 = (267 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1707 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1707 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1707 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1707 (by decide)
    _ = (275 : Int) - (8 : Int) :=
      sub_congr node_7_1707 node_7_58
    _ = (267 : Int) := by decide

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

theorem node_5_1707 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1707 = (260 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1707 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1707 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1707 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1707 (by decide)
    _ = (267 : Int) - (7 : Int) :=
      sub_congr node_6_1707 node_6_55
    _ = (260 : Int) := by decide

theorem node_4_1707 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1707 = (256 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1707 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1707 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1707 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1707 (by decide)
    _ = (260 : Int) - (4 : Int) :=
      sub_congr node_5_1707 node_5_46
    _ = (256 : Int) := by decide

theorem node_3_1707 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1707 = (254 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1707 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1707 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1707 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1707 (by decide)
    _ = (256 : Int) - (2 : Int) :=
      sub_congr node_4_1707 node_4_41
    _ = (254 : Int) := by decide

theorem node_2_1707 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1707 = (253 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1707 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1707 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1707 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1707 (by decide)
    _ = (254 : Int) - (1 : Int) :=
      sub_congr node_3_1707 node_3_39
    _ = (253 : Int) := by decide

theorem node_8_36 : count [19, 17, 13, 11, 7, 5, 3, 2] 36 = (4 : Int) := by
  decide

theorem node_7_36 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = (3 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = count [19, 17, 13, 11, 7, 5, 3, 2] 36 - count [19, 17, 13, 11, 7, 5, 3, 2] (36 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 36 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_8_36 node_8_1
    _ = (3 : Int) := by decide

theorem node_6_36 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = (2 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 36 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (36 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 36 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_7_36 node_7_1
    _ = (2 : Int) := by decide

theorem node_5_36 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (36 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_6_36 node_6_1
    _ = (1 : Int) := by decide

theorem node_4_36 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (36 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_36 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_36 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (36 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_36 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_36 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (36 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_36 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1707 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1707 = (252 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1707 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1707 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1707 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1707 (by decide)
    _ = (253 : Int) - (1 : Int) :=
      sub_congr node_2_1707 node_2_36
    _ = (252 : Int) := by decide

theorem node_0_90522 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 = (12319 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (90522 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90522 (by decide)
    _ = (12571 : Int) - (252 : Int) :=
      sub_congr node_1_90522 node_1_1707
    _ = (12319 : Int) := by decide

theorem row_76 : count primes 89520 ≤ (12198 : Int) - 15 := by
  rw [show count primes 89520 = (12183 : Int) from node_0_89520]
  decide

theorem row_77 : count primes 90522 ≤ (12334 : Int) - 15 := by
  rw [show count primes 90522 = (12319 : Int) from node_0_90522]
  decide

def pairs : List (Nat × Nat) := [(89520, 12198), (90522, 12334)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl
  · exact row_76
  · exact row_77
end B699CorePrunedSieve.CoreRest25
#check @B699CorePrunedSieve.CoreRest25.pairs_valid
#print axioms B699CorePrunedSieve.CoreRest25.pairs_valid
