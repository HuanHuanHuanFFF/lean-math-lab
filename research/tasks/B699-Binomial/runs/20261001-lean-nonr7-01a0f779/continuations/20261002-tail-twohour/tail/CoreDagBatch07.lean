import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreDagBatch07
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_10666 : count [19, 17, 13, 11, 7, 5, 3, 2] 10666 = (1828 : Int) := by
  decide

theorem node_8_463 : count [19, 17, 13, 11, 7, 5, 3, 2] 463 = (83 : Int) := by
  decide

theorem node_7_10666 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 = (1745 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 = count [19, 17, 13, 11, 7, 5, 3, 2] 10666 - count [19, 17, 13, 11, 7, 5, 3, 2] (10666 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 10666 (by decide)
    _ = (1828 : Int) - (83 : Int) :=
      sub_congr node_8_10666 node_8_463
    _ = (1745 : Int) := by decide

theorem node_8_367 : count [19, 17, 13, 11, 7, 5, 3, 2] 367 = (66 : Int) := by
  decide

theorem node_8_15 : count [19, 17, 13, 11, 7, 5, 3, 2] 15 = (1 : Int) := by
  decide

theorem node_7_367 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 367 = (65 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 367 = count [19, 17, 13, 11, 7, 5, 3, 2] 367 - count [19, 17, 13, 11, 7, 5, 3, 2] (367 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 367 (by decide)
    _ = (66 : Int) - (1 : Int) :=
      sub_congr node_8_367 node_8_15
    _ = (65 : Int) := by decide

theorem node_6_10666 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 = (1680 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (10666 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 (by decide)
    _ = (1745 : Int) - (65 : Int) :=
      sub_congr node_7_10666 node_7_367
    _ = (1680 : Int) := by decide

theorem node_8_344 : count [19, 17, 13, 11, 7, 5, 3, 2] 344 = (61 : Int) := by
  decide

theorem node_8_14 : count [19, 17, 13, 11, 7, 5, 3, 2] 14 = (1 : Int) := by
  decide

theorem node_7_344 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 344 = (60 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 344 = count [19, 17, 13, 11, 7, 5, 3, 2] 344 - count [19, 17, 13, 11, 7, 5, 3, 2] (344 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 344 (by decide)
    _ = (61 : Int) - (1 : Int) :=
      sub_congr node_8_344 node_8_14
    _ = (60 : Int) := by decide

theorem node_8_11 : count [19, 17, 13, 11, 7, 5, 3, 2] 11 = (1 : Int) := by
  decide

theorem node_8_0 : count [19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [19, 17, 13, 11, 7, 5, 3, 2]

theorem node_7_11 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = count [19, 17, 13, 11, 7, 5, 3, 2] 11 - count [19, 17, 13, 11, 7, 5, 3, 2] (11 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 11 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_11 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_344 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 344 = (59 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 344 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 344 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (344 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 344 (by decide)
    _ = (60 : Int) - (1 : Int) :=
      sub_congr node_7_344 node_7_11
    _ = (59 : Int) := by decide

theorem node_5_10666 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 = (1621 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (10666 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 (by decide)
    _ = (1680 : Int) - (59 : Int) :=
      sub_congr node_6_10666 node_6_344
    _ = (1621 : Int) := by decide

theorem node_8_288 : count [19, 17, 13, 11, 7, 5, 3, 2] 288 = (54 : Int) := by
  decide

theorem node_8_12 : count [19, 17, 13, 11, 7, 5, 3, 2] 12 = (1 : Int) := by
  decide

theorem node_7_288 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 288 = (53 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 288 = count [19, 17, 13, 11, 7, 5, 3, 2] 288 - count [19, 17, 13, 11, 7, 5, 3, 2] (288 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 288 (by decide)
    _ = (54 : Int) - (1 : Int) :=
      sub_congr node_8_288 node_8_12
    _ = (53 : Int) := by decide

theorem node_8_9 : count [19, 17, 13, 11, 7, 5, 3, 2] 9 = (1 : Int) := by
  decide

theorem node_7_9 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 9 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 9 = count [19, 17, 13, 11, 7, 5, 3, 2] 9 - count [19, 17, 13, 11, 7, 5, 3, 2] (9 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 9 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_9 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_288 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 288 = (52 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 288 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 288 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (288 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 288 (by decide)
    _ = (53 : Int) - (1 : Int) :=
      sub_congr node_7_288 node_7_9
    _ = (52 : Int) := by decide

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_9 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 9 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (9 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 9 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_9 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_288 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 288 = (51 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 288 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 288 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (288 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 288 (by decide)
    _ = (52 : Int) - (1 : Int) :=
      sub_congr node_6_288 node_6_9
    _ = (51 : Int) := by decide

theorem node_4_10666 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 = (1570 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (10666 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 (by decide)
    _ = (1621 : Int) - (51 : Int) :=
      sub_congr node_5_10666 node_5_288
    _ = (1570 : Int) := by decide

theorem node_8_260 : count [19, 17, 13, 11, 7, 5, 3, 2] 260 = (48 : Int) := by
  decide

theorem node_7_260 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 260 = (47 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 260 = count [19, 17, 13, 11, 7, 5, 3, 2] 260 - count [19, 17, 13, 11, 7, 5, 3, 2] (260 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 260 (by decide)
    _ = (48 : Int) - (1 : Int) :=
      sub_congr node_8_260 node_8_11
    _ = (47 : Int) := by decide

theorem node_8_8 : count [19, 17, 13, 11, 7, 5, 3, 2] 8 = (1 : Int) := by
  decide

theorem node_7_8 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 8 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 8 = count [19, 17, 13, 11, 7, 5, 3, 2] 8 - count [19, 17, 13, 11, 7, 5, 3, 2] (8 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 8 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_8 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_260 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 260 = (46 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 260 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 260 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (260 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 260 (by decide)
    _ = (47 : Int) - (1 : Int) :=
      sub_congr node_7_260 node_7_8
    _ = (46 : Int) := by decide

theorem node_6_8 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 8 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (8 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 8 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_8 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_260 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 260 = (45 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 260 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 260 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (260 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 260 (by decide)
    _ = (46 : Int) - (1 : Int) :=
      sub_congr node_6_260 node_6_8
    _ = (45 : Int) := by decide

theorem node_8_7 : count [19, 17, 13, 11, 7, 5, 3, 2] 7 = (1 : Int) := by
  decide

theorem node_7_7 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 7 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 7 = count [19, 17, 13, 11, 7, 5, 3, 2] 7 - count [19, 17, 13, 11, 7, 5, 3, 2] (7 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 7 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_7 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_7 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 7 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (7 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 7 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_7 node_7_0
    _ = (1 : Int) := by decide

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_7 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (7 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_7 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_260 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 260 = (44 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 260 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 260 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (260 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 260 (by decide)
    _ = (45 : Int) - (1 : Int) :=
      sub_congr node_5_260 node_5_7
    _ = (44 : Int) := by decide

theorem node_3_10666 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 = (1526 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (10666 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 (by decide)
    _ = (1570 : Int) - (44 : Int) :=
      sub_congr node_4_10666 node_4_260
    _ = (1526 : Int) := by decide

theorem node_8_248 : count [19, 17, 13, 11, 7, 5, 3, 2] 248 = (46 : Int) := by
  decide

theorem node_8_10 : count [19, 17, 13, 11, 7, 5, 3, 2] 10 = (1 : Int) := by
  decide

theorem node_7_248 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 248 = (45 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 248 = count [19, 17, 13, 11, 7, 5, 3, 2] 248 - count [19, 17, 13, 11, 7, 5, 3, 2] (248 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 248 (by decide)
    _ = (46 : Int) - (1 : Int) :=
      sub_congr node_8_248 node_8_10
    _ = (45 : Int) := by decide

theorem node_6_248 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 248 = (44 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 248 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 248 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (248 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 248 (by decide)
    _ = (45 : Int) - (1 : Int) :=
      sub_congr node_7_248 node_7_8
    _ = (44 : Int) := by decide

theorem node_5_248 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 248 = (43 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 248 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 248 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (248 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 248 (by decide)
    _ = (44 : Int) - (1 : Int) :=
      sub_congr node_6_248 node_6_8
    _ = (43 : Int) := by decide

theorem node_8_6 : count [19, 17, 13, 11, 7, 5, 3, 2] 6 = (1 : Int) := by
  decide

theorem node_7_6 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 6 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 6 = count [19, 17, 13, 11, 7, 5, 3, 2] 6 - count [19, 17, 13, 11, 7, 5, 3, 2] (6 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 6 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_6 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_6 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 6 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (6 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 6 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_6 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_6 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (6 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_6 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_248 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 248 = (42 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 248 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 248 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (248 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 248 (by decide)
    _ = (43 : Int) - (1 : Int) :=
      sub_congr node_5_248 node_5_6
    _ = (42 : Int) := by decide

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_6 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (6 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_6 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_248 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 248 = (41 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 248 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 248 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (248 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 248 (by decide)
    _ = (42 : Int) - (1 : Int) :=
      sub_congr node_4_248 node_4_6
    _ = (41 : Int) := by decide

theorem node_2_10666 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 = (1485 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (10666 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 (by decide)
    _ = (1526 : Int) - (41 : Int) :=
      sub_congr node_3_10666 node_3_248
    _ = (1485 : Int) := by decide

theorem node_8_226 : count [19, 17, 13, 11, 7, 5, 3, 2] 226 = (41 : Int) := by
  decide

theorem node_7_226 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 226 = (40 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 226 = count [19, 17, 13, 11, 7, 5, 3, 2] 226 - count [19, 17, 13, 11, 7, 5, 3, 2] (226 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 226 (by decide)
    _ = (41 : Int) - (1 : Int) :=
      sub_congr node_8_226 node_8_9
    _ = (40 : Int) := by decide

theorem node_6_226 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 226 = (39 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 226 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 226 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (226 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 226 (by decide)
    _ = (40 : Int) - (1 : Int) :=
      sub_congr node_7_226 node_7_7
    _ = (39 : Int) := by decide

theorem node_5_226 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 226 = (38 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 226 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 226 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (226 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 226 (by decide)
    _ = (39 : Int) - (1 : Int) :=
      sub_congr node_6_226 node_6_7
    _ = (38 : Int) := by decide

theorem node_4_226 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 226 = (37 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 226 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 226 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (226 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 226 (by decide)
    _ = (38 : Int) - (1 : Int) :=
      sub_congr node_5_226 node_5_6
    _ = (37 : Int) := by decide

theorem node_8_5 : count [19, 17, 13, 11, 7, 5, 3, 2] 5 = (1 : Int) := by
  decide

theorem node_7_5 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 5 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 5 = count [19, 17, 13, 11, 7, 5, 3, 2] 5 - count [19, 17, 13, 11, 7, 5, 3, 2] (5 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 5 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_5 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_5 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 5 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (5 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 5 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_5 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_5 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (5 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_5 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_5 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (5 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_5 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_226 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 226 = (36 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 226 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 226 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (226 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 226 (by decide)
    _ = (37 : Int) - (1 : Int) :=
      sub_congr node_4_226 node_4_5
    _ = (36 : Int) := by decide

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_5 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (5 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_5 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_226 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 226 = (35 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 226 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 226 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (226 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 226 (by decide)
    _ = (36 : Int) - (1 : Int) :=
      sub_congr node_3_226 node_3_5
    _ = (35 : Int) := by decide

theorem node_1_10666 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 = (1450 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (10666 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 (by decide)
    _ = (1485 : Int) - (35 : Int) :=
      sub_congr node_2_10666 node_2_226
    _ = (1450 : Int) := by decide

theorem node_8_201 : count [19, 17, 13, 11, 7, 5, 3, 2] 201 = (39 : Int) := by
  decide

theorem node_7_201 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 201 = (38 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 201 = count [19, 17, 13, 11, 7, 5, 3, 2] 201 - count [19, 17, 13, 11, 7, 5, 3, 2] (201 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 201 (by decide)
    _ = (39 : Int) - (1 : Int) :=
      sub_congr node_8_201 node_8_8
    _ = (38 : Int) := by decide

theorem node_6_201 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 201 = (37 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 201 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 201 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (201 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 201 (by decide)
    _ = (38 : Int) - (1 : Int) :=
      sub_congr node_7_201 node_7_6
    _ = (37 : Int) := by decide

theorem node_5_201 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 201 = (36 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 201 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 201 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (201 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 201 (by decide)
    _ = (37 : Int) - (1 : Int) :=
      sub_congr node_6_201 node_6_6
    _ = (36 : Int) := by decide

theorem node_4_201 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 201 = (35 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 201 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 201 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (201 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 201 (by decide)
    _ = (36 : Int) - (1 : Int) :=
      sub_congr node_5_201 node_5_5
    _ = (35 : Int) := by decide

theorem node_8_4 : count [19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  decide

theorem node_7_4 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4 = count [19, 17, 13, 11, 7, 5, 3, 2] 4 - count [19, 17, 13, 11, 7, 5, 3, 2] (4 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_4 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_4 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (4 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 4 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_4 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_4 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (4 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_4 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_4 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (4 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_4 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_201 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 201 = (34 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 201 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 201 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (201 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 201 (by decide)
    _ = (35 : Int) - (1 : Int) :=
      sub_congr node_4_201 node_4_4
    _ = (34 : Int) := by decide

theorem node_3_4 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (4 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_4 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_201 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 201 = (33 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 201 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 201 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (201 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 201 (by decide)
    _ = (34 : Int) - (1 : Int) :=
      sub_congr node_3_201 node_3_4
    _ = (33 : Int) := by decide

theorem node_3_0 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_2_4 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (4 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_4 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_201 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 201 = (32 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 201 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 201 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (201 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 201 (by decide)
    _ = (33 : Int) - (1 : Int) :=
      sub_congr node_2_201 node_2_4
    _ = (32 : Int) := by decide

theorem node_0_10666 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 = (1418 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (10666 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10666 (by decide)
    _ = (1450 : Int) - (32 : Int) :=
      sub_congr node_1_10666 node_1_201
    _ = (1418 : Int) := by decide

theorem node_8_12210 : count [19, 17, 13, 11, 7, 5, 3, 2] 12210 = (2091 : Int) := by
  decide

theorem node_8_530 : count [19, 17, 13, 11, 7, 5, 3, 2] 530 = (93 : Int) := by
  decide

theorem node_7_12210 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 = (1998 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 = count [19, 17, 13, 11, 7, 5, 3, 2] 12210 - count [19, 17, 13, 11, 7, 5, 3, 2] (12210 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 12210 (by decide)
    _ = (2091 : Int) - (93 : Int) :=
      sub_congr node_8_12210 node_8_530
    _ = (1998 : Int) := by decide

theorem node_8_421 : count [19, 17, 13, 11, 7, 5, 3, 2] 421 = (75 : Int) := by
  decide

theorem node_8_18 : count [19, 17, 13, 11, 7, 5, 3, 2] 18 = (1 : Int) := by
  decide

theorem node_7_421 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 421 = (74 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 421 = count [19, 17, 13, 11, 7, 5, 3, 2] 421 - count [19, 17, 13, 11, 7, 5, 3, 2] (421 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 421 (by decide)
    _ = (75 : Int) - (1 : Int) :=
      sub_congr node_8_421 node_8_18
    _ = (74 : Int) := by decide

theorem node_6_12210 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 = (1924 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (12210 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 (by decide)
    _ = (1998 : Int) - (74 : Int) :=
      sub_congr node_7_12210 node_7_421
    _ = (1924 : Int) := by decide

theorem node_8_393 : count [19, 17, 13, 11, 7, 5, 3, 2] 393 = (70 : Int) := by
  decide

theorem node_8_17 : count [19, 17, 13, 11, 7, 5, 3, 2] 17 = (1 : Int) := by
  decide

theorem node_7_393 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 393 = (69 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 393 = count [19, 17, 13, 11, 7, 5, 3, 2] 393 - count [19, 17, 13, 11, 7, 5, 3, 2] (393 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 393 (by decide)
    _ = (70 : Int) - (1 : Int) :=
      sub_congr node_8_393 node_8_17
    _ = (69 : Int) := by decide

theorem node_8_13 : count [19, 17, 13, 11, 7, 5, 3, 2] 13 = (1 : Int) := by
  decide

theorem node_7_13 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = count [19, 17, 13, 11, 7, 5, 3, 2] 13 - count [19, 17, 13, 11, 7, 5, 3, 2] (13 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 13 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_13 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_393 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 393 = (68 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 393 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 393 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (393 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 393 (by decide)
    _ = (69 : Int) - (1 : Int) :=
      sub_congr node_7_393 node_7_13
    _ = (68 : Int) := by decide

theorem node_5_12210 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 = (1856 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (12210 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 (by decide)
    _ = (1924 : Int) - (68 : Int) :=
      sub_congr node_6_12210 node_6_393
    _ = (1856 : Int) := by decide

theorem node_8_330 : count [19, 17, 13, 11, 7, 5, 3, 2] 330 = (59 : Int) := by
  decide

theorem node_7_330 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 330 = (58 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 330 = count [19, 17, 13, 11, 7, 5, 3, 2] 330 - count [19, 17, 13, 11, 7, 5, 3, 2] (330 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 330 (by decide)
    _ = (59 : Int) - (1 : Int) :=
      sub_congr node_8_330 node_8_14
    _ = (58 : Int) := by decide

theorem node_6_330 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 330 = (57 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 330 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 330 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (330 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 330 (by decide)
    _ = (58 : Int) - (1 : Int) :=
      sub_congr node_7_330 node_7_11
    _ = (57 : Int) := by decide

theorem node_7_10 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 10 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 10 = count [19, 17, 13, 11, 7, 5, 3, 2] 10 - count [19, 17, 13, 11, 7, 5, 3, 2] (10 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 10 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_10 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_10 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 10 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (10 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 10 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_10 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_330 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 330 = (56 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 330 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 330 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (330 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 330 (by decide)
    _ = (57 : Int) - (1 : Int) :=
      sub_congr node_6_330 node_6_10
    _ = (56 : Int) := by decide

theorem node_4_12210 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 = (1800 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (12210 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 (by decide)
    _ = (1856 : Int) - (56 : Int) :=
      sub_congr node_5_12210 node_5_330
    _ = (1800 : Int) := by decide

theorem node_8_297 : count [19, 17, 13, 11, 7, 5, 3, 2] 297 = (55 : Int) := by
  decide

theorem node_7_297 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 297 = (54 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 297 = count [19, 17, 13, 11, 7, 5, 3, 2] 297 - count [19, 17, 13, 11, 7, 5, 3, 2] (297 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 297 (by decide)
    _ = (55 : Int) - (1 : Int) :=
      sub_congr node_8_297 node_8_12
    _ = (54 : Int) := by decide

theorem node_6_297 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 297 = (53 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 297 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 297 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (297 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 297 (by decide)
    _ = (54 : Int) - (1 : Int) :=
      sub_congr node_7_297 node_7_10
    _ = (53 : Int) := by decide

theorem node_5_297 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 297 = (52 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 297 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 297 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (297 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 297 (by decide)
    _ = (53 : Int) - (1 : Int) :=
      sub_congr node_6_297 node_6_9
    _ = (52 : Int) := by decide

theorem node_5_8 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (8 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_8 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_297 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 297 = (51 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 297 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 297 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (297 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 297 (by decide)
    _ = (52 : Int) - (1 : Int) :=
      sub_congr node_5_297 node_5_8
    _ = (51 : Int) := by decide

theorem node_3_12210 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 = (1749 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (12210 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 (by decide)
    _ = (1800 : Int) - (51 : Int) :=
      sub_congr node_4_12210 node_4_297
    _ = (1749 : Int) := by decide

theorem node_8_283 : count [19, 17, 13, 11, 7, 5, 3, 2] 283 = (54 : Int) := by
  decide

theorem node_7_283 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 283 = (53 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 283 = count [19, 17, 13, 11, 7, 5, 3, 2] 283 - count [19, 17, 13, 11, 7, 5, 3, 2] (283 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 283 (by decide)
    _ = (54 : Int) - (1 : Int) :=
      sub_congr node_8_283 node_8_12
    _ = (53 : Int) := by decide

theorem node_6_283 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 283 = (52 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 283 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 283 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (283 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 283 (by decide)
    _ = (53 : Int) - (1 : Int) :=
      sub_congr node_7_283 node_7_9
    _ = (52 : Int) := by decide

theorem node_5_283 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 283 = (51 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 283 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 283 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (283 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 283 (by decide)
    _ = (52 : Int) - (1 : Int) :=
      sub_congr node_6_283 node_6_9
    _ = (51 : Int) := by decide

theorem node_4_283 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 283 = (50 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 283 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 283 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (283 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 283 (by decide)
    _ = (51 : Int) - (1 : Int) :=
      sub_congr node_5_283 node_5_7
    _ = (50 : Int) := by decide

theorem node_3_283 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 283 = (49 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 283 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 283 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (283 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 283 (by decide)
    _ = (50 : Int) - (1 : Int) :=
      sub_congr node_4_283 node_4_6
    _ = (49 : Int) := by decide

theorem node_2_12210 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 = (1700 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (12210 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 (by decide)
    _ = (1749 : Int) - (49 : Int) :=
      sub_congr node_3_12210 node_3_283
    _ = (1700 : Int) := by decide

theorem node_8_259 : count [19, 17, 13, 11, 7, 5, 3, 2] 259 = (48 : Int) := by
  decide

theorem node_7_259 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 259 = (47 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 259 = count [19, 17, 13, 11, 7, 5, 3, 2] 259 - count [19, 17, 13, 11, 7, 5, 3, 2] (259 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 259 (by decide)
    _ = (48 : Int) - (1 : Int) :=
      sub_congr node_8_259 node_8_11
    _ = (47 : Int) := by decide

theorem node_6_259 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 259 = (46 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 259 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 259 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (259 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 259 (by decide)
    _ = (47 : Int) - (1 : Int) :=
      sub_congr node_7_259 node_7_8
    _ = (46 : Int) := by decide

theorem node_5_259 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 259 = (45 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 259 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 259 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (259 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 259 (by decide)
    _ = (46 : Int) - (1 : Int) :=
      sub_congr node_6_259 node_6_8
    _ = (45 : Int) := by decide

theorem node_4_259 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 259 = (44 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 259 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 259 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (259 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 259 (by decide)
    _ = (45 : Int) - (1 : Int) :=
      sub_congr node_5_259 node_5_7
    _ = (44 : Int) := by decide

theorem node_3_259 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 259 = (43 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 259 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 259 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (259 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 259 (by decide)
    _ = (44 : Int) - (1 : Int) :=
      sub_congr node_4_259 node_4_6
    _ = (43 : Int) := by decide

theorem node_3_6 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (6 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_6 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_259 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 259 = (42 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 259 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 259 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (259 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 259 (by decide)
    _ = (43 : Int) - (1 : Int) :=
      sub_congr node_3_259 node_3_6
    _ = (42 : Int) := by decide

theorem node_1_12210 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 = (1658 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (12210 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 (by decide)
    _ = (1700 : Int) - (42 : Int) :=
      sub_congr node_2_12210 node_2_259
    _ = (1658 : Int) := by decide

theorem node_8_230 : count [19, 17, 13, 11, 7, 5, 3, 2] 230 = (43 : Int) := by
  decide

theorem node_7_230 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 230 = (42 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 230 = count [19, 17, 13, 11, 7, 5, 3, 2] 230 - count [19, 17, 13, 11, 7, 5, 3, 2] (230 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 230 (by decide)
    _ = (43 : Int) - (1 : Int) :=
      sub_congr node_8_230 node_8_10
    _ = (42 : Int) := by decide

theorem node_6_230 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 230 = (41 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 230 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 230 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (230 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 230 (by decide)
    _ = (42 : Int) - (1 : Int) :=
      sub_congr node_7_230 node_7_7
    _ = (41 : Int) := by decide

theorem node_5_230 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 230 = (40 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 230 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 230 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (230 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 230 (by decide)
    _ = (41 : Int) - (1 : Int) :=
      sub_congr node_6_230 node_6_7
    _ = (40 : Int) := by decide

theorem node_4_230 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 230 = (39 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 230 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 230 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (230 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 230 (by decide)
    _ = (40 : Int) - (1 : Int) :=
      sub_congr node_5_230 node_5_6
    _ = (39 : Int) := by decide

theorem node_3_230 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 230 = (38 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 230 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 230 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (230 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 230 (by decide)
    _ = (39 : Int) - (1 : Int) :=
      sub_congr node_4_230 node_4_5
    _ = (38 : Int) := by decide

theorem node_2_230 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 230 = (37 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 230 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 230 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (230 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 230 (by decide)
    _ = (38 : Int) - (1 : Int) :=
      sub_congr node_3_230 node_3_5
    _ = (37 : Int) := by decide

theorem node_1_230 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 230 = (36 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 230 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 230 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (230 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 230 (by decide)
    _ = (37 : Int) - (1 : Int) :=
      sub_congr node_2_230 node_2_4
    _ = (36 : Int) := by decide

theorem node_0_12210 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 = (1622 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (12210 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12210 (by decide)
    _ = (1658 : Int) - (36 : Int) :=
      sub_congr node_1_12210 node_1_230
    _ = (1622 : Int) := by decide

theorem node_8_13968 : count [19, 17, 13, 11, 7, 5, 3, 2] 13968 = (2392 : Int) := by
  decide

theorem node_8_607 : count [19, 17, 13, 11, 7, 5, 3, 2] 607 = (105 : Int) := by
  decide

theorem node_7_13968 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 = (2287 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 = count [19, 17, 13, 11, 7, 5, 3, 2] 13968 - count [19, 17, 13, 11, 7, 5, 3, 2] (13968 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 13968 (by decide)
    _ = (2392 : Int) - (105 : Int) :=
      sub_congr node_8_13968 node_8_607
    _ = (2287 : Int) := by decide

theorem node_8_481 : count [19, 17, 13, 11, 7, 5, 3, 2] 481 = (85 : Int) := by
  decide

theorem node_8_20 : count [19, 17, 13, 11, 7, 5, 3, 2] 20 = (1 : Int) := by
  decide

theorem node_7_481 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 481 = (84 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 481 = count [19, 17, 13, 11, 7, 5, 3, 2] 481 - count [19, 17, 13, 11, 7, 5, 3, 2] (481 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 481 (by decide)
    _ = (85 : Int) - (1 : Int) :=
      sub_congr node_8_481 node_8_20
    _ = (84 : Int) := by decide

theorem node_6_13968 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 = (2203 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (13968 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 (by decide)
    _ = (2287 : Int) - (84 : Int) :=
      sub_congr node_7_13968 node_7_481
    _ = (2203 : Int) := by decide

theorem node_8_450 : count [19, 17, 13, 11, 7, 5, 3, 2] 450 = (80 : Int) := by
  decide

theorem node_8_19 : count [19, 17, 13, 11, 7, 5, 3, 2] 19 = (1 : Int) := by
  decide

theorem node_7_450 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 450 = (79 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 450 = count [19, 17, 13, 11, 7, 5, 3, 2] 450 - count [19, 17, 13, 11, 7, 5, 3, 2] (450 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 450 (by decide)
    _ = (80 : Int) - (1 : Int) :=
      sub_congr node_8_450 node_8_19
    _ = (79 : Int) := by decide

theorem node_7_15 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 15 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 15 = count [19, 17, 13, 11, 7, 5, 3, 2] 15 - count [19, 17, 13, 11, 7, 5, 3, 2] (15 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 15 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_15 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_450 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 450 = (78 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 450 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 450 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (450 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 450 (by decide)
    _ = (79 : Int) - (1 : Int) :=
      sub_congr node_7_450 node_7_15
    _ = (78 : Int) := by decide

theorem node_5_13968 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 = (2125 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (13968 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 (by decide)
    _ = (2203 : Int) - (78 : Int) :=
      sub_congr node_6_13968 node_6_450
    _ = (2125 : Int) := by decide

theorem node_8_377 : count [19, 17, 13, 11, 7, 5, 3, 2] 377 = (67 : Int) := by
  decide

theorem node_8_16 : count [19, 17, 13, 11, 7, 5, 3, 2] 16 = (1 : Int) := by
  decide

theorem node_7_377 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 377 = (66 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 377 = count [19, 17, 13, 11, 7, 5, 3, 2] 377 - count [19, 17, 13, 11, 7, 5, 3, 2] (377 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 377 (by decide)
    _ = (67 : Int) - (1 : Int) :=
      sub_congr node_8_377 node_8_16
    _ = (66 : Int) := by decide

theorem node_6_377 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 377 = (65 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 377 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 377 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (377 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 377 (by decide)
    _ = (66 : Int) - (1 : Int) :=
      sub_congr node_7_377 node_7_13
    _ = (65 : Int) := by decide

theorem node_7_12 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 12 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 12 = count [19, 17, 13, 11, 7, 5, 3, 2] 12 - count [19, 17, 13, 11, 7, 5, 3, 2] (12 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 12 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_12 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_12 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 12 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (12 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 12 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_12 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_377 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 377 = (64 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 377 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 377 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (377 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 377 (by decide)
    _ = (65 : Int) - (1 : Int) :=
      sub_congr node_6_377 node_6_12
    _ = (64 : Int) := by decide

theorem node_4_13968 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 = (2061 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (13968 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 (by decide)
    _ = (2125 : Int) - (64 : Int) :=
      sub_congr node_5_13968 node_5_377
    _ = (2061 : Int) := by decide

theorem node_8_340 : count [19, 17, 13, 11, 7, 5, 3, 2] 340 = (61 : Int) := by
  decide

theorem node_7_340 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 340 = (60 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 340 = count [19, 17, 13, 11, 7, 5, 3, 2] 340 - count [19, 17, 13, 11, 7, 5, 3, 2] (340 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 340 (by decide)
    _ = (61 : Int) - (1 : Int) :=
      sub_congr node_8_340 node_8_14
    _ = (60 : Int) := by decide

theorem node_6_340 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 340 = (59 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 340 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 340 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (340 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 340 (by decide)
    _ = (60 : Int) - (1 : Int) :=
      sub_congr node_7_340 node_7_11
    _ = (59 : Int) := by decide

theorem node_5_340 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 340 = (58 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 340 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 340 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (340 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 340 (by decide)
    _ = (59 : Int) - (1 : Int) :=
      sub_congr node_6_340 node_6_10
    _ = (58 : Int) := by decide

theorem node_5_9 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (9 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_9 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_340 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 340 = (57 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 340 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 340 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (340 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 340 (by decide)
    _ = (58 : Int) - (1 : Int) :=
      sub_congr node_5_340 node_5_9
    _ = (57 : Int) := by decide

theorem node_3_13968 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 = (2004 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (13968 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 (by decide)
    _ = (2061 : Int) - (57 : Int) :=
      sub_congr node_4_13968 node_4_340
    _ = (2004 : Int) := by decide

theorem node_8_324 : count [19, 17, 13, 11, 7, 5, 3, 2] 324 = (59 : Int) := by
  decide

theorem node_7_324 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 324 = (58 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 324 = count [19, 17, 13, 11, 7, 5, 3, 2] 324 - count [19, 17, 13, 11, 7, 5, 3, 2] (324 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 324 (by decide)
    _ = (59 : Int) - (1 : Int) :=
      sub_congr node_8_324 node_8_14
    _ = (58 : Int) := by decide

theorem node_6_324 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 324 = (57 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 324 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 324 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (324 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 324 (by decide)
    _ = (58 : Int) - (1 : Int) :=
      sub_congr node_7_324 node_7_11
    _ = (57 : Int) := by decide

theorem node_5_324 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 324 = (56 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 324 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 324 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (324 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 324 (by decide)
    _ = (57 : Int) - (1 : Int) :=
      sub_congr node_6_324 node_6_10
    _ = (56 : Int) := by decide

theorem node_4_324 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 324 = (55 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 324 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 324 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (324 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 324 (by decide)
    _ = (56 : Int) - (1 : Int) :=
      sub_congr node_5_324 node_5_8
    _ = (55 : Int) := by decide

theorem node_4_7 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (7 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_7 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_324 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 324 = (54 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 324 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 324 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (324 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 324 (by decide)
    _ = (55 : Int) - (1 : Int) :=
      sub_congr node_4_324 node_4_7
    _ = (54 : Int) := by decide

theorem node_2_13968 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 = (1950 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (13968 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 (by decide)
    _ = (2004 : Int) - (54 : Int) :=
      sub_congr node_3_13968 node_3_324
    _ = (1950 : Int) := by decide

theorem node_3_297 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 297 = (50 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 297 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 297 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (297 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 297 (by decide)
    _ = (51 : Int) - (1 : Int) :=
      sub_congr node_4_297 node_4_7
    _ = (50 : Int) := by decide

theorem node_2_297 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 297 = (49 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 297 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 297 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (297 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 297 (by decide)
    _ = (50 : Int) - (1 : Int) :=
      sub_congr node_3_297 node_3_6
    _ = (49 : Int) := by decide

theorem node_1_13968 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 = (1901 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (13968 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 (by decide)
    _ = (1950 : Int) - (49 : Int) :=
      sub_congr node_2_13968 node_2_297
    _ = (1901 : Int) := by decide

theorem node_8_263 : count [19, 17, 13, 11, 7, 5, 3, 2] 263 = (49 : Int) := by
  decide

theorem node_7_263 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 263 = (48 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 263 = count [19, 17, 13, 11, 7, 5, 3, 2] 263 - count [19, 17, 13, 11, 7, 5, 3, 2] (263 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 263 (by decide)
    _ = (49 : Int) - (1 : Int) :=
      sub_congr node_8_263 node_8_11
    _ = (48 : Int) := by decide

theorem node_6_263 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 263 = (47 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 263 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 263 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (263 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 263 (by decide)
    _ = (48 : Int) - (1 : Int) :=
      sub_congr node_7_263 node_7_9
    _ = (47 : Int) := by decide

theorem node_5_263 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 263 = (46 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 263 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 263 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (263 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 263 (by decide)
    _ = (47 : Int) - (1 : Int) :=
      sub_congr node_6_263 node_6_8
    _ = (46 : Int) := by decide

theorem node_4_263 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 263 = (45 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 263 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 263 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (263 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 263 (by decide)
    _ = (46 : Int) - (1 : Int) :=
      sub_congr node_5_263 node_5_7
    _ = (45 : Int) := by decide

theorem node_3_263 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 263 = (44 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 263 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 263 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (263 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 263 (by decide)
    _ = (45 : Int) - (1 : Int) :=
      sub_congr node_4_263 node_4_6
    _ = (44 : Int) := by decide

theorem node_2_263 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 263 = (43 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 263 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 263 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (263 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 263 (by decide)
    _ = (44 : Int) - (1 : Int) :=
      sub_congr node_3_263 node_3_6
    _ = (43 : Int) := by decide

theorem node_2_5 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (5 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_5 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_263 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 263 = (42 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 263 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 263 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (263 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 263 (by decide)
    _ = (43 : Int) - (1 : Int) :=
      sub_congr node_2_263 node_2_5
    _ = (42 : Int) := by decide

theorem node_0_13968 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 = (1859 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (13968 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13968 (by decide)
    _ = (1901 : Int) - (42 : Int) :=
      sub_congr node_1_13968 node_1_263
    _ = (1859 : Int) := by decide

theorem node_8_15942 : count [19, 17, 13, 11, 7, 5, 3, 2] 15942 = (2731 : Int) := by
  decide

theorem node_8_693 : count [19, 17, 13, 11, 7, 5, 3, 2] 693 = (120 : Int) := by
  decide

theorem node_7_15942 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 = (2611 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 = count [19, 17, 13, 11, 7, 5, 3, 2] 15942 - count [19, 17, 13, 11, 7, 5, 3, 2] (15942 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 15942 (by decide)
    _ = (2731 : Int) - (120 : Int) :=
      sub_congr node_8_15942 node_8_693
    _ = (2611 : Int) := by decide

theorem node_8_549 : count [19, 17, 13, 11, 7, 5, 3, 2] 549 = (95 : Int) := by
  decide

theorem node_8_23 : count [19, 17, 13, 11, 7, 5, 3, 2] 23 = (2 : Int) := by
  decide

theorem node_7_549 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 549 = (93 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 549 = count [19, 17, 13, 11, 7, 5, 3, 2] 549 - count [19, 17, 13, 11, 7, 5, 3, 2] (549 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 549 (by decide)
    _ = (95 : Int) - (2 : Int) :=
      sub_congr node_8_549 node_8_23
    _ = (93 : Int) := by decide

theorem node_6_15942 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 = (2518 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (15942 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 (by decide)
    _ = (2611 : Int) - (93 : Int) :=
      sub_congr node_7_15942 node_7_549
    _ = (2518 : Int) := by decide

theorem node_8_514 : count [19, 17, 13, 11, 7, 5, 3, 2] 514 = (90 : Int) := by
  decide

theorem node_8_22 : count [19, 17, 13, 11, 7, 5, 3, 2] 22 = (1 : Int) := by
  decide

theorem node_7_514 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 514 = (89 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 514 = count [19, 17, 13, 11, 7, 5, 3, 2] 514 - count [19, 17, 13, 11, 7, 5, 3, 2] (514 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 514 (by decide)
    _ = (90 : Int) - (1 : Int) :=
      sub_congr node_8_514 node_8_22
    _ = (89 : Int) := by decide

theorem node_7_17 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 17 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 17 = count [19, 17, 13, 11, 7, 5, 3, 2] 17 - count [19, 17, 13, 11, 7, 5, 3, 2] (17 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 17 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_17 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_514 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 514 = (88 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 514 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 514 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (514 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 514 (by decide)
    _ = (89 : Int) - (1 : Int) :=
      sub_congr node_7_514 node_7_17
    _ = (88 : Int) := by decide

theorem node_5_15942 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 = (2430 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (15942 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 (by decide)
    _ = (2518 : Int) - (88 : Int) :=
      sub_congr node_6_15942 node_6_514
    _ = (2430 : Int) := by decide

theorem node_8_430 : count [19, 17, 13, 11, 7, 5, 3, 2] 430 = (75 : Int) := by
  decide

theorem node_7_430 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 430 = (74 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 430 = count [19, 17, 13, 11, 7, 5, 3, 2] 430 - count [19, 17, 13, 11, 7, 5, 3, 2] (430 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 430 (by decide)
    _ = (75 : Int) - (1 : Int) :=
      sub_congr node_8_430 node_8_18
    _ = (74 : Int) := by decide

theorem node_7_14 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = count [19, 17, 13, 11, 7, 5, 3, 2] 14 - count [19, 17, 13, 11, 7, 5, 3, 2] (14 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 14 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_14 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_430 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 430 = (73 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 430 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 430 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (430 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 430 (by decide)
    _ = (74 : Int) - (1 : Int) :=
      sub_congr node_7_430 node_7_14
    _ = (73 : Int) := by decide

theorem node_6_13 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 13 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (13 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 13 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_13 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_430 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 430 = (72 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 430 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 430 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (430 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 430 (by decide)
    _ = (73 : Int) - (1 : Int) :=
      sub_congr node_6_430 node_6_13
    _ = (72 : Int) := by decide

theorem node_4_15942 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 = (2358 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (15942 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 (by decide)
    _ = (2430 : Int) - (72 : Int) :=
      sub_congr node_5_15942 node_5_430
    _ = (2358 : Int) := by decide

theorem node_8_388 : count [19, 17, 13, 11, 7, 5, 3, 2] 388 = (69 : Int) := by
  decide

theorem node_7_388 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 388 = (68 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 388 = count [19, 17, 13, 11, 7, 5, 3, 2] 388 - count [19, 17, 13, 11, 7, 5, 3, 2] (388 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 388 (by decide)
    _ = (69 : Int) - (1 : Int) :=
      sub_congr node_8_388 node_8_16
    _ = (68 : Int) := by decide

theorem node_6_388 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 388 = (67 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 388 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 388 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (388 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 388 (by decide)
    _ = (68 : Int) - (1 : Int) :=
      sub_congr node_7_388 node_7_13
    _ = (67 : Int) := by decide

theorem node_5_388 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 388 = (66 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 388 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 388 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (388 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 388 (by decide)
    _ = (67 : Int) - (1 : Int) :=
      sub_congr node_6_388 node_6_12
    _ = (66 : Int) := by decide

theorem node_5_10 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (10 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_10 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_388 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 388 = (65 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 388 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 388 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (388 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 388 (by decide)
    _ = (66 : Int) - (1 : Int) :=
      sub_congr node_5_388 node_5_10
    _ = (65 : Int) := by decide

theorem node_3_15942 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 = (2293 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (15942 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 (by decide)
    _ = (2358 : Int) - (65 : Int) :=
      sub_congr node_4_15942 node_4_388
    _ = (2293 : Int) := by decide

theorem node_8_370 : count [19, 17, 13, 11, 7, 5, 3, 2] 370 = (66 : Int) := by
  decide

theorem node_7_370 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 370 = (65 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 370 = count [19, 17, 13, 11, 7, 5, 3, 2] 370 - count [19, 17, 13, 11, 7, 5, 3, 2] (370 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 370 (by decide)
    _ = (66 : Int) - (1 : Int) :=
      sub_congr node_8_370 node_8_16
    _ = (65 : Int) := by decide

theorem node_6_370 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 370 = (64 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 370 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 370 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (370 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 370 (by decide)
    _ = (65 : Int) - (1 : Int) :=
      sub_congr node_7_370 node_7_12
    _ = (64 : Int) := by decide

theorem node_6_11 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 11 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (11 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 11 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_11 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_370 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 370 = (63 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 370 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 370 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (370 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 370 (by decide)
    _ = (64 : Int) - (1 : Int) :=
      sub_congr node_6_370 node_6_11
    _ = (63 : Int) := by decide

theorem node_4_370 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 370 = (62 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 370 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 370 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (370 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 370 (by decide)
    _ = (63 : Int) - (1 : Int) :=
      sub_congr node_5_370 node_5_10
    _ = (62 : Int) := by decide

theorem node_4_9 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (9 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_9 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_370 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 370 = (61 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 370 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 370 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (370 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 370 (by decide)
    _ = (62 : Int) - (1 : Int) :=
      sub_congr node_4_370 node_4_9
    _ = (61 : Int) := by decide

theorem node_2_15942 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 = (2232 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (15942 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 (by decide)
    _ = (2293 : Int) - (61 : Int) :=
      sub_congr node_3_15942 node_3_370
    _ = (2232 : Int) := by decide

theorem node_8_339 : count [19, 17, 13, 11, 7, 5, 3, 2] 339 = (61 : Int) := by
  decide

theorem node_7_339 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 339 = (60 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 339 = count [19, 17, 13, 11, 7, 5, 3, 2] 339 - count [19, 17, 13, 11, 7, 5, 3, 2] (339 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 339 (by decide)
    _ = (61 : Int) - (1 : Int) :=
      sub_congr node_8_339 node_8_14
    _ = (60 : Int) := by decide

theorem node_6_339 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 339 = (59 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 339 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 339 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (339 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 339 (by decide)
    _ = (60 : Int) - (1 : Int) :=
      sub_congr node_7_339 node_7_11
    _ = (59 : Int) := by decide

theorem node_5_339 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 339 = (58 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 339 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 339 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (339 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 339 (by decide)
    _ = (59 : Int) - (1 : Int) :=
      sub_congr node_6_339 node_6_10
    _ = (58 : Int) := by decide

theorem node_4_339 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 339 = (57 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 339 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 339 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (339 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 339 (by decide)
    _ = (58 : Int) - (1 : Int) :=
      sub_congr node_5_339 node_5_9
    _ = (57 : Int) := by decide

theorem node_4_8 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (8 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_8 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_339 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 339 = (56 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 339 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 339 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (339 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 339 (by decide)
    _ = (57 : Int) - (1 : Int) :=
      sub_congr node_4_339 node_4_8
    _ = (56 : Int) := by decide

theorem node_3_7 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (7 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_7 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_339 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 339 = (55 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 339 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 339 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (339 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 339 (by decide)
    _ = (56 : Int) - (1 : Int) :=
      sub_congr node_3_339 node_3_7
    _ = (55 : Int) := by decide

theorem node_1_15942 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 = (2177 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (15942 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 (by decide)
    _ = (2232 : Int) - (55 : Int) :=
      sub_congr node_2_15942 node_2_339
    _ = (2177 : Int) := by decide

theorem node_8_300 : count [19, 17, 13, 11, 7, 5, 3, 2] 300 = (55 : Int) := by
  decide

theorem node_7_300 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 300 = (54 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 300 = count [19, 17, 13, 11, 7, 5, 3, 2] 300 - count [19, 17, 13, 11, 7, 5, 3, 2] (300 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 300 (by decide)
    _ = (55 : Int) - (1 : Int) :=
      sub_congr node_8_300 node_8_13
    _ = (54 : Int) := by decide

theorem node_6_300 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 300 = (53 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 300 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 300 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (300 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 300 (by decide)
    _ = (54 : Int) - (1 : Int) :=
      sub_congr node_7_300 node_7_10
    _ = (53 : Int) := by decide

theorem node_5_300 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 300 = (52 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 300 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 300 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (300 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 300 (by decide)
    _ = (53 : Int) - (1 : Int) :=
      sub_congr node_6_300 node_6_9
    _ = (52 : Int) := by decide

theorem node_4_300 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 300 = (51 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 300 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 300 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (300 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 300 (by decide)
    _ = (52 : Int) - (1 : Int) :=
      sub_congr node_5_300 node_5_8
    _ = (51 : Int) := by decide

theorem node_3_300 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 300 = (50 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 300 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 300 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (300 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 300 (by decide)
    _ = (51 : Int) - (1 : Int) :=
      sub_congr node_4_300 node_4_7
    _ = (50 : Int) := by decide

theorem node_2_300 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 300 = (49 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 300 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 300 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (300 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 300 (by decide)
    _ = (50 : Int) - (1 : Int) :=
      sub_congr node_3_300 node_3_6
    _ = (49 : Int) := by decide

theorem node_2_6 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (6 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_6 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_300 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 300 = (48 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 300 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 300 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (300 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 300 (by decide)
    _ = (49 : Int) - (1 : Int) :=
      sub_congr node_2_300 node_2_6
    _ = (48 : Int) := by decide

theorem node_0_15942 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 = (2129 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (15942 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15942 (by decide)
    _ = (2177 : Int) - (48 : Int) :=
      sub_congr node_1_15942 node_1_300
    _ = (2129 : Int) := by decide

theorem row_24 : count primes 10666 ≤ (1433 : Int) - 15 := by
  rw [show count primes 10666 = (1418 : Int) from node_0_10666]
  decide

theorem row_25 : count primes 12210 ≤ (1637 : Int) - 15 := by
  rw [show count primes 12210 = (1622 : Int) from node_0_12210]
  decide

theorem row_26 : count primes 13968 ≤ (1874 : Int) - 15 := by
  rw [show count primes 13968 = (1859 : Int) from node_0_13968]
  decide

theorem row_27 : count primes 15942 ≤ (2144 : Int) - 15 := by
  rw [show count primes 15942 = (2129 : Int) from node_0_15942]
  decide

def pairs : List (Nat × Nat) := [(10666, 1433), (12210, 1637), (13968, 1874), (15942, 2144)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl | rfl | rfl
  · exact row_24
  · exact row_25
  · exact row_26
  · exact row_27
end B699CorePrunedSieve.CoreDagBatch07
#check @B699CorePrunedSieve.CoreDagBatch07.pairs_valid
#print axioms B699CorePrunedSieve.CoreDagBatch07.pairs_valid
