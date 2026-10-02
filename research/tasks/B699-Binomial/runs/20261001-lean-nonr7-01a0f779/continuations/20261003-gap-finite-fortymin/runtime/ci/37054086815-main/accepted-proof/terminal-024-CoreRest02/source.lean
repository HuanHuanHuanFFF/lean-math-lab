import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreRest02
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_19860 : count [19, 17, 13, 11, 7, 5, 3, 2] 19860 = (3399 : Int) := by
  decide

theorem node_8_863 : count [19, 17, 13, 11, 7, 5, 3, 2] 863 = (148 : Int) := by
  decide

theorem node_7_19860 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 = (3251 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 = count [19, 17, 13, 11, 7, 5, 3, 2] 19860 - count [19, 17, 13, 11, 7, 5, 3, 2] (19860 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 19860 (by decide)
    _ = (3399 : Int) - (148 : Int) :=
      sub_congr node_8_19860 node_8_863
    _ = (3251 : Int) := by decide

theorem node_8_684 : count [19, 17, 13, 11, 7, 5, 3, 2] 684 = (119 : Int) := by
  decide

theorem node_8_29 : count [19, 17, 13, 11, 7, 5, 3, 2] 29 = (3 : Int) := by
  decide

theorem node_7_684 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 684 = (116 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 684 = count [19, 17, 13, 11, 7, 5, 3, 2] 684 - count [19, 17, 13, 11, 7, 5, 3, 2] (684 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 684 (by decide)
    _ = (119 : Int) - (3 : Int) :=
      sub_congr node_8_684 node_8_29
    _ = (116 : Int) := by decide

theorem node_6_19860 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 = (3135 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (19860 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 (by decide)
    _ = (3251 : Int) - (116 : Int) :=
      sub_congr node_7_19860 node_7_684
    _ = (3135 : Int) := by decide

theorem node_8_640 : count [19, 17, 13, 11, 7, 5, 3, 2] 640 = (109 : Int) := by
  decide

theorem node_8_27 : count [19, 17, 13, 11, 7, 5, 3, 2] 27 = (2 : Int) := by
  decide

theorem node_7_640 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 640 = (107 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 640 = count [19, 17, 13, 11, 7, 5, 3, 2] 640 - count [19, 17, 13, 11, 7, 5, 3, 2] (640 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 640 (by decide)
    _ = (109 : Int) - (2 : Int) :=
      sub_congr node_8_640 node_8_27
    _ = (107 : Int) := by decide

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

theorem node_6_640 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 640 = (106 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 640 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 640 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (640 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 640 (by decide)
    _ = (107 : Int) - (1 : Int) :=
      sub_congr node_7_640 node_7_22
    _ = (106 : Int) := by decide

theorem node_5_19860 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 = (3029 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (19860 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 (by decide)
    _ = (3135 : Int) - (106 : Int) :=
      sub_congr node_6_19860 node_6_640
    _ = (3029 : Int) := by decide

theorem node_8_536 : count [19, 17, 13, 11, 7, 5, 3, 2] 536 = (93 : Int) := by
  decide

theorem node_8_23 : count [19, 17, 13, 11, 7, 5, 3, 2] 23 = (2 : Int) := by
  decide

theorem node_7_536 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 536 = (91 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 536 = count [19, 17, 13, 11, 7, 5, 3, 2] 536 - count [19, 17, 13, 11, 7, 5, 3, 2] (536 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 536 (by decide)
    _ = (93 : Int) - (2 : Int) :=
      sub_congr node_8_536 node_8_23
    _ = (91 : Int) := by decide

theorem node_8_18 : count [19, 17, 13, 11, 7, 5, 3, 2] 18 = (1 : Int) := by
  decide

theorem node_7_18 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 18 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 18 = count [19, 17, 13, 11, 7, 5, 3, 2] 18 - count [19, 17, 13, 11, 7, 5, 3, 2] (18 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 18 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_18 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_536 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 536 = (90 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 536 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 536 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (536 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 536 (by decide)
    _ = (91 : Int) - (1 : Int) :=
      sub_congr node_7_536 node_7_18
    _ = (90 : Int) := by decide

theorem node_8_17 : count [19, 17, 13, 11, 7, 5, 3, 2] 17 = (1 : Int) := by
  decide

theorem node_7_17 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 17 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 17 = count [19, 17, 13, 11, 7, 5, 3, 2] 17 - count [19, 17, 13, 11, 7, 5, 3, 2] (17 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 17 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_17 node_8_0
    _ = (1 : Int) := by decide

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_17 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 17 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 17 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 17 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (17 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 17 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_17 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_536 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 536 = (89 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 536 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 536 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (536 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 536 (by decide)
    _ = (90 : Int) - (1 : Int) :=
      sub_congr node_6_536 node_6_17
    _ = (89 : Int) := by decide

theorem node_4_19860 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 = (2940 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (19860 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 (by decide)
    _ = (3029 : Int) - (89 : Int) :=
      sub_congr node_5_19860 node_5_536
    _ = (2940 : Int) := by decide

theorem node_8_484 : count [19, 17, 13, 11, 7, 5, 3, 2] 484 = (85 : Int) := by
  decide

theorem node_8_21 : count [19, 17, 13, 11, 7, 5, 3, 2] 21 = (1 : Int) := by
  decide

theorem node_7_484 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 484 = (84 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 484 = count [19, 17, 13, 11, 7, 5, 3, 2] 484 - count [19, 17, 13, 11, 7, 5, 3, 2] (484 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 484 (by decide)
    _ = (85 : Int) - (1 : Int) :=
      sub_congr node_8_484 node_8_21
    _ = (84 : Int) := by decide

theorem node_8_16 : count [19, 17, 13, 11, 7, 5, 3, 2] 16 = (1 : Int) := by
  decide

theorem node_7_16 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = count [19, 17, 13, 11, 7, 5, 3, 2] 16 - count [19, 17, 13, 11, 7, 5, 3, 2] (16 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 16 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_16 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_484 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 484 = (83 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 484 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 484 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (484 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 484 (by decide)
    _ = (84 : Int) - (1 : Int) :=
      sub_congr node_7_484 node_7_16
    _ = (83 : Int) := by decide

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

theorem node_5_484 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 484 = (82 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 484 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 484 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (484 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 484 (by decide)
    _ = (83 : Int) - (1 : Int) :=
      sub_congr node_6_484 node_6_15
    _ = (82 : Int) := by decide

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

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_13 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (13 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_13 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_484 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 484 = (81 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 484 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 484 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (484 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 484 (by decide)
    _ = (82 : Int) - (1 : Int) :=
      sub_congr node_5_484 node_5_13
    _ = (81 : Int) := by decide

theorem node_3_19860 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 = (2859 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (19860 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 (by decide)
    _ = (2940 : Int) - (81 : Int) :=
      sub_congr node_4_19860 node_4_484
    _ = (2859 : Int) := by decide

theorem node_8_461 : count [19, 17, 13, 11, 7, 5, 3, 2] 461 = (82 : Int) := by
  decide

theorem node_8_20 : count [19, 17, 13, 11, 7, 5, 3, 2] 20 = (1 : Int) := by
  decide

theorem node_7_461 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 461 = (81 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 461 = count [19, 17, 13, 11, 7, 5, 3, 2] 461 - count [19, 17, 13, 11, 7, 5, 3, 2] (461 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 461 (by decide)
    _ = (82 : Int) - (1 : Int) :=
      sub_congr node_8_461 node_8_20
    _ = (81 : Int) := by decide

theorem node_6_461 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 461 = (80 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 461 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 461 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (461 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 461 (by decide)
    _ = (81 : Int) - (1 : Int) :=
      sub_congr node_7_461 node_7_15
    _ = (80 : Int) := by decide

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

theorem node_5_461 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 461 = (79 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 461 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 461 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (461 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 461 (by decide)
    _ = (80 : Int) - (1 : Int) :=
      sub_congr node_6_461 node_6_14
    _ = (79 : Int) := by decide

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

theorem node_4_461 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 461 = (78 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 461 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 461 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (461 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 461 (by decide)
    _ = (79 : Int) - (1 : Int) :=
      sub_congr node_5_461 node_5_12
    _ = (78 : Int) := by decide

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

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_11 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (11 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_11 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_461 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 461 = (77 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 461 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 461 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (461 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 461 (by decide)
    _ = (78 : Int) - (1 : Int) :=
      sub_congr node_4_461 node_4_11
    _ = (77 : Int) := by decide

theorem node_2_19860 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 = (2782 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (19860 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 (by decide)
    _ = (2859 : Int) - (77 : Int) :=
      sub_congr node_3_19860 node_3_461
    _ = (2782 : Int) := by decide

theorem node_8_422 : count [19, 17, 13, 11, 7, 5, 3, 2] 422 = (75 : Int) := by
  decide

theorem node_7_422 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 422 = (74 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 422 = count [19, 17, 13, 11, 7, 5, 3, 2] 422 - count [19, 17, 13, 11, 7, 5, 3, 2] (422 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 422 (by decide)
    _ = (75 : Int) - (1 : Int) :=
      sub_congr node_8_422 node_8_18
    _ = (74 : Int) := by decide

theorem node_6_422 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 422 = (73 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 422 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 422 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (422 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 422 (by decide)
    _ = (74 : Int) - (1 : Int) :=
      sub_congr node_7_422 node_7_14
    _ = (73 : Int) := by decide

theorem node_5_422 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 422 = (72 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 422 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 422 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (422 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 422 (by decide)
    _ = (73 : Int) - (1 : Int) :=
      sub_congr node_6_422 node_6_13
    _ = (72 : Int) := by decide

theorem node_4_422 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 422 = (71 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 422 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 422 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (422 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 422 (by decide)
    _ = (72 : Int) - (1 : Int) :=
      sub_congr node_5_422 node_5_11
    _ = (71 : Int) := by decide

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

theorem node_3_422 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 422 = (70 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 422 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 422 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (422 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 422 (by decide)
    _ = (71 : Int) - (1 : Int) :=
      sub_congr node_4_422 node_4_10
    _ = (70 : Int) := by decide

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

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_9 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (9 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_9 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_422 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 422 = (69 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 422 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 422 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (422 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 422 (by decide)
    _ = (70 : Int) - (1 : Int) :=
      sub_congr node_3_422 node_3_9
    _ = (69 : Int) := by decide

theorem node_1_19860 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 = (2713 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (19860 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 (by decide)
    _ = (2782 : Int) - (69 : Int) :=
      sub_congr node_2_19860 node_2_422
    _ = (2713 : Int) := by decide

theorem node_8_374 : count [19, 17, 13, 11, 7, 5, 3, 2] 374 = (67 : Int) := by
  decide

theorem node_7_374 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 374 = (66 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 374 = count [19, 17, 13, 11, 7, 5, 3, 2] 374 - count [19, 17, 13, 11, 7, 5, 3, 2] (374 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 374 (by decide)
    _ = (67 : Int) - (1 : Int) :=
      sub_congr node_8_374 node_8_16
    _ = (66 : Int) := by decide

theorem node_6_374 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 374 = (65 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 374 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 374 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (374 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 374 (by decide)
    _ = (66 : Int) - (1 : Int) :=
      sub_congr node_7_374 node_7_12
    _ = (65 : Int) := by decide

theorem node_5_374 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 374 = (64 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 374 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 374 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (374 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 374 (by decide)
    _ = (65 : Int) - (1 : Int) :=
      sub_congr node_6_374 node_6_12
    _ = (64 : Int) := by decide

theorem node_4_374 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 374 = (63 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 374 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 374 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (374 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 374 (by decide)
    _ = (64 : Int) - (1 : Int) :=
      sub_congr node_5_374 node_5_10
    _ = (63 : Int) := by decide

theorem node_3_374 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 374 = (62 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 374 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 374 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (374 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 374 (by decide)
    _ = (63 : Int) - (1 : Int) :=
      sub_congr node_4_374 node_4_9
    _ = (62 : Int) := by decide

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

theorem node_3_8 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (8 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_8 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_374 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 374 = (61 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 374 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 374 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (374 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 374 (by decide)
    _ = (62 : Int) - (1 : Int) :=
      sub_congr node_3_374 node_3_8
    _ = (61 : Int) := by decide

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

theorem node_3_7 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (7 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_7 node_4_0
    _ = (1 : Int) := by decide

theorem node_3_0 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_2_7 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (7 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_7 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_374 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 374 = (60 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 374 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 374 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (374 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 374 (by decide)
    _ = (61 : Int) - (1 : Int) :=
      sub_congr node_2_374 node_2_7
    _ = (60 : Int) := by decide

theorem node_0_19860 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 = (2653 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (19860 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19860 (by decide)
    _ = (2713 : Int) - (60 : Int) :=
      sub_congr node_1_19860 node_1_374
    _ = (2653 : Int) := by decide

theorem node_8_21828 : count [19, 17, 13, 11, 7, 5, 3, 2] 21828 = (3737 : Int) := by
  decide

theorem node_8_949 : count [19, 17, 13, 11, 7, 5, 3, 2] 949 = (161 : Int) := by
  decide

theorem node_7_21828 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 = (3576 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 = count [19, 17, 13, 11, 7, 5, 3, 2] 21828 - count [19, 17, 13, 11, 7, 5, 3, 2] (21828 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 21828 (by decide)
    _ = (3737 : Int) - (161 : Int) :=
      sub_congr node_8_21828 node_8_949
    _ = (3576 : Int) := by decide

theorem node_8_752 : count [19, 17, 13, 11, 7, 5, 3, 2] 752 = (129 : Int) := by
  decide

theorem node_8_32 : count [19, 17, 13, 11, 7, 5, 3, 2] 32 = (4 : Int) := by
  decide

theorem node_7_752 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 752 = (125 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 752 = count [19, 17, 13, 11, 7, 5, 3, 2] 752 - count [19, 17, 13, 11, 7, 5, 3, 2] (752 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 752 (by decide)
    _ = (129 : Int) - (4 : Int) :=
      sub_congr node_8_752 node_8_32
    _ = (125 : Int) := by decide

theorem node_6_21828 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 = (3451 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (21828 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 (by decide)
    _ = (3576 : Int) - (125 : Int) :=
      sub_congr node_7_21828 node_7_752
    _ = (3451 : Int) := by decide

theorem node_8_704 : count [19, 17, 13, 11, 7, 5, 3, 2] 704 = (121 : Int) := by
  decide

theorem node_8_30 : count [19, 17, 13, 11, 7, 5, 3, 2] 30 = (3 : Int) := by
  decide

theorem node_7_704 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 704 = (118 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 704 = count [19, 17, 13, 11, 7, 5, 3, 2] 704 - count [19, 17, 13, 11, 7, 5, 3, 2] (704 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 704 (by decide)
    _ = (121 : Int) - (3 : Int) :=
      sub_congr node_8_704 node_8_30
    _ = (118 : Int) := by decide

theorem node_8_24 : count [19, 17, 13, 11, 7, 5, 3, 2] 24 = (2 : Int) := by
  decide

theorem node_8_1 : count [19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  decide

theorem node_7_24 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = count [19, 17, 13, 11, 7, 5, 3, 2] 24 - count [19, 17, 13, 11, 7, 5, 3, 2] (24 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 24 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_8_24 node_8_1
    _ = (1 : Int) := by decide

theorem node_6_704 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 704 = (117 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 704 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 704 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (704 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 704 (by decide)
    _ = (118 : Int) - (1 : Int) :=
      sub_congr node_7_704 node_7_24
    _ = (117 : Int) := by decide

theorem node_5_21828 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 = (3334 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (21828 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 (by decide)
    _ = (3451 : Int) - (117 : Int) :=
      sub_congr node_6_21828 node_6_704
    _ = (3334 : Int) := by decide

theorem node_8_589 : count [19, 17, 13, 11, 7, 5, 3, 2] 589 = (101 : Int) := by
  decide

theorem node_8_25 : count [19, 17, 13, 11, 7, 5, 3, 2] 25 = (2 : Int) := by
  decide

theorem node_7_589 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 589 = (99 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 589 = count [19, 17, 13, 11, 7, 5, 3, 2] 589 - count [19, 17, 13, 11, 7, 5, 3, 2] (589 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 589 (by decide)
    _ = (101 : Int) - (2 : Int) :=
      sub_congr node_8_589 node_8_25
    _ = (99 : Int) := by decide

theorem node_7_20 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 20 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 20 = count [19, 17, 13, 11, 7, 5, 3, 2] 20 - count [19, 17, 13, 11, 7, 5, 3, 2] (20 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 20 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_20 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_589 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 589 = (98 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 589 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 589 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (589 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 589 (by decide)
    _ = (99 : Int) - (1 : Int) :=
      sub_congr node_7_589 node_7_20
    _ = (98 : Int) := by decide

theorem node_8_19 : count [19, 17, 13, 11, 7, 5, 3, 2] 19 = (1 : Int) := by
  decide

theorem node_7_19 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 19 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 19 = count [19, 17, 13, 11, 7, 5, 3, 2] 19 - count [19, 17, 13, 11, 7, 5, 3, 2] (19 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 19 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_19 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_19 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 19 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (19 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 19 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_19 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_589 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 589 = (97 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 589 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 589 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (589 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 589 (by decide)
    _ = (98 : Int) - (1 : Int) :=
      sub_congr node_6_589 node_6_19
    _ = (97 : Int) := by decide

theorem node_4_21828 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 = (3237 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (21828 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 (by decide)
    _ = (3334 : Int) - (97 : Int) :=
      sub_congr node_5_21828 node_5_589
    _ = (3237 : Int) := by decide

theorem node_8_532 : count [19, 17, 13, 11, 7, 5, 3, 2] 532 = (93 : Int) := by
  decide

theorem node_7_532 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 532 = (91 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 532 = count [19, 17, 13, 11, 7, 5, 3, 2] 532 - count [19, 17, 13, 11, 7, 5, 3, 2] (532 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 532 (by decide)
    _ = (93 : Int) - (2 : Int) :=
      sub_congr node_8_532 node_8_23
    _ = (91 : Int) := by decide

theorem node_6_532 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 532 = (90 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 532 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 532 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (532 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 532 (by decide)
    _ = (91 : Int) - (1 : Int) :=
      sub_congr node_7_532 node_7_18
    _ = (90 : Int) := by decide

theorem node_5_532 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 532 = (89 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 532 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 532 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (532 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 532 (by decide)
    _ = (90 : Int) - (1 : Int) :=
      sub_congr node_6_532 node_6_17
    _ = (89 : Int) := by decide

theorem node_5_14 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (14 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_14 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_532 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 532 = (88 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 532 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 532 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (532 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 532 (by decide)
    _ = (89 : Int) - (1 : Int) :=
      sub_congr node_5_532 node_5_14
    _ = (88 : Int) := by decide

theorem node_3_21828 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 = (3149 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (21828 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 (by decide)
    _ = (3237 : Int) - (88 : Int) :=
      sub_congr node_4_21828 node_4_532
    _ = (3149 : Int) := by decide

theorem node_8_507 : count [19, 17, 13, 11, 7, 5, 3, 2] 507 = (89 : Int) := by
  decide

theorem node_7_507 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 507 = (88 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 507 = count [19, 17, 13, 11, 7, 5, 3, 2] 507 - count [19, 17, 13, 11, 7, 5, 3, 2] (507 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 507 (by decide)
    _ = (89 : Int) - (1 : Int) :=
      sub_congr node_8_507 node_8_22
    _ = (88 : Int) := by decide

theorem node_6_507 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 507 = (87 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 507 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 507 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (507 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 507 (by decide)
    _ = (88 : Int) - (1 : Int) :=
      sub_congr node_7_507 node_7_17
    _ = (87 : Int) := by decide

theorem node_6_16 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 16 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (16 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 16 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_16 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_507 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 507 = (86 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 507 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 507 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (507 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 507 (by decide)
    _ = (87 : Int) - (1 : Int) :=
      sub_congr node_6_507 node_6_16
    _ = (86 : Int) := by decide

theorem node_4_507 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 507 = (85 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 507 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 507 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (507 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 507 (by decide)
    _ = (86 : Int) - (1 : Int) :=
      sub_congr node_5_507 node_5_13
    _ = (85 : Int) := by decide

theorem node_4_12 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (12 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_12 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_507 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 507 = (84 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 507 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 507 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (507 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 507 (by decide)
    _ = (85 : Int) - (1 : Int) :=
      sub_congr node_4_507 node_4_12
    _ = (84 : Int) := by decide

theorem node_2_21828 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 = (3065 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (21828 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 (by decide)
    _ = (3149 : Int) - (84 : Int) :=
      sub_congr node_3_21828 node_3_507
    _ = (3065 : Int) := by decide

theorem node_8_464 : count [19, 17, 13, 11, 7, 5, 3, 2] 464 = (83 : Int) := by
  decide

theorem node_7_464 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 464 = (82 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 464 = count [19, 17, 13, 11, 7, 5, 3, 2] 464 - count [19, 17, 13, 11, 7, 5, 3, 2] (464 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 464 (by decide)
    _ = (83 : Int) - (1 : Int) :=
      sub_congr node_8_464 node_8_20
    _ = (82 : Int) := by decide

theorem node_6_464 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 464 = (81 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 464 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 464 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (464 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 464 (by decide)
    _ = (82 : Int) - (1 : Int) :=
      sub_congr node_7_464 node_7_16
    _ = (81 : Int) := by decide

theorem node_5_464 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 464 = (80 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 464 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 464 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (464 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 464 (by decide)
    _ = (81 : Int) - (1 : Int) :=
      sub_congr node_6_464 node_6_14
    _ = (80 : Int) := by decide

theorem node_4_464 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 464 = (79 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 464 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 464 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (464 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 464 (by decide)
    _ = (80 : Int) - (1 : Int) :=
      sub_congr node_5_464 node_5_12
    _ = (79 : Int) := by decide

theorem node_3_464 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 464 = (78 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 464 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 464 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (464 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 464 (by decide)
    _ = (79 : Int) - (1 : Int) :=
      sub_congr node_4_464 node_4_11
    _ = (78 : Int) := by decide

theorem node_3_10 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (10 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 10 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_10 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_464 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 464 = (77 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 464 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 464 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (464 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 464 (by decide)
    _ = (78 : Int) - (1 : Int) :=
      sub_congr node_3_464 node_3_10
    _ = (77 : Int) := by decide

theorem node_1_21828 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 = (2988 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (21828 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 (by decide)
    _ = (3065 : Int) - (77 : Int) :=
      sub_congr node_2_21828 node_2_464
    _ = (2988 : Int) := by decide

theorem node_8_411 : count [19, 17, 13, 11, 7, 5, 3, 2] 411 = (73 : Int) := by
  decide

theorem node_7_411 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 411 = (72 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 411 = count [19, 17, 13, 11, 7, 5, 3, 2] 411 - count [19, 17, 13, 11, 7, 5, 3, 2] (411 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 411 (by decide)
    _ = (73 : Int) - (1 : Int) :=
      sub_congr node_8_411 node_8_17
    _ = (72 : Int) := by decide

theorem node_6_411 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 411 = (71 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 411 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 411 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (411 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 411 (by decide)
    _ = (72 : Int) - (1 : Int) :=
      sub_congr node_7_411 node_7_14
    _ = (71 : Int) := by decide

theorem node_5_411 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 411 = (70 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 411 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 411 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (411 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 411 (by decide)
    _ = (71 : Int) - (1 : Int) :=
      sub_congr node_6_411 node_6_13
    _ = (70 : Int) := by decide

theorem node_4_411 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 411 = (69 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 411 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 411 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (411 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 411 (by decide)
    _ = (70 : Int) - (1 : Int) :=
      sub_congr node_5_411 node_5_11
    _ = (69 : Int) := by decide

theorem node_3_411 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 411 = (68 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 411 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 411 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (411 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 411 (by decide)
    _ = (69 : Int) - (1 : Int) :=
      sub_congr node_4_411 node_4_10
    _ = (68 : Int) := by decide

theorem node_2_411 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 411 = (67 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 411 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 411 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (411 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 411 (by decide)
    _ = (68 : Int) - (1 : Int) :=
      sub_congr node_3_411 node_3_9
    _ = (67 : Int) := by decide

theorem node_2_8 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (8 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_8 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_411 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 411 = (66 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 411 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 411 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (411 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 411 (by decide)
    _ = (67 : Int) - (1 : Int) :=
      sub_congr node_2_411 node_2_8
    _ = (66 : Int) := by decide

theorem node_0_21828 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 = (2922 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (21828 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21828 (by decide)
    _ = (2988 : Int) - (66 : Int) :=
      sub_congr node_1_21828 node_1_411
    _ = (2922 : Int) := by decide

theorem row_30 : count primes 19860 ≤ (2668 : Int) - 15 := by
  rw [show count primes 19860 = (2653 : Int) from node_0_19860]
  decide

theorem row_31 : count primes 21828 ≤ (2937 : Int) - 15 := by
  rw [show count primes 21828 = (2922 : Int) from node_0_21828]
  decide

def pairs : List (Nat × Nat) := [(19860, 2668), (21828, 2937)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl
  · exact row_30
  · exact row_31
end B699CorePrunedSieve.CoreRest02
#check @B699CorePrunedSieve.CoreRest02.pairs_valid
#print axioms B699CorePrunedSieve.CoreRest02.pairs_valid
