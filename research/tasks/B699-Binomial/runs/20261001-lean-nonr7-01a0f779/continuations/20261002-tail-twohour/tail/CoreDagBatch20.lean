import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreDagBatch20
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

theorem node_8_91512 : count [19, 17, 13, 11, 7, 5, 3, 2] 91512 = (15649 : Int) := by
  decide

theorem node_8_3978 : count [19, 17, 13, 11, 7, 5, 3, 2] 3978 = (678 : Int) := by
  decide

theorem node_7_91512 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 = (14971 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 = count [19, 17, 13, 11, 7, 5, 3, 2] 91512 - count [19, 17, 13, 11, 7, 5, 3, 2] (91512 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 91512 (by decide)
    _ = (15649 : Int) - (678 : Int) :=
      sub_congr node_8_91512 node_8_3978
    _ = (14971 : Int) := by decide

theorem node_8_3155 : count [19, 17, 13, 11, 7, 5, 3, 2] 3155 = (535 : Int) := by
  decide

theorem node_8_137 : count [19, 17, 13, 11, 7, 5, 3, 2] 137 = (26 : Int) := by
  decide

theorem node_7_3155 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3155 = (509 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3155 = count [19, 17, 13, 11, 7, 5, 3, 2] 3155 - count [19, 17, 13, 11, 7, 5, 3, 2] (3155 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3155 (by decide)
    _ = (535 : Int) - (26 : Int) :=
      sub_congr node_8_3155 node_8_137
    _ = (509 : Int) := by decide

theorem node_6_91512 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 = (14462 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (91512 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 (by decide)
    _ = (14971 : Int) - (509 : Int) :=
      sub_congr node_7_91512 node_7_3155
    _ = (14462 : Int) := by decide

theorem node_8_2952 : count [19, 17, 13, 11, 7, 5, 3, 2] 2952 = (501 : Int) := by
  decide

theorem node_8_128 : count [19, 17, 13, 11, 7, 5, 3, 2] 128 = (24 : Int) := by
  decide

theorem node_7_2952 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2952 = (477 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2952 = count [19, 17, 13, 11, 7, 5, 3, 2] 2952 - count [19, 17, 13, 11, 7, 5, 3, 2] (2952 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2952 (by decide)
    _ = (501 : Int) - (24 : Int) :=
      sub_congr node_8_2952 node_8_128
    _ = (477 : Int) := by decide

theorem node_8_101 : count [19, 17, 13, 11, 7, 5, 3, 2] 101 = (19 : Int) := by
  decide

theorem node_7_101 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 101 = (18 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 101 = count [19, 17, 13, 11, 7, 5, 3, 2] 101 - count [19, 17, 13, 11, 7, 5, 3, 2] (101 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 101 (by decide)
    _ = (19 : Int) - (1 : Int) :=
      sub_congr node_8_101 node_8_4
    _ = (18 : Int) := by decide

theorem node_6_2952 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2952 = (459 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2952 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2952 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2952 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2952 (by decide)
    _ = (477 : Int) - (18 : Int) :=
      sub_congr node_7_2952 node_7_101
    _ = (459 : Int) := by decide

theorem node_5_91512 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 = (14003 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (91512 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 (by decide)
    _ = (14462 : Int) - (459 : Int) :=
      sub_congr node_6_91512 node_6_2952
    _ = (14003 : Int) := by decide

theorem node_8_2473 : count [19, 17, 13, 11, 7, 5, 3, 2] 2473 = (421 : Int) := by
  decide

theorem node_8_107 : count [19, 17, 13, 11, 7, 5, 3, 2] 107 = (21 : Int) := by
  decide

theorem node_7_2473 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = (400 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = count [19, 17, 13, 11, 7, 5, 3, 2] 2473 - count [19, 17, 13, 11, 7, 5, 3, 2] (2473 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2473 (by decide)
    _ = (421 : Int) - (21 : Int) :=
      sub_congr node_8_2473 node_8_107
    _ = (400 : Int) := by decide

theorem node_8_85 : count [19, 17, 13, 11, 7, 5, 3, 2] 85 = (16 : Int) := by
  decide

theorem node_7_85 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 85 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 85 = count [19, 17, 13, 11, 7, 5, 3, 2] 85 - count [19, 17, 13, 11, 7, 5, 3, 2] (85 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 85 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_85 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_2473 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = (385 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2473 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 (by decide)
    _ = (400 : Int) - (15 : Int) :=
      sub_congr node_7_2473 node_7_85
    _ = (385 : Int) := by decide

theorem node_8_79 : count [19, 17, 13, 11, 7, 5, 3, 2] 79 = (15 : Int) := by
  decide

theorem node_7_79 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 79 = (14 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 79 = count [19, 17, 13, 11, 7, 5, 3, 2] 79 - count [19, 17, 13, 11, 7, 5, 3, 2] (79 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 79 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_8_79 node_8_3
    _ = (14 : Int) := by decide

theorem node_6_79 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79 = (13 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 79 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (79 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 79 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_7_79 node_7_2
    _ = (13 : Int) := by decide

theorem node_5_2473 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = (372 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2473 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 (by decide)
    _ = (385 : Int) - (13 : Int) :=
      sub_congr node_6_2473 node_6_79
    _ = (372 : Int) := by decide

theorem node_4_91512 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 = (13631 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (91512 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 (by decide)
    _ = (14003 : Int) - (372 : Int) :=
      sub_congr node_5_91512 node_5_2473
    _ = (13631 : Int) := by decide

theorem node_8_2232 : count [19, 17, 13, 11, 7, 5, 3, 2] 2232 = (376 : Int) := by
  decide

theorem node_8_97 : count [19, 17, 13, 11, 7, 5, 3, 2] 97 = (18 : Int) := by
  decide

theorem node_7_2232 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2232 = (358 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2232 = count [19, 17, 13, 11, 7, 5, 3, 2] 2232 - count [19, 17, 13, 11, 7, 5, 3, 2] (2232 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2232 (by decide)
    _ = (376 : Int) - (18 : Int) :=
      sub_congr node_8_2232 node_8_97
    _ = (358 : Int) := by decide

theorem node_6_2232 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2232 = (345 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2232 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2232 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2232 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2232 (by decide)
    _ = (358 : Int) - (13 : Int) :=
      sub_congr node_7_2232 node_7_76
    _ = (345 : Int) := by decide

theorem node_6_72 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = (11 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 72 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (72 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 72 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_7_72 node_7_2
    _ = (11 : Int) := by decide

theorem node_5_2232 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2232 = (334 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2232 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2232 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2232 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2232 (by decide)
    _ = (345 : Int) - (11 : Int) :=
      sub_congr node_6_2232 node_6_72
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

theorem node_4_2232 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2232 = (327 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2232 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2232 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2232 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2232 (by decide)
    _ = (334 : Int) - (7 : Int) :=
      sub_congr node_5_2232 node_5_60
    _ = (327 : Int) := by decide

theorem node_3_91512 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 = (13304 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (91512 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 (by decide)
    _ = (13631 : Int) - (327 : Int) :=
      sub_congr node_4_91512 node_4_2232
    _ = (13304 : Int) := by decide

theorem node_8_2128 : count [19, 17, 13, 11, 7, 5, 3, 2] 2128 = (359 : Int) := by
  decide

theorem node_8_92 : count [19, 17, 13, 11, 7, 5, 3, 2] 92 = (17 : Int) := by
  decide

theorem node_7_2128 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2128 = (342 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2128 = count [19, 17, 13, 11, 7, 5, 3, 2] 2128 - count [19, 17, 13, 11, 7, 5, 3, 2] (2128 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2128 (by decide)
    _ = (359 : Int) - (17 : Int) :=
      sub_congr node_8_2128 node_8_92
    _ = (342 : Int) := by decide

theorem node_7_73 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 73 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 73 = count [19, 17, 13, 11, 7, 5, 3, 2] 73 - count [19, 17, 13, 11, 7, 5, 3, 2] (73 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 73 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_73 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_2128 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2128 = (329 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2128 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2128 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2128 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2128 (by decide)
    _ = (342 : Int) - (13 : Int) :=
      sub_congr node_7_2128 node_7_73
    _ = (329 : Int) := by decide

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

theorem node_5_2128 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2128 = (319 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2128 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2128 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2128 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2128 (by decide)
    _ = (329 : Int) - (10 : Int) :=
      sub_congr node_6_2128 node_6_68
    _ = (319 : Int) := by decide

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

theorem node_4_2128 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2128 = (313 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2128 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2128 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2128 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2128 (by decide)
    _ = (319 : Int) - (6 : Int) :=
      sub_congr node_5_2128 node_5_57
    _ = (313 : Int) := by decide

theorem node_3_2128 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2128 = (309 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2128 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2128 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2128 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2128 (by decide)
    _ = (313 : Int) - (4 : Int) :=
      sub_congr node_4_2128 node_4_51
    _ = (309 : Int) := by decide

theorem node_2_91512 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 = (12995 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (91512 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 (by decide)
    _ = (13304 : Int) - (309 : Int) :=
      sub_congr node_3_91512 node_3_2128
    _ = (12995 : Int) := by decide

theorem node_8_1947 : count [19, 17, 13, 11, 7, 5, 3, 2] 1947 = (329 : Int) := by
  decide

theorem node_7_1947 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 = (313 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 = count [19, 17, 13, 11, 7, 5, 3, 2] 1947 - count [19, 17, 13, 11, 7, 5, 3, 2] (1947 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1947 (by decide)
    _ = (329 : Int) - (16 : Int) :=
      sub_congr node_8_1947 node_8_84
    _ = (313 : Int) := by decide

theorem node_6_1947 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 = (302 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1947 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 (by decide)
    _ = (313 : Int) - (11 : Int) :=
      sub_congr node_7_1947 node_7_67
    _ = (302 : Int) := by decide

theorem node_5_1947 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 = (293 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1947 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 (by decide)
    _ = (302 : Int) - (9 : Int) :=
      sub_congr node_6_1947 node_6_62
    _ = (293 : Int) := by decide

theorem node_4_1947 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 = (288 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1947 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 (by decide)
    _ = (293 : Int) - (5 : Int) :=
      sub_congr node_5_1947 node_5_52
    _ = (288 : Int) := by decide

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

theorem node_3_1947 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 = (284 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1947 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 (by decide)
    _ = (288 : Int) - (4 : Int) :=
      sub_congr node_4_1947 node_4_47
    _ = (284 : Int) := by decide

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

theorem node_2_1947 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 = (282 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1947 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 (by decide)
    _ = (284 : Int) - (2 : Int) :=
      sub_congr node_3_1947 node_3_45
    _ = (282 : Int) := by decide

theorem node_1_91512 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 = (12713 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (91512 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 (by decide)
    _ = (12995 : Int) - (282 : Int) :=
      sub_congr node_2_91512 node_2_1947
    _ = (12713 : Int) := by decide

theorem node_8_1726 : count [19, 17, 13, 11, 7, 5, 3, 2] 1726 = (293 : Int) := by
  decide

theorem node_7_1726 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1726 = (279 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1726 = count [19, 17, 13, 11, 7, 5, 3, 2] 1726 - count [19, 17, 13, 11, 7, 5, 3, 2] (1726 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1726 (by decide)
    _ = (293 : Int) - (14 : Int) :=
      sub_congr node_8_1726 node_8_75
    _ = (279 : Int) := by decide

theorem node_6_1726 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1726 = (270 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1726 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1726 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1726 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1726 (by decide)
    _ = (279 : Int) - (9 : Int) :=
      sub_congr node_7_1726 node_7_59
    _ = (270 : Int) := by decide

theorem node_5_1726 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1726 = (263 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1726 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1726 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1726 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1726 (by decide)
    _ = (270 : Int) - (7 : Int) :=
      sub_congr node_6_1726 node_6_55
    _ = (263 : Int) := by decide

theorem node_4_1726 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1726 = (259 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1726 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1726 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1726 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1726 (by decide)
    _ = (263 : Int) - (4 : Int) :=
      sub_congr node_5_1726 node_5_46
    _ = (259 : Int) := by decide

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

theorem node_3_1726 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1726 = (257 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1726 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1726 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1726 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1726 (by decide)
    _ = (259 : Int) - (2 : Int) :=
      sub_congr node_4_1726 node_4_42
    _ = (257 : Int) := by decide

theorem node_8_40 : count [19, 17, 13, 11, 7, 5, 3, 2] 40 = (5 : Int) := by
  decide

theorem node_7_40 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = (4 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = count [19, 17, 13, 11, 7, 5, 3, 2] 40 - count [19, 17, 13, 11, 7, 5, 3, 2] (40 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 40 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_8_40 node_8_1
    _ = (4 : Int) := by decide

theorem node_6_40 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = (3 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 40 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (40 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 40 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_7_40 node_7_1
    _ = (3 : Int) := by decide

theorem node_5_40 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = (2 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (40 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_6_40 node_6_1
    _ = (2 : Int) := by decide

theorem node_4_40 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (40 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_5_40 node_5_1
    _ = (1 : Int) := by decide

theorem node_3_40 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (40 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_40 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1726 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1726 = (256 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1726 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1726 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1726 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1726 (by decide)
    _ = (257 : Int) - (1 : Int) :=
      sub_congr node_3_1726 node_3_40
    _ = (256 : Int) := by decide

theorem node_1_1726 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1726 = (255 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1726 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1726 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1726 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1726 (by decide)
    _ = (256 : Int) - (1 : Int) :=
      sub_congr node_2_1726 node_2_36
    _ = (255 : Int) := by decide

theorem node_0_91512 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 = (12458 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (91512 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91512 (by decide)
    _ = (12713 : Int) - (255 : Int) :=
      sub_congr node_1_91512 node_1_1726
    _ = (12458 : Int) := by decide

theorem node_8_92502 : count [19, 17, 13, 11, 7, 5, 3, 2] 92502 = (15820 : Int) := by
  decide

theorem node_8_4021 : count [19, 17, 13, 11, 7, 5, 3, 2] 4021 = (686 : Int) := by
  decide

theorem node_7_92502 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 = (15134 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 = count [19, 17, 13, 11, 7, 5, 3, 2] 92502 - count [19, 17, 13, 11, 7, 5, 3, 2] (92502 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 92502 (by decide)
    _ = (15820 : Int) - (686 : Int) :=
      sub_congr node_8_92502 node_8_4021
    _ = (15134 : Int) := by decide

theorem node_8_3189 : count [19, 17, 13, 11, 7, 5, 3, 2] 3189 = (541 : Int) := by
  decide

theorem node_8_138 : count [19, 17, 13, 11, 7, 5, 3, 2] 138 = (26 : Int) := by
  decide

theorem node_7_3189 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3189 = (515 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3189 = count [19, 17, 13, 11, 7, 5, 3, 2] 3189 - count [19, 17, 13, 11, 7, 5, 3, 2] (3189 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3189 (by decide)
    _ = (541 : Int) - (26 : Int) :=
      sub_congr node_8_3189 node_8_138
    _ = (515 : Int) := by decide

theorem node_6_92502 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 = (14619 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (92502 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 (by decide)
    _ = (15134 : Int) - (515 : Int) :=
      sub_congr node_7_92502 node_7_3189
    _ = (14619 : Int) := by decide

theorem node_8_2983 : count [19, 17, 13, 11, 7, 5, 3, 2] 2983 = (506 : Int) := by
  decide

theorem node_8_129 : count [19, 17, 13, 11, 7, 5, 3, 2] 129 = (24 : Int) := by
  decide

theorem node_7_2983 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2983 = (482 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2983 = count [19, 17, 13, 11, 7, 5, 3, 2] 2983 - count [19, 17, 13, 11, 7, 5, 3, 2] (2983 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2983 (by decide)
    _ = (506 : Int) - (24 : Int) :=
      sub_congr node_8_2983 node_8_129
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

theorem node_6_2983 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2983 = (464 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2983 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2983 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2983 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2983 (by decide)
    _ = (482 : Int) - (18 : Int) :=
      sub_congr node_7_2983 node_7_102
    _ = (464 : Int) := by decide

theorem node_5_92502 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 = (14155 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (92502 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 (by decide)
    _ = (14619 : Int) - (464 : Int) :=
      sub_congr node_6_92502 node_6_2983
    _ = (14155 : Int) := by decide

theorem node_8_2500 : count [19, 17, 13, 11, 7, 5, 3, 2] 2500 = (424 : Int) := by
  decide

theorem node_8_108 : count [19, 17, 13, 11, 7, 5, 3, 2] 108 = (21 : Int) := by
  decide

theorem node_7_2500 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2500 = (403 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2500 = count [19, 17, 13, 11, 7, 5, 3, 2] 2500 - count [19, 17, 13, 11, 7, 5, 3, 2] (2500 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2500 (by decide)
    _ = (424 : Int) - (21 : Int) :=
      sub_congr node_8_2500 node_8_108
    _ = (403 : Int) := by decide

theorem node_8_86 : count [19, 17, 13, 11, 7, 5, 3, 2] 86 = (16 : Int) := by
  decide

theorem node_7_86 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = count [19, 17, 13, 11, 7, 5, 3, 2] 86 - count [19, 17, 13, 11, 7, 5, 3, 2] (86 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 86 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_86 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_2500 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2500 = (388 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2500 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2500 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2500 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2500 (by decide)
    _ = (403 : Int) - (15 : Int) :=
      sub_congr node_7_2500 node_7_86
    _ = (388 : Int) := by decide

theorem node_8_80 : count [19, 17, 13, 11, 7, 5, 3, 2] 80 = (15 : Int) := by
  decide

theorem node_7_80 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = (14 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = count [19, 17, 13, 11, 7, 5, 3, 2] 80 - count [19, 17, 13, 11, 7, 5, 3, 2] (80 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 80 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_8_80 node_8_3
    _ = (14 : Int) := by decide

theorem node_6_80 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = (13 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 80 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (80 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 80 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_7_80 node_7_2
    _ = (13 : Int) := by decide

theorem node_5_2500 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2500 = (375 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2500 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2500 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2500 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2500 (by decide)
    _ = (388 : Int) - (13 : Int) :=
      sub_congr node_6_2500 node_6_80
    _ = (375 : Int) := by decide

theorem node_4_92502 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 = (13780 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (92502 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 (by decide)
    _ = (14155 : Int) - (375 : Int) :=
      sub_congr node_5_92502 node_5_2500
    _ = (13780 : Int) := by decide

theorem node_8_2256 : count [19, 17, 13, 11, 7, 5, 3, 2] 2256 = (380 : Int) := by
  decide

theorem node_8_98 : count [19, 17, 13, 11, 7, 5, 3, 2] 98 = (18 : Int) := by
  decide

theorem node_7_2256 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2256 = (362 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2256 = count [19, 17, 13, 11, 7, 5, 3, 2] 2256 - count [19, 17, 13, 11, 7, 5, 3, 2] (2256 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2256 (by decide)
    _ = (380 : Int) - (18 : Int) :=
      sub_congr node_8_2256 node_8_98
    _ = (362 : Int) := by decide

theorem node_8_77 : count [19, 17, 13, 11, 7, 5, 3, 2] 77 = (14 : Int) := by
  decide

theorem node_7_77 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = count [19, 17, 13, 11, 7, 5, 3, 2] 77 - count [19, 17, 13, 11, 7, 5, 3, 2] (77 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 77 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_77 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_2256 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2256 = (349 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2256 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2256 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2256 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2256 (by decide)
    _ = (362 : Int) - (13 : Int) :=
      sub_congr node_7_2256 node_7_77
    _ = (349 : Int) := by decide

theorem node_5_2256 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2256 = (338 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2256 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2256 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2256 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2256 (by decide)
    _ = (349 : Int) - (11 : Int) :=
      sub_congr node_6_2256 node_6_72
    _ = (338 : Int) := by decide

theorem node_4_2256 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2256 = (331 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2256 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2256 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2256 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2256 (by decide)
    _ = (338 : Int) - (7 : Int) :=
      sub_congr node_5_2256 node_5_60
    _ = (331 : Int) := by decide

theorem node_3_92502 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 = (13449 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (92502 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 (by decide)
    _ = (13780 : Int) - (331 : Int) :=
      sub_congr node_4_92502 node_4_2256
    _ = (13449 : Int) := by decide

theorem node_8_2151 : count [19, 17, 13, 11, 7, 5, 3, 2] 2151 = (364 : Int) := by
  decide

theorem node_8_93 : count [19, 17, 13, 11, 7, 5, 3, 2] 93 = (17 : Int) := by
  decide

theorem node_7_2151 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2151 = (347 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2151 = count [19, 17, 13, 11, 7, 5, 3, 2] 2151 - count [19, 17, 13, 11, 7, 5, 3, 2] (2151 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2151 (by decide)
    _ = (364 : Int) - (17 : Int) :=
      sub_congr node_8_2151 node_8_93
    _ = (347 : Int) := by decide

theorem node_7_74 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = count [19, 17, 13, 11, 7, 5, 3, 2] 74 - count [19, 17, 13, 11, 7, 5, 3, 2] (74 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 74 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_74 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_2151 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2151 = (334 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2151 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2151 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2151 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2151 (by decide)
    _ = (347 : Int) - (13 : Int) :=
      sub_congr node_7_2151 node_7_74
    _ = (334 : Int) := by decide

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

theorem node_5_2151 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2151 = (324 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2151 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2151 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2151 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2151 (by decide)
    _ = (334 : Int) - (10 : Int) :=
      sub_congr node_6_2151 node_6_69
    _ = (324 : Int) := by decide

theorem node_6_58 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = (7 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 58 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (58 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 58 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_7_58 node_7_2
    _ = (7 : Int) := by decide

theorem node_5_58 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = (6 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (58 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_6_58 node_6_1
    _ = (6 : Int) := by decide

theorem node_4_2151 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2151 = (318 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2151 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2151 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2151 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2151 (by decide)
    _ = (324 : Int) - (6 : Int) :=
      sub_congr node_5_2151 node_5_58
    _ = (318 : Int) := by decide

theorem node_4_52 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = (4 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (52 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_5_52 node_5_1
    _ = (4 : Int) := by decide

theorem node_3_2151 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2151 = (314 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2151 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2151 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2151 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2151 (by decide)
    _ = (318 : Int) - (4 : Int) :=
      sub_congr node_4_2151 node_4_52
    _ = (314 : Int) := by decide

theorem node_2_92502 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 = (13135 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (92502 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 (by decide)
    _ = (13449 : Int) - (314 : Int) :=
      sub_congr node_3_92502 node_3_2151
    _ = (13135 : Int) := by decide

theorem node_8_1968 : count [19, 17, 13, 11, 7, 5, 3, 2] 1968 = (332 : Int) := by
  decide

theorem node_7_1968 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1968 = (316 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1968 = count [19, 17, 13, 11, 7, 5, 3, 2] 1968 - count [19, 17, 13, 11, 7, 5, 3, 2] (1968 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1968 (by decide)
    _ = (332 : Int) - (16 : Int) :=
      sub_congr node_8_1968 node_8_85
    _ = (316 : Int) := by decide

theorem node_6_1968 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1968 = (305 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1968 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1968 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1968 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1968 (by decide)
    _ = (316 : Int) - (11 : Int) :=
      sub_congr node_7_1968 node_7_67
    _ = (305 : Int) := by decide

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

theorem node_5_1968 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1968 = (296 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1968 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1968 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1968 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1968 (by decide)
    _ = (305 : Int) - (9 : Int) :=
      sub_congr node_6_1968 node_6_63
    _ = (296 : Int) := by decide

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

theorem node_4_1968 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1968 = (290 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1968 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1968 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1968 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1968 (by decide)
    _ = (296 : Int) - (6 : Int) :=
      sub_congr node_5_1968 node_5_53
    _ = (290 : Int) := by decide

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

theorem node_3_1968 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1968 = (286 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1968 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1968 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1968 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1968 (by decide)
    _ = (290 : Int) - (4 : Int) :=
      sub_congr node_4_1968 node_4_48
    _ = (286 : Int) := by decide

theorem node_2_1968 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1968 = (284 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1968 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1968 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1968 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1968 (by decide)
    _ = (286 : Int) - (2 : Int) :=
      sub_congr node_3_1968 node_3_45
    _ = (284 : Int) := by decide

theorem node_1_92502 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 = (12851 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (92502 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 (by decide)
    _ = (13135 : Int) - (284 : Int) :=
      sub_congr node_2_92502 node_2_1968
    _ = (12851 : Int) := by decide

theorem node_8_1745 : count [19, 17, 13, 11, 7, 5, 3, 2] 1745 = (296 : Int) := by
  decide

theorem node_7_1745 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1745 = (282 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1745 = count [19, 17, 13, 11, 7, 5, 3, 2] 1745 - count [19, 17, 13, 11, 7, 5, 3, 2] (1745 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1745 (by decide)
    _ = (296 : Int) - (14 : Int) :=
      sub_congr node_8_1745 node_8_75
    _ = (282 : Int) := by decide

theorem node_6_1745 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1745 = (273 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1745 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1745 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1745 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1745 (by decide)
    _ = (282 : Int) - (9 : Int) :=
      sub_congr node_7_1745 node_7_60
    _ = (273 : Int) := by decide

theorem node_5_1745 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1745 = (266 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1745 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1745 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1745 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1745 (by decide)
    _ = (273 : Int) - (7 : Int) :=
      sub_congr node_6_1745 node_6_56
    _ = (266 : Int) := by decide

theorem node_4_1745 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1745 = (261 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1745 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1745 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1745 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1745 (by decide)
    _ = (266 : Int) - (5 : Int) :=
      sub_congr node_5_1745 node_5_47
    _ = (261 : Int) := by decide

theorem node_3_1745 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1745 = (259 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1745 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1745 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1745 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1745 (by decide)
    _ = (261 : Int) - (2 : Int) :=
      sub_congr node_4_1745 node_4_42
    _ = (259 : Int) := by decide

theorem node_2_1745 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1745 = (258 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1745 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1745 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1745 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1745 (by decide)
    _ = (259 : Int) - (1 : Int) :=
      sub_congr node_3_1745 node_3_40
    _ = (258 : Int) := by decide

theorem node_8_37 : count [19, 17, 13, 11, 7, 5, 3, 2] 37 = (5 : Int) := by
  decide

theorem node_7_37 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = (4 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = count [19, 17, 13, 11, 7, 5, 3, 2] 37 - count [19, 17, 13, 11, 7, 5, 3, 2] (37 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 37 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_8_37 node_8_1
    _ = (4 : Int) := by decide

theorem node_6_37 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = (3 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 37 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (37 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 37 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_7_37 node_7_1
    _ = (3 : Int) := by decide

theorem node_5_37 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = (2 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (37 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_6_37 node_6_1
    _ = (2 : Int) := by decide

theorem node_4_37 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (37 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_5_37 node_5_1
    _ = (1 : Int) := by decide

theorem node_3_37 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (37 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_37 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_37 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (37 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_37 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1745 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1745 = (257 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1745 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1745 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1745 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1745 (by decide)
    _ = (258 : Int) - (1 : Int) :=
      sub_congr node_2_1745 node_2_37
    _ = (257 : Int) := by decide

theorem node_0_92502 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 = (12594 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (92502 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92502 (by decide)
    _ = (12851 : Int) - (257 : Int) :=
      sub_congr node_1_92502 node_1_1745
    _ = (12594 : Int) := by decide

theorem row_76 : count primes 89520 ≤ (12198 : Int) - 15 := by
  rw [show count primes 89520 = (12183 : Int) from node_0_89520]
  decide

theorem row_77 : count primes 90522 ≤ (12334 : Int) - 15 := by
  rw [show count primes 90522 = (12319 : Int) from node_0_90522]
  decide

theorem row_78 : count primes 91512 ≤ (12473 : Int) - 15 := by
  rw [show count primes 91512 = (12458 : Int) from node_0_91512]
  decide

theorem row_79 : count primes 92502 ≤ (12609 : Int) - 15 := by
  rw [show count primes 92502 = (12594 : Int) from node_0_92502]
  decide

def pairs : List (Nat × Nat) := [(89520, 12198), (90522, 12334), (91512, 12473), (92502, 12609)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl | rfl | rfl
  · exact row_76
  · exact row_77
  · exact row_78
  · exact row_79
end B699CorePrunedSieve.CoreDagBatch20
#check @B699CorePrunedSieve.CoreDagBatch20.pairs_valid
#print axioms B699CorePrunedSieve.CoreDagBatch20.pairs_valid
