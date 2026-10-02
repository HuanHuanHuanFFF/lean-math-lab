import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreRest20
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_79840 : count [19, 17, 13, 11, 7, 5, 3, 2] 79840 = (13653 : Int) := by
  decide

theorem node_8_3471 : count [19, 17, 13, 11, 7, 5, 3, 2] 3471 = (590 : Int) := by
  decide

theorem node_7_79840 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 = (13063 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 = count [19, 17, 13, 11, 7, 5, 3, 2] 79840 - count [19, 17, 13, 11, 7, 5, 3, 2] (79840 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 79840 (by decide)
    _ = (13653 : Int) - (590 : Int) :=
      sub_congr node_8_79840 node_8_3471
    _ = (13063 : Int) := by decide

theorem node_8_2753 : count [19, 17, 13, 11, 7, 5, 3, 2] 2753 = (469 : Int) := by
  decide

theorem node_8_119 : count [19, 17, 13, 11, 7, 5, 3, 2] 119 = (23 : Int) := by
  decide

theorem node_7_2753 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2753 = (446 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2753 = count [19, 17, 13, 11, 7, 5, 3, 2] 2753 - count [19, 17, 13, 11, 7, 5, 3, 2] (2753 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2753 (by decide)
    _ = (469 : Int) - (23 : Int) :=
      sub_congr node_8_2753 node_8_119
    _ = (446 : Int) := by decide

theorem node_6_79840 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 = (12617 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (79840 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 (by decide)
    _ = (13063 : Int) - (446 : Int) :=
      sub_congr node_7_79840 node_7_2753
    _ = (12617 : Int) := by decide

theorem node_8_2575 : count [19, 17, 13, 11, 7, 5, 3, 2] 2575 = (436 : Int) := by
  decide

theorem node_8_111 : count [19, 17, 13, 11, 7, 5, 3, 2] 111 = (22 : Int) := by
  decide

theorem node_7_2575 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2575 = (414 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2575 = count [19, 17, 13, 11, 7, 5, 3, 2] 2575 - count [19, 17, 13, 11, 7, 5, 3, 2] (2575 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2575 (by decide)
    _ = (436 : Int) - (22 : Int) :=
      sub_congr node_8_2575 node_8_111
    _ = (414 : Int) := by decide

theorem node_8_88 : count [19, 17, 13, 11, 7, 5, 3, 2] 88 = (16 : Int) := by
  decide

theorem node_8_3 : count [19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  decide

theorem node_7_88 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 88 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 88 = count [19, 17, 13, 11, 7, 5, 3, 2] 88 - count [19, 17, 13, 11, 7, 5, 3, 2] (88 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 88 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_88 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_2575 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2575 = (399 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2575 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2575 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2575 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2575 (by decide)
    _ = (414 : Int) - (15 : Int) :=
      sub_congr node_7_2575 node_7_88
    _ = (399 : Int) := by decide

theorem node_5_79840 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 = (12218 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (79840 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 (by decide)
    _ = (12617 : Int) - (399 : Int) :=
      sub_congr node_6_79840 node_6_2575
    _ = (12218 : Int) := by decide

theorem node_8_2157 : count [19, 17, 13, 11, 7, 5, 3, 2] 2157 = (365 : Int) := by
  decide

theorem node_8_93 : count [19, 17, 13, 11, 7, 5, 3, 2] 93 = (17 : Int) := by
  decide

theorem node_7_2157 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2157 = (348 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2157 = count [19, 17, 13, 11, 7, 5, 3, 2] 2157 - count [19, 17, 13, 11, 7, 5, 3, 2] (2157 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2157 (by decide)
    _ = (365 : Int) - (17 : Int) :=
      sub_congr node_8_2157 node_8_93
    _ = (348 : Int) := by decide

theorem node_8_74 : count [19, 17, 13, 11, 7, 5, 3, 2] 74 = (14 : Int) := by
  decide

theorem node_7_74 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = count [19, 17, 13, 11, 7, 5, 3, 2] 74 - count [19, 17, 13, 11, 7, 5, 3, 2] (74 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 74 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_74 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_2157 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2157 = (335 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2157 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2157 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2157 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2157 (by decide)
    _ = (348 : Int) - (13 : Int) :=
      sub_congr node_7_2157 node_7_74
    _ = (335 : Int) := by decide

theorem node_8_69 : count [19, 17, 13, 11, 7, 5, 3, 2] 69 = (12 : Int) := by
  decide

theorem node_7_69 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = (11 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = count [19, 17, 13, 11, 7, 5, 3, 2] 69 - count [19, 17, 13, 11, 7, 5, 3, 2] (69 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 69 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_8_69 node_8_3
    _ = (11 : Int) := by decide

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

theorem node_6_69 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = (10 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 69 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (69 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 69 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_7_69 node_7_2
    _ = (10 : Int) := by decide

theorem node_5_2157 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2157 = (325 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2157 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2157 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2157 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2157 (by decide)
    _ = (335 : Int) - (10 : Int) :=
      sub_congr node_6_2157 node_6_69
    _ = (325 : Int) := by decide

theorem node_4_79840 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 = (11893 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (79840 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 (by decide)
    _ = (12218 : Int) - (325 : Int) :=
      sub_congr node_5_79840 node_5_2157
    _ = (11893 : Int) := by decide

theorem node_8_1947 : count [19, 17, 13, 11, 7, 5, 3, 2] 1947 = (329 : Int) := by
  decide

theorem node_8_84 : count [19, 17, 13, 11, 7, 5, 3, 2] 84 = (16 : Int) := by
  decide

theorem node_7_1947 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 = (313 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 = count [19, 17, 13, 11, 7, 5, 3, 2] 1947 - count [19, 17, 13, 11, 7, 5, 3, 2] (1947 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1947 (by decide)
    _ = (329 : Int) - (16 : Int) :=
      sub_congr node_8_1947 node_8_84
    _ = (313 : Int) := by decide

theorem node_8_67 : count [19, 17, 13, 11, 7, 5, 3, 2] 67 = (12 : Int) := by
  decide

theorem node_7_67 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 67 = (11 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 67 = count [19, 17, 13, 11, 7, 5, 3, 2] 67 - count [19, 17, 13, 11, 7, 5, 3, 2] (67 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 67 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_8_67 node_8_2
    _ = (11 : Int) := by decide

theorem node_6_1947 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 = (302 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1947 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 (by decide)
    _ = (313 : Int) - (11 : Int) :=
      sub_congr node_7_1947 node_7_67
    _ = (302 : Int) := by decide

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

theorem node_5_1947 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 = (293 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1947 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 (by decide)
    _ = (302 : Int) - (9 : Int) :=
      sub_congr node_6_1947 node_6_62
    _ = (293 : Int) := by decide

theorem node_8_52 : count [19, 17, 13, 11, 7, 5, 3, 2] 52 = (8 : Int) := by
  decide

theorem node_7_52 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = (7 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = count [19, 17, 13, 11, 7, 5, 3, 2] 52 - count [19, 17, 13, 11, 7, 5, 3, 2] (52 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 52 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_8_52 node_8_2
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

theorem node_6_52 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = (6 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 52 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (52 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 52 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_7_52 node_7_1
    _ = (6 : Int) := by decide

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_1 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_1 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_52 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = (5 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (52 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_6_52 node_6_1
    _ = (5 : Int) := by decide

theorem node_4_1947 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 = (288 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1947 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1947 (by decide)
    _ = (293 : Int) - (5 : Int) :=
      sub_congr node_5_1947 node_5_52
    _ = (288 : Int) := by decide

theorem node_3_79840 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 = (11605 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (79840 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 (by decide)
    _ = (11893 : Int) - (288 : Int) :=
      sub_congr node_4_79840 node_4_1947
    _ = (11605 : Int) := by decide

theorem node_8_1856 : count [19, 17, 13, 11, 7, 5, 3, 2] 1856 = (313 : Int) := by
  decide

theorem node_8_80 : count [19, 17, 13, 11, 7, 5, 3, 2] 80 = (15 : Int) := by
  decide

theorem node_7_1856 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 = (298 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 = count [19, 17, 13, 11, 7, 5, 3, 2] 1856 - count [19, 17, 13, 11, 7, 5, 3, 2] (1856 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1856 (by decide)
    _ = (313 : Int) - (15 : Int) :=
      sub_congr node_8_1856 node_8_80
    _ = (298 : Int) := by decide

theorem node_8_64 : count [19, 17, 13, 11, 7, 5, 3, 2] 64 = (11 : Int) := by
  decide

theorem node_7_64 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = (10 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = count [19, 17, 13, 11, 7, 5, 3, 2] 64 - count [19, 17, 13, 11, 7, 5, 3, 2] (64 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 64 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_8_64 node_8_2
    _ = (10 : Int) := by decide

theorem node_6_1856 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 = (288 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1856 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 (by decide)
    _ = (298 : Int) - (10 : Int) :=
      sub_congr node_7_1856 node_7_64
    _ = (288 : Int) := by decide

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

theorem node_5_1856 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 = (280 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1856 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 (by decide)
    _ = (288 : Int) - (8 : Int) :=
      sub_congr node_6_1856 node_6_59
    _ = (280 : Int) := by decide

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

theorem node_4_1856 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 = (275 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1856 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 (by decide)
    _ = (280 : Int) - (5 : Int) :=
      sub_congr node_5_1856 node_5_50
    _ = (275 : Int) := by decide

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

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_1 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_1 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_45 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 = (3 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (45 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_5_45 node_5_1
    _ = (3 : Int) := by decide

theorem node_3_1856 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 = (272 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1856 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 (by decide)
    _ = (275 : Int) - (3 : Int) :=
      sub_congr node_4_1856 node_4_45
    _ = (272 : Int) := by decide

theorem node_2_79840 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 = (11333 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (79840 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 (by decide)
    _ = (11605 : Int) - (272 : Int) :=
      sub_congr node_3_79840 node_3_1856
    _ = (11333 : Int) := by decide

theorem node_8_1698 : count [19, 17, 13, 11, 7, 5, 3, 2] 1698 = (288 : Int) := by
  decide

theorem node_8_73 : count [19, 17, 13, 11, 7, 5, 3, 2] 73 = (14 : Int) := by
  decide

theorem node_7_1698 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1698 = (274 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1698 = count [19, 17, 13, 11, 7, 5, 3, 2] 1698 - count [19, 17, 13, 11, 7, 5, 3, 2] (1698 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1698 (by decide)
    _ = (288 : Int) - (14 : Int) :=
      sub_congr node_8_1698 node_8_73
    _ = (274 : Int) := by decide

theorem node_8_58 : count [19, 17, 13, 11, 7, 5, 3, 2] 58 = (9 : Int) := by
  decide

theorem node_7_58 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = count [19, 17, 13, 11, 7, 5, 3, 2] 58 - count [19, 17, 13, 11, 7, 5, 3, 2] (58 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 58 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_58 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_1698 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1698 = (266 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1698 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1698 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1698 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1698 (by decide)
    _ = (274 : Int) - (8 : Int) :=
      sub_congr node_7_1698 node_7_58
    _ = (266 : Int) := by decide

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

theorem node_5_1698 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1698 = (259 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1698 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1698 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1698 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1698 (by decide)
    _ = (266 : Int) - (7 : Int) :=
      sub_congr node_6_1698 node_6_54
    _ = (259 : Int) := by decide

theorem node_4_1698 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1698 = (255 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1698 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1698 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1698 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1698 (by decide)
    _ = (259 : Int) - (4 : Int) :=
      sub_congr node_5_1698 node_5_45
    _ = (255 : Int) := by decide

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

theorem node_3_1698 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1698 = (253 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1698 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1698 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1698 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1698 (by decide)
    _ = (255 : Int) - (2 : Int) :=
      sub_congr node_4_1698 node_4_41
    _ = (253 : Int) := by decide

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

theorem node_2_1698 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1698 = (252 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1698 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1698 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1698 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1698 (by decide)
    _ = (253 : Int) - (1 : Int) :=
      sub_congr node_3_1698 node_3_39
    _ = (252 : Int) := by decide

theorem node_1_79840 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 = (11081 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (79840 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 (by decide)
    _ = (11333 : Int) - (252 : Int) :=
      sub_congr node_2_79840 node_2_1698
    _ = (11081 : Int) := by decide

theorem node_8_1506 : count [19, 17, 13, 11, 7, 5, 3, 2] 1506 = (254 : Int) := by
  decide

theorem node_8_65 : count [19, 17, 13, 11, 7, 5, 3, 2] 65 = (11 : Int) := by
  decide

theorem node_7_1506 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1506 = (243 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1506 = count [19, 17, 13, 11, 7, 5, 3, 2] 1506 - count [19, 17, 13, 11, 7, 5, 3, 2] (1506 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1506 (by decide)
    _ = (254 : Int) - (11 : Int) :=
      sub_congr node_8_1506 node_8_65
    _ = (243 : Int) := by decide

theorem node_8_51 : count [19, 17, 13, 11, 7, 5, 3, 2] 51 = (8 : Int) := by
  decide

theorem node_7_51 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = (7 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = count [19, 17, 13, 11, 7, 5, 3, 2] 51 - count [19, 17, 13, 11, 7, 5, 3, 2] (51 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 51 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_8_51 node_8_2
    _ = (7 : Int) := by decide

theorem node_6_1506 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1506 = (236 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1506 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1506 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1506 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1506 (by decide)
    _ = (243 : Int) - (7 : Int) :=
      sub_congr node_7_1506 node_7_51
    _ = (236 : Int) := by decide

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

theorem node_5_1506 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1506 = (230 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1506 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1506 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1506 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1506 (by decide)
    _ = (236 : Int) - (6 : Int) :=
      sub_congr node_6_1506 node_6_48
    _ = (230 : Int) := by decide

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

theorem node_4_1506 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1506 = (228 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1506 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1506 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1506 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1506 (by decide)
    _ = (230 : Int) - (2 : Int) :=
      sub_congr node_5_1506 node_5_40
    _ = (228 : Int) := by decide

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

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_36 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (36 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_36 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_1506 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1506 = (227 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1506 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1506 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1506 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1506 (by decide)
    _ = (228 : Int) - (1 : Int) :=
      sub_congr node_4_1506 node_4_36
    _ = (227 : Int) := by decide

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

theorem node_2_1506 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1506 = (226 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1506 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1506 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1506 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1506 (by decide)
    _ = (227 : Int) - (1 : Int) :=
      sub_congr node_3_1506 node_3_35
    _ = (226 : Int) := by decide

theorem node_8_32 : count [19, 17, 13, 11, 7, 5, 3, 2] 32 = (4 : Int) := by
  decide

theorem node_7_32 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = (3 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = count [19, 17, 13, 11, 7, 5, 3, 2] 32 - count [19, 17, 13, 11, 7, 5, 3, 2] (32 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 32 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_8_32 node_8_1
    _ = (3 : Int) := by decide

theorem node_6_32 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = (2 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 32 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (32 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 32 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_7_32 node_7_1
    _ = (2 : Int) := by decide

theorem node_5_32 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (32 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_6_32 node_6_1
    _ = (1 : Int) := by decide

theorem node_4_32 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (32 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_32 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_32 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (32 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_32 node_4_0
    _ = (1 : Int) := by decide

theorem node_3_0 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_2_32 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (32 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_32 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1506 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1506 = (225 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1506 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1506 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1506 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1506 (by decide)
    _ = (226 : Int) - (1 : Int) :=
      sub_congr node_2_1506 node_2_32
    _ = (225 : Int) := by decide

theorem node_0_79840 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 = (10856 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (79840 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79840 (by decide)
    _ = (11081 : Int) - (225 : Int) :=
      sub_congr node_1_79840 node_1_1506
    _ = (10856 : Int) := by decide

theorem node_8_80760 : count [19, 17, 13, 11, 7, 5, 3, 2] 80760 = (13809 : Int) := by
  decide

theorem node_8_3511 : count [19, 17, 13, 11, 7, 5, 3, 2] 3511 = (596 : Int) := by
  decide

theorem node_7_80760 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 = (13213 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 = count [19, 17, 13, 11, 7, 5, 3, 2] 80760 - count [19, 17, 13, 11, 7, 5, 3, 2] (80760 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 80760 (by decide)
    _ = (13809 : Int) - (596 : Int) :=
      sub_congr node_8_80760 node_8_3511
    _ = (13213 : Int) := by decide

theorem node_8_2784 : count [19, 17, 13, 11, 7, 5, 3, 2] 2784 = (473 : Int) := by
  decide

theorem node_8_121 : count [19, 17, 13, 11, 7, 5, 3, 2] 121 = (23 : Int) := by
  decide

theorem node_7_2784 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2784 = (450 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2784 = count [19, 17, 13, 11, 7, 5, 3, 2] 2784 - count [19, 17, 13, 11, 7, 5, 3, 2] (2784 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2784 (by decide)
    _ = (473 : Int) - (23 : Int) :=
      sub_congr node_8_2784 node_8_121
    _ = (450 : Int) := by decide

theorem node_6_80760 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 = (12763 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (80760 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 (by decide)
    _ = (13213 : Int) - (450 : Int) :=
      sub_congr node_7_80760 node_7_2784
    _ = (12763 : Int) := by decide

theorem node_8_2605 : count [19, 17, 13, 11, 7, 5, 3, 2] 2605 = (441 : Int) := by
  decide

theorem node_8_113 : count [19, 17, 13, 11, 7, 5, 3, 2] 113 = (23 : Int) := by
  decide

theorem node_7_2605 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2605 = (418 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2605 = count [19, 17, 13, 11, 7, 5, 3, 2] 2605 - count [19, 17, 13, 11, 7, 5, 3, 2] (2605 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2605 (by decide)
    _ = (441 : Int) - (23 : Int) :=
      sub_congr node_8_2605 node_8_113
    _ = (418 : Int) := by decide

theorem node_8_89 : count [19, 17, 13, 11, 7, 5, 3, 2] 89 = (17 : Int) := by
  decide

theorem node_7_89 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = count [19, 17, 13, 11, 7, 5, 3, 2] 89 - count [19, 17, 13, 11, 7, 5, 3, 2] (89 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 89 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_89 node_8_3
    _ = (16 : Int) := by decide

theorem node_6_2605 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2605 = (402 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2605 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2605 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2605 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2605 (by decide)
    _ = (418 : Int) - (16 : Int) :=
      sub_congr node_7_2605 node_7_89
    _ = (402 : Int) := by decide

theorem node_5_80760 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 = (12361 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (80760 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 (by decide)
    _ = (12763 : Int) - (402 : Int) :=
      sub_congr node_6_80760 node_6_2605
    _ = (12361 : Int) := by decide

theorem node_8_2182 : count [19, 17, 13, 11, 7, 5, 3, 2] 2182 = (368 : Int) := by
  decide

theorem node_8_94 : count [19, 17, 13, 11, 7, 5, 3, 2] 94 = (17 : Int) := by
  decide

theorem node_7_2182 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2182 = (351 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2182 = count [19, 17, 13, 11, 7, 5, 3, 2] 2182 - count [19, 17, 13, 11, 7, 5, 3, 2] (2182 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2182 (by decide)
    _ = (368 : Int) - (17 : Int) :=
      sub_congr node_8_2182 node_8_94
    _ = (351 : Int) := by decide

theorem node_8_75 : count [19, 17, 13, 11, 7, 5, 3, 2] 75 = (14 : Int) := by
  decide

theorem node_7_75 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = count [19, 17, 13, 11, 7, 5, 3, 2] 75 - count [19, 17, 13, 11, 7, 5, 3, 2] (75 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 75 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_75 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_2182 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2182 = (338 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2182 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2182 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2182 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2182 (by decide)
    _ = (351 : Int) - (13 : Int) :=
      sub_congr node_7_2182 node_7_75
    _ = (338 : Int) := by decide

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

theorem node_5_2182 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2182 = (328 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2182 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2182 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2182 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2182 (by decide)
    _ = (338 : Int) - (10 : Int) :=
      sub_congr node_6_2182 node_6_70
    _ = (328 : Int) := by decide

theorem node_4_80760 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 = (12033 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (80760 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 (by decide)
    _ = (12361 : Int) - (328 : Int) :=
      sub_congr node_5_80760 node_5_2182
    _ = (12033 : Int) := by decide

theorem node_8_1969 : count [19, 17, 13, 11, 7, 5, 3, 2] 1969 = (332 : Int) := by
  decide

theorem node_8_85 : count [19, 17, 13, 11, 7, 5, 3, 2] 85 = (16 : Int) := by
  decide

theorem node_7_1969 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1969 = (316 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1969 = count [19, 17, 13, 11, 7, 5, 3, 2] 1969 - count [19, 17, 13, 11, 7, 5, 3, 2] (1969 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1969 (by decide)
    _ = (332 : Int) - (16 : Int) :=
      sub_congr node_8_1969 node_8_85
    _ = (316 : Int) := by decide

theorem node_6_1969 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1969 = (305 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1969 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1969 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1969 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1969 (by decide)
    _ = (316 : Int) - (11 : Int) :=
      sub_congr node_7_1969 node_7_67
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

theorem node_5_1969 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1969 = (296 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1969 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1969 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1969 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1969 (by decide)
    _ = (305 : Int) - (9 : Int) :=
      sub_congr node_6_1969 node_6_63
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

theorem node_4_1969 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1969 = (290 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1969 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1969 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1969 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1969 (by decide)
    _ = (296 : Int) - (6 : Int) :=
      sub_congr node_5_1969 node_5_53
    _ = (290 : Int) := by decide

theorem node_3_80760 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 = (11743 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (80760 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 (by decide)
    _ = (12033 : Int) - (290 : Int) :=
      sub_congr node_4_80760 node_4_1969
    _ = (11743 : Int) := by decide

theorem node_8_1878 : count [19, 17, 13, 11, 7, 5, 3, 2] 1878 = (318 : Int) := by
  decide

theorem node_8_81 : count [19, 17, 13, 11, 7, 5, 3, 2] 81 = (15 : Int) := by
  decide

theorem node_7_1878 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1878 = (303 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1878 = count [19, 17, 13, 11, 7, 5, 3, 2] 1878 - count [19, 17, 13, 11, 7, 5, 3, 2] (1878 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1878 (by decide)
    _ = (318 : Int) - (15 : Int) :=
      sub_congr node_8_1878 node_8_81
    _ = (303 : Int) := by decide

theorem node_6_1878 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1878 = (293 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1878 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1878 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1878 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1878 (by decide)
    _ = (303 : Int) - (10 : Int) :=
      sub_congr node_7_1878 node_7_64
    _ = (293 : Int) := by decide

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

theorem node_5_1878 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1878 = (285 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1878 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1878 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1878 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1878 (by decide)
    _ = (293 : Int) - (8 : Int) :=
      sub_congr node_6_1878 node_6_60
    _ = (285 : Int) := by decide

theorem node_4_1878 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1878 = (280 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1878 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1878 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1878 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1878 (by decide)
    _ = (285 : Int) - (5 : Int) :=
      sub_congr node_5_1878 node_5_50
    _ = (280 : Int) := by decide

theorem node_3_1878 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1878 = (277 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1878 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1878 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1878 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1878 (by decide)
    _ = (280 : Int) - (3 : Int) :=
      sub_congr node_4_1878 node_4_45
    _ = (277 : Int) := by decide

theorem node_2_80760 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 = (11466 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (80760 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 (by decide)
    _ = (11743 : Int) - (277 : Int) :=
      sub_congr node_3_80760 node_3_1878
    _ = (11466 : Int) := by decide

theorem node_8_1718 : count [19, 17, 13, 11, 7, 5, 3, 2] 1718 = (291 : Int) := by
  decide

theorem node_7_1718 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1718 = (277 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1718 = count [19, 17, 13, 11, 7, 5, 3, 2] 1718 - count [19, 17, 13, 11, 7, 5, 3, 2] (1718 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1718 (by decide)
    _ = (291 : Int) - (14 : Int) :=
      sub_congr node_8_1718 node_8_74
    _ = (277 : Int) := by decide

theorem node_6_1718 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1718 = (268 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1718 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1718 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1718 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1718 (by decide)
    _ = (277 : Int) - (9 : Int) :=
      sub_congr node_7_1718 node_7_59
    _ = (268 : Int) := by decide

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

theorem node_5_1718 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1718 = (261 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1718 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1718 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1718 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1718 (by decide)
    _ = (268 : Int) - (7 : Int) :=
      sub_congr node_6_1718 node_6_55
    _ = (261 : Int) := by decide

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

theorem node_4_1718 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1718 = (257 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1718 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1718 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1718 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1718 (by decide)
    _ = (261 : Int) - (4 : Int) :=
      sub_congr node_5_1718 node_5_46
    _ = (257 : Int) := by decide

theorem node_3_1718 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1718 = (255 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1718 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1718 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1718 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1718 (by decide)
    _ = (257 : Int) - (2 : Int) :=
      sub_congr node_4_1718 node_4_41
    _ = (255 : Int) := by decide

theorem node_2_1718 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1718 = (254 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1718 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1718 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1718 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1718 (by decide)
    _ = (255 : Int) - (1 : Int) :=
      sub_congr node_3_1718 node_3_39
    _ = (254 : Int) := by decide

theorem node_1_80760 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 = (11212 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (80760 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 (by decide)
    _ = (11466 : Int) - (254 : Int) :=
      sub_congr node_2_80760 node_2_1718
    _ = (11212 : Int) := by decide

theorem node_8_1523 : count [19, 17, 13, 11, 7, 5, 3, 2] 1523 = (257 : Int) := by
  decide

theorem node_8_66 : count [19, 17, 13, 11, 7, 5, 3, 2] 66 = (11 : Int) := by
  decide

theorem node_7_1523 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1523 = (246 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1523 = count [19, 17, 13, 11, 7, 5, 3, 2] 1523 - count [19, 17, 13, 11, 7, 5, 3, 2] (1523 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1523 (by decide)
    _ = (257 : Int) - (11 : Int) :=
      sub_congr node_8_1523 node_8_66
    _ = (246 : Int) := by decide

theorem node_6_1523 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1523 = (239 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1523 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1523 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1523 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1523 (by decide)
    _ = (246 : Int) - (7 : Int) :=
      sub_congr node_7_1523 node_7_52
    _ = (239 : Int) := by decide

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

theorem node_5_1523 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1523 = (233 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1523 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1523 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1523 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1523 (by decide)
    _ = (239 : Int) - (6 : Int) :=
      sub_congr node_6_1523 node_6_49
    _ = (233 : Int) := by decide

theorem node_4_1523 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1523 = (230 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1523 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1523 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1523 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1523 (by decide)
    _ = (233 : Int) - (3 : Int) :=
      sub_congr node_5_1523 node_5_41
    _ = (230 : Int) := by decide

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

theorem node_3_1523 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1523 = (229 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1523 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1523 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1523 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1523 (by decide)
    _ = (230 : Int) - (1 : Int) :=
      sub_congr node_4_1523 node_4_37
    _ = (229 : Int) := by decide

theorem node_2_1523 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1523 = (228 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1523 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1523 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1523 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1523 (by decide)
    _ = (229 : Int) - (1 : Int) :=
      sub_congr node_3_1523 node_3_35
    _ = (228 : Int) := by decide

theorem node_1_1523 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1523 = (227 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1523 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1523 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1523 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1523 (by decide)
    _ = (228 : Int) - (1 : Int) :=
      sub_congr node_2_1523 node_2_32
    _ = (227 : Int) := by decide

theorem node_0_80760 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 = (10985 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (80760 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80760 (by decide)
    _ = (11212 : Int) - (227 : Int) :=
      sub_congr node_1_80760 node_1_1523
    _ = (10985 : Int) := by decide

theorem row_66 : count primes 79840 ≤ (10871 : Int) - 15 := by
  rw [show count primes 79840 = (10856 : Int) from node_0_79840]
  decide

theorem row_67 : count primes 80760 ≤ (11000 : Int) - 15 := by
  rw [show count primes 80760 = (10985 : Int) from node_0_80760]
  decide

def pairs : List (Nat × Nat) := [(79840, 10871), (80760, 11000)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl
  · exact row_66
  · exact row_67
end B699CorePrunedSieve.CoreRest20
#check @B699CorePrunedSieve.CoreRest20.pairs_valid
#print axioms B699CorePrunedSieve.CoreRest20.pairs_valid
