import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreRest03
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_23970 : count [19, 17, 13, 11, 7, 5, 3, 2] 23970 = (4103 : Int) := by
  decide

theorem node_8_1042 : count [19, 17, 13, 11, 7, 5, 3, 2] 1042 = (177 : Int) := by
  decide

theorem node_7_23970 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 = (3926 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 = count [19, 17, 13, 11, 7, 5, 3, 2] 23970 - count [19, 17, 13, 11, 7, 5, 3, 2] (23970 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 23970 (by decide)
    _ = (4103 : Int) - (177 : Int) :=
      sub_congr node_8_23970 node_8_1042
    _ = (3926 : Int) := by decide

theorem node_8_826 : count [19, 17, 13, 11, 7, 5, 3, 2] 826 = (139 : Int) := by
  decide

theorem node_8_35 : count [19, 17, 13, 11, 7, 5, 3, 2] 35 = (4 : Int) := by
  decide

theorem node_7_826 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 826 = (135 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 826 = count [19, 17, 13, 11, 7, 5, 3, 2] 826 - count [19, 17, 13, 11, 7, 5, 3, 2] (826 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 826 (by decide)
    _ = (139 : Int) - (4 : Int) :=
      sub_congr node_8_826 node_8_35
    _ = (135 : Int) := by decide

theorem node_6_23970 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 = (3791 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (23970 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 (by decide)
    _ = (3926 : Int) - (135 : Int) :=
      sub_congr node_7_23970 node_7_826
    _ = (3791 : Int) := by decide

theorem node_8_773 : count [19, 17, 13, 11, 7, 5, 3, 2] 773 = (133 : Int) := by
  decide

theorem node_8_33 : count [19, 17, 13, 11, 7, 5, 3, 2] 33 = (4 : Int) := by
  decide

theorem node_7_773 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 773 = (129 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 773 = count [19, 17, 13, 11, 7, 5, 3, 2] 773 - count [19, 17, 13, 11, 7, 5, 3, 2] (773 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 773 (by decide)
    _ = (133 : Int) - (4 : Int) :=
      sub_congr node_8_773 node_8_33
    _ = (129 : Int) := by decide

theorem node_8_26 : count [19, 17, 13, 11, 7, 5, 3, 2] 26 = (2 : Int) := by
  decide

theorem node_8_1 : count [19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  decide

theorem node_7_26 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = count [19, 17, 13, 11, 7, 5, 3, 2] 26 - count [19, 17, 13, 11, 7, 5, 3, 2] (26 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 26 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_8_26 node_8_1
    _ = (1 : Int) := by decide

theorem node_6_773 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 773 = (128 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 773 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 773 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (773 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 773 (by decide)
    _ = (129 : Int) - (1 : Int) :=
      sub_congr node_7_773 node_7_26
    _ = (128 : Int) := by decide

theorem node_5_23970 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 = (3663 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (23970 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 (by decide)
    _ = (3791 : Int) - (128 : Int) :=
      sub_congr node_6_23970 node_6_773
    _ = (3663 : Int) := by decide

theorem node_8_647 : count [19, 17, 13, 11, 7, 5, 3, 2] 647 = (112 : Int) := by
  decide

theorem node_8_28 : count [19, 17, 13, 11, 7, 5, 3, 2] 28 = (2 : Int) := by
  decide

theorem node_7_647 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 647 = (110 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 647 = count [19, 17, 13, 11, 7, 5, 3, 2] 647 - count [19, 17, 13, 11, 7, 5, 3, 2] (647 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 647 (by decide)
    _ = (112 : Int) - (2 : Int) :=
      sub_congr node_8_647 node_8_28
    _ = (110 : Int) := by decide

theorem node_8_22 : count [19, 17, 13, 11, 7, 5, 3, 2] 22 = (1 : Int) := by
  decide

theorem node_8_0 : count [19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [19, 17, 13, 11, 7, 5, 3, 2]

theorem node_7_22 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = count [19, 17, 13, 11, 7, 5, 3, 2] 22 - count [19, 17, 13, 11, 7, 5, 3, 2] (22 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 22 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_22 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_647 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 647 = (109 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 647 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 647 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (647 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 647 (by decide)
    _ = (110 : Int) - (1 : Int) :=
      sub_congr node_7_647 node_7_22
    _ = (109 : Int) := by decide

theorem node_8_20 : count [19, 17, 13, 11, 7, 5, 3, 2] 20 = (1 : Int) := by
  decide

theorem node_7_20 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 20 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 20 = count [19, 17, 13, 11, 7, 5, 3, 2] 20 - count [19, 17, 13, 11, 7, 5, 3, 2] (20 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 20 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_20 node_8_0
    _ = (1 : Int) := by decide

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_20 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 20 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (20 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 20 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_20 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_647 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 647 = (108 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 647 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 647 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (647 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 647 (by decide)
    _ = (109 : Int) - (1 : Int) :=
      sub_congr node_6_647 node_6_20
    _ = (108 : Int) := by decide

theorem node_4_23970 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 = (3555 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (23970 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 (by decide)
    _ = (3663 : Int) - (108 : Int) :=
      sub_congr node_5_23970 node_5_647
    _ = (3555 : Int) := by decide

theorem node_8_584 : count [19, 17, 13, 11, 7, 5, 3, 2] 584 = (100 : Int) := by
  decide

theorem node_8_25 : count [19, 17, 13, 11, 7, 5, 3, 2] 25 = (2 : Int) := by
  decide

theorem node_7_584 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 584 = (98 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 584 = count [19, 17, 13, 11, 7, 5, 3, 2] 584 - count [19, 17, 13, 11, 7, 5, 3, 2] (584 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 584 (by decide)
    _ = (100 : Int) - (2 : Int) :=
      sub_congr node_8_584 node_8_25
    _ = (98 : Int) := by decide

theorem node_6_584 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 584 = (97 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 584 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 584 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (584 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 584 (by decide)
    _ = (98 : Int) - (1 : Int) :=
      sub_congr node_7_584 node_7_20
    _ = (97 : Int) := by decide

theorem node_8_18 : count [19, 17, 13, 11, 7, 5, 3, 2] 18 = (1 : Int) := by
  decide

theorem node_7_18 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 18 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 18 = count [19, 17, 13, 11, 7, 5, 3, 2] 18 - count [19, 17, 13, 11, 7, 5, 3, 2] (18 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 18 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_18 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_18 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 18 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (18 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 18 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_18 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_584 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 584 = (96 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 584 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 584 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (584 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 584 (by decide)
    _ = (97 : Int) - (1 : Int) :=
      sub_congr node_6_584 node_6_18
    _ = (96 : Int) := by decide

theorem node_8_15 : count [19, 17, 13, 11, 7, 5, 3, 2] 15 = (1 : Int) := by
  decide

theorem node_7_15 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 15 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 15 = count [19, 17, 13, 11, 7, 5, 3, 2] 15 - count [19, 17, 13, 11, 7, 5, 3, 2] (15 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 15 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_15 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_15 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 15 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (15 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 15 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_15 node_7_0
    _ = (1 : Int) := by decide

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_15 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (15 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_15 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_584 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 584 = (95 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 584 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 584 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (584 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 584 (by decide)
    _ = (96 : Int) - (1 : Int) :=
      sub_congr node_5_584 node_5_15
    _ = (95 : Int) := by decide

theorem node_3_23970 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 = (3460 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (23970 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 (by decide)
    _ = (3555 : Int) - (95 : Int) :=
      sub_congr node_4_23970 node_4_584
    _ = (3460 : Int) := by decide

theorem node_8_557 : count [19, 17, 13, 11, 7, 5, 3, 2] 557 = (96 : Int) := by
  decide

theorem node_8_24 : count [19, 17, 13, 11, 7, 5, 3, 2] 24 = (2 : Int) := by
  decide

theorem node_7_557 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 557 = (94 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 557 = count [19, 17, 13, 11, 7, 5, 3, 2] 557 - count [19, 17, 13, 11, 7, 5, 3, 2] (557 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 557 (by decide)
    _ = (96 : Int) - (2 : Int) :=
      sub_congr node_8_557 node_8_24
    _ = (94 : Int) := by decide

theorem node_8_19 : count [19, 17, 13, 11, 7, 5, 3, 2] 19 = (1 : Int) := by
  decide

theorem node_7_19 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 19 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 19 = count [19, 17, 13, 11, 7, 5, 3, 2] 19 - count [19, 17, 13, 11, 7, 5, 3, 2] (19 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 19 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_19 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_557 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 557 = (93 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 557 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 557 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (557 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 557 (by decide)
    _ = (94 : Int) - (1 : Int) :=
      sub_congr node_7_557 node_7_19
    _ = (93 : Int) := by decide

theorem node_8_17 : count [19, 17, 13, 11, 7, 5, 3, 2] 17 = (1 : Int) := by
  decide

theorem node_7_17 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 17 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 17 = count [19, 17, 13, 11, 7, 5, 3, 2] 17 - count [19, 17, 13, 11, 7, 5, 3, 2] (17 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 17 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_17 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_17 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 17 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 17 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 17 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (17 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 17 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_17 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_557 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 557 = (92 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 557 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 557 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (557 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 557 (by decide)
    _ = (93 : Int) - (1 : Int) :=
      sub_congr node_6_557 node_6_17
    _ = (92 : Int) := by decide

theorem node_4_557 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 557 = (91 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 557 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 557 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (557 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 557 (by decide)
    _ = (92 : Int) - (1 : Int) :=
      sub_congr node_5_557 node_5_15
    _ = (91 : Int) := by decide

theorem node_8_13 : count [19, 17, 13, 11, 7, 5, 3, 2] 13 = (1 : Int) := by
  decide

theorem node_7_13 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = count [19, 17, 13, 11, 7, 5, 3, 2] 13 - count [19, 17, 13, 11, 7, 5, 3, 2] (13 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 13 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_13 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_13 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 13 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (13 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 13 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_13 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_13 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (13 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_13 node_6_0
    _ = (1 : Int) := by decide

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_13 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (13 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_13 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_557 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 557 = (90 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 557 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 557 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (557 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 557 (by decide)
    _ = (91 : Int) - (1 : Int) :=
      sub_congr node_4_557 node_4_13
    _ = (90 : Int) := by decide

theorem node_2_23970 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 = (3370 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (23970 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 (by decide)
    _ = (3460 : Int) - (90 : Int) :=
      sub_congr node_3_23970 node_3_557
    _ = (3370 : Int) := by decide

theorem node_8_510 : count [19, 17, 13, 11, 7, 5, 3, 2] 510 = (90 : Int) := by
  decide

theorem node_7_510 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 510 = (89 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 510 = count [19, 17, 13, 11, 7, 5, 3, 2] 510 - count [19, 17, 13, 11, 7, 5, 3, 2] (510 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 510 (by decide)
    _ = (90 : Int) - (1 : Int) :=
      sub_congr node_8_510 node_8_22
    _ = (89 : Int) := by decide

theorem node_6_510 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 510 = (88 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 510 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 510 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (510 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 510 (by decide)
    _ = (89 : Int) - (1 : Int) :=
      sub_congr node_7_510 node_7_17
    _ = (88 : Int) := by decide

theorem node_8_16 : count [19, 17, 13, 11, 7, 5, 3, 2] 16 = (1 : Int) := by
  decide

theorem node_7_16 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = count [19, 17, 13, 11, 7, 5, 3, 2] 16 - count [19, 17, 13, 11, 7, 5, 3, 2] (16 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 16 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_16 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_16 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 16 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (16 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 16 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_16 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_510 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 510 = (87 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 510 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 510 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (510 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 510 (by decide)
    _ = (88 : Int) - (1 : Int) :=
      sub_congr node_6_510 node_6_16
    _ = (87 : Int) := by decide

theorem node_4_510 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 510 = (86 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 510 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 510 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (510 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 510 (by decide)
    _ = (87 : Int) - (1 : Int) :=
      sub_congr node_5_510 node_5_13
    _ = (86 : Int) := by decide

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

theorem node_5_12 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (12 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_12 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_12 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (12 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_12 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_510 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 510 = (85 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 510 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 510 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (510 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 510 (by decide)
    _ = (86 : Int) - (1 : Int) :=
      sub_congr node_4_510 node_4_12
    _ = (85 : Int) := by decide

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

theorem node_5_11 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (11 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_11 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_11 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (11 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_11 node_5_0
    _ = (1 : Int) := by decide

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_11 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (11 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_11 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_510 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 510 = (84 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 510 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 510 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (510 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 510 (by decide)
    _ = (85 : Int) - (1 : Int) :=
      sub_congr node_3_510 node_3_11
    _ = (84 : Int) := by decide

theorem node_1_23970 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 = (3286 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (23970 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 (by decide)
    _ = (3370 : Int) - (84 : Int) :=
      sub_congr node_2_23970 node_2_510
    _ = (3286 : Int) := by decide

theorem node_8_452 : count [19, 17, 13, 11, 7, 5, 3, 2] 452 = (80 : Int) := by
  decide

theorem node_7_452 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 452 = (79 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 452 = count [19, 17, 13, 11, 7, 5, 3, 2] 452 - count [19, 17, 13, 11, 7, 5, 3, 2] (452 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 452 (by decide)
    _ = (80 : Int) - (1 : Int) :=
      sub_congr node_8_452 node_8_19
    _ = (79 : Int) := by decide

theorem node_6_452 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 452 = (78 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 452 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 452 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (452 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 452 (by decide)
    _ = (79 : Int) - (1 : Int) :=
      sub_congr node_7_452 node_7_15
    _ = (78 : Int) := by decide

theorem node_8_14 : count [19, 17, 13, 11, 7, 5, 3, 2] 14 = (1 : Int) := by
  decide

theorem node_7_14 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = count [19, 17, 13, 11, 7, 5, 3, 2] 14 - count [19, 17, 13, 11, 7, 5, 3, 2] (14 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 14 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_14 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_14 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 14 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (14 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 14 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_14 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_452 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 452 = (77 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 452 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 452 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (452 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 452 (by decide)
    _ = (78 : Int) - (1 : Int) :=
      sub_congr node_6_452 node_6_14
    _ = (77 : Int) := by decide

theorem node_4_452 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 452 = (76 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 452 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 452 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (452 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 452 (by decide)
    _ = (77 : Int) - (1 : Int) :=
      sub_congr node_5_452 node_5_12
    _ = (76 : Int) := by decide

theorem node_3_452 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 452 = (75 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 452 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 452 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (452 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 452 (by decide)
    _ = (76 : Int) - (1 : Int) :=
      sub_congr node_4_452 node_4_11
    _ = (75 : Int) := by decide

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

theorem node_5_10 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (10 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_10 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_10 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (10 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_10 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_10 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (10 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_10 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_452 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 452 = (74 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 452 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 452 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (452 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 452 (by decide)
    _ = (75 : Int) - (1 : Int) :=
      sub_congr node_3_452 node_3_10
    _ = (74 : Int) := by decide

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

theorem node_4_9 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (9 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_9 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_9 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (9 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_9 node_4_0
    _ = (1 : Int) := by decide

theorem node_3_0 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_2_9 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (9 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_9 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_452 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 452 = (73 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 452 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 452 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (452 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 452 (by decide)
    _ = (74 : Int) - (1 : Int) :=
      sub_congr node_2_452 node_2_9
    _ = (73 : Int) := by decide

theorem node_0_23970 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 = (3213 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (23970 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23970 (by decide)
    _ = (3286 : Int) - (73 : Int) :=
      sub_congr node_1_23970 node_1_452
    _ = (3213 : Int) := by decide

theorem node_8_26290 : count [19, 17, 13, 11, 7, 5, 3, 2] 26290 = (4498 : Int) := by
  decide

theorem node_8_1143 : count [19, 17, 13, 11, 7, 5, 3, 2] 1143 = (193 : Int) := by
  decide

theorem node_7_26290 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 = (4305 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 = count [19, 17, 13, 11, 7, 5, 3, 2] 26290 - count [19, 17, 13, 11, 7, 5, 3, 2] (26290 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 26290 (by decide)
    _ = (4498 : Int) - (193 : Int) :=
      sub_congr node_8_26290 node_8_1143
    _ = (4305 : Int) := by decide

theorem node_8_906 : count [19, 17, 13, 11, 7, 5, 3, 2] 906 = (153 : Int) := by
  decide

theorem node_8_39 : count [19, 17, 13, 11, 7, 5, 3, 2] 39 = (5 : Int) := by
  decide

theorem node_7_906 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 906 = (148 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 906 = count [19, 17, 13, 11, 7, 5, 3, 2] 906 - count [19, 17, 13, 11, 7, 5, 3, 2] (906 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 906 (by decide)
    _ = (153 : Int) - (5 : Int) :=
      sub_congr node_8_906 node_8_39
    _ = (148 : Int) := by decide

theorem node_6_26290 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 = (4157 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (26290 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 (by decide)
    _ = (4305 : Int) - (148 : Int) :=
      sub_congr node_7_26290 node_7_906
    _ = (4157 : Int) := by decide

theorem node_8_848 : count [19, 17, 13, 11, 7, 5, 3, 2] 848 = (143 : Int) := by
  decide

theorem node_8_36 : count [19, 17, 13, 11, 7, 5, 3, 2] 36 = (4 : Int) := by
  decide

theorem node_7_848 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 848 = (139 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 848 = count [19, 17, 13, 11, 7, 5, 3, 2] 848 - count [19, 17, 13, 11, 7, 5, 3, 2] (848 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 848 (by decide)
    _ = (143 : Int) - (4 : Int) :=
      sub_congr node_8_848 node_8_36
    _ = (139 : Int) := by decide

theorem node_8_29 : count [19, 17, 13, 11, 7, 5, 3, 2] 29 = (3 : Int) := by
  decide

theorem node_7_29 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = (2 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = count [19, 17, 13, 11, 7, 5, 3, 2] 29 - count [19, 17, 13, 11, 7, 5, 3, 2] (29 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 29 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_8_29 node_8_1
    _ = (2 : Int) := by decide

theorem node_6_848 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 848 = (137 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 848 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 848 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (848 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 848 (by decide)
    _ = (139 : Int) - (2 : Int) :=
      sub_congr node_7_848 node_7_29
    _ = (137 : Int) := by decide

theorem node_5_26290 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 = (4020 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (26290 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 (by decide)
    _ = (4157 : Int) - (137 : Int) :=
      sub_congr node_6_26290 node_6_848
    _ = (4020 : Int) := by decide

theorem node_8_710 : count [19, 17, 13, 11, 7, 5, 3, 2] 710 = (122 : Int) := by
  decide

theorem node_8_30 : count [19, 17, 13, 11, 7, 5, 3, 2] 30 = (3 : Int) := by
  decide

theorem node_7_710 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 710 = (119 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 710 = count [19, 17, 13, 11, 7, 5, 3, 2] 710 - count [19, 17, 13, 11, 7, 5, 3, 2] (710 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 710 (by decide)
    _ = (122 : Int) - (3 : Int) :=
      sub_congr node_8_710 node_8_30
    _ = (119 : Int) := by decide

theorem node_7_24 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = count [19, 17, 13, 11, 7, 5, 3, 2] 24 - count [19, 17, 13, 11, 7, 5, 3, 2] (24 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 24 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_8_24 node_8_1
    _ = (1 : Int) := by decide

theorem node_6_710 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 710 = (118 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 710 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 710 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (710 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 710 (by decide)
    _ = (119 : Int) - (1 : Int) :=
      sub_congr node_7_710 node_7_24
    _ = (118 : Int) := by decide

theorem node_6_22 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 22 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (22 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 22 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_22 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_710 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 710 = (117 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 710 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 710 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (710 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 710 (by decide)
    _ = (118 : Int) - (1 : Int) :=
      sub_congr node_6_710 node_6_22
    _ = (117 : Int) := by decide

theorem node_4_26290 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 = (3903 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (26290 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 (by decide)
    _ = (4020 : Int) - (117 : Int) :=
      sub_congr node_5_26290 node_5_710
    _ = (3903 : Int) := by decide

theorem node_8_641 : count [19, 17, 13, 11, 7, 5, 3, 2] 641 = (110 : Int) := by
  decide

theorem node_8_27 : count [19, 17, 13, 11, 7, 5, 3, 2] 27 = (2 : Int) := by
  decide

theorem node_7_641 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 641 = (108 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 641 = count [19, 17, 13, 11, 7, 5, 3, 2] 641 - count [19, 17, 13, 11, 7, 5, 3, 2] (641 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 641 (by decide)
    _ = (110 : Int) - (2 : Int) :=
      sub_congr node_8_641 node_8_27
    _ = (108 : Int) := by decide

theorem node_6_641 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 641 = (107 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 641 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 641 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (641 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 641 (by decide)
    _ = (108 : Int) - (1 : Int) :=
      sub_congr node_7_641 node_7_22
    _ = (107 : Int) := by decide

theorem node_5_641 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 641 = (106 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 641 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 641 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (641 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 641 (by decide)
    _ = (107 : Int) - (1 : Int) :=
      sub_congr node_6_641 node_6_20
    _ = (106 : Int) := by decide

theorem node_5_17 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 17 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 17 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 17 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (17 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 17 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_17 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_641 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 641 = (105 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 641 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 641 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (641 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 641 (by decide)
    _ = (106 : Int) - (1 : Int) :=
      sub_congr node_5_641 node_5_17
    _ = (105 : Int) := by decide

theorem node_3_26290 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 = (3798 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (26290 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 (by decide)
    _ = (3903 : Int) - (105 : Int) :=
      sub_congr node_4_26290 node_4_641
    _ = (3798 : Int) := by decide

theorem node_8_611 : count [19, 17, 13, 11, 7, 5, 3, 2] 611 = (105 : Int) := by
  decide

theorem node_7_611 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 611 = (103 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 611 = count [19, 17, 13, 11, 7, 5, 3, 2] 611 - count [19, 17, 13, 11, 7, 5, 3, 2] (611 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 611 (by decide)
    _ = (105 : Int) - (2 : Int) :=
      sub_congr node_8_611 node_8_26
    _ = (103 : Int) := by decide

theorem node_8_21 : count [19, 17, 13, 11, 7, 5, 3, 2] 21 = (1 : Int) := by
  decide

theorem node_7_21 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 21 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 21 = count [19, 17, 13, 11, 7, 5, 3, 2] 21 - count [19, 17, 13, 11, 7, 5, 3, 2] (21 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 21 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_21 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_611 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 611 = (102 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 611 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 611 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (611 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 611 (by decide)
    _ = (103 : Int) - (1 : Int) :=
      sub_congr node_7_611 node_7_21
    _ = (102 : Int) := by decide

theorem node_6_19 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 19 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (19 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 19 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_19 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_611 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 611 = (101 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 611 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 611 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (611 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 611 (by decide)
    _ = (102 : Int) - (1 : Int) :=
      sub_congr node_6_611 node_6_19
    _ = (101 : Int) := by decide

theorem node_5_16 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (16 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_16 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_611 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 611 = (100 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 611 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 611 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (611 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 611 (by decide)
    _ = (101 : Int) - (1 : Int) :=
      sub_congr node_5_611 node_5_16
    _ = (100 : Int) := by decide

theorem node_5_14 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (14 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_14 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_14 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (14 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_14 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_611 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 611 = (99 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 611 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 611 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (611 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 611 (by decide)
    _ = (100 : Int) - (1 : Int) :=
      sub_congr node_4_611 node_4_14
    _ = (99 : Int) := by decide

theorem node_2_26290 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 = (3699 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (26290 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 (by decide)
    _ = (3798 : Int) - (99 : Int) :=
      sub_congr node_3_26290 node_3_611
    _ = (3699 : Int) := by decide

theorem node_8_559 : count [19, 17, 13, 11, 7, 5, 3, 2] 559 = (96 : Int) := by
  decide

theorem node_7_559 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 559 = (94 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 559 = count [19, 17, 13, 11, 7, 5, 3, 2] 559 - count [19, 17, 13, 11, 7, 5, 3, 2] (559 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 559 (by decide)
    _ = (96 : Int) - (2 : Int) :=
      sub_congr node_8_559 node_8_24
    _ = (94 : Int) := by decide

theorem node_6_559 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 559 = (93 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 559 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 559 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (559 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 559 (by decide)
    _ = (94 : Int) - (1 : Int) :=
      sub_congr node_7_559 node_7_19
    _ = (93 : Int) := by decide

theorem node_5_559 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 559 = (92 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 559 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 559 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (559 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 559 (by decide)
    _ = (93 : Int) - (1 : Int) :=
      sub_congr node_6_559 node_6_18
    _ = (92 : Int) := by decide

theorem node_4_559 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 559 = (91 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 559 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 559 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (559 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 559 (by decide)
    _ = (92 : Int) - (1 : Int) :=
      sub_congr node_5_559 node_5_15
    _ = (91 : Int) := by decide

theorem node_3_559 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 559 = (90 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 559 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 559 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (559 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 559 (by decide)
    _ = (91 : Int) - (1 : Int) :=
      sub_congr node_4_559 node_4_13
    _ = (90 : Int) := by decide

theorem node_3_13 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (13 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_13 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_559 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 559 = (89 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 559 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 559 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (559 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 559 (by decide)
    _ = (90 : Int) - (1 : Int) :=
      sub_congr node_3_559 node_3_13
    _ = (89 : Int) := by decide

theorem node_1_26290 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 = (3610 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (26290 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 (by decide)
    _ = (3699 : Int) - (89 : Int) :=
      sub_congr node_2_26290 node_2_559
    _ = (3610 : Int) := by decide

theorem node_8_496 : count [19, 17, 13, 11, 7, 5, 3, 2] 496 = (87 : Int) := by
  decide

theorem node_7_496 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 496 = (86 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 496 = count [19, 17, 13, 11, 7, 5, 3, 2] 496 - count [19, 17, 13, 11, 7, 5, 3, 2] (496 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 496 (by decide)
    _ = (87 : Int) - (1 : Int) :=
      sub_congr node_8_496 node_8_21
    _ = (86 : Int) := by decide

theorem node_6_496 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 496 = (85 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 496 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 496 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (496 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 496 (by decide)
    _ = (86 : Int) - (1 : Int) :=
      sub_congr node_7_496 node_7_17
    _ = (85 : Int) := by decide

theorem node_5_496 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 496 = (84 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 496 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 496 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (496 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 496 (by decide)
    _ = (85 : Int) - (1 : Int) :=
      sub_congr node_6_496 node_6_16
    _ = (84 : Int) := by decide

theorem node_4_496 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 496 = (83 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 496 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 496 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (496 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 496 (by decide)
    _ = (84 : Int) - (1 : Int) :=
      sub_congr node_5_496 node_5_13
    _ = (83 : Int) := by decide

theorem node_3_496 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 496 = (82 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 496 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 496 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (496 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 496 (by decide)
    _ = (83 : Int) - (1 : Int) :=
      sub_congr node_4_496 node_4_12
    _ = (82 : Int) := by decide

theorem node_2_496 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 496 = (81 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 496 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 496 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (496 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 496 (by decide)
    _ = (82 : Int) - (1 : Int) :=
      sub_congr node_3_496 node_3_11
    _ = (81 : Int) := by decide

theorem node_2_10 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (10 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_10 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_496 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 496 = (80 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 496 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 496 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (496 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 496 (by decide)
    _ = (81 : Int) - (1 : Int) :=
      sub_congr node_2_496 node_2_10
    _ = (80 : Int) := by decide

theorem node_0_26290 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 = (3530 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (26290 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26290 (by decide)
    _ = (3610 : Int) - (80 : Int) :=
      sub_congr node_1_26290 node_1_496
    _ = (3530 : Int) := by decide

theorem row_32 : count primes 23970 ≤ (3228 : Int) - 15 := by
  rw [show count primes 23970 = (3213 : Int) from node_0_23970]
  decide

theorem row_33 : count primes 26290 ≤ (3545 : Int) - 15 := by
  rw [show count primes 26290 = (3530 : Int) from node_0_26290]
  decide

def pairs : List (Nat × Nat) := [(23970, 3228), (26290, 3545)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl
  · exact row_32
  · exact row_33
end B699CorePrunedSieve.CoreRest03
#check @B699CorePrunedSieve.CoreRest03.pairs_valid
#print axioms B699CorePrunedSieve.CoreRest03.pairs_valid
