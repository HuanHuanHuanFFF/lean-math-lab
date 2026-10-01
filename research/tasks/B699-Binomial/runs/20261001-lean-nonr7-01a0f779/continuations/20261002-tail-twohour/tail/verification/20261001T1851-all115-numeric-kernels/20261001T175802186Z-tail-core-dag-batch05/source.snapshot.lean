import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreDagBatch05
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_3546 : count [19, 17, 13, 11, 7, 5, 3, 2] 3546 = (602 : Int) := by
  decide

theorem node_8_154 : count [19, 17, 13, 11, 7, 5, 3, 2] 154 = (29 : Int) := by
  decide

theorem node_7_3546 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 = (573 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 = count [19, 17, 13, 11, 7, 5, 3, 2] 3546 - count [19, 17, 13, 11, 7, 5, 3, 2] (3546 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3546 (by decide)
    _ = (602 : Int) - (29 : Int) :=
      sub_congr node_8_3546 node_8_154
    _ = (573 : Int) := by decide

theorem node_8_122 : count [19, 17, 13, 11, 7, 5, 3, 2] 122 = (23 : Int) := by
  decide

theorem node_8_5 : count [19, 17, 13, 11, 7, 5, 3, 2] 5 = (1 : Int) := by
  decide

theorem node_7_122 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 122 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 122 = count [19, 17, 13, 11, 7, 5, 3, 2] 122 - count [19, 17, 13, 11, 7, 5, 3, 2] (122 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 122 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_122 node_8_5
    _ = (22 : Int) := by decide

theorem node_6_3546 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 = (551 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3546 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 (by decide)
    _ = (573 : Int) - (22 : Int) :=
      sub_congr node_7_3546 node_7_122
    _ = (551 : Int) := by decide

theorem node_8_114 : count [19, 17, 13, 11, 7, 5, 3, 2] 114 = (23 : Int) := by
  decide

theorem node_8_4 : count [19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  decide

theorem node_7_114 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 114 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 114 = count [19, 17, 13, 11, 7, 5, 3, 2] 114 - count [19, 17, 13, 11, 7, 5, 3, 2] (114 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 114 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_114 node_8_4
    _ = (22 : Int) := by decide

theorem node_8_3 : count [19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  decide

theorem node_8_0 : count [19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [19, 17, 13, 11, 7, 5, 3, 2]

theorem node_7_3 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = count [19, 17, 13, 11, 7, 5, 3, 2] 3 - count [19, 17, 13, 11, 7, 5, 3, 2] (3 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_3 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_114 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114 = (21 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 114 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (114 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 114 (by decide)
    _ = (22 : Int) - (1 : Int) :=
      sub_congr node_7_114 node_7_3
    _ = (21 : Int) := by decide

theorem node_5_3546 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 = (530 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3546 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 (by decide)
    _ = (551 : Int) - (21 : Int) :=
      sub_congr node_6_3546 node_6_114
    _ = (530 : Int) := by decide

theorem node_8_95 : count [19, 17, 13, 11, 7, 5, 3, 2] 95 = (17 : Int) := by
  decide

theorem node_7_95 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 95 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 95 = count [19, 17, 13, 11, 7, 5, 3, 2] 95 - count [19, 17, 13, 11, 7, 5, 3, 2] (95 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 95 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_95 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_95 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95 = (15 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 95 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (95 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 95 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_7_95 node_7_3
    _ = (15 : Int) := by decide

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_3 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_3 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_95 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95 = (14 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (95 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_6_95 node_6_3
    _ = (14 : Int) := by decide

theorem node_4_3546 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 = (516 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3546 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 (by decide)
    _ = (530 : Int) - (14 : Int) :=
      sub_congr node_5_3546 node_5_95
    _ = (516 : Int) := by decide

theorem node_8_86 : count [19, 17, 13, 11, 7, 5, 3, 2] 86 = (16 : Int) := by
  decide

theorem node_7_86 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = count [19, 17, 13, 11, 7, 5, 3, 2] 86 - count [19, 17, 13, 11, 7, 5, 3, 2] (86 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 86 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_86 node_8_3
    _ = (15 : Int) := by decide

theorem node_8_2 : count [19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  decide

theorem node_7_2 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [19, 17, 13, 11, 7, 5, 3, 2] 2 - count [19, 17, 13, 11, 7, 5, 3, 2] (2 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_2 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_86 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = (14 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (86 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_7_86 node_7_2
    _ = (14 : Int) := by decide

theorem node_6_2 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_2 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_86 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = (13 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (86 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_6_86 node_6_2
    _ = (13 : Int) := by decide

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_2 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_2 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_86 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = (12 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (86 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_5_86 node_5_2
    _ = (12 : Int) := by decide

theorem node_3_3546 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 = (504 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3546 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 (by decide)
    _ = (516 : Int) - (12 : Int) :=
      sub_congr node_4_3546 node_4_86
    _ = (504 : Int) := by decide

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

theorem node_5_82 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = (12 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (82 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_6_82 node_6_2
    _ = (12 : Int) := by decide

theorem node_4_82 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = (11 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (82 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_5_82 node_5_2
    _ = (11 : Int) := by decide

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_2 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_2 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_82 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = (10 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (82 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_4_82 node_4_2
    _ = (10 : Int) := by decide

theorem node_2_3546 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 = (494 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3546 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 (by decide)
    _ = (504 : Int) - (10 : Int) :=
      sub_congr node_3_3546 node_3_82
    _ = (494 : Int) := by decide

theorem node_8_75 : count [19, 17, 13, 11, 7, 5, 3, 2] 75 = (14 : Int) := by
  decide

theorem node_7_75 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = count [19, 17, 13, 11, 7, 5, 3, 2] 75 - count [19, 17, 13, 11, 7, 5, 3, 2] (75 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 75 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_75 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_75 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = (12 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 75 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (75 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 75 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_7_75 node_7_2
    _ = (12 : Int) := by decide

theorem node_5_75 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = (11 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (75 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_6_75 node_6_2
    _ = (11 : Int) := by decide

theorem node_4_75 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = (10 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (75 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_5_75 node_5_2
    _ = (10 : Int) := by decide

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

theorem node_5_1 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_1 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_1 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_1 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_75 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = (9 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (75 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_4_75 node_4_1
    _ = (9 : Int) := by decide

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_1 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_1 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_75 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = (8 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (75 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_3_75 node_3_1
    _ = (8 : Int) := by decide

theorem node_1_3546 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 = (486 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3546 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 (by decide)
    _ = (494 : Int) - (8 : Int) :=
      sub_congr node_2_3546 node_2_75
    _ = (486 : Int) := by decide

theorem node_8_66 : count [19, 17, 13, 11, 7, 5, 3, 2] 66 = (11 : Int) := by
  decide

theorem node_7_66 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = (10 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = count [19, 17, 13, 11, 7, 5, 3, 2] 66 - count [19, 17, 13, 11, 7, 5, 3, 2] (66 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 66 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_8_66 node_8_2
    _ = (10 : Int) := by decide

theorem node_6_66 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = (9 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 66 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (66 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 66 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_7_66 node_7_2
    _ = (9 : Int) := by decide

theorem node_5_66 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = (8 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (66 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_6_66 node_6_2
    _ = (8 : Int) := by decide

theorem node_4_66 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = (7 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (66 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_5_66 node_5_1
    _ = (7 : Int) := by decide

theorem node_3_66 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = (6 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (66 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_4_66 node_4_1
    _ = (6 : Int) := by decide

theorem node_2_66 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = (5 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (66 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_3_66 node_3_1
    _ = (5 : Int) := by decide

theorem node_3_0 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_2_1 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_1 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_66 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = (4 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (66 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_2_66 node_2_1
    _ = (4 : Int) := by decide

theorem node_0_3546 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 = (482 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3546 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3546 (by decide)
    _ = (486 : Int) - (4 : Int) :=
      sub_congr node_1_3546 node_1_66
    _ = (482 : Int) := by decide

theorem node_8_4095 : count [19, 17, 13, 11, 7, 5, 3, 2] 4095 = (698 : Int) := by
  decide

theorem node_8_178 : count [19, 17, 13, 11, 7, 5, 3, 2] 178 = (33 : Int) := by
  decide

theorem node_7_4095 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 = (665 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 = count [19, 17, 13, 11, 7, 5, 3, 2] 4095 - count [19, 17, 13, 11, 7, 5, 3, 2] (4095 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4095 (by decide)
    _ = (698 : Int) - (33 : Int) :=
      sub_congr node_8_4095 node_8_178
    _ = (665 : Int) := by decide

theorem node_8_141 : count [19, 17, 13, 11, 7, 5, 3, 2] 141 = (27 : Int) := by
  decide

theorem node_8_6 : count [19, 17, 13, 11, 7, 5, 3, 2] 6 = (1 : Int) := by
  decide

theorem node_7_141 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 141 = (26 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 141 = count [19, 17, 13, 11, 7, 5, 3, 2] 141 - count [19, 17, 13, 11, 7, 5, 3, 2] (141 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 141 (by decide)
    _ = (27 : Int) - (1 : Int) :=
      sub_congr node_8_141 node_8_6
    _ = (26 : Int) := by decide

theorem node_6_4095 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 = (639 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (4095 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 (by decide)
    _ = (665 : Int) - (26 : Int) :=
      sub_congr node_7_4095 node_7_141
    _ = (639 : Int) := by decide

theorem node_8_132 : count [19, 17, 13, 11, 7, 5, 3, 2] 132 = (25 : Int) := by
  decide

theorem node_7_132 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 132 = (24 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 132 = count [19, 17, 13, 11, 7, 5, 3, 2] 132 - count [19, 17, 13, 11, 7, 5, 3, 2] (132 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 132 (by decide)
    _ = (25 : Int) - (1 : Int) :=
      sub_congr node_8_132 node_8_5
    _ = (24 : Int) := by decide

theorem node_7_4 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4 = count [19, 17, 13, 11, 7, 5, 3, 2] 4 - count [19, 17, 13, 11, 7, 5, 3, 2] (4 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_4 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_132 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 132 = (23 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 132 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 132 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (132 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 132 (by decide)
    _ = (24 : Int) - (1 : Int) :=
      sub_congr node_7_132 node_7_4
    _ = (23 : Int) := by decide

theorem node_5_4095 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 = (616 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (4095 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 (by decide)
    _ = (639 : Int) - (23 : Int) :=
      sub_congr node_6_4095 node_6_132
    _ = (616 : Int) := by decide

theorem node_8_110 : count [19, 17, 13, 11, 7, 5, 3, 2] 110 = (22 : Int) := by
  decide

theorem node_7_110 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 110 = (21 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 110 = count [19, 17, 13, 11, 7, 5, 3, 2] 110 - count [19, 17, 13, 11, 7, 5, 3, 2] (110 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 110 (by decide)
    _ = (22 : Int) - (1 : Int) :=
      sub_congr node_8_110 node_8_4
    _ = (21 : Int) := by decide

theorem node_6_110 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110 = (20 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 110 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (110 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 110 (by decide)
    _ = (21 : Int) - (1 : Int) :=
      sub_congr node_7_110 node_7_3
    _ = (20 : Int) := by decide

theorem node_5_110 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110 = (19 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (110 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110 (by decide)
    _ = (20 : Int) - (1 : Int) :=
      sub_congr node_6_110 node_6_3
    _ = (19 : Int) := by decide

theorem node_4_4095 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 = (597 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (4095 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 (by decide)
    _ = (616 : Int) - (19 : Int) :=
      sub_congr node_5_4095 node_5_110
    _ = (597 : Int) := by decide

theorem node_8_99 : count [19, 17, 13, 11, 7, 5, 3, 2] 99 = (18 : Int) := by
  decide

theorem node_7_99 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 99 = (17 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 99 = count [19, 17, 13, 11, 7, 5, 3, 2] 99 - count [19, 17, 13, 11, 7, 5, 3, 2] (99 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 99 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_8_99 node_8_4
    _ = (17 : Int) := by decide

theorem node_6_99 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99 = (16 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 99 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (99 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 99 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_7_99 node_7_3
    _ = (16 : Int) := by decide

theorem node_5_99 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99 = (15 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (99 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_6_99 node_6_3
    _ = (15 : Int) := by decide

theorem node_4_99 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99 = (14 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (99 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_5_99 node_5_2
    _ = (14 : Int) := by decide

theorem node_3_4095 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 = (583 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (4095 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 (by decide)
    _ = (597 : Int) - (14 : Int) :=
      sub_congr node_4_4095 node_4_99
    _ = (583 : Int) := by decide

theorem node_4_95 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95 = (13 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (95 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_5_95 node_5_2
    _ = (13 : Int) := by decide

theorem node_3_95 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95 = (12 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (95 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_4_95 node_4_2
    _ = (12 : Int) := by decide

theorem node_2_4095 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 = (571 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (4095 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 (by decide)
    _ = (583 : Int) - (12 : Int) :=
      sub_congr node_3_4095 node_3_95
    _ = (571 : Int) := by decide

theorem node_8_87 : count [19, 17, 13, 11, 7, 5, 3, 2] 87 = (16 : Int) := by
  decide

theorem node_7_87 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = count [19, 17, 13, 11, 7, 5, 3, 2] 87 - count [19, 17, 13, 11, 7, 5, 3, 2] (87 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 87 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_87 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_87 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = (14 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 87 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (87 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 87 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_7_87 node_7_3
    _ = (14 : Int) := by decide

theorem node_5_87 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = (13 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (87 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_6_87 node_6_2
    _ = (13 : Int) := by decide

theorem node_4_87 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = (12 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (87 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_5_87 node_5_2
    _ = (12 : Int) := by decide

theorem node_3_87 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = (11 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (87 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_4_87 node_4_2
    _ = (11 : Int) := by decide

theorem node_3_2 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_2 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_87 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = (10 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (87 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_3_87 node_3_2
    _ = (10 : Int) := by decide

theorem node_1_4095 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 = (561 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (4095 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 (by decide)
    _ = (571 : Int) - (10 : Int) :=
      sub_congr node_2_4095 node_2_87
    _ = (561 : Int) := by decide

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

theorem node_5_77 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = (11 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (77 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_6_77 node_6_2
    _ = (11 : Int) := by decide

theorem node_4_77 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = (10 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (77 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_5_77 node_5_2
    _ = (10 : Int) := by decide

theorem node_3_77 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = (9 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (77 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_4_77 node_4_1
    _ = (9 : Int) := by decide

theorem node_2_77 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = (8 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (77 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_3_77 node_3_1
    _ = (8 : Int) := by decide

theorem node_1_77 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = (7 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (77 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_2_77 node_2_1
    _ = (7 : Int) := by decide

theorem node_0_4095 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 = (554 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (4095 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4095 (by decide)
    _ = (561 : Int) - (7 : Int) :=
      sub_congr node_1_4095 node_1_77
    _ = (554 : Int) := by decide

theorem node_8_4758 : count [19, 17, 13, 11, 7, 5, 3, 2] 4758 = (813 : Int) := by
  decide

theorem node_8_206 : count [19, 17, 13, 11, 7, 5, 3, 2] 206 = (39 : Int) := by
  decide

theorem node_7_4758 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 = (774 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 = count [19, 17, 13, 11, 7, 5, 3, 2] 4758 - count [19, 17, 13, 11, 7, 5, 3, 2] (4758 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4758 (by decide)
    _ = (813 : Int) - (39 : Int) :=
      sub_congr node_8_4758 node_8_206
    _ = (774 : Int) := by decide

theorem node_8_164 : count [19, 17, 13, 11, 7, 5, 3, 2] 164 = (31 : Int) := by
  decide

theorem node_8_7 : count [19, 17, 13, 11, 7, 5, 3, 2] 7 = (1 : Int) := by
  decide

theorem node_7_164 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 164 = (30 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 164 = count [19, 17, 13, 11, 7, 5, 3, 2] 164 - count [19, 17, 13, 11, 7, 5, 3, 2] (164 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 164 (by decide)
    _ = (31 : Int) - (1 : Int) :=
      sub_congr node_8_164 node_8_7
    _ = (30 : Int) := by decide

theorem node_6_4758 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 = (744 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (4758 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 (by decide)
    _ = (774 : Int) - (30 : Int) :=
      sub_congr node_7_4758 node_7_164
    _ = (744 : Int) := by decide

theorem node_8_153 : count [19, 17, 13, 11, 7, 5, 3, 2] 153 = (29 : Int) := by
  decide

theorem node_7_153 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 153 = (28 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 153 = count [19, 17, 13, 11, 7, 5, 3, 2] 153 - count [19, 17, 13, 11, 7, 5, 3, 2] (153 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 153 (by decide)
    _ = (29 : Int) - (1 : Int) :=
      sub_congr node_8_153 node_8_6
    _ = (28 : Int) := by decide

theorem node_7_5 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 5 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 5 = count [19, 17, 13, 11, 7, 5, 3, 2] 5 - count [19, 17, 13, 11, 7, 5, 3, 2] (5 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 5 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_5 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_153 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 153 = (27 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 153 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 153 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (153 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 153 (by decide)
    _ = (28 : Int) - (1 : Int) :=
      sub_congr node_7_153 node_7_5
    _ = (27 : Int) := by decide

theorem node_5_4758 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 = (717 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (4758 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 (by decide)
    _ = (744 : Int) - (27 : Int) :=
      sub_congr node_6_4758 node_6_153
    _ = (717 : Int) := by decide

theorem node_8_128 : count [19, 17, 13, 11, 7, 5, 3, 2] 128 = (24 : Int) := by
  decide

theorem node_7_128 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 128 = (23 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 128 = count [19, 17, 13, 11, 7, 5, 3, 2] 128 - count [19, 17, 13, 11, 7, 5, 3, 2] (128 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 128 (by decide)
    _ = (24 : Int) - (1 : Int) :=
      sub_congr node_8_128 node_8_5
    _ = (23 : Int) := by decide

theorem node_6_128 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 128 = (22 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 128 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 128 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (128 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 128 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_7_128 node_7_4
    _ = (22 : Int) := by decide

theorem node_6_4 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (4 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 4 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_4 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_128 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 128 = (21 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 128 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 128 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (128 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 128 (by decide)
    _ = (22 : Int) - (1 : Int) :=
      sub_congr node_6_128 node_6_4
    _ = (21 : Int) := by decide

theorem node_4_4758 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 = (696 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (4758 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 (by decide)
    _ = (717 : Int) - (21 : Int) :=
      sub_congr node_5_4758 node_5_128
    _ = (696 : Int) := by decide

theorem node_8_116 : count [19, 17, 13, 11, 7, 5, 3, 2] 116 = (23 : Int) := by
  decide

theorem node_7_116 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 116 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 116 = count [19, 17, 13, 11, 7, 5, 3, 2] 116 - count [19, 17, 13, 11, 7, 5, 3, 2] (116 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 116 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_116 node_8_5
    _ = (22 : Int) := by decide

theorem node_6_116 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 116 = (21 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 116 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 116 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (116 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 116 (by decide)
    _ = (22 : Int) - (1 : Int) :=
      sub_congr node_7_116 node_7_4
    _ = (21 : Int) := by decide

theorem node_5_116 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 116 = (20 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 116 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 116 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (116 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 116 (by decide)
    _ = (21 : Int) - (1 : Int) :=
      sub_congr node_6_116 node_6_3
    _ = (20 : Int) := by decide

theorem node_5_3 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_3 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_116 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 116 = (19 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 116 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 116 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (116 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 116 (by decide)
    _ = (20 : Int) - (1 : Int) :=
      sub_congr node_5_116 node_5_3
    _ = (19 : Int) := by decide

theorem node_3_4758 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 = (677 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (4758 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 (by decide)
    _ = (696 : Int) - (19 : Int) :=
      sub_congr node_4_4758 node_4_116
    _ = (677 : Int) := by decide

theorem node_4_110 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110 = (18 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (110 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110 (by decide)
    _ = (19 : Int) - (1 : Int) :=
      sub_congr node_5_110 node_5_2
    _ = (18 : Int) := by decide

theorem node_3_110 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110 = (17 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (110 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_4_110 node_4_2
    _ = (17 : Int) := by decide

theorem node_2_4758 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 = (660 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (4758 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 (by decide)
    _ = (677 : Int) - (17 : Int) :=
      sub_congr node_3_4758 node_3_110
    _ = (660 : Int) := by decide

theorem node_8_101 : count [19, 17, 13, 11, 7, 5, 3, 2] 101 = (19 : Int) := by
  decide

theorem node_7_101 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 101 = (18 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 101 = count [19, 17, 13, 11, 7, 5, 3, 2] 101 - count [19, 17, 13, 11, 7, 5, 3, 2] (101 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 101 (by decide)
    _ = (19 : Int) - (1 : Int) :=
      sub_congr node_8_101 node_8_4
    _ = (18 : Int) := by decide

theorem node_6_101 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101 = (17 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 101 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (101 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 101 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_7_101 node_7_3
    _ = (17 : Int) := by decide

theorem node_5_101 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101 = (16 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (101 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_6_101 node_6_3
    _ = (16 : Int) := by decide

theorem node_4_101 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101 = (15 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (101 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_5_101 node_5_2
    _ = (15 : Int) := by decide

theorem node_3_101 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101 = (14 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (101 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_4_101 node_4_2
    _ = (14 : Int) := by decide

theorem node_2_101 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101 = (13 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (101 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_3_101 node_3_2
    _ = (13 : Int) := by decide

theorem node_1_4758 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 = (647 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (4758 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 (by decide)
    _ = (660 : Int) - (13 : Int) :=
      sub_congr node_2_4758 node_2_101
    _ = (647 : Int) := by decide

theorem node_8_89 : count [19, 17, 13, 11, 7, 5, 3, 2] 89 = (17 : Int) := by
  decide

theorem node_7_89 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = count [19, 17, 13, 11, 7, 5, 3, 2] 89 - count [19, 17, 13, 11, 7, 5, 3, 2] (89 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 89 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_89 node_8_3
    _ = (16 : Int) := by decide

theorem node_6_89 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = (15 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 89 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (89 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 89 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_7_89 node_7_3
    _ = (15 : Int) := by decide

theorem node_5_89 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = (14 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (89 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_6_89 node_6_2
    _ = (14 : Int) := by decide

theorem node_4_89 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = (13 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (89 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_5_89 node_5_2
    _ = (13 : Int) := by decide

theorem node_3_89 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = (12 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (89 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_4_89 node_4_2
    _ = (12 : Int) := by decide

theorem node_2_89 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = (11 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (89 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_3_89 node_3_2
    _ = (11 : Int) := by decide

theorem node_1_89 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = (10 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (89 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_2_89 node_2_1
    _ = (10 : Int) := by decide

theorem node_0_4758 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 = (637 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (4758 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4758 (by decide)
    _ = (647 : Int) - (10 : Int) :=
      sub_congr node_1_4758 node_1_89
    _ = (637 : Int) := by decide

theorem node_8_5572 : count [19, 17, 13, 11, 7, 5, 3, 2] 5572 = (951 : Int) := by
  decide

theorem node_8_242 : count [19, 17, 13, 11, 7, 5, 3, 2] 242 = (46 : Int) := by
  decide

theorem node_7_5572 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 = (905 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 = count [19, 17, 13, 11, 7, 5, 3, 2] 5572 - count [19, 17, 13, 11, 7, 5, 3, 2] (5572 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 5572 (by decide)
    _ = (951 : Int) - (46 : Int) :=
      sub_congr node_8_5572 node_8_242
    _ = (905 : Int) := by decide

theorem node_8_192 : count [19, 17, 13, 11, 7, 5, 3, 2] 192 = (36 : Int) := by
  decide

theorem node_8_8 : count [19, 17, 13, 11, 7, 5, 3, 2] 8 = (1 : Int) := by
  decide

theorem node_7_192 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 192 = (35 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 192 = count [19, 17, 13, 11, 7, 5, 3, 2] 192 - count [19, 17, 13, 11, 7, 5, 3, 2] (192 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 192 (by decide)
    _ = (36 : Int) - (1 : Int) :=
      sub_congr node_8_192 node_8_8
    _ = (35 : Int) := by decide

theorem node_6_5572 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 = (870 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (5572 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 (by decide)
    _ = (905 : Int) - (35 : Int) :=
      sub_congr node_7_5572 node_7_192
    _ = (870 : Int) := by decide

theorem node_8_179 : count [19, 17, 13, 11, 7, 5, 3, 2] 179 = (34 : Int) := by
  decide

theorem node_7_179 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 179 = (33 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 179 = count [19, 17, 13, 11, 7, 5, 3, 2] 179 - count [19, 17, 13, 11, 7, 5, 3, 2] (179 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 179 (by decide)
    _ = (34 : Int) - (1 : Int) :=
      sub_congr node_8_179 node_8_7
    _ = (33 : Int) := by decide

theorem node_7_6 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 6 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 6 = count [19, 17, 13, 11, 7, 5, 3, 2] 6 - count [19, 17, 13, 11, 7, 5, 3, 2] (6 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 6 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_6 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_179 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 179 = (32 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 179 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 179 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (179 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 179 (by decide)
    _ = (33 : Int) - (1 : Int) :=
      sub_congr node_7_179 node_7_6
    _ = (32 : Int) := by decide

theorem node_5_5572 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 = (838 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (5572 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 (by decide)
    _ = (870 : Int) - (32 : Int) :=
      sub_congr node_6_5572 node_6_179
    _ = (838 : Int) := by decide

theorem node_8_150 : count [19, 17, 13, 11, 7, 5, 3, 2] 150 = (28 : Int) := by
  decide

theorem node_7_150 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 150 = (27 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 150 = count [19, 17, 13, 11, 7, 5, 3, 2] 150 - count [19, 17, 13, 11, 7, 5, 3, 2] (150 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 150 (by decide)
    _ = (28 : Int) - (1 : Int) :=
      sub_congr node_8_150 node_8_6
    _ = (27 : Int) := by decide

theorem node_6_150 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 150 = (26 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 150 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 150 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (150 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 150 (by decide)
    _ = (27 : Int) - (1 : Int) :=
      sub_congr node_7_150 node_7_5
    _ = (26 : Int) := by decide

theorem node_5_150 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 150 = (25 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 150 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 150 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (150 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 150 (by decide)
    _ = (26 : Int) - (1 : Int) :=
      sub_congr node_6_150 node_6_4
    _ = (25 : Int) := by decide

theorem node_4_5572 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 = (813 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (5572 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 (by decide)
    _ = (838 : Int) - (25 : Int) :=
      sub_congr node_5_5572 node_5_150
    _ = (813 : Int) := by decide

theorem node_8_135 : count [19, 17, 13, 11, 7, 5, 3, 2] 135 = (25 : Int) := by
  decide

theorem node_7_135 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 135 = (24 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 135 = count [19, 17, 13, 11, 7, 5, 3, 2] 135 - count [19, 17, 13, 11, 7, 5, 3, 2] (135 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 135 (by decide)
    _ = (25 : Int) - (1 : Int) :=
      sub_congr node_8_135 node_8_5
    _ = (24 : Int) := by decide

theorem node_6_135 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 135 = (23 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 135 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 135 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (135 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 135 (by decide)
    _ = (24 : Int) - (1 : Int) :=
      sub_congr node_7_135 node_7_4
    _ = (23 : Int) := by decide

theorem node_5_135 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 135 = (22 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 135 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 135 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (135 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 135 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_6_135 node_6_4
    _ = (22 : Int) := by decide

theorem node_4_135 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 135 = (21 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 135 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 135 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (135 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 135 (by decide)
    _ = (22 : Int) - (1 : Int) :=
      sub_congr node_5_135 node_5_3
    _ = (21 : Int) := by decide

theorem node_3_5572 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 = (792 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (5572 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 (by decide)
    _ = (813 : Int) - (21 : Int) :=
      sub_congr node_4_5572 node_4_135
    _ = (792 : Int) := by decide

theorem node_8_129 : count [19, 17, 13, 11, 7, 5, 3, 2] 129 = (24 : Int) := by
  decide

theorem node_7_129 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 129 = (23 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 129 = count [19, 17, 13, 11, 7, 5, 3, 2] 129 - count [19, 17, 13, 11, 7, 5, 3, 2] (129 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 129 (by decide)
    _ = (24 : Int) - (1 : Int) :=
      sub_congr node_8_129 node_8_5
    _ = (23 : Int) := by decide

theorem node_6_129 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129 = (22 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 129 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (129 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 129 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_7_129 node_7_4
    _ = (22 : Int) := by decide

theorem node_5_129 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129 = (21 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (129 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129 (by decide)
    _ = (22 : Int) - (1 : Int) :=
      sub_congr node_6_129 node_6_4
    _ = (21 : Int) := by decide

theorem node_4_129 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129 = (20 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (129 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129 (by decide)
    _ = (21 : Int) - (1 : Int) :=
      sub_congr node_5_129 node_5_3
    _ = (20 : Int) := by decide

theorem node_4_3 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_3 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_129 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129 = (19 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (129 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129 (by decide)
    _ = (20 : Int) - (1 : Int) :=
      sub_congr node_4_129 node_4_3
    _ = (19 : Int) := by decide

theorem node_2_5572 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 = (773 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (5572 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 (by decide)
    _ = (792 : Int) - (19 : Int) :=
      sub_congr node_3_5572 node_3_129
    _ = (773 : Int) := by decide

theorem node_8_118 : count [19, 17, 13, 11, 7, 5, 3, 2] 118 = (23 : Int) := by
  decide

theorem node_7_118 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 118 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 118 = count [19, 17, 13, 11, 7, 5, 3, 2] 118 - count [19, 17, 13, 11, 7, 5, 3, 2] (118 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 118 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_118 node_8_5
    _ = (22 : Int) := by decide

theorem node_6_118 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118 = (21 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 118 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (118 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 118 (by decide)
    _ = (22 : Int) - (1 : Int) :=
      sub_congr node_7_118 node_7_4
    _ = (21 : Int) := by decide

theorem node_5_118 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118 = (20 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (118 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118 (by decide)
    _ = (21 : Int) - (1 : Int) :=
      sub_congr node_6_118 node_6_3
    _ = (20 : Int) := by decide

theorem node_4_118 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118 = (19 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (118 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118 (by decide)
    _ = (20 : Int) - (1 : Int) :=
      sub_congr node_5_118 node_5_3
    _ = (19 : Int) := by decide

theorem node_3_118 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118 = (18 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (118 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118 (by decide)
    _ = (19 : Int) - (1 : Int) :=
      sub_congr node_4_118 node_4_2
    _ = (18 : Int) := by decide

theorem node_2_118 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118 = (17 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (118 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_3_118 node_3_2
    _ = (17 : Int) := by decide

theorem node_1_5572 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 = (756 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (5572 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 (by decide)
    _ = (773 : Int) - (17 : Int) :=
      sub_congr node_2_5572 node_2_118
    _ = (756 : Int) := by decide

theorem node_8_105 : count [19, 17, 13, 11, 7, 5, 3, 2] 105 = (20 : Int) := by
  decide

theorem node_7_105 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 105 = (19 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 105 = count [19, 17, 13, 11, 7, 5, 3, 2] 105 - count [19, 17, 13, 11, 7, 5, 3, 2] (105 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 105 (by decide)
    _ = (20 : Int) - (1 : Int) :=
      sub_congr node_8_105 node_8_4
    _ = (19 : Int) := by decide

theorem node_6_105 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105 = (18 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 105 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (105 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 105 (by decide)
    _ = (19 : Int) - (1 : Int) :=
      sub_congr node_7_105 node_7_3
    _ = (18 : Int) := by decide

theorem node_5_105 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105 = (17 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (105 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_6_105 node_6_3
    _ = (17 : Int) := by decide

theorem node_4_105 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105 = (16 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (105 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_5_105 node_5_2
    _ = (16 : Int) := by decide

theorem node_3_105 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105 = (15 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (105 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_4_105 node_4_2
    _ = (15 : Int) := by decide

theorem node_2_105 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105 = (14 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (105 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_3_105 node_3_2
    _ = (14 : Int) := by decide

theorem node_2_2 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_2 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_105 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105 = (13 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (105 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_2_105 node_2_2
    _ = (13 : Int) := by decide

theorem node_0_5572 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 = (743 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (5572 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5572 (by decide)
    _ = (756 : Int) - (13 : Int) :=
      sub_congr node_1_5572 node_1_105
    _ = (743 : Int) := by decide

theorem row_16 : count primes 3546 ≤ (497 : Int) - 15 := by
  rw [show count primes 3546 = (482 : Int) from node_0_3546]
  decide

theorem row_17 : count primes 4095 ≤ (569 : Int) - 15 := by
  rw [show count primes 4095 = (554 : Int) from node_0_4095]
  decide

theorem row_18 : count primes 4758 ≤ (652 : Int) - 15 := by
  rw [show count primes 4758 = (637 : Int) from node_0_4758]
  decide

theorem row_19 : count primes 5572 ≤ (758 : Int) - 15 := by
  rw [show count primes 5572 = (743 : Int) from node_0_5572]
  decide

def pairs : List (Nat × Nat) := [(3546, 497), (4095, 569), (4758, 652), (5572, 758)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl | rfl | rfl
  · exact row_16
  · exact row_17
  · exact row_18
  · exact row_19
end B699CorePrunedSieve.CoreDagBatch05
#check @B699CorePrunedSieve.CoreDagBatch05.pairs_valid
#print axioms B699CorePrunedSieve.CoreDagBatch05.pairs_valid
