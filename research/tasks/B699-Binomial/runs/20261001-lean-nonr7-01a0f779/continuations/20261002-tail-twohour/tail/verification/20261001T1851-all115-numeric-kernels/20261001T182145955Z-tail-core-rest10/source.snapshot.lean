import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreRest10
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_54948 : count [19, 17, 13, 11, 7, 5, 3, 2] 54948 = (9400 : Int) := by
  decide

theorem node_8_2389 : count [19, 17, 13, 11, 7, 5, 3, 2] 2389 = (406 : Int) := by
  decide

theorem node_7_54948 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 = (8994 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 = count [19, 17, 13, 11, 7, 5, 3, 2] 54948 - count [19, 17, 13, 11, 7, 5, 3, 2] (54948 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 54948 (by decide)
    _ = (9400 : Int) - (406 : Int) :=
      sub_congr node_8_54948 node_8_2389
    _ = (8994 : Int) := by decide

theorem node_8_1894 : count [19, 17, 13, 11, 7, 5, 3, 2] 1894 = (321 : Int) := by
  decide

theorem node_8_82 : count [19, 17, 13, 11, 7, 5, 3, 2] 82 = (15 : Int) := by
  decide

theorem node_7_1894 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1894 = (306 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1894 = count [19, 17, 13, 11, 7, 5, 3, 2] 1894 - count [19, 17, 13, 11, 7, 5, 3, 2] (1894 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1894 (by decide)
    _ = (321 : Int) - (15 : Int) :=
      sub_congr node_8_1894 node_8_82
    _ = (306 : Int) := by decide

theorem node_6_54948 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 = (8688 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (54948 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 (by decide)
    _ = (8994 : Int) - (306 : Int) :=
      sub_congr node_7_54948 node_7_1894
    _ = (8688 : Int) := by decide

theorem node_8_1772 : count [19, 17, 13, 11, 7, 5, 3, 2] 1772 = (301 : Int) := by
  decide

theorem node_8_77 : count [19, 17, 13, 11, 7, 5, 3, 2] 77 = (14 : Int) := by
  decide

theorem node_7_1772 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1772 = (287 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1772 = count [19, 17, 13, 11, 7, 5, 3, 2] 1772 - count [19, 17, 13, 11, 7, 5, 3, 2] (1772 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1772 (by decide)
    _ = (301 : Int) - (14 : Int) :=
      sub_congr node_8_1772 node_8_77
    _ = (287 : Int) := by decide

theorem node_8_61 : count [19, 17, 13, 11, 7, 5, 3, 2] 61 = (11 : Int) := by
  decide

theorem node_8_2 : count [19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  decide

theorem node_7_61 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = (10 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = count [19, 17, 13, 11, 7, 5, 3, 2] 61 - count [19, 17, 13, 11, 7, 5, 3, 2] (61 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 61 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_8_61 node_8_2
    _ = (10 : Int) := by decide

theorem node_6_1772 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1772 = (277 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1772 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1772 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1772 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1772 (by decide)
    _ = (287 : Int) - (10 : Int) :=
      sub_congr node_7_1772 node_7_61
    _ = (277 : Int) := by decide

theorem node_5_54948 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 = (8411 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (54948 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 (by decide)
    _ = (8688 : Int) - (277 : Int) :=
      sub_congr node_6_54948 node_6_1772
    _ = (8411 : Int) := by decide

theorem node_8_1485 : count [19, 17, 13, 11, 7, 5, 3, 2] 1485 = (250 : Int) := by
  decide

theorem node_8_64 : count [19, 17, 13, 11, 7, 5, 3, 2] 64 = (11 : Int) := by
  decide

theorem node_7_1485 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 = (239 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 = count [19, 17, 13, 11, 7, 5, 3, 2] 1485 - count [19, 17, 13, 11, 7, 5, 3, 2] (1485 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1485 (by decide)
    _ = (250 : Int) - (11 : Int) :=
      sub_congr node_8_1485 node_8_64
    _ = (239 : Int) := by decide

theorem node_8_51 : count [19, 17, 13, 11, 7, 5, 3, 2] 51 = (8 : Int) := by
  decide

theorem node_7_51 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = (7 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = count [19, 17, 13, 11, 7, 5, 3, 2] 51 - count [19, 17, 13, 11, 7, 5, 3, 2] (51 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 51 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_8_51 node_8_2
    _ = (7 : Int) := by decide

theorem node_6_1485 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 = (232 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1485 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 (by decide)
    _ = (239 : Int) - (7 : Int) :=
      sub_congr node_7_1485 node_7_51
    _ = (232 : Int) := by decide

theorem node_8_47 : count [19, 17, 13, 11, 7, 5, 3, 2] 47 = (8 : Int) := by
  decide

theorem node_7_47 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 47 = (7 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 47 = count [19, 17, 13, 11, 7, 5, 3, 2] 47 - count [19, 17, 13, 11, 7, 5, 3, 2] (47 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 47 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_8_47 node_8_2
    _ = (7 : Int) := by decide

theorem node_8_1 : count [19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  decide

theorem node_8_0 : count [19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [19, 17, 13, 11, 7, 5, 3, 2]

theorem node_7_1 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [19, 17, 13, 11, 7, 5, 3, 2] 1 - count [19, 17, 13, 11, 7, 5, 3, 2] (1 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_1 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_47 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 = (6 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 47 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (47 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 47 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_7_47 node_7_1
    _ = (6 : Int) := by decide

theorem node_5_1485 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 = (226 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1485 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 (by decide)
    _ = (232 : Int) - (6 : Int) :=
      sub_congr node_6_1485 node_6_47
    _ = (226 : Int) := by decide

theorem node_4_54948 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 = (8185 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (54948 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 (by decide)
    _ = (8411 : Int) - (226 : Int) :=
      sub_congr node_5_54948 node_5_1485
    _ = (8185 : Int) := by decide

theorem node_8_1340 : count [19, 17, 13, 11, 7, 5, 3, 2] 1340 = (227 : Int) := by
  decide

theorem node_8_58 : count [19, 17, 13, 11, 7, 5, 3, 2] 58 = (9 : Int) := by
  decide

theorem node_7_1340 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1340 = (218 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1340 = count [19, 17, 13, 11, 7, 5, 3, 2] 1340 - count [19, 17, 13, 11, 7, 5, 3, 2] (1340 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1340 (by decide)
    _ = (227 : Int) - (9 : Int) :=
      sub_congr node_8_1340 node_8_58
    _ = (218 : Int) := by decide

theorem node_8_46 : count [19, 17, 13, 11, 7, 5, 3, 2] 46 = (7 : Int) := by
  decide

theorem node_7_46 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = (6 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = count [19, 17, 13, 11, 7, 5, 3, 2] 46 - count [19, 17, 13, 11, 7, 5, 3, 2] (46 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 46 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_8_46 node_8_2
    _ = (6 : Int) := by decide

theorem node_6_1340 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1340 = (212 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1340 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1340 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1340 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1340 (by decide)
    _ = (218 : Int) - (6 : Int) :=
      sub_congr node_7_1340 node_7_46
    _ = (212 : Int) := by decide

theorem node_8_43 : count [19, 17, 13, 11, 7, 5, 3, 2] 43 = (7 : Int) := by
  decide

theorem node_7_43 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 43 = (6 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 43 = count [19, 17, 13, 11, 7, 5, 3, 2] 43 - count [19, 17, 13, 11, 7, 5, 3, 2] (43 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 43 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_8_43 node_8_1
    _ = (6 : Int) := by decide

theorem node_6_43 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 = (5 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 43 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (43 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 43 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_7_43 node_7_1
    _ = (5 : Int) := by decide

theorem node_5_1340 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1340 = (207 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1340 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1340 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1340 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1340 (by decide)
    _ = (212 : Int) - (5 : Int) :=
      sub_congr node_6_1340 node_6_43
    _ = (207 : Int) := by decide

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

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_1 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_1 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_36 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (36 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_6_36 node_6_1
    _ = (1 : Int) := by decide

theorem node_4_1340 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1340 = (206 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1340 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1340 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1340 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1340 (by decide)
    _ = (207 : Int) - (1 : Int) :=
      sub_congr node_5_1340 node_5_36
    _ = (206 : Int) := by decide

theorem node_3_54948 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 = (7979 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (54948 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 (by decide)
    _ = (8185 : Int) - (206 : Int) :=
      sub_congr node_4_54948 node_4_1340
    _ = (7979 : Int) := by decide

theorem node_8_1277 : count [19, 17, 13, 11, 7, 5, 3, 2] 1277 = (215 : Int) := by
  decide

theorem node_8_55 : count [19, 17, 13, 11, 7, 5, 3, 2] 55 = (9 : Int) := by
  decide

theorem node_7_1277 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1277 = (206 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1277 = count [19, 17, 13, 11, 7, 5, 3, 2] 1277 - count [19, 17, 13, 11, 7, 5, 3, 2] (1277 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1277 (by decide)
    _ = (215 : Int) - (9 : Int) :=
      sub_congr node_8_1277 node_8_55
    _ = (206 : Int) := by decide

theorem node_8_44 : count [19, 17, 13, 11, 7, 5, 3, 2] 44 = (7 : Int) := by
  decide

theorem node_7_44 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 44 = (6 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 44 = count [19, 17, 13, 11, 7, 5, 3, 2] 44 - count [19, 17, 13, 11, 7, 5, 3, 2] (44 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 44 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_8_44 node_8_1
    _ = (6 : Int) := by decide

theorem node_6_1277 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1277 = (200 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1277 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1277 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1277 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1277 (by decide)
    _ = (206 : Int) - (6 : Int) :=
      sub_congr node_7_1277 node_7_44
    _ = (200 : Int) := by decide

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

theorem node_5_1277 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1277 = (196 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1277 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1277 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1277 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1277 (by decide)
    _ = (200 : Int) - (4 : Int) :=
      sub_congr node_6_1277 node_6_41
    _ = (196 : Int) := by decide

theorem node_8_34 : count [19, 17, 13, 11, 7, 5, 3, 2] 34 = (4 : Int) := by
  decide

theorem node_7_34 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = (3 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = count [19, 17, 13, 11, 7, 5, 3, 2] 34 - count [19, 17, 13, 11, 7, 5, 3, 2] (34 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 34 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_8_34 node_8_1
    _ = (3 : Int) := by decide

theorem node_6_34 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = (2 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 34 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (34 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 34 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_7_34 node_7_1
    _ = (2 : Int) := by decide

theorem node_5_34 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (34 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_6_34 node_6_1
    _ = (1 : Int) := by decide

theorem node_4_1277 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1277 = (195 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1277 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1277 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1277 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1277 (by decide)
    _ = (196 : Int) - (1 : Int) :=
      sub_congr node_5_1277 node_5_34
    _ = (195 : Int) := by decide

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

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_31 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (31 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_31 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_1277 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1277 = (194 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1277 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1277 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1277 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1277 (by decide)
    _ = (195 : Int) - (1 : Int) :=
      sub_congr node_4_1277 node_4_31
    _ = (194 : Int) := by decide

theorem node_2_54948 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 = (7785 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (54948 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 (by decide)
    _ = (7979 : Int) - (194 : Int) :=
      sub_congr node_3_54948 node_3_1277
    _ = (7785 : Int) := by decide

theorem node_8_1169 : count [19, 17, 13, 11, 7, 5, 3, 2] 1169 = (197 : Int) := by
  decide

theorem node_8_50 : count [19, 17, 13, 11, 7, 5, 3, 2] 50 = (8 : Int) := by
  decide

theorem node_7_1169 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1169 = (189 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1169 = count [19, 17, 13, 11, 7, 5, 3, 2] 1169 - count [19, 17, 13, 11, 7, 5, 3, 2] (1169 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1169 (by decide)
    _ = (197 : Int) - (8 : Int) :=
      sub_congr node_8_1169 node_8_50
    _ = (189 : Int) := by decide

theorem node_8_40 : count [19, 17, 13, 11, 7, 5, 3, 2] 40 = (5 : Int) := by
  decide

theorem node_7_40 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = (4 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = count [19, 17, 13, 11, 7, 5, 3, 2] 40 - count [19, 17, 13, 11, 7, 5, 3, 2] (40 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 40 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_8_40 node_8_1
    _ = (4 : Int) := by decide

theorem node_6_1169 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1169 = (185 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1169 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1169 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1169 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1169 (by decide)
    _ = (189 : Int) - (4 : Int) :=
      sub_congr node_7_1169 node_7_40
    _ = (185 : Int) := by decide

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

theorem node_5_1169 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1169 = (182 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1169 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1169 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1169 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1169 (by decide)
    _ = (185 : Int) - (3 : Int) :=
      sub_congr node_6_1169 node_6_37
    _ = (182 : Int) := by decide

theorem node_4_1169 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1169 = (181 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1169 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1169 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1169 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1169 (by decide)
    _ = (182 : Int) - (1 : Int) :=
      sub_congr node_5_1169 node_5_31
    _ = (181 : Int) := by decide

theorem node_8_28 : count [19, 17, 13, 11, 7, 5, 3, 2] 28 = (2 : Int) := by
  decide

theorem node_7_28 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = count [19, 17, 13, 11, 7, 5, 3, 2] 28 - count [19, 17, 13, 11, 7, 5, 3, 2] (28 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 28 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_8_28 node_8_1
    _ = (1 : Int) := by decide

theorem node_6_28 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 28 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (28 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 28 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_28 node_7_0
    _ = (1 : Int) := by decide

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_28 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (28 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_28 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_28 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (28 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_28 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_1169 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1169 = (180 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1169 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1169 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1169 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1169 (by decide)
    _ = (181 : Int) - (1 : Int) :=
      sub_congr node_4_1169 node_4_28
    _ = (180 : Int) := by decide

theorem node_8_27 : count [19, 17, 13, 11, 7, 5, 3, 2] 27 = (2 : Int) := by
  decide

theorem node_7_27 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = count [19, 17, 13, 11, 7, 5, 3, 2] 27 - count [19, 17, 13, 11, 7, 5, 3, 2] (27 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 27 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_8_27 node_8_1
    _ = (1 : Int) := by decide

theorem node_6_27 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 27 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (27 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 27 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_27 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_27 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (27 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_27 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_27 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (27 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_27 node_5_0
    _ = (1 : Int) := by decide

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_27 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (27 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_27 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1169 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1169 = (179 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1169 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1169 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1169 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1169 (by decide)
    _ = (180 : Int) - (1 : Int) :=
      sub_congr node_3_1169 node_3_27
    _ = (179 : Int) := by decide

theorem node_1_54948 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 = (7606 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (54948 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 (by decide)
    _ = (7785 : Int) - (179 : Int) :=
      sub_congr node_2_54948 node_2_1169
    _ = (7606 : Int) := by decide

theorem node_8_1036 : count [19, 17, 13, 11, 7, 5, 3, 2] 1036 = (176 : Int) := by
  decide

theorem node_8_45 : count [19, 17, 13, 11, 7, 5, 3, 2] 45 = (7 : Int) := by
  decide

theorem node_7_1036 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1036 = (169 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1036 = count [19, 17, 13, 11, 7, 5, 3, 2] 1036 - count [19, 17, 13, 11, 7, 5, 3, 2] (1036 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1036 (by decide)
    _ = (176 : Int) - (7 : Int) :=
      sub_congr node_8_1036 node_8_45
    _ = (169 : Int) := by decide

theorem node_8_35 : count [19, 17, 13, 11, 7, 5, 3, 2] 35 = (4 : Int) := by
  decide

theorem node_7_35 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = (3 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = count [19, 17, 13, 11, 7, 5, 3, 2] 35 - count [19, 17, 13, 11, 7, 5, 3, 2] (35 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 35 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_8_35 node_8_1
    _ = (3 : Int) := by decide

theorem node_6_1036 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1036 = (166 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1036 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1036 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1036 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1036 (by decide)
    _ = (169 : Int) - (3 : Int) :=
      sub_congr node_7_1036 node_7_35
    _ = (166 : Int) := by decide

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

theorem node_5_1036 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1036 = (164 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1036 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1036 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1036 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1036 (by decide)
    _ = (166 : Int) - (2 : Int) :=
      sub_congr node_6_1036 node_6_33
    _ = (164 : Int) := by decide

theorem node_4_1036 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1036 = (163 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1036 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1036 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1036 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1036 (by decide)
    _ = (164 : Int) - (1 : Int) :=
      sub_congr node_5_1036 node_5_28
    _ = (163 : Int) := by decide

theorem node_8_25 : count [19, 17, 13, 11, 7, 5, 3, 2] 25 = (2 : Int) := by
  decide

theorem node_7_25 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = count [19, 17, 13, 11, 7, 5, 3, 2] 25 - count [19, 17, 13, 11, 7, 5, 3, 2] (25 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 25 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_8_25 node_8_1
    _ = (1 : Int) := by decide

theorem node_6_25 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 25 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (25 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 25 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_25 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_25 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (25 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_25 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_25 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (25 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_25 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_1036 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1036 = (162 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1036 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1036 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1036 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1036 (by decide)
    _ = (163 : Int) - (1 : Int) :=
      sub_congr node_4_1036 node_4_25
    _ = (162 : Int) := by decide

theorem node_8_24 : count [19, 17, 13, 11, 7, 5, 3, 2] 24 = (2 : Int) := by
  decide

theorem node_7_24 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = count [19, 17, 13, 11, 7, 5, 3, 2] 24 - count [19, 17, 13, 11, 7, 5, 3, 2] (24 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 24 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_8_24 node_8_1
    _ = (1 : Int) := by decide

theorem node_6_24 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 24 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (24 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 24 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_24 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_24 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (24 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_24 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_24 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (24 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_24 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_24 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (24 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_24 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1036 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1036 = (161 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1036 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1036 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1036 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1036 (by decide)
    _ = (162 : Int) - (1 : Int) :=
      sub_congr node_3_1036 node_3_24
    _ = (161 : Int) := by decide

theorem node_8_22 : count [19, 17, 13, 11, 7, 5, 3, 2] 22 = (1 : Int) := by
  decide

theorem node_7_22 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = count [19, 17, 13, 11, 7, 5, 3, 2] 22 - count [19, 17, 13, 11, 7, 5, 3, 2] (22 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 22 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_22 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_22 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 22 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (22 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 22 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_22 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_22 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (22 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_22 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_22 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (22 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_22 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_22 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (22 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_22 node_4_0
    _ = (1 : Int) := by decide

theorem node_3_0 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_2_22 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (22 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_22 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1036 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1036 = (160 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1036 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1036 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1036 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1036 (by decide)
    _ = (161 : Int) - (1 : Int) :=
      sub_congr node_2_1036 node_2_22
    _ = (160 : Int) := by decide

theorem node_0_54948 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 = (7446 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (54948 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54948 (by decide)
    _ = (7606 : Int) - (160 : Int) :=
      sub_congr node_1_54948 node_1_1036
    _ = (7446 : Int) := by decide

theorem node_8_57688 : count [19, 17, 13, 11, 7, 5, 3, 2] 57688 = (9867 : Int) := by
  decide

theorem node_8_2508 : count [19, 17, 13, 11, 7, 5, 3, 2] 2508 = (427 : Int) := by
  decide

theorem node_7_57688 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 = (9440 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 = count [19, 17, 13, 11, 7, 5, 3, 2] 57688 - count [19, 17, 13, 11, 7, 5, 3, 2] (57688 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 57688 (by decide)
    _ = (9867 : Int) - (427 : Int) :=
      sub_congr node_8_57688 node_8_2508
    _ = (9440 : Int) := by decide

theorem node_8_1989 : count [19, 17, 13, 11, 7, 5, 3, 2] 1989 = (335 : Int) := by
  decide

theorem node_8_86 : count [19, 17, 13, 11, 7, 5, 3, 2] 86 = (16 : Int) := by
  decide

theorem node_7_1989 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1989 = (319 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1989 = count [19, 17, 13, 11, 7, 5, 3, 2] 1989 - count [19, 17, 13, 11, 7, 5, 3, 2] (1989 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1989 (by decide)
    _ = (335 : Int) - (16 : Int) :=
      sub_congr node_8_1989 node_8_86
    _ = (319 : Int) := by decide

theorem node_6_57688 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 = (9121 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (57688 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 (by decide)
    _ = (9440 : Int) - (319 : Int) :=
      sub_congr node_7_57688 node_7_1989
    _ = (9121 : Int) := by decide

theorem node_8_1860 : count [19, 17, 13, 11, 7, 5, 3, 2] 1860 = (313 : Int) := by
  decide

theorem node_8_80 : count [19, 17, 13, 11, 7, 5, 3, 2] 80 = (15 : Int) := by
  decide

theorem node_7_1860 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1860 = (298 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1860 = count [19, 17, 13, 11, 7, 5, 3, 2] 1860 - count [19, 17, 13, 11, 7, 5, 3, 2] (1860 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1860 (by decide)
    _ = (313 : Int) - (15 : Int) :=
      sub_congr node_8_1860 node_8_80
    _ = (298 : Int) := by decide

theorem node_7_64 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = (10 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = count [19, 17, 13, 11, 7, 5, 3, 2] 64 - count [19, 17, 13, 11, 7, 5, 3, 2] (64 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 64 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_8_64 node_8_2
    _ = (10 : Int) := by decide

theorem node_6_1860 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1860 = (288 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1860 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1860 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1860 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1860 (by decide)
    _ = (298 : Int) - (10 : Int) :=
      sub_congr node_7_1860 node_7_64
    _ = (288 : Int) := by decide

theorem node_5_57688 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 = (8833 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (57688 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 (by decide)
    _ = (9121 : Int) - (288 : Int) :=
      sub_congr node_6_57688 node_6_1860
    _ = (8833 : Int) := by decide

theorem node_8_1559 : count [19, 17, 13, 11, 7, 5, 3, 2] 1559 = (264 : Int) := by
  decide

theorem node_8_67 : count [19, 17, 13, 11, 7, 5, 3, 2] 67 = (12 : Int) := by
  decide

theorem node_7_1559 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1559 = (252 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1559 = count [19, 17, 13, 11, 7, 5, 3, 2] 1559 - count [19, 17, 13, 11, 7, 5, 3, 2] (1559 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1559 (by decide)
    _ = (264 : Int) - (12 : Int) :=
      sub_congr node_8_1559 node_8_67
    _ = (252 : Int) := by decide

theorem node_8_53 : count [19, 17, 13, 11, 7, 5, 3, 2] 53 = (9 : Int) := by
  decide

theorem node_7_53 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = count [19, 17, 13, 11, 7, 5, 3, 2] 53 - count [19, 17, 13, 11, 7, 5, 3, 2] (53 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 53 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_53 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_1559 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1559 = (244 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1559 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1559 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1559 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1559 (by decide)
    _ = (252 : Int) - (8 : Int) :=
      sub_congr node_7_1559 node_7_53
    _ = (244 : Int) := by decide

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

theorem node_5_1559 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1559 = (238 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1559 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1559 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1559 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1559 (by decide)
    _ = (244 : Int) - (6 : Int) :=
      sub_congr node_6_1559 node_6_50
    _ = (238 : Int) := by decide

theorem node_4_57688 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 = (8595 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (57688 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 (by decide)
    _ = (8833 : Int) - (238 : Int) :=
      sub_congr node_5_57688 node_5_1559
    _ = (8595 : Int) := by decide

theorem node_8_1407 : count [19, 17, 13, 11, 7, 5, 3, 2] 1407 = (236 : Int) := by
  decide

theorem node_7_1407 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1407 = (225 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1407 = count [19, 17, 13, 11, 7, 5, 3, 2] 1407 - count [19, 17, 13, 11, 7, 5, 3, 2] (1407 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1407 (by decide)
    _ = (236 : Int) - (11 : Int) :=
      sub_congr node_8_1407 node_8_61
    _ = (225 : Int) := by decide

theorem node_8_48 : count [19, 17, 13, 11, 7, 5, 3, 2] 48 = (8 : Int) := by
  decide

theorem node_7_48 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = (7 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = count [19, 17, 13, 11, 7, 5, 3, 2] 48 - count [19, 17, 13, 11, 7, 5, 3, 2] (48 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 48 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_8_48 node_8_2
    _ = (7 : Int) := by decide

theorem node_6_1407 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1407 = (218 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1407 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1407 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1407 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1407 (by decide)
    _ = (225 : Int) - (7 : Int) :=
      sub_congr node_7_1407 node_7_48
    _ = (218 : Int) := by decide

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

theorem node_5_1407 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1407 = (213 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1407 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1407 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1407 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1407 (by decide)
    _ = (218 : Int) - (5 : Int) :=
      sub_congr node_6_1407 node_6_45
    _ = (213 : Int) := by decide

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

theorem node_4_1407 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1407 = (211 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1407 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1407 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1407 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1407 (by decide)
    _ = (213 : Int) - (2 : Int) :=
      sub_congr node_5_1407 node_5_38
    _ = (211 : Int) := by decide

theorem node_3_57688 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 = (8384 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (57688 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 (by decide)
    _ = (8595 : Int) - (211 : Int) :=
      sub_congr node_4_57688 node_4_1407
    _ = (8384 : Int) := by decide

theorem node_8_1341 : count [19, 17, 13, 11, 7, 5, 3, 2] 1341 = (227 : Int) := by
  decide

theorem node_7_1341 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1341 = (218 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1341 = count [19, 17, 13, 11, 7, 5, 3, 2] 1341 - count [19, 17, 13, 11, 7, 5, 3, 2] (1341 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1341 (by decide)
    _ = (227 : Int) - (9 : Int) :=
      sub_congr node_8_1341 node_8_58
    _ = (218 : Int) := by decide

theorem node_6_1341 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1341 = (212 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1341 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1341 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1341 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1341 (by decide)
    _ = (218 : Int) - (6 : Int) :=
      sub_congr node_7_1341 node_7_46
    _ = (212 : Int) := by decide

theorem node_5_1341 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1341 = (207 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1341 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1341 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1341 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1341 (by decide)
    _ = (212 : Int) - (5 : Int) :=
      sub_congr node_6_1341 node_6_43
    _ = (207 : Int) := by decide

theorem node_4_1341 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1341 = (206 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1341 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1341 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1341 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1341 (by decide)
    _ = (207 : Int) - (1 : Int) :=
      sub_congr node_5_1341 node_5_36
    _ = (206 : Int) := by decide

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

theorem node_3_1341 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1341 = (205 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1341 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1341 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1341 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1341 (by decide)
    _ = (206 : Int) - (1 : Int) :=
      sub_congr node_4_1341 node_4_32
    _ = (205 : Int) := by decide

theorem node_2_57688 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 = (8179 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (57688 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 (by decide)
    _ = (8384 : Int) - (205 : Int) :=
      sub_congr node_3_57688 node_3_1341
    _ = (8179 : Int) := by decide

theorem node_8_1227 : count [19, 17, 13, 11, 7, 5, 3, 2] 1227 = (207 : Int) := by
  decide

theorem node_7_1227 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1227 = (198 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1227 = count [19, 17, 13, 11, 7, 5, 3, 2] 1227 - count [19, 17, 13, 11, 7, 5, 3, 2] (1227 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1227 (by decide)
    _ = (207 : Int) - (9 : Int) :=
      sub_congr node_8_1227 node_8_53
    _ = (198 : Int) := by decide

theorem node_8_42 : count [19, 17, 13, 11, 7, 5, 3, 2] 42 = (6 : Int) := by
  decide

theorem node_7_42 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = (5 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = count [19, 17, 13, 11, 7, 5, 3, 2] 42 - count [19, 17, 13, 11, 7, 5, 3, 2] (42 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 42 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_8_42 node_8_1
    _ = (5 : Int) := by decide

theorem node_6_1227 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1227 = (193 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1227 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1227 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1227 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1227 (by decide)
    _ = (198 : Int) - (5 : Int) :=
      sub_congr node_7_1227 node_7_42
    _ = (193 : Int) := by decide

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

theorem node_5_1227 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1227 = (190 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1227 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1227 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1227 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1227 (by decide)
    _ = (193 : Int) - (3 : Int) :=
      sub_congr node_6_1227 node_6_39
    _ = (190 : Int) := by decide

theorem node_5_33 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (33 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_6_33 node_6_1
    _ = (1 : Int) := by decide

theorem node_4_1227 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1227 = (189 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1227 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1227 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1227 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1227 (by decide)
    _ = (190 : Int) - (1 : Int) :=
      sub_congr node_5_1227 node_5_33
    _ = (189 : Int) := by decide

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

theorem node_3_1227 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1227 = (188 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1227 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1227 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1227 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1227 (by decide)
    _ = (189 : Int) - (1 : Int) :=
      sub_congr node_4_1227 node_4_29
    _ = (188 : Int) := by decide

theorem node_3_28 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (28 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_28 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1227 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1227 = (187 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1227 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1227 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1227 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1227 (by decide)
    _ = (188 : Int) - (1 : Int) :=
      sub_congr node_3_1227 node_3_28
    _ = (187 : Int) := by decide

theorem node_1_57688 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 = (7992 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (57688 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 (by decide)
    _ = (8179 : Int) - (187 : Int) :=
      sub_congr node_2_57688 node_2_1227
    _ = (7992 : Int) := by decide

theorem node_8_1088 : count [19, 17, 13, 11, 7, 5, 3, 2] 1088 = (185 : Int) := by
  decide

theorem node_7_1088 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 = (177 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 = count [19, 17, 13, 11, 7, 5, 3, 2] 1088 - count [19, 17, 13, 11, 7, 5, 3, 2] (1088 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1088 (by decide)
    _ = (185 : Int) - (8 : Int) :=
      sub_congr node_8_1088 node_8_47
    _ = (177 : Int) := by decide

theorem node_6_1088 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 = (173 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1088 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 (by decide)
    _ = (177 : Int) - (4 : Int) :=
      sub_congr node_7_1088 node_7_37
    _ = (173 : Int) := by decide

theorem node_6_35 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = (2 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 35 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (35 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 35 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_7_35 node_7_1
    _ = (2 : Int) := by decide

theorem node_5_1088 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 = (171 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1088 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 (by decide)
    _ = (173 : Int) - (2 : Int) :=
      sub_congr node_6_1088 node_6_35
    _ = (171 : Int) := by decide

theorem node_4_1088 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 = (170 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1088 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 (by decide)
    _ = (171 : Int) - (1 : Int) :=
      sub_congr node_5_1088 node_5_29
    _ = (170 : Int) := by decide

theorem node_8_26 : count [19, 17, 13, 11, 7, 5, 3, 2] 26 = (2 : Int) := by
  decide

theorem node_7_26 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = count [19, 17, 13, 11, 7, 5, 3, 2] 26 - count [19, 17, 13, 11, 7, 5, 3, 2] (26 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 26 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_8_26 node_8_1
    _ = (1 : Int) := by decide

theorem node_6_26 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 26 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (26 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 26 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_26 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_26 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (26 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_26 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_26 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (26 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_26 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_1088 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 = (169 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1088 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 (by decide)
    _ = (170 : Int) - (1 : Int) :=
      sub_congr node_4_1088 node_4_26
    _ = (169 : Int) := by decide

theorem node_3_25 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (25 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_25 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1088 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 = (168 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1088 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 (by decide)
    _ = (169 : Int) - (1 : Int) :=
      sub_congr node_3_1088 node_3_25
    _ = (168 : Int) := by decide

theorem node_8_23 : count [19, 17, 13, 11, 7, 5, 3, 2] 23 = (2 : Int) := by
  decide

theorem node_7_23 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = count [19, 17, 13, 11, 7, 5, 3, 2] 23 - count [19, 17, 13, 11, 7, 5, 3, 2] (23 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 23 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_8_23 node_8_1
    _ = (1 : Int) := by decide

theorem node_6_23 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 23 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (23 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 23 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_23 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_23 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (23 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_23 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_23 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (23 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_23 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_23 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (23 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_23 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_23 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (23 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_23 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1088 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 = (167 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1088 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 (by decide)
    _ = (168 : Int) - (1 : Int) :=
      sub_congr node_2_1088 node_2_23
    _ = (167 : Int) := by decide

theorem node_0_57688 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 = (7825 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (57688 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57688 (by decide)
    _ = (7992 : Int) - (167 : Int) :=
      sub_congr node_1_57688 node_1_1088
    _ = (7825 : Int) := by decide

theorem row_46 : count primes 54948 ≤ (7461 : Int) - 15 := by
  rw [show count primes 54948 = (7446 : Int) from node_0_54948]
  decide

theorem row_47 : count primes 57688 ≤ (7840 : Int) - 15 := by
  rw [show count primes 57688 = (7825 : Int) from node_0_57688]
  decide

def pairs : List (Nat × Nat) := [(54948, 7461), (57688, 7840)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl
  · exact row_46
  · exact row_47
end B699CorePrunedSieve.CoreRest10
#check @B699CorePrunedSieve.CoreRest10.pairs_valid
#print axioms B699CorePrunedSieve.CoreRest10.pairs_valid
