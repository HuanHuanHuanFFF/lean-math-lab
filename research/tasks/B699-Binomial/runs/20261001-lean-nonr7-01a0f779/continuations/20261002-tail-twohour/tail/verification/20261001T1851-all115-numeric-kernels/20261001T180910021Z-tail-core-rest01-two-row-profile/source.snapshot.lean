import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreRest01
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_16383 : count [19, 17, 13, 11, 7, 5, 3, 2] 16383 = (2805 : Int) := by
  decide

theorem node_8_712 : count [19, 17, 13, 11, 7, 5, 3, 2] 712 = (122 : Int) := by
  decide

theorem node_7_16383 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 = (2683 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 = count [19, 17, 13, 11, 7, 5, 3, 2] 16383 - count [19, 17, 13, 11, 7, 5, 3, 2] (16383 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 16383 (by decide)
    _ = (2805 : Int) - (122 : Int) :=
      sub_congr node_8_16383 node_8_712
    _ = (2683 : Int) := by decide

theorem node_8_564 : count [19, 17, 13, 11, 7, 5, 3, 2] 564 = (97 : Int) := by
  decide

theorem node_8_24 : count [19, 17, 13, 11, 7, 5, 3, 2] 24 = (2 : Int) := by
  decide

theorem node_7_564 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 564 = (95 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 564 = count [19, 17, 13, 11, 7, 5, 3, 2] 564 - count [19, 17, 13, 11, 7, 5, 3, 2] (564 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 564 (by decide)
    _ = (97 : Int) - (2 : Int) :=
      sub_congr node_8_564 node_8_24
    _ = (95 : Int) := by decide

theorem node_6_16383 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 = (2588 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (16383 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 (by decide)
    _ = (2683 : Int) - (95 : Int) :=
      sub_congr node_7_16383 node_7_564
    _ = (2588 : Int) := by decide

theorem node_8_528 : count [19, 17, 13, 11, 7, 5, 3, 2] 528 = (92 : Int) := by
  decide

theorem node_8_22 : count [19, 17, 13, 11, 7, 5, 3, 2] 22 = (1 : Int) := by
  decide

theorem node_7_528 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 528 = (91 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 528 = count [19, 17, 13, 11, 7, 5, 3, 2] 528 - count [19, 17, 13, 11, 7, 5, 3, 2] (528 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 528 (by decide)
    _ = (92 : Int) - (1 : Int) :=
      sub_congr node_8_528 node_8_22
    _ = (91 : Int) := by decide

theorem node_8_18 : count [19, 17, 13, 11, 7, 5, 3, 2] 18 = (1 : Int) := by
  decide

theorem node_8_0 : count [19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [19, 17, 13, 11, 7, 5, 3, 2]

theorem node_7_18 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 18 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 18 = count [19, 17, 13, 11, 7, 5, 3, 2] 18 - count [19, 17, 13, 11, 7, 5, 3, 2] (18 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 18 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_18 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_528 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 528 = (90 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 528 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 528 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (528 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 528 (by decide)
    _ = (91 : Int) - (1 : Int) :=
      sub_congr node_7_528 node_7_18
    _ = (90 : Int) := by decide

theorem node_5_16383 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 = (2498 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (16383 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 (by decide)
    _ = (2588 : Int) - (90 : Int) :=
      sub_congr node_6_16383 node_6_528
    _ = (2498 : Int) := by decide

theorem node_8_442 : count [19, 17, 13, 11, 7, 5, 3, 2] 442 = (78 : Int) := by
  decide

theorem node_8_19 : count [19, 17, 13, 11, 7, 5, 3, 2] 19 = (1 : Int) := by
  decide

theorem node_7_442 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 442 = (77 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 442 = count [19, 17, 13, 11, 7, 5, 3, 2] 442 - count [19, 17, 13, 11, 7, 5, 3, 2] (442 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 442 (by decide)
    _ = (78 : Int) - (1 : Int) :=
      sub_congr node_8_442 node_8_19
    _ = (77 : Int) := by decide

theorem node_8_15 : count [19, 17, 13, 11, 7, 5, 3, 2] 15 = (1 : Int) := by
  decide

theorem node_7_15 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 15 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 15 = count [19, 17, 13, 11, 7, 5, 3, 2] 15 - count [19, 17, 13, 11, 7, 5, 3, 2] (15 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 15 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_15 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_442 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 442 = (76 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 442 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 442 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (442 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 442 (by decide)
    _ = (77 : Int) - (1 : Int) :=
      sub_congr node_7_442 node_7_15
    _ = (76 : Int) := by decide

theorem node_8_14 : count [19, 17, 13, 11, 7, 5, 3, 2] 14 = (1 : Int) := by
  decide

theorem node_7_14 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = count [19, 17, 13, 11, 7, 5, 3, 2] 14 - count [19, 17, 13, 11, 7, 5, 3, 2] (14 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 14 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_14 node_8_0
    _ = (1 : Int) := by decide

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_14 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 14 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (14 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 14 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_14 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_442 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 442 = (75 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 442 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 442 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (442 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 442 (by decide)
    _ = (76 : Int) - (1 : Int) :=
      sub_congr node_6_442 node_6_14
    _ = (75 : Int) := by decide

theorem node_4_16383 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 = (2423 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (16383 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 (by decide)
    _ = (2498 : Int) - (75 : Int) :=
      sub_congr node_5_16383 node_5_442
    _ = (2423 : Int) := by decide

theorem node_8_399 : count [19, 17, 13, 11, 7, 5, 3, 2] 399 = (71 : Int) := by
  decide

theorem node_8_17 : count [19, 17, 13, 11, 7, 5, 3, 2] 17 = (1 : Int) := by
  decide

theorem node_7_399 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 399 = (70 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 399 = count [19, 17, 13, 11, 7, 5, 3, 2] 399 - count [19, 17, 13, 11, 7, 5, 3, 2] (399 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 399 (by decide)
    _ = (71 : Int) - (1 : Int) :=
      sub_congr node_8_399 node_8_17
    _ = (70 : Int) := by decide

theorem node_8_13 : count [19, 17, 13, 11, 7, 5, 3, 2] 13 = (1 : Int) := by
  decide

theorem node_7_13 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = count [19, 17, 13, 11, 7, 5, 3, 2] 13 - count [19, 17, 13, 11, 7, 5, 3, 2] (13 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 13 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_13 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_399 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 399 = (69 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 399 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 399 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (399 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 399 (by decide)
    _ = (70 : Int) - (1 : Int) :=
      sub_congr node_7_399 node_7_13
    _ = (69 : Int) := by decide

theorem node_8_12 : count [19, 17, 13, 11, 7, 5, 3, 2] 12 = (1 : Int) := by
  decide

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

theorem node_5_399 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 399 = (68 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 399 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 399 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (399 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 399 (by decide)
    _ = (69 : Int) - (1 : Int) :=
      sub_congr node_6_399 node_6_12
    _ = (68 : Int) := by decide

theorem node_8_10 : count [19, 17, 13, 11, 7, 5, 3, 2] 10 = (1 : Int) := by
  decide

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

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_10 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (10 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_10 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_399 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 399 = (67 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 399 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 399 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (399 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 399 (by decide)
    _ = (68 : Int) - (1 : Int) :=
      sub_congr node_5_399 node_5_10
    _ = (67 : Int) := by decide

theorem node_3_16383 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 = (2356 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (16383 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 (by decide)
    _ = (2423 : Int) - (67 : Int) :=
      sub_congr node_4_16383 node_4_399
    _ = (2356 : Int) := by decide

theorem node_8_381 : count [19, 17, 13, 11, 7, 5, 3, 2] 381 = (68 : Int) := by
  decide

theorem node_8_16 : count [19, 17, 13, 11, 7, 5, 3, 2] 16 = (1 : Int) := by
  decide

theorem node_7_381 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 381 = (67 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 381 = count [19, 17, 13, 11, 7, 5, 3, 2] 381 - count [19, 17, 13, 11, 7, 5, 3, 2] (381 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 381 (by decide)
    _ = (68 : Int) - (1 : Int) :=
      sub_congr node_8_381 node_8_16
    _ = (67 : Int) := by decide

theorem node_6_381 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 381 = (66 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 381 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 381 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (381 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 381 (by decide)
    _ = (67 : Int) - (1 : Int) :=
      sub_congr node_7_381 node_7_13
    _ = (66 : Int) := by decide

theorem node_5_381 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 381 = (65 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 381 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 381 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (381 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 381 (by decide)
    _ = (66 : Int) - (1 : Int) :=
      sub_congr node_6_381 node_6_12
    _ = (65 : Int) := by decide

theorem node_4_381 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 381 = (64 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 381 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 381 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (381 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 381 (by decide)
    _ = (65 : Int) - (1 : Int) :=
      sub_congr node_5_381 node_5_10
    _ = (64 : Int) := by decide

theorem node_8_9 : count [19, 17, 13, 11, 7, 5, 3, 2] 9 = (1 : Int) := by
  decide

theorem node_7_9 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 9 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 9 = count [19, 17, 13, 11, 7, 5, 3, 2] 9 - count [19, 17, 13, 11, 7, 5, 3, 2] (9 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 9 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_9 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_9 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 9 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (9 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 9 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_9 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_9 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (9 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_9 node_6_0
    _ = (1 : Int) := by decide

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_9 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (9 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_9 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_381 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 381 = (63 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 381 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 381 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (381 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 381 (by decide)
    _ = (64 : Int) - (1 : Int) :=
      sub_congr node_4_381 node_4_9
    _ = (63 : Int) := by decide

theorem node_2_16383 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 = (2293 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (16383 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 (by decide)
    _ = (2356 : Int) - (63 : Int) :=
      sub_congr node_3_16383 node_3_381
    _ = (2293 : Int) := by decide

theorem node_8_348 : count [19, 17, 13, 11, 7, 5, 3, 2] 348 = (62 : Int) := by
  decide

theorem node_7_348 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 348 = (61 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 348 = count [19, 17, 13, 11, 7, 5, 3, 2] 348 - count [19, 17, 13, 11, 7, 5, 3, 2] (348 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 348 (by decide)
    _ = (62 : Int) - (1 : Int) :=
      sub_congr node_8_348 node_8_15
    _ = (61 : Int) := by decide

theorem node_6_348 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 348 = (60 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 348 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 348 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (348 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 348 (by decide)
    _ = (61 : Int) - (1 : Int) :=
      sub_congr node_7_348 node_7_12
    _ = (60 : Int) := by decide

theorem node_8_11 : count [19, 17, 13, 11, 7, 5, 3, 2] 11 = (1 : Int) := by
  decide

theorem node_7_11 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = count [19, 17, 13, 11, 7, 5, 3, 2] 11 - count [19, 17, 13, 11, 7, 5, 3, 2] (11 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 11 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_11 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_11 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 11 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (11 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 11 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_11 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_348 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 348 = (59 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 348 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 348 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (348 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 348 (by decide)
    _ = (60 : Int) - (1 : Int) :=
      sub_congr node_6_348 node_6_11
    _ = (59 : Int) := by decide

theorem node_4_348 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 348 = (58 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 348 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 348 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (348 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 348 (by decide)
    _ = (59 : Int) - (1 : Int) :=
      sub_congr node_5_348 node_5_9
    _ = (58 : Int) := by decide

theorem node_8_8 : count [19, 17, 13, 11, 7, 5, 3, 2] 8 = (1 : Int) := by
  decide

theorem node_7_8 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 8 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 8 = count [19, 17, 13, 11, 7, 5, 3, 2] 8 - count [19, 17, 13, 11, 7, 5, 3, 2] (8 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 8 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_8 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_8 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 8 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (8 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 8 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_8 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_8 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (8 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_8 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_8 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (8 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_8 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_348 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 348 = (57 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 348 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 348 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (348 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 348 (by decide)
    _ = (58 : Int) - (1 : Int) :=
      sub_congr node_4_348 node_4_8
    _ = (57 : Int) := by decide

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_8 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (8 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_8 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_348 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 348 = (56 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 348 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 348 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (348 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 348 (by decide)
    _ = (57 : Int) - (1 : Int) :=
      sub_congr node_3_348 node_3_8
    _ = (56 : Int) := by decide

theorem node_1_16383 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 = (2237 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (16383 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 (by decide)
    _ = (2293 : Int) - (56 : Int) :=
      sub_congr node_2_16383 node_2_348
    _ = (2237 : Int) := by decide

theorem node_8_309 : count [19, 17, 13, 11, 7, 5, 3, 2] 309 = (56 : Int) := by
  decide

theorem node_7_309 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 309 = (55 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 309 = count [19, 17, 13, 11, 7, 5, 3, 2] 309 - count [19, 17, 13, 11, 7, 5, 3, 2] (309 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 309 (by decide)
    _ = (56 : Int) - (1 : Int) :=
      sub_congr node_8_309 node_8_13
    _ = (55 : Int) := by decide

theorem node_6_309 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 309 = (54 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 309 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 309 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (309 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 309 (by decide)
    _ = (55 : Int) - (1 : Int) :=
      sub_congr node_7_309 node_7_10
    _ = (54 : Int) := by decide

theorem node_5_309 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 309 = (53 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 309 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 309 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (309 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 309 (by decide)
    _ = (54 : Int) - (1 : Int) :=
      sub_congr node_6_309 node_6_9
    _ = (53 : Int) := by decide

theorem node_4_309 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 309 = (52 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 309 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 309 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (309 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 309 (by decide)
    _ = (53 : Int) - (1 : Int) :=
      sub_congr node_5_309 node_5_8
    _ = (52 : Int) := by decide

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

theorem node_5_7 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (7 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_7 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_7 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (7 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_7 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_309 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 309 = (51 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 309 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 309 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (309 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 309 (by decide)
    _ = (52 : Int) - (1 : Int) :=
      sub_congr node_4_309 node_4_7
    _ = (51 : Int) := by decide

theorem node_3_7 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (7 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_7 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_309 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 309 = (50 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 309 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 309 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (309 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 309 (by decide)
    _ = (51 : Int) - (1 : Int) :=
      sub_congr node_3_309 node_3_7
    _ = (50 : Int) := by decide

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

theorem node_4_6 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (6 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_6 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_6 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (6 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_6 node_4_0
    _ = (1 : Int) := by decide

theorem node_3_0 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_2_6 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (6 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_6 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_309 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 309 = (49 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 309 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 309 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (309 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 309 (by decide)
    _ = (50 : Int) - (1 : Int) :=
      sub_congr node_2_309 node_2_6
    _ = (49 : Int) := by decide

theorem node_0_16383 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 = (2188 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (16383 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16383 (by decide)
    _ = (2237 : Int) - (49 : Int) :=
      sub_congr node_1_16383 node_1_309
    _ = (2188 : Int) := by decide

theorem node_8_18040 : count [19, 17, 13, 11, 7, 5, 3, 2] 18040 = (3086 : Int) := by
  decide

theorem node_8_784 : count [19, 17, 13, 11, 7, 5, 3, 2] 784 = (133 : Int) := by
  decide

theorem node_7_18040 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 = (2953 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 = count [19, 17, 13, 11, 7, 5, 3, 2] 18040 - count [19, 17, 13, 11, 7, 5, 3, 2] (18040 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 18040 (by decide)
    _ = (3086 : Int) - (133 : Int) :=
      sub_congr node_8_18040 node_8_784
    _ = (2953 : Int) := by decide

theorem node_8_622 : count [19, 17, 13, 11, 7, 5, 3, 2] 622 = (108 : Int) := by
  decide

theorem node_8_27 : count [19, 17, 13, 11, 7, 5, 3, 2] 27 = (2 : Int) := by
  decide

theorem node_7_622 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 622 = (106 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 622 = count [19, 17, 13, 11, 7, 5, 3, 2] 622 - count [19, 17, 13, 11, 7, 5, 3, 2] (622 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 622 (by decide)
    _ = (108 : Int) - (2 : Int) :=
      sub_congr node_8_622 node_8_27
    _ = (106 : Int) := by decide

theorem node_6_18040 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 = (2847 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (18040 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 (by decide)
    _ = (2953 : Int) - (106 : Int) :=
      sub_congr node_7_18040 node_7_622
    _ = (2847 : Int) := by decide

theorem node_8_581 : count [19, 17, 13, 11, 7, 5, 3, 2] 581 = (100 : Int) := by
  decide

theorem node_8_25 : count [19, 17, 13, 11, 7, 5, 3, 2] 25 = (2 : Int) := by
  decide

theorem node_7_581 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 581 = (98 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 581 = count [19, 17, 13, 11, 7, 5, 3, 2] 581 - count [19, 17, 13, 11, 7, 5, 3, 2] (581 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 581 (by decide)
    _ = (100 : Int) - (2 : Int) :=
      sub_congr node_8_581 node_8_25
    _ = (98 : Int) := by decide

theorem node_8_20 : count [19, 17, 13, 11, 7, 5, 3, 2] 20 = (1 : Int) := by
  decide

theorem node_7_20 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 20 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 20 = count [19, 17, 13, 11, 7, 5, 3, 2] 20 - count [19, 17, 13, 11, 7, 5, 3, 2] (20 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 20 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_20 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_581 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 581 = (97 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 581 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 581 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (581 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 581 (by decide)
    _ = (98 : Int) - (1 : Int) :=
      sub_congr node_7_581 node_7_20
    _ = (97 : Int) := by decide

theorem node_5_18040 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 = (2750 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (18040 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 (by decide)
    _ = (2847 : Int) - (97 : Int) :=
      sub_congr node_6_18040 node_6_581
    _ = (2750 : Int) := by decide

theorem node_8_487 : count [19, 17, 13, 11, 7, 5, 3, 2] 487 = (86 : Int) := by
  decide

theorem node_8_21 : count [19, 17, 13, 11, 7, 5, 3, 2] 21 = (1 : Int) := by
  decide

theorem node_7_487 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 487 = (85 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 487 = count [19, 17, 13, 11, 7, 5, 3, 2] 487 - count [19, 17, 13, 11, 7, 5, 3, 2] (487 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 487 (by decide)
    _ = (86 : Int) - (1 : Int) :=
      sub_congr node_8_487 node_8_21
    _ = (85 : Int) := by decide

theorem node_7_16 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = count [19, 17, 13, 11, 7, 5, 3, 2] 16 - count [19, 17, 13, 11, 7, 5, 3, 2] (16 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 16 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_16 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_487 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 487 = (84 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 487 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 487 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (487 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 487 (by decide)
    _ = (85 : Int) - (1 : Int) :=
      sub_congr node_7_487 node_7_16
    _ = (84 : Int) := by decide

theorem node_6_15 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 15 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (15 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 15 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_15 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_487 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 487 = (83 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 487 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 487 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (487 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 487 (by decide)
    _ = (84 : Int) - (1 : Int) :=
      sub_congr node_6_487 node_6_15
    _ = (83 : Int) := by decide

theorem node_4_18040 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 = (2667 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (18040 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 (by decide)
    _ = (2750 : Int) - (83 : Int) :=
      sub_congr node_5_18040 node_5_487
    _ = (2667 : Int) := by decide

theorem node_8_440 : count [19, 17, 13, 11, 7, 5, 3, 2] 440 = (78 : Int) := by
  decide

theorem node_7_440 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 440 = (77 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 440 = count [19, 17, 13, 11, 7, 5, 3, 2] 440 - count [19, 17, 13, 11, 7, 5, 3, 2] (440 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 440 (by decide)
    _ = (78 : Int) - (1 : Int) :=
      sub_congr node_8_440 node_8_19
    _ = (77 : Int) := by decide

theorem node_6_440 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 440 = (76 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 440 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 440 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (440 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 440 (by decide)
    _ = (77 : Int) - (1 : Int) :=
      sub_congr node_7_440 node_7_15
    _ = (76 : Int) := by decide

theorem node_5_440 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 440 = (75 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 440 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 440 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (440 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 440 (by decide)
    _ = (76 : Int) - (1 : Int) :=
      sub_congr node_6_440 node_6_14
    _ = (75 : Int) := by decide

theorem node_5_11 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (11 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_11 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_440 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 440 = (74 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 440 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 440 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (440 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 440 (by decide)
    _ = (75 : Int) - (1 : Int) :=
      sub_congr node_5_440 node_5_11
    _ = (74 : Int) := by decide

theorem node_3_18040 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 = (2593 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (18040 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 (by decide)
    _ = (2667 : Int) - (74 : Int) :=
      sub_congr node_4_18040 node_4_440
    _ = (2593 : Int) := by decide

theorem node_8_419 : count [19, 17, 13, 11, 7, 5, 3, 2] 419 = (74 : Int) := by
  decide

theorem node_7_419 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 419 = (73 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 419 = count [19, 17, 13, 11, 7, 5, 3, 2] 419 - count [19, 17, 13, 11, 7, 5, 3, 2] (419 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 419 (by decide)
    _ = (74 : Int) - (1 : Int) :=
      sub_congr node_8_419 node_8_18
    _ = (73 : Int) := by decide

theorem node_6_419 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 419 = (72 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 419 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 419 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (419 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 419 (by decide)
    _ = (73 : Int) - (1 : Int) :=
      sub_congr node_7_419 node_7_14
    _ = (72 : Int) := by decide

theorem node_6_13 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 13 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (13 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 13 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_13 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_419 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 419 = (71 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 419 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 419 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (419 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 419 (by decide)
    _ = (72 : Int) - (1 : Int) :=
      sub_congr node_6_419 node_6_13
    _ = (71 : Int) := by decide

theorem node_4_419 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 419 = (70 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 419 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 419 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (419 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 419 (by decide)
    _ = (71 : Int) - (1 : Int) :=
      sub_congr node_5_419 node_5_11
    _ = (70 : Int) := by decide

theorem node_4_10 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (10 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_10 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_419 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 419 = (69 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 419 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 419 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (419 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 419 (by decide)
    _ = (70 : Int) - (1 : Int) :=
      sub_congr node_4_419 node_4_10
    _ = (69 : Int) := by decide

theorem node_2_18040 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 = (2524 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (18040 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 (by decide)
    _ = (2593 : Int) - (69 : Int) :=
      sub_congr node_3_18040 node_3_419
    _ = (2524 : Int) := by decide

theorem node_8_383 : count [19, 17, 13, 11, 7, 5, 3, 2] 383 = (69 : Int) := by
  decide

theorem node_7_383 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 383 = (68 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 383 = count [19, 17, 13, 11, 7, 5, 3, 2] 383 - count [19, 17, 13, 11, 7, 5, 3, 2] (383 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 383 (by decide)
    _ = (69 : Int) - (1 : Int) :=
      sub_congr node_8_383 node_8_16
    _ = (68 : Int) := by decide

theorem node_6_383 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 383 = (67 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 383 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 383 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (383 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 383 (by decide)
    _ = (68 : Int) - (1 : Int) :=
      sub_congr node_7_383 node_7_13
    _ = (67 : Int) := by decide

theorem node_5_383 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 383 = (66 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 383 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 383 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (383 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 383 (by decide)
    _ = (67 : Int) - (1 : Int) :=
      sub_congr node_6_383 node_6_12
    _ = (66 : Int) := by decide

theorem node_4_383 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 383 = (65 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 383 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 383 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (383 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 383 (by decide)
    _ = (66 : Int) - (1 : Int) :=
      sub_congr node_5_383 node_5_10
    _ = (65 : Int) := by decide

theorem node_3_383 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 383 = (64 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 383 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 383 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (383 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 383 (by decide)
    _ = (65 : Int) - (1 : Int) :=
      sub_congr node_4_383 node_4_9
    _ = (64 : Int) := by decide

theorem node_2_383 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 383 = (63 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 383 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 383 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (383 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 383 (by decide)
    _ = (64 : Int) - (1 : Int) :=
      sub_congr node_3_383 node_3_8
    _ = (63 : Int) := by decide

theorem node_1_18040 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 = (2461 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (18040 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 (by decide)
    _ = (2524 : Int) - (63 : Int) :=
      sub_congr node_2_18040 node_2_383
    _ = (2461 : Int) := by decide

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

theorem node_4_340 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 340 = (57 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 340 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 340 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (340 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 340 (by decide)
    _ = (58 : Int) - (1 : Int) :=
      sub_congr node_5_340 node_5_9
    _ = (57 : Int) := by decide

theorem node_3_340 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 340 = (56 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 340 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 340 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (340 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 340 (by decide)
    _ = (57 : Int) - (1 : Int) :=
      sub_congr node_4_340 node_4_8
    _ = (56 : Int) := by decide

theorem node_2_340 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 340 = (55 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 340 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 340 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (340 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 340 (by decide)
    _ = (56 : Int) - (1 : Int) :=
      sub_congr node_3_340 node_3_7
    _ = (55 : Int) := by decide

theorem node_2_7 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (7 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_7 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_340 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 340 = (54 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 340 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 340 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (340 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 340 (by decide)
    _ = (55 : Int) - (1 : Int) :=
      sub_congr node_2_340 node_2_7
    _ = (54 : Int) := by decide

theorem node_0_18040 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 = (2407 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (18040 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18040 (by decide)
    _ = (2461 : Int) - (54 : Int) :=
      sub_congr node_1_18040 node_1_340
    _ = (2407 : Int) := by decide

theorem row_28 : count primes 16383 ≤ (2203 : Int) - 15 := by
  rw [show count primes 16383 = (2188 : Int) from node_0_16383]
  decide

theorem row_29 : count primes 18040 ≤ (2422 : Int) - 15 := by
  rw [show count primes 18040 = (2407 : Int) from node_0_18040]
  decide

def pairs : List (Nat × Nat) := [(16383, 2203), (18040, 2422)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl
  · exact row_28
  · exact row_29
end B699CorePrunedSieve.CoreRest01
#check @B699CorePrunedSieve.CoreRest01.pairs_valid
#print axioms B699CorePrunedSieve.CoreRest01.pairs_valid
