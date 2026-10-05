import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreRest16
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_72546 : count [19, 17, 13, 11, 7, 5, 3, 2] 72546 = (12405 : Int) := by
  decide

theorem node_8_3154 : count [19, 17, 13, 11, 7, 5, 3, 2] 3154 = (535 : Int) := by
  decide

theorem node_7_72546 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 = (11870 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 = count [19, 17, 13, 11, 7, 5, 3, 2] 72546 - count [19, 17, 13, 11, 7, 5, 3, 2] (72546 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 72546 (by decide)
    _ = (12405 : Int) - (535 : Int) :=
      sub_congr node_8_72546 node_8_3154
    _ = (11870 : Int) := by decide

theorem node_8_2501 : count [19, 17, 13, 11, 7, 5, 3, 2] 2501 = (425 : Int) := by
  decide

theorem node_8_108 : count [19, 17, 13, 11, 7, 5, 3, 2] 108 = (21 : Int) := by
  decide

theorem node_7_2501 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2501 = (404 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2501 = count [19, 17, 13, 11, 7, 5, 3, 2] 2501 - count [19, 17, 13, 11, 7, 5, 3, 2] (2501 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2501 (by decide)
    _ = (425 : Int) - (21 : Int) :=
      sub_congr node_8_2501 node_8_108
    _ = (404 : Int) := by decide

theorem node_6_72546 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 = (11466 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (72546 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 (by decide)
    _ = (11870 : Int) - (404 : Int) :=
      sub_congr node_7_72546 node_7_2501
    _ = (11466 : Int) := by decide

theorem node_8_2340 : count [19, 17, 13, 11, 7, 5, 3, 2] 2340 = (396 : Int) := by
  decide

theorem node_8_101 : count [19, 17, 13, 11, 7, 5, 3, 2] 101 = (19 : Int) := by
  decide

theorem node_7_2340 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2340 = (377 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2340 = count [19, 17, 13, 11, 7, 5, 3, 2] 2340 - count [19, 17, 13, 11, 7, 5, 3, 2] (2340 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2340 (by decide)
    _ = (396 : Int) - (19 : Int) :=
      sub_congr node_8_2340 node_8_101
    _ = (377 : Int) := by decide

theorem node_8_80 : count [19, 17, 13, 11, 7, 5, 3, 2] 80 = (15 : Int) := by
  decide

theorem node_8_3 : count [19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  decide

theorem node_7_80 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = (14 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = count [19, 17, 13, 11, 7, 5, 3, 2] 80 - count [19, 17, 13, 11, 7, 5, 3, 2] (80 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 80 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_8_80 node_8_3
    _ = (14 : Int) := by decide

theorem node_6_2340 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2340 = (363 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2340 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2340 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2340 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2340 (by decide)
    _ = (377 : Int) - (14 : Int) :=
      sub_congr node_7_2340 node_7_80
    _ = (363 : Int) := by decide

theorem node_5_72546 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 = (11103 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (72546 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 (by decide)
    _ = (11466 : Int) - (363 : Int) :=
      sub_congr node_6_72546 node_6_2340
    _ = (11103 : Int) := by decide

theorem node_8_1960 : count [19, 17, 13, 11, 7, 5, 3, 2] 1960 = (331 : Int) := by
  decide

theorem node_8_85 : count [19, 17, 13, 11, 7, 5, 3, 2] 85 = (16 : Int) := by
  decide

theorem node_7_1960 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1960 = (315 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1960 = count [19, 17, 13, 11, 7, 5, 3, 2] 1960 - count [19, 17, 13, 11, 7, 5, 3, 2] (1960 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1960 (by decide)
    _ = (331 : Int) - (16 : Int) :=
      sub_congr node_8_1960 node_8_85
    _ = (315 : Int) := by decide

theorem node_8_67 : count [19, 17, 13, 11, 7, 5, 3, 2] 67 = (12 : Int) := by
  decide

theorem node_8_2 : count [19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  decide

theorem node_7_67 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 67 = (11 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 67 = count [19, 17, 13, 11, 7, 5, 3, 2] 67 - count [19, 17, 13, 11, 7, 5, 3, 2] (67 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 67 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_8_67 node_8_2
    _ = (11 : Int) := by decide

theorem node_6_1960 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1960 = (304 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1960 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1960 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1960 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1960 (by decide)
    _ = (315 : Int) - (11 : Int) :=
      sub_congr node_7_1960 node_7_67
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

theorem node_8_0 : count [19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [19, 17, 13, 11, 7, 5, 3, 2]

theorem node_7_2 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [19, 17, 13, 11, 7, 5, 3, 2] 2 - count [19, 17, 13, 11, 7, 5, 3, 2] (2 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_2 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_63 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 = (9 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 63 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (63 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 63 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_7_63 node_7_2
    _ = (9 : Int) := by decide

theorem node_5_1960 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1960 = (295 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1960 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1960 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1960 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1960 (by decide)
    _ = (304 : Int) - (9 : Int) :=
      sub_congr node_6_1960 node_6_63
    _ = (295 : Int) := by decide

theorem node_4_72546 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 = (10808 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (72546 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 (by decide)
    _ = (11103 : Int) - (295 : Int) :=
      sub_congr node_5_72546 node_5_1960
    _ = (10808 : Int) := by decide

theorem node_8_1769 : count [19, 17, 13, 11, 7, 5, 3, 2] 1769 = (301 : Int) := by
  decide

theorem node_8_76 : count [19, 17, 13, 11, 7, 5, 3, 2] 76 = (14 : Int) := by
  decide

theorem node_7_1769 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1769 = (287 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1769 = count [19, 17, 13, 11, 7, 5, 3, 2] 1769 - count [19, 17, 13, 11, 7, 5, 3, 2] (1769 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1769 (by decide)
    _ = (301 : Int) - (14 : Int) :=
      sub_congr node_8_1769 node_8_76
    _ = (287 : Int) := by decide

theorem node_8_61 : count [19, 17, 13, 11, 7, 5, 3, 2] 61 = (11 : Int) := by
  decide

theorem node_7_61 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = (10 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = count [19, 17, 13, 11, 7, 5, 3, 2] 61 - count [19, 17, 13, 11, 7, 5, 3, 2] (61 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 61 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_8_61 node_8_2
    _ = (10 : Int) := by decide

theorem node_6_1769 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1769 = (277 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1769 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1769 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1769 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1769 (by decide)
    _ = (287 : Int) - (10 : Int) :=
      sub_congr node_7_1769 node_7_61
    _ = (277 : Int) := by decide

theorem node_8_57 : count [19, 17, 13, 11, 7, 5, 3, 2] 57 = (9 : Int) := by
  decide

theorem node_7_57 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = count [19, 17, 13, 11, 7, 5, 3, 2] 57 - count [19, 17, 13, 11, 7, 5, 3, 2] (57 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 57 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_57 node_8_2
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

theorem node_6_57 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = (7 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 57 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (57 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 57 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_7_57 node_7_1
    _ = (7 : Int) := by decide

theorem node_5_1769 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1769 = (270 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1769 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1769 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1769 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1769 (by decide)
    _ = (277 : Int) - (7 : Int) :=
      sub_congr node_6_1769 node_6_57
    _ = (270 : Int) := by decide

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

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_1 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_1 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_47 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 = (5 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (47 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_6_47 node_6_1
    _ = (5 : Int) := by decide

theorem node_4_1769 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1769 = (265 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1769 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1769 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1769 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1769 (by decide)
    _ = (270 : Int) - (5 : Int) :=
      sub_congr node_5_1769 node_5_47
    _ = (265 : Int) := by decide

theorem node_3_72546 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 = (10543 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (72546 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 (by decide)
    _ = (10808 : Int) - (265 : Int) :=
      sub_congr node_4_72546 node_4_1769
    _ = (10543 : Int) := by decide

theorem node_8_1687 : count [19, 17, 13, 11, 7, 5, 3, 2] 1687 = (286 : Int) := by
  decide

theorem node_8_73 : count [19, 17, 13, 11, 7, 5, 3, 2] 73 = (14 : Int) := by
  decide

theorem node_7_1687 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1687 = (272 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1687 = count [19, 17, 13, 11, 7, 5, 3, 2] 1687 - count [19, 17, 13, 11, 7, 5, 3, 2] (1687 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1687 (by decide)
    _ = (286 : Int) - (14 : Int) :=
      sub_congr node_8_1687 node_8_73
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

theorem node_6_1687 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1687 = (264 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1687 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1687 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1687 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1687 (by decide)
    _ = (272 : Int) - (8 : Int) :=
      sub_congr node_7_1687 node_7_58
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

theorem node_5_1687 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1687 = (257 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1687 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1687 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1687 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1687 (by decide)
    _ = (264 : Int) - (7 : Int) :=
      sub_congr node_6_1687 node_6_54
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

theorem node_4_1687 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1687 = (253 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1687 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1687 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1687 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1687 (by decide)
    _ = (257 : Int) - (4 : Int) :=
      sub_congr node_5_1687 node_5_45
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

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_1 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_1 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_41 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = (2 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (41 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_5_41 node_5_1
    _ = (2 : Int) := by decide

theorem node_3_1687 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1687 = (251 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1687 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1687 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1687 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1687 (by decide)
    _ = (253 : Int) - (2 : Int) :=
      sub_congr node_4_1687 node_4_41
    _ = (251 : Int) := by decide

theorem node_2_72546 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 = (10292 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (72546 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 (by decide)
    _ = (10543 : Int) - (251 : Int) :=
      sub_congr node_3_72546 node_3_1687
    _ = (10292 : Int) := by decide

theorem node_8_1543 : count [19, 17, 13, 11, 7, 5, 3, 2] 1543 = (261 : Int) := by
  decide

theorem node_7_1543 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 = (249 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 = count [19, 17, 13, 11, 7, 5, 3, 2] 1543 - count [19, 17, 13, 11, 7, 5, 3, 2] (1543 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1543 (by decide)
    _ = (261 : Int) - (12 : Int) :=
      sub_congr node_8_1543 node_8_67
    _ = (249 : Int) := by decide

theorem node_8_53 : count [19, 17, 13, 11, 7, 5, 3, 2] 53 = (9 : Int) := by
  decide

theorem node_7_53 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = count [19, 17, 13, 11, 7, 5, 3, 2] 53 - count [19, 17, 13, 11, 7, 5, 3, 2] (53 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 53 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_53 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_1543 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 = (241 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1543 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 (by decide)
    _ = (249 : Int) - (8 : Int) :=
      sub_congr node_7_1543 node_7_53
    _ = (241 : Int) := by decide

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

theorem node_5_1543 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 = (235 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1543 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 (by decide)
    _ = (241 : Int) - (6 : Int) :=
      sub_congr node_6_1543 node_6_49
    _ = (235 : Int) := by decide

theorem node_4_1543 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 = (232 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1543 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 (by decide)
    _ = (235 : Int) - (3 : Int) :=
      sub_congr node_5_1543 node_5_41
    _ = (232 : Int) := by decide

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

theorem node_3_1543 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 = (231 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1543 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 (by decide)
    _ = (232 : Int) - (1 : Int) :=
      sub_congr node_4_1543 node_4_37
    _ = (231 : Int) := by decide

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

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_35 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (35 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_35 node_5_0
    _ = (1 : Int) := by decide

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_35 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (35 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_35 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1543 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 = (230 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1543 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 (by decide)
    _ = (231 : Int) - (1 : Int) :=
      sub_congr node_3_1543 node_3_35
    _ = (230 : Int) := by decide

theorem node_1_72546 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 = (10062 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (72546 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 (by decide)
    _ = (10292 : Int) - (230 : Int) :=
      sub_congr node_2_72546 node_2_1543
    _ = (10062 : Int) := by decide

theorem node_8_1368 : count [19, 17, 13, 11, 7, 5, 3, 2] 1368 = (231 : Int) := by
  decide

theorem node_8_59 : count [19, 17, 13, 11, 7, 5, 3, 2] 59 = (10 : Int) := by
  decide

theorem node_7_1368 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1368 = (221 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1368 = count [19, 17, 13, 11, 7, 5, 3, 2] 1368 - count [19, 17, 13, 11, 7, 5, 3, 2] (1368 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1368 (by decide)
    _ = (231 : Int) - (10 : Int) :=
      sub_congr node_8_1368 node_8_59
    _ = (221 : Int) := by decide

theorem node_6_1368 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1368 = (214 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1368 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1368 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1368 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1368 (by decide)
    _ = (221 : Int) - (7 : Int) :=
      sub_congr node_7_1368 node_7_47
    _ = (214 : Int) := by decide

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

theorem node_5_1368 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1368 = (209 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1368 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1368 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1368 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1368 (by decide)
    _ = (214 : Int) - (5 : Int) :=
      sub_congr node_6_1368 node_6_44
    _ = (209 : Int) := by decide

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

theorem node_4_1368 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1368 = (208 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1368 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1368 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1368 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1368 (by decide)
    _ = (209 : Int) - (1 : Int) :=
      sub_congr node_5_1368 node_5_36
    _ = (208 : Int) := by decide

theorem node_8_33 : count [19, 17, 13, 11, 7, 5, 3, 2] 33 = (4 : Int) := by
  decide

theorem node_7_33 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 33 = (3 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 33 = count [19, 17, 13, 11, 7, 5, 3, 2] 33 - count [19, 17, 13, 11, 7, 5, 3, 2] (33 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 33 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_8_33 node_8_1
    _ = (3 : Int) := by decide

theorem node_6_33 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 = (2 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 33 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (33 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 33 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_7_33 node_7_1
    _ = (2 : Int) := by decide

theorem node_5_33 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (33 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_6_33 node_6_1
    _ = (1 : Int) := by decide

theorem node_4_33 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (33 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_33 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_1368 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1368 = (207 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1368 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1368 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1368 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1368 (by decide)
    _ = (208 : Int) - (1 : Int) :=
      sub_congr node_4_1368 node_4_33
    _ = (207 : Int) := by decide

theorem node_8_31 : count [19, 17, 13, 11, 7, 5, 3, 2] 31 = (4 : Int) := by
  decide

theorem node_7_31 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = (3 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = count [19, 17, 13, 11, 7, 5, 3, 2] 31 - count [19, 17, 13, 11, 7, 5, 3, 2] (31 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 31 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_8_31 node_8_1
    _ = (3 : Int) := by decide

theorem node_6_31 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = (2 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 31 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (31 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 31 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_7_31 node_7_1
    _ = (2 : Int) := by decide

theorem node_5_31 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (31 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_6_31 node_6_1
    _ = (1 : Int) := by decide

theorem node_4_31 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (31 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_31 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_31 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (31 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_31 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1368 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1368 = (206 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1368 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1368 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1368 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1368 (by decide)
    _ = (207 : Int) - (1 : Int) :=
      sub_congr node_3_1368 node_3_31
    _ = (206 : Int) := by decide

theorem node_8_29 : count [19, 17, 13, 11, 7, 5, 3, 2] 29 = (3 : Int) := by
  decide

theorem node_7_29 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = (2 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = count [19, 17, 13, 11, 7, 5, 3, 2] 29 - count [19, 17, 13, 11, 7, 5, 3, 2] (29 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 29 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_8_29 node_8_1
    _ = (2 : Int) := by decide

theorem node_6_29 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 29 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (29 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 29 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_7_29 node_7_1
    _ = (1 : Int) := by decide

theorem node_5_29 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (29 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_29 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_29 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (29 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_29 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_29 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (29 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_29 node_4_0
    _ = (1 : Int) := by decide

theorem node_3_0 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_2_29 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (29 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_29 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1368 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1368 = (205 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1368 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1368 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1368 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1368 (by decide)
    _ = (206 : Int) - (1 : Int) :=
      sub_congr node_2_1368 node_2_29
    _ = (205 : Int) := by decide

theorem node_0_72546 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 = (9857 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (72546 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72546 (by decide)
    _ = (10062 : Int) - (205 : Int) :=
      sub_congr node_1_72546 node_1_1368
    _ = (9857 : Int) := by decide

theorem node_8_73426 : count [19, 17, 13, 11, 7, 5, 3, 2] 73426 = (12557 : Int) := by
  decide

theorem node_8_3192 : count [19, 17, 13, 11, 7, 5, 3, 2] 3192 = (542 : Int) := by
  decide

theorem node_7_73426 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 = (12015 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 = count [19, 17, 13, 11, 7, 5, 3, 2] 73426 - count [19, 17, 13, 11, 7, 5, 3, 2] (73426 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 73426 (by decide)
    _ = (12557 : Int) - (542 : Int) :=
      sub_congr node_8_73426 node_8_3192
    _ = (12015 : Int) := by decide

theorem node_8_2531 : count [19, 17, 13, 11, 7, 5, 3, 2] 2531 = (429 : Int) := by
  decide

theorem node_8_110 : count [19, 17, 13, 11, 7, 5, 3, 2] 110 = (22 : Int) := by
  decide

theorem node_7_2531 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2531 = (407 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2531 = count [19, 17, 13, 11, 7, 5, 3, 2] 2531 - count [19, 17, 13, 11, 7, 5, 3, 2] (2531 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2531 (by decide)
    _ = (429 : Int) - (22 : Int) :=
      sub_congr node_8_2531 node_8_110
    _ = (407 : Int) := by decide

theorem node_6_73426 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 = (11608 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (73426 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 (by decide)
    _ = (12015 : Int) - (407 : Int) :=
      sub_congr node_7_73426 node_7_2531
    _ = (11608 : Int) := by decide

theorem node_8_2368 : count [19, 17, 13, 11, 7, 5, 3, 2] 2368 = (400 : Int) := by
  decide

theorem node_8_102 : count [19, 17, 13, 11, 7, 5, 3, 2] 102 = (19 : Int) := by
  decide

theorem node_7_2368 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 = (381 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 = count [19, 17, 13, 11, 7, 5, 3, 2] 2368 - count [19, 17, 13, 11, 7, 5, 3, 2] (2368 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2368 (by decide)
    _ = (400 : Int) - (19 : Int) :=
      sub_congr node_8_2368 node_8_102
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

theorem node_6_2368 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 = (367 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2368 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 (by decide)
    _ = (381 : Int) - (14 : Int) :=
      sub_congr node_7_2368 node_7_81
    _ = (367 : Int) := by decide

theorem node_5_73426 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 = (11241 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (73426 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 (by decide)
    _ = (11608 : Int) - (367 : Int) :=
      sub_congr node_6_73426 node_6_2368
    _ = (11241 : Int) := by decide

theorem node_8_1984 : count [19, 17, 13, 11, 7, 5, 3, 2] 1984 = (334 : Int) := by
  decide

theorem node_8_86 : count [19, 17, 13, 11, 7, 5, 3, 2] 86 = (16 : Int) := by
  decide

theorem node_7_1984 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1984 = (318 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1984 = count [19, 17, 13, 11, 7, 5, 3, 2] 1984 - count [19, 17, 13, 11, 7, 5, 3, 2] (1984 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1984 (by decide)
    _ = (334 : Int) - (16 : Int) :=
      sub_congr node_8_1984 node_8_86
    _ = (318 : Int) := by decide

theorem node_8_68 : count [19, 17, 13, 11, 7, 5, 3, 2] 68 = (12 : Int) := by
  decide

theorem node_7_68 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = (11 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = count [19, 17, 13, 11, 7, 5, 3, 2] 68 - count [19, 17, 13, 11, 7, 5, 3, 2] (68 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 68 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_8_68 node_8_2
    _ = (11 : Int) := by decide

theorem node_6_1984 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1984 = (307 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1984 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1984 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1984 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1984 (by decide)
    _ = (318 : Int) - (11 : Int) :=
      sub_congr node_7_1984 node_7_68
    _ = (307 : Int) := by decide

theorem node_8_64 : count [19, 17, 13, 11, 7, 5, 3, 2] 64 = (11 : Int) := by
  decide

theorem node_7_64 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = (10 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = count [19, 17, 13, 11, 7, 5, 3, 2] 64 - count [19, 17, 13, 11, 7, 5, 3, 2] (64 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 64 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_8_64 node_8_2
    _ = (10 : Int) := by decide

theorem node_6_64 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = (9 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 64 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (64 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 64 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_7_64 node_7_2
    _ = (9 : Int) := by decide

theorem node_5_1984 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1984 = (298 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1984 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1984 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1984 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1984 (by decide)
    _ = (307 : Int) - (9 : Int) :=
      sub_congr node_6_1984 node_6_64
    _ = (298 : Int) := by decide

theorem node_4_73426 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 = (10943 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (73426 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 (by decide)
    _ = (11241 : Int) - (298 : Int) :=
      sub_congr node_5_73426 node_5_1984
    _ = (10943 : Int) := by decide

theorem node_8_1790 : count [19, 17, 13, 11, 7, 5, 3, 2] 1790 = (305 : Int) := by
  decide

theorem node_8_77 : count [19, 17, 13, 11, 7, 5, 3, 2] 77 = (14 : Int) := by
  decide

theorem node_7_1790 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1790 = (291 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1790 = count [19, 17, 13, 11, 7, 5, 3, 2] 1790 - count [19, 17, 13, 11, 7, 5, 3, 2] (1790 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1790 (by decide)
    _ = (305 : Int) - (14 : Int) :=
      sub_congr node_8_1790 node_8_77
    _ = (291 : Int) := by decide

theorem node_6_1790 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1790 = (281 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1790 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1790 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1790 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1790 (by decide)
    _ = (291 : Int) - (10 : Int) :=
      sub_congr node_7_1790 node_7_61
    _ = (281 : Int) := by decide

theorem node_5_1790 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1790 = (274 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1790 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1790 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1790 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1790 (by decide)
    _ = (281 : Int) - (7 : Int) :=
      sub_congr node_6_1790 node_6_57
    _ = (274 : Int) := by decide

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

theorem node_4_1790 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1790 = (269 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1790 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1790 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1790 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1790 (by decide)
    _ = (274 : Int) - (5 : Int) :=
      sub_congr node_5_1790 node_5_48
    _ = (269 : Int) := by decide

theorem node_3_73426 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 = (10674 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (73426 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 (by decide)
    _ = (10943 : Int) - (269 : Int) :=
      sub_congr node_4_73426 node_4_1790
    _ = (10674 : Int) := by decide

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

theorem node_2_73426 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 = (10420 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (73426 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 (by decide)
    _ = (10674 : Int) - (254 : Int) :=
      sub_congr node_3_73426 node_3_1707
    _ = (10420 : Int) := by decide

theorem node_8_1562 : count [19, 17, 13, 11, 7, 5, 3, 2] 1562 = (264 : Int) := by
  decide

theorem node_7_1562 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1562 = (252 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1562 = count [19, 17, 13, 11, 7, 5, 3, 2] 1562 - count [19, 17, 13, 11, 7, 5, 3, 2] (1562 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1562 (by decide)
    _ = (264 : Int) - (12 : Int) :=
      sub_congr node_8_1562 node_8_67
    _ = (252 : Int) := by decide

theorem node_6_1562 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1562 = (244 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1562 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1562 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1562 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1562 (by decide)
    _ = (252 : Int) - (8 : Int) :=
      sub_congr node_7_1562 node_7_53
    _ = (244 : Int) := by decide

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

theorem node_5_1562 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1562 = (238 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1562 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1562 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1562 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1562 (by decide)
    _ = (244 : Int) - (6 : Int) :=
      sub_congr node_6_1562 node_6_50
    _ = (238 : Int) := by decide

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

theorem node_4_1562 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1562 = (235 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1562 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1562 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1562 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1562 (by decide)
    _ = (238 : Int) - (3 : Int) :=
      sub_congr node_5_1562 node_5_42
    _ = (235 : Int) := by decide

theorem node_8_38 : count [19, 17, 13, 11, 7, 5, 3, 2] 38 = (5 : Int) := by
  decide

theorem node_7_38 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = (4 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = count [19, 17, 13, 11, 7, 5, 3, 2] 38 - count [19, 17, 13, 11, 7, 5, 3, 2] (38 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 38 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_8_38 node_8_1
    _ = (4 : Int) := by decide

theorem node_6_38 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = (3 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 38 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (38 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 38 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_7_38 node_7_1
    _ = (3 : Int) := by decide

theorem node_5_38 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = (2 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (38 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_6_38 node_6_1
    _ = (2 : Int) := by decide

theorem node_4_38 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (38 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_5_38 node_5_1
    _ = (1 : Int) := by decide

theorem node_3_1562 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1562 = (234 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1562 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1562 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1562 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1562 (by decide)
    _ = (235 : Int) - (1 : Int) :=
      sub_congr node_4_1562 node_4_38
    _ = (234 : Int) := by decide

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

theorem node_2_1562 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1562 = (233 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1562 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1562 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1562 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1562 (by decide)
    _ = (234 : Int) - (1 : Int) :=
      sub_congr node_3_1562 node_3_36
    _ = (233 : Int) := by decide

theorem node_1_73426 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 = (10187 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (73426 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 (by decide)
    _ = (10420 : Int) - (233 : Int) :=
      sub_congr node_2_73426 node_2_1562
    _ = (10187 : Int) := by decide

theorem node_8_1385 : count [19, 17, 13, 11, 7, 5, 3, 2] 1385 = (234 : Int) := by
  decide

theorem node_8_60 : count [19, 17, 13, 11, 7, 5, 3, 2] 60 = (10 : Int) := by
  decide

theorem node_7_1385 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1385 = (224 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1385 = count [19, 17, 13, 11, 7, 5, 3, 2] 1385 - count [19, 17, 13, 11, 7, 5, 3, 2] (1385 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1385 (by decide)
    _ = (234 : Int) - (10 : Int) :=
      sub_congr node_8_1385 node_8_60
    _ = (224 : Int) := by decide

theorem node_6_1385 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1385 = (217 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1385 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1385 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1385 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1385 (by decide)
    _ = (224 : Int) - (7 : Int) :=
      sub_congr node_7_1385 node_7_47
    _ = (217 : Int) := by decide

theorem node_5_1385 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1385 = (212 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1385 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1385 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1385 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1385 (by decide)
    _ = (217 : Int) - (5 : Int) :=
      sub_congr node_6_1385 node_6_44
    _ = (212 : Int) := by decide

theorem node_4_1385 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1385 = (210 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1385 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1385 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1385 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1385 (by decide)
    _ = (212 : Int) - (2 : Int) :=
      sub_congr node_5_1385 node_5_37
    _ = (210 : Int) := by decide

theorem node_3_1385 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1385 = (209 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1385 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1385 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1385 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1385 (by decide)
    _ = (210 : Int) - (1 : Int) :=
      sub_congr node_4_1385 node_4_33
    _ = (209 : Int) := by decide

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

theorem node_2_1385 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1385 = (208 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1385 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1385 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1385 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1385 (by decide)
    _ = (209 : Int) - (1 : Int) :=
      sub_congr node_3_1385 node_3_32
    _ = (208 : Int) := by decide

theorem node_1_1385 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1385 = (207 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1385 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1385 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1385 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1385 (by decide)
    _ = (208 : Int) - (1 : Int) :=
      sub_congr node_2_1385 node_2_29
    _ = (207 : Int) := by decide

theorem node_0_73426 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 = (9980 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (73426 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73426 (by decide)
    _ = (10187 : Int) - (207 : Int) :=
      sub_congr node_1_73426 node_1_1385
    _ = (9980 : Int) := by decide

theorem row_58 : count primes 72546 ≤ (9872 : Int) - 15 := by
  rw [show count primes 72546 = (9857 : Int) from node_0_72546]
  decide

theorem row_59 : count primes 73426 ≤ (9995 : Int) - 15 := by
  rw [show count primes 73426 = (9980 : Int) from node_0_73426]
  decide

def pairs : List (Nat × Nat) := [(72546, 9872), (73426, 9995)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl
  · exact row_58
  · exact row_59
end B699CorePrunedSieve.CoreRest16
#check @B699CorePrunedSieve.CoreRest16.pairs_valid
#print axioms B699CorePrunedSieve.CoreRest16.pairs_valid
