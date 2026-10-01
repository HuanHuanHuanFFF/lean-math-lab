import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreDagBatch19
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_85548 : count [19, 17, 13, 11, 7, 5, 3, 2] 85548 = (14630 : Int) := by
  decide

theorem node_8_3719 : count [19, 17, 13, 11, 7, 5, 3, 2] 3719 = (633 : Int) := by
  decide

theorem node_7_85548 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 = (13997 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 = count [19, 17, 13, 11, 7, 5, 3, 2] 85548 - count [19, 17, 13, 11, 7, 5, 3, 2] (85548 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 85548 (by decide)
    _ = (14630 : Int) - (633 : Int) :=
      sub_congr node_8_85548 node_8_3719
    _ = (13997 : Int) := by decide

theorem node_8_2949 : count [19, 17, 13, 11, 7, 5, 3, 2] 2949 = (501 : Int) := by
  decide

theorem node_8_128 : count [19, 17, 13, 11, 7, 5, 3, 2] 128 = (24 : Int) := by
  decide

theorem node_7_2949 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2949 = (477 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2949 = count [19, 17, 13, 11, 7, 5, 3, 2] 2949 - count [19, 17, 13, 11, 7, 5, 3, 2] (2949 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2949 (by decide)
    _ = (501 : Int) - (24 : Int) :=
      sub_congr node_8_2949 node_8_128
    _ = (477 : Int) := by decide

theorem node_6_85548 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 = (13520 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (85548 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 (by decide)
    _ = (13997 : Int) - (477 : Int) :=
      sub_congr node_7_85548 node_7_2949
    _ = (13520 : Int) := by decide

theorem node_8_2759 : count [19, 17, 13, 11, 7, 5, 3, 2] 2759 = (470 : Int) := by
  decide

theorem node_8_119 : count [19, 17, 13, 11, 7, 5, 3, 2] 119 = (23 : Int) := by
  decide

theorem node_7_2759 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2759 = (447 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2759 = count [19, 17, 13, 11, 7, 5, 3, 2] 2759 - count [19, 17, 13, 11, 7, 5, 3, 2] (2759 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2759 (by decide)
    _ = (470 : Int) - (23 : Int) :=
      sub_congr node_8_2759 node_8_119
    _ = (447 : Int) := by decide

theorem node_8_95 : count [19, 17, 13, 11, 7, 5, 3, 2] 95 = (17 : Int) := by
  decide

theorem node_8_4 : count [19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  decide

theorem node_7_95 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 95 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 95 = count [19, 17, 13, 11, 7, 5, 3, 2] 95 - count [19, 17, 13, 11, 7, 5, 3, 2] (95 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 95 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_95 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_2759 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2759 = (431 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2759 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2759 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2759 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2759 (by decide)
    _ = (447 : Int) - (16 : Int) :=
      sub_congr node_7_2759 node_7_95
    _ = (431 : Int) := by decide

theorem node_5_85548 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 = (13089 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (85548 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 (by decide)
    _ = (13520 : Int) - (431 : Int) :=
      sub_congr node_6_85548 node_6_2759
    _ = (13089 : Int) := by decide

theorem node_8_2312 : count [19, 17, 13, 11, 7, 5, 3, 2] 2312 = (393 : Int) := by
  decide

theorem node_8_100 : count [19, 17, 13, 11, 7, 5, 3, 2] 100 = (18 : Int) := by
  decide

theorem node_7_2312 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2312 = (375 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2312 = count [19, 17, 13, 11, 7, 5, 3, 2] 2312 - count [19, 17, 13, 11, 7, 5, 3, 2] (2312 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2312 (by decide)
    _ = (393 : Int) - (18 : Int) :=
      sub_congr node_8_2312 node_8_100
    _ = (375 : Int) := by decide

theorem node_8_79 : count [19, 17, 13, 11, 7, 5, 3, 2] 79 = (15 : Int) := by
  decide

theorem node_8_3 : count [19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  decide

theorem node_7_79 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 79 = (14 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 79 = count [19, 17, 13, 11, 7, 5, 3, 2] 79 - count [19, 17, 13, 11, 7, 5, 3, 2] (79 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 79 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_8_79 node_8_3
    _ = (14 : Int) := by decide

theorem node_6_2312 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2312 = (361 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2312 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2312 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2312 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2312 (by decide)
    _ = (375 : Int) - (14 : Int) :=
      sub_congr node_7_2312 node_7_79
    _ = (361 : Int) := by decide

theorem node_8_74 : count [19, 17, 13, 11, 7, 5, 3, 2] 74 = (14 : Int) := by
  decide

theorem node_7_74 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = count [19, 17, 13, 11, 7, 5, 3, 2] 74 - count [19, 17, 13, 11, 7, 5, 3, 2] (74 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 74 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_74 node_8_3
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

theorem node_6_74 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = (12 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 74 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (74 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 74 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_7_74 node_7_2
    _ = (12 : Int) := by decide

theorem node_5_2312 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2312 = (349 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2312 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2312 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2312 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2312 (by decide)
    _ = (361 : Int) - (12 : Int) :=
      sub_congr node_6_2312 node_6_74
    _ = (349 : Int) := by decide

theorem node_4_85548 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 = (12740 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (85548 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 (by decide)
    _ = (13089 : Int) - (349 : Int) :=
      sub_congr node_5_85548 node_5_2312
    _ = (12740 : Int) := by decide

theorem node_8_2086 : count [19, 17, 13, 11, 7, 5, 3, 2] 2086 = (353 : Int) := by
  decide

theorem node_8_90 : count [19, 17, 13, 11, 7, 5, 3, 2] 90 = (17 : Int) := by
  decide

theorem node_7_2086 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2086 = (336 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2086 = count [19, 17, 13, 11, 7, 5, 3, 2] 2086 - count [19, 17, 13, 11, 7, 5, 3, 2] (2086 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2086 (by decide)
    _ = (353 : Int) - (17 : Int) :=
      sub_congr node_8_2086 node_8_90
    _ = (336 : Int) := by decide

theorem node_8_71 : count [19, 17, 13, 11, 7, 5, 3, 2] 71 = (13 : Int) := by
  decide

theorem node_7_71 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = (12 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = count [19, 17, 13, 11, 7, 5, 3, 2] 71 - count [19, 17, 13, 11, 7, 5, 3, 2] (71 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 71 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_8_71 node_8_3
    _ = (12 : Int) := by decide

theorem node_6_2086 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2086 = (324 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2086 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2086 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2086 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2086 (by decide)
    _ = (336 : Int) - (12 : Int) :=
      sub_congr node_7_2086 node_7_71
    _ = (324 : Int) := by decide

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

theorem node_5_2086 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2086 = (314 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2086 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2086 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2086 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2086 (by decide)
    _ = (324 : Int) - (10 : Int) :=
      sub_congr node_6_2086 node_6_67
    _ = (314 : Int) := by decide

theorem node_8_56 : count [19, 17, 13, 11, 7, 5, 3, 2] 56 = (9 : Int) := by
  decide

theorem node_7_56 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = count [19, 17, 13, 11, 7, 5, 3, 2] 56 - count [19, 17, 13, 11, 7, 5, 3, 2] (56 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 56 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_56 node_8_2
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

theorem node_6_56 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = (7 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 56 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (56 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 56 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_7_56 node_7_1
    _ = (7 : Int) := by decide

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_1 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_1 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_56 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = (6 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (56 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_6_56 node_6_1
    _ = (6 : Int) := by decide

theorem node_4_2086 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2086 = (308 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2086 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2086 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2086 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2086 (by decide)
    _ = (314 : Int) - (6 : Int) :=
      sub_congr node_5_2086 node_5_56
    _ = (308 : Int) := by decide

theorem node_3_85548 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 = (12432 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (85548 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 (by decide)
    _ = (12740 : Int) - (308 : Int) :=
      sub_congr node_4_85548 node_4_2086
    _ = (12432 : Int) := by decide

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

theorem node_8_68 : count [19, 17, 13, 11, 7, 5, 3, 2] 68 = (12 : Int) := by
  decide

theorem node_7_68 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = (11 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = count [19, 17, 13, 11, 7, 5, 3, 2] 68 - count [19, 17, 13, 11, 7, 5, 3, 2] (68 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 68 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_8_68 node_8_2
    _ = (11 : Int) := by decide

theorem node_6_1989 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1989 = (308 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1989 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1989 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1989 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1989 (by decide)
    _ = (319 : Int) - (11 : Int) :=
      sub_congr node_7_1989 node_7_68
    _ = (308 : Int) := by decide

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

theorem node_5_1989 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1989 = (299 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1989 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1989 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1989 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1989 (by decide)
    _ = (308 : Int) - (9 : Int) :=
      sub_congr node_6_1989 node_6_64
    _ = (299 : Int) := by decide

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

theorem node_4_1989 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1989 = (293 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1989 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1989 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1989 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1989 (by decide)
    _ = (299 : Int) - (6 : Int) :=
      sub_congr node_5_1989 node_5_53
    _ = (293 : Int) := by decide

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

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_1 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_1 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_48 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = (4 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (48 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_5_48 node_5_1
    _ = (4 : Int) := by decide

theorem node_3_1989 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1989 = (289 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1989 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1989 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1989 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1989 (by decide)
    _ = (293 : Int) - (4 : Int) :=
      sub_congr node_4_1989 node_4_48
    _ = (289 : Int) := by decide

theorem node_2_85548 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 = (12143 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (85548 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 (by decide)
    _ = (12432 : Int) - (289 : Int) :=
      sub_congr node_3_85548 node_3_1989
    _ = (12143 : Int) := by decide

theorem node_8_1820 : count [19, 17, 13, 11, 7, 5, 3, 2] 1820 = (308 : Int) := by
  decide

theorem node_7_1820 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1820 = (293 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1820 = count [19, 17, 13, 11, 7, 5, 3, 2] 1820 - count [19, 17, 13, 11, 7, 5, 3, 2] (1820 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1820 (by decide)
    _ = (308 : Int) - (15 : Int) :=
      sub_congr node_8_1820 node_8_79
    _ = (293 : Int) := by decide

theorem node_8_62 : count [19, 17, 13, 11, 7, 5, 3, 2] 62 = (11 : Int) := by
  decide

theorem node_7_62 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = (10 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = count [19, 17, 13, 11, 7, 5, 3, 2] 62 - count [19, 17, 13, 11, 7, 5, 3, 2] (62 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 62 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_8_62 node_8_2
    _ = (10 : Int) := by decide

theorem node_6_1820 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1820 = (283 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1820 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1820 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1820 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1820 (by decide)
    _ = (293 : Int) - (10 : Int) :=
      sub_congr node_7_1820 node_7_62
    _ = (283 : Int) := by decide

theorem node_8_58 : count [19, 17, 13, 11, 7, 5, 3, 2] 58 = (9 : Int) := by
  decide

theorem node_7_58 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = count [19, 17, 13, 11, 7, 5, 3, 2] 58 - count [19, 17, 13, 11, 7, 5, 3, 2] (58 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 58 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_58 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_58 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = (7 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 58 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (58 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 58 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_7_58 node_7_2
    _ = (7 : Int) := by decide

theorem node_5_1820 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1820 = (276 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1820 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1820 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1820 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1820 (by decide)
    _ = (283 : Int) - (7 : Int) :=
      sub_congr node_6_1820 node_6_58
    _ = (276 : Int) := by decide

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

theorem node_5_49 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = (5 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (49 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_6_49 node_6_1
    _ = (5 : Int) := by decide

theorem node_4_1820 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1820 = (271 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1820 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1820 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1820 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1820 (by decide)
    _ = (276 : Int) - (5 : Int) :=
      sub_congr node_5_1820 node_5_49
    _ = (271 : Int) := by decide

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

theorem node_3_1820 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1820 = (268 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1820 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1820 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1820 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1820 (by decide)
    _ = (271 : Int) - (3 : Int) :=
      sub_congr node_4_1820 node_4_44
    _ = (268 : Int) := by decide

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

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_1 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_1 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_42 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (42 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_4_42 node_4_1
    _ = (1 : Int) := by decide

theorem node_2_1820 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1820 = (267 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1820 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1820 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1820 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1820 (by decide)
    _ = (268 : Int) - (1 : Int) :=
      sub_congr node_3_1820 node_3_42
    _ = (267 : Int) := by decide

theorem node_1_85548 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 = (11876 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (85548 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 (by decide)
    _ = (12143 : Int) - (267 : Int) :=
      sub_congr node_2_85548 node_2_1820
    _ = (11876 : Int) := by decide

theorem node_8_1614 : count [19, 17, 13, 11, 7, 5, 3, 2] 1614 = (274 : Int) := by
  decide

theorem node_8_70 : count [19, 17, 13, 11, 7, 5, 3, 2] 70 = (12 : Int) := by
  decide

theorem node_7_1614 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1614 = (262 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1614 = count [19, 17, 13, 11, 7, 5, 3, 2] 1614 - count [19, 17, 13, 11, 7, 5, 3, 2] (1614 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1614 (by decide)
    _ = (274 : Int) - (12 : Int) :=
      sub_congr node_8_1614 node_8_70
    _ = (262 : Int) := by decide

theorem node_8_55 : count [19, 17, 13, 11, 7, 5, 3, 2] 55 = (9 : Int) := by
  decide

theorem node_7_55 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = count [19, 17, 13, 11, 7, 5, 3, 2] 55 - count [19, 17, 13, 11, 7, 5, 3, 2] (55 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 55 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_55 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_1614 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1614 = (254 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1614 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1614 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1614 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1614 (by decide)
    _ = (262 : Int) - (8 : Int) :=
      sub_congr node_7_1614 node_7_55
    _ = (254 : Int) := by decide

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

theorem node_5_1614 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1614 = (248 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1614 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1614 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1614 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1614 (by decide)
    _ = (254 : Int) - (6 : Int) :=
      sub_congr node_6_1614 node_6_52
    _ = (248 : Int) := by decide

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

theorem node_5_43 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 = (4 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (43 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_6_43 node_6_1
    _ = (4 : Int) := by decide

theorem node_4_1614 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1614 = (244 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1614 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1614 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1614 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1614 (by decide)
    _ = (248 : Int) - (4 : Int) :=
      sub_congr node_5_1614 node_5_43
    _ = (244 : Int) := by decide

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

theorem node_3_1614 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1614 = (243 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1614 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1614 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1614 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1614 (by decide)
    _ = (244 : Int) - (1 : Int) :=
      sub_congr node_4_1614 node_4_39
    _ = (243 : Int) := by decide

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

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_37 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (37 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_37 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1614 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1614 = (242 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1614 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1614 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1614 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1614 (by decide)
    _ = (243 : Int) - (1 : Int) :=
      sub_congr node_3_1614 node_3_37
    _ = (242 : Int) := by decide

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

theorem node_4_34 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (34 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_34 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_34 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (34 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_34 node_4_0
    _ = (1 : Int) := by decide

theorem node_3_0 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_2_34 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (34 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_34 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1614 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1614 = (241 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1614 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1614 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1614 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1614 (by decide)
    _ = (242 : Int) - (1 : Int) :=
      sub_congr node_2_1614 node_2_34
    _ = (241 : Int) := by decide

theorem node_0_85548 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 = (11635 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (85548 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85548 (by decide)
    _ = (11876 : Int) - (241 : Int) :=
      sub_congr node_1_85548 node_1_1614
    _ = (11635 : Int) := by decide

theorem node_8_86530 : count [19, 17, 13, 11, 7, 5, 3, 2] 86530 = (14798 : Int) := by
  decide

theorem node_8_3762 : count [19, 17, 13, 11, 7, 5, 3, 2] 3762 = (640 : Int) := by
  decide

theorem node_7_86530 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 = (14158 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 = count [19, 17, 13, 11, 7, 5, 3, 2] 86530 - count [19, 17, 13, 11, 7, 5, 3, 2] (86530 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 86530 (by decide)
    _ = (14798 : Int) - (640 : Int) :=
      sub_congr node_8_86530 node_8_3762
    _ = (14158 : Int) := by decide

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

theorem node_6_86530 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 = (13676 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (86530 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 (by decide)
    _ = (14158 : Int) - (482 : Int) :=
      sub_congr node_7_86530 node_7_2983
    _ = (13676 : Int) := by decide

theorem node_8_2791 : count [19, 17, 13, 11, 7, 5, 3, 2] 2791 = (475 : Int) := by
  decide

theorem node_8_121 : count [19, 17, 13, 11, 7, 5, 3, 2] 121 = (23 : Int) := by
  decide

theorem node_7_2791 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2791 = (452 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2791 = count [19, 17, 13, 11, 7, 5, 3, 2] 2791 - count [19, 17, 13, 11, 7, 5, 3, 2] (2791 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2791 (by decide)
    _ = (475 : Int) - (23 : Int) :=
      sub_congr node_8_2791 node_8_121
    _ = (452 : Int) := by decide

theorem node_8_96 : count [19, 17, 13, 11, 7, 5, 3, 2] 96 = (17 : Int) := by
  decide

theorem node_7_96 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 96 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 96 = count [19, 17, 13, 11, 7, 5, 3, 2] 96 - count [19, 17, 13, 11, 7, 5, 3, 2] (96 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 96 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_96 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_2791 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2791 = (436 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2791 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2791 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2791 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2791 (by decide)
    _ = (452 : Int) - (16 : Int) :=
      sub_congr node_7_2791 node_7_96
    _ = (436 : Int) := by decide

theorem node_5_86530 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 = (13240 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (86530 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 (by decide)
    _ = (13676 : Int) - (436 : Int) :=
      sub_congr node_6_86530 node_6_2791
    _ = (13240 : Int) := by decide

theorem node_8_2338 : count [19, 17, 13, 11, 7, 5, 3, 2] 2338 = (395 : Int) := by
  decide

theorem node_8_101 : count [19, 17, 13, 11, 7, 5, 3, 2] 101 = (19 : Int) := by
  decide

theorem node_7_2338 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2338 = (376 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2338 = count [19, 17, 13, 11, 7, 5, 3, 2] 2338 - count [19, 17, 13, 11, 7, 5, 3, 2] (2338 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2338 (by decide)
    _ = (395 : Int) - (19 : Int) :=
      sub_congr node_8_2338 node_8_101
    _ = (376 : Int) := by decide

theorem node_8_80 : count [19, 17, 13, 11, 7, 5, 3, 2] 80 = (15 : Int) := by
  decide

theorem node_7_80 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = (14 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = count [19, 17, 13, 11, 7, 5, 3, 2] 80 - count [19, 17, 13, 11, 7, 5, 3, 2] (80 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 80 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_8_80 node_8_3
    _ = (14 : Int) := by decide

theorem node_6_2338 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2338 = (362 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2338 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2338 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2338 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2338 (by decide)
    _ = (376 : Int) - (14 : Int) :=
      sub_congr node_7_2338 node_7_80
    _ = (362 : Int) := by decide

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

theorem node_5_2338 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2338 = (350 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2338 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2338 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2338 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2338 (by decide)
    _ = (362 : Int) - (12 : Int) :=
      sub_congr node_6_2338 node_6_75
    _ = (350 : Int) := by decide

theorem node_4_86530 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 = (12890 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (86530 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 (by decide)
    _ = (13240 : Int) - (350 : Int) :=
      sub_congr node_5_86530 node_5_2338
    _ = (12890 : Int) := by decide

theorem node_8_2110 : count [19, 17, 13, 11, 7, 5, 3, 2] 2110 = (356 : Int) := by
  decide

theorem node_8_91 : count [19, 17, 13, 11, 7, 5, 3, 2] 91 = (17 : Int) := by
  decide

theorem node_7_2110 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2110 = (339 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2110 = count [19, 17, 13, 11, 7, 5, 3, 2] 2110 - count [19, 17, 13, 11, 7, 5, 3, 2] (2110 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2110 (by decide)
    _ = (356 : Int) - (17 : Int) :=
      sub_congr node_8_2110 node_8_91
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

theorem node_6_2110 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2110 = (327 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2110 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2110 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2110 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2110 (by decide)
    _ = (339 : Int) - (12 : Int) :=
      sub_congr node_7_2110 node_7_72
    _ = (327 : Int) := by decide

theorem node_6_68 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = (10 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 68 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (68 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 68 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_7_68 node_7_2
    _ = (10 : Int) := by decide

theorem node_5_2110 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2110 = (317 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2110 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2110 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2110 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2110 (by decide)
    _ = (327 : Int) - (10 : Int) :=
      sub_congr node_6_2110 node_6_68
    _ = (317 : Int) := by decide

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

theorem node_4_2110 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2110 = (311 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2110 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2110 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2110 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2110 (by decide)
    _ = (317 : Int) - (6 : Int) :=
      sub_congr node_5_2110 node_5_57
    _ = (311 : Int) := by decide

theorem node_3_86530 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 = (12579 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (86530 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 (by decide)
    _ = (12890 : Int) - (311 : Int) :=
      sub_congr node_4_86530 node_4_2110
    _ = (12579 : Int) := by decide

theorem node_8_2012 : count [19, 17, 13, 11, 7, 5, 3, 2] 2012 = (340 : Int) := by
  decide

theorem node_8_87 : count [19, 17, 13, 11, 7, 5, 3, 2] 87 = (16 : Int) := by
  decide

theorem node_7_2012 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2012 = (324 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2012 = count [19, 17, 13, 11, 7, 5, 3, 2] 2012 - count [19, 17, 13, 11, 7, 5, 3, 2] (2012 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2012 (by decide)
    _ = (340 : Int) - (16 : Int) :=
      sub_congr node_8_2012 node_8_87
    _ = (324 : Int) := by decide

theorem node_8_69 : count [19, 17, 13, 11, 7, 5, 3, 2] 69 = (12 : Int) := by
  decide

theorem node_7_69 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = (11 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = count [19, 17, 13, 11, 7, 5, 3, 2] 69 - count [19, 17, 13, 11, 7, 5, 3, 2] (69 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 69 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_8_69 node_8_3
    _ = (11 : Int) := by decide

theorem node_6_2012 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2012 = (313 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2012 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2012 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2012 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2012 (by decide)
    _ = (324 : Int) - (11 : Int) :=
      sub_congr node_7_2012 node_7_69
    _ = (313 : Int) := by decide

theorem node_5_2012 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2012 = (304 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2012 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2012 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2012 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2012 (by decide)
    _ = (313 : Int) - (9 : Int) :=
      sub_congr node_6_2012 node_6_64
    _ = (304 : Int) := by decide

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

theorem node_5_54 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 = (6 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (54 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_6_54 node_6_1
    _ = (6 : Int) := by decide

theorem node_4_2012 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2012 = (298 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2012 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2012 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2012 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2012 (by decide)
    _ = (304 : Int) - (6 : Int) :=
      sub_congr node_5_2012 node_5_54
    _ = (298 : Int) := by decide

theorem node_4_49 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = (4 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (49 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_5_49 node_5_1
    _ = (4 : Int) := by decide

theorem node_3_2012 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2012 = (294 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2012 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2012 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2012 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2012 (by decide)
    _ = (298 : Int) - (4 : Int) :=
      sub_congr node_4_2012 node_4_49
    _ = (294 : Int) := by decide

theorem node_2_86530 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 = (12285 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (86530 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 (by decide)
    _ = (12579 : Int) - (294 : Int) :=
      sub_congr node_3_86530 node_3_2012
    _ = (12285 : Int) := by decide

theorem node_8_1841 : count [19, 17, 13, 11, 7, 5, 3, 2] 1841 = (311 : Int) := by
  decide

theorem node_7_1841 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1841 = (296 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1841 = count [19, 17, 13, 11, 7, 5, 3, 2] 1841 - count [19, 17, 13, 11, 7, 5, 3, 2] (1841 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1841 (by decide)
    _ = (311 : Int) - (15 : Int) :=
      sub_congr node_8_1841 node_8_80
    _ = (296 : Int) := by decide

theorem node_8_63 : count [19, 17, 13, 11, 7, 5, 3, 2] 63 = (11 : Int) := by
  decide

theorem node_7_63 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 63 = (10 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 63 = count [19, 17, 13, 11, 7, 5, 3, 2] 63 - count [19, 17, 13, 11, 7, 5, 3, 2] (63 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 63 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_8_63 node_8_2
    _ = (10 : Int) := by decide

theorem node_6_1841 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1841 = (286 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1841 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1841 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1841 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1841 (by decide)
    _ = (296 : Int) - (10 : Int) :=
      sub_congr node_7_1841 node_7_63
    _ = (286 : Int) := by decide

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

theorem node_5_1841 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1841 = (278 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1841 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1841 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1841 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1841 (by decide)
    _ = (286 : Int) - (8 : Int) :=
      sub_congr node_6_1841 node_6_59
    _ = (278 : Int) := by decide

theorem node_4_1841 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1841 = (273 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1841 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1841 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1841 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1841 (by decide)
    _ = (278 : Int) - (5 : Int) :=
      sub_congr node_5_1841 node_5_49
    _ = (273 : Int) := by decide

theorem node_3_1841 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1841 = (270 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1841 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1841 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1841 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1841 (by decide)
    _ = (273 : Int) - (3 : Int) :=
      sub_congr node_4_1841 node_4_44
    _ = (270 : Int) := by decide

theorem node_2_1841 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1841 = (269 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1841 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1841 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1841 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1841 (by decide)
    _ = (270 : Int) - (1 : Int) :=
      sub_congr node_3_1841 node_3_42
    _ = (269 : Int) := by decide

theorem node_1_86530 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 = (12016 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (86530 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 (by decide)
    _ = (12285 : Int) - (269 : Int) :=
      sub_congr node_2_86530 node_2_1841
    _ = (12016 : Int) := by decide

theorem node_8_1632 : count [19, 17, 13, 11, 7, 5, 3, 2] 1632 = (277 : Int) := by
  decide

theorem node_7_1632 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1632 = (265 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1632 = count [19, 17, 13, 11, 7, 5, 3, 2] 1632 - count [19, 17, 13, 11, 7, 5, 3, 2] (1632 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1632 (by decide)
    _ = (277 : Int) - (12 : Int) :=
      sub_congr node_8_1632 node_8_70
    _ = (265 : Int) := by decide

theorem node_6_1632 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1632 = (257 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1632 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1632 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1632 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1632 (by decide)
    _ = (265 : Int) - (8 : Int) :=
      sub_congr node_7_1632 node_7_56
    _ = (257 : Int) := by decide

theorem node_5_1632 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1632 = (251 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1632 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1632 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1632 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1632 (by decide)
    _ = (257 : Int) - (6 : Int) :=
      sub_congr node_6_1632 node_6_52
    _ = (251 : Int) := by decide

theorem node_4_1632 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1632 = (247 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1632 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1632 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1632 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1632 (by decide)
    _ = (251 : Int) - (4 : Int) :=
      sub_congr node_5_1632 node_5_44
    _ = (247 : Int) := by decide

theorem node_3_1632 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1632 = (246 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1632 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1632 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1632 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1632 (by decide)
    _ = (247 : Int) - (1 : Int) :=
      sub_congr node_4_1632 node_4_39
    _ = (246 : Int) := by decide

theorem node_2_1632 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1632 = (245 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1632 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1632 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1632 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1632 (by decide)
    _ = (246 : Int) - (1 : Int) :=
      sub_congr node_3_1632 node_3_37
    _ = (245 : Int) := by decide

theorem node_1_1632 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1632 = (244 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1632 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1632 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1632 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1632 (by decide)
    _ = (245 : Int) - (1 : Int) :=
      sub_congr node_2_1632 node_2_34
    _ = (244 : Int) := by decide

theorem node_0_86530 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 = (11772 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (86530 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86530 (by decide)
    _ = (12016 : Int) - (244 : Int) :=
      sub_congr node_1_86530 node_1_1632
    _ = (11772 : Int) := by decide

theorem node_8_87522 : count [19, 17, 13, 11, 7, 5, 3, 2] 87522 = (14968 : Int) := by
  decide

theorem node_8_3805 : count [19, 17, 13, 11, 7, 5, 3, 2] 3805 = (648 : Int) := by
  decide

theorem node_7_87522 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 = (14320 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 = count [19, 17, 13, 11, 7, 5, 3, 2] 87522 - count [19, 17, 13, 11, 7, 5, 3, 2] (87522 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 87522 (by decide)
    _ = (14968 : Int) - (648 : Int) :=
      sub_congr node_8_87522 node_8_3805
    _ = (14320 : Int) := by decide

theorem node_8_3018 : count [19, 17, 13, 11, 7, 5, 3, 2] 3018 = (513 : Int) := by
  decide

theorem node_8_131 : count [19, 17, 13, 11, 7, 5, 3, 2] 131 = (25 : Int) := by
  decide

theorem node_7_3018 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3018 = (488 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3018 = count [19, 17, 13, 11, 7, 5, 3, 2] 3018 - count [19, 17, 13, 11, 7, 5, 3, 2] (3018 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3018 (by decide)
    _ = (513 : Int) - (25 : Int) :=
      sub_congr node_8_3018 node_8_131
    _ = (488 : Int) := by decide

theorem node_6_87522 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 = (13832 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (87522 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 (by decide)
    _ = (14320 : Int) - (488 : Int) :=
      sub_congr node_7_87522 node_7_3018
    _ = (13832 : Int) := by decide

theorem node_8_2823 : count [19, 17, 13, 11, 7, 5, 3, 2] 2823 = (481 : Int) := by
  decide

theorem node_8_122 : count [19, 17, 13, 11, 7, 5, 3, 2] 122 = (23 : Int) := by
  decide

theorem node_7_2823 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2823 = (458 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2823 = count [19, 17, 13, 11, 7, 5, 3, 2] 2823 - count [19, 17, 13, 11, 7, 5, 3, 2] (2823 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2823 (by decide)
    _ = (481 : Int) - (23 : Int) :=
      sub_congr node_8_2823 node_8_122
    _ = (458 : Int) := by decide

theorem node_8_97 : count [19, 17, 13, 11, 7, 5, 3, 2] 97 = (18 : Int) := by
  decide

theorem node_7_97 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 97 = (17 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 97 = count [19, 17, 13, 11, 7, 5, 3, 2] 97 - count [19, 17, 13, 11, 7, 5, 3, 2] (97 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 97 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_8_97 node_8_4
    _ = (17 : Int) := by decide

theorem node_6_2823 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2823 = (441 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2823 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2823 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2823 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2823 (by decide)
    _ = (458 : Int) - (17 : Int) :=
      sub_congr node_7_2823 node_7_97
    _ = (441 : Int) := by decide

theorem node_5_87522 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 = (13391 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (87522 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 (by decide)
    _ = (13832 : Int) - (441 : Int) :=
      sub_congr node_6_87522 node_6_2823
    _ = (13391 : Int) := by decide

theorem node_8_2365 : count [19, 17, 13, 11, 7, 5, 3, 2] 2365 = (400 : Int) := by
  decide

theorem node_8_102 : count [19, 17, 13, 11, 7, 5, 3, 2] 102 = (19 : Int) := by
  decide

theorem node_7_2365 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2365 = (381 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2365 = count [19, 17, 13, 11, 7, 5, 3, 2] 2365 - count [19, 17, 13, 11, 7, 5, 3, 2] (2365 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2365 (by decide)
    _ = (400 : Int) - (19 : Int) :=
      sub_congr node_8_2365 node_8_102
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

theorem node_6_2365 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2365 = (367 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2365 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2365 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2365 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2365 (by decide)
    _ = (381 : Int) - (14 : Int) :=
      sub_congr node_7_2365 node_7_81
    _ = (367 : Int) := by decide

theorem node_8_76 : count [19, 17, 13, 11, 7, 5, 3, 2] 76 = (14 : Int) := by
  decide

theorem node_7_76 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 76 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 76 = count [19, 17, 13, 11, 7, 5, 3, 2] 76 - count [19, 17, 13, 11, 7, 5, 3, 2] (76 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 76 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_76 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_76 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76 = (12 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 76 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (76 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 76 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_7_76 node_7_2
    _ = (12 : Int) := by decide

theorem node_5_2365 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2365 = (355 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2365 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2365 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2365 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2365 (by decide)
    _ = (367 : Int) - (12 : Int) :=
      sub_congr node_6_2365 node_6_76
    _ = (355 : Int) := by decide

theorem node_4_87522 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 = (13036 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (87522 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 (by decide)
    _ = (13391 : Int) - (355 : Int) :=
      sub_congr node_5_87522 node_5_2365
    _ = (13036 : Int) := by decide

theorem node_8_2134 : count [19, 17, 13, 11, 7, 5, 3, 2] 2134 = (361 : Int) := by
  decide

theorem node_8_92 : count [19, 17, 13, 11, 7, 5, 3, 2] 92 = (17 : Int) := by
  decide

theorem node_7_2134 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2134 = (344 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2134 = count [19, 17, 13, 11, 7, 5, 3, 2] 2134 - count [19, 17, 13, 11, 7, 5, 3, 2] (2134 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2134 (by decide)
    _ = (361 : Int) - (17 : Int) :=
      sub_congr node_8_2134 node_8_92
    _ = (344 : Int) := by decide

theorem node_8_73 : count [19, 17, 13, 11, 7, 5, 3, 2] 73 = (14 : Int) := by
  decide

theorem node_7_73 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 73 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 73 = count [19, 17, 13, 11, 7, 5, 3, 2] 73 - count [19, 17, 13, 11, 7, 5, 3, 2] (73 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 73 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_73 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_2134 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2134 = (331 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2134 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2134 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2134 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2134 (by decide)
    _ = (344 : Int) - (13 : Int) :=
      sub_congr node_7_2134 node_7_73
    _ = (331 : Int) := by decide

theorem node_5_2134 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2134 = (321 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2134 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2134 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2134 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2134 (by decide)
    _ = (331 : Int) - (10 : Int) :=
      sub_congr node_6_2134 node_6_68
    _ = (321 : Int) := by decide

theorem node_4_2134 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2134 = (315 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2134 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2134 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2134 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2134 (by decide)
    _ = (321 : Int) - (6 : Int) :=
      sub_congr node_5_2134 node_5_57
    _ = (315 : Int) := by decide

theorem node_3_87522 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 = (12721 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (87522 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 (by decide)
    _ = (13036 : Int) - (315 : Int) :=
      sub_congr node_4_87522 node_4_2134
    _ = (12721 : Int) := by decide

theorem node_8_2035 : count [19, 17, 13, 11, 7, 5, 3, 2] 2035 = (344 : Int) := by
  decide

theorem node_8_88 : count [19, 17, 13, 11, 7, 5, 3, 2] 88 = (16 : Int) := by
  decide

theorem node_7_2035 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2035 = (328 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2035 = count [19, 17, 13, 11, 7, 5, 3, 2] 2035 - count [19, 17, 13, 11, 7, 5, 3, 2] (2035 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2035 (by decide)
    _ = (344 : Int) - (16 : Int) :=
      sub_congr node_8_2035 node_8_88
    _ = (328 : Int) := by decide

theorem node_7_70 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 70 = (11 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 70 = count [19, 17, 13, 11, 7, 5, 3, 2] 70 - count [19, 17, 13, 11, 7, 5, 3, 2] (70 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 70 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_8_70 node_8_3
    _ = (11 : Int) := by decide

theorem node_6_2035 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2035 = (317 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2035 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2035 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2035 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2035 (by decide)
    _ = (328 : Int) - (11 : Int) :=
      sub_congr node_7_2035 node_7_70
    _ = (317 : Int) := by decide

theorem node_8_65 : count [19, 17, 13, 11, 7, 5, 3, 2] 65 = (11 : Int) := by
  decide

theorem node_7_65 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = (10 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = count [19, 17, 13, 11, 7, 5, 3, 2] 65 - count [19, 17, 13, 11, 7, 5, 3, 2] (65 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 65 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_8_65 node_8_2
    _ = (10 : Int) := by decide

theorem node_6_65 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = (9 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 65 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (65 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 65 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_7_65 node_7_2
    _ = (9 : Int) := by decide

theorem node_5_2035 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2035 = (308 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2035 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2035 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2035 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2035 (by decide)
    _ = (317 : Int) - (9 : Int) :=
      sub_congr node_6_2035 node_6_65
    _ = (308 : Int) := by decide

theorem node_6_55 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = (7 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 55 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (55 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 55 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_7_55 node_7_1
    _ = (7 : Int) := by decide

theorem node_5_55 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = (6 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (55 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_6_55 node_6_1
    _ = (6 : Int) := by decide

theorem node_4_2035 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2035 = (302 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2035 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2035 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2035 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2035 (by decide)
    _ = (308 : Int) - (6 : Int) :=
      sub_congr node_5_2035 node_5_55
    _ = (302 : Int) := by decide

theorem node_3_2035 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2035 = (298 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2035 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2035 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2035 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2035 (by decide)
    _ = (302 : Int) - (4 : Int) :=
      sub_congr node_4_2035 node_4_49
    _ = (298 : Int) := by decide

theorem node_2_87522 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 = (12423 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (87522 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 (by decide)
    _ = (12721 : Int) - (298 : Int) :=
      sub_congr node_3_87522 node_3_2035
    _ = (12423 : Int) := by decide

theorem node_8_1862 : count [19, 17, 13, 11, 7, 5, 3, 2] 1862 = (314 : Int) := by
  decide

theorem node_7_1862 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 = (299 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 = count [19, 17, 13, 11, 7, 5, 3, 2] 1862 - count [19, 17, 13, 11, 7, 5, 3, 2] (1862 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1862 (by decide)
    _ = (314 : Int) - (15 : Int) :=
      sub_congr node_8_1862 node_8_80
    _ = (299 : Int) := by decide

theorem node_6_1862 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 = (289 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1862 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 (by decide)
    _ = (299 : Int) - (10 : Int) :=
      sub_congr node_7_1862 node_7_64
    _ = (289 : Int) := by decide

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

theorem node_5_1862 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 = (281 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1862 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 (by decide)
    _ = (289 : Int) - (8 : Int) :=
      sub_congr node_6_1862 node_6_60
    _ = (281 : Int) := by decide

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

theorem node_4_1862 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 = (276 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1862 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 (by decide)
    _ = (281 : Int) - (5 : Int) :=
      sub_congr node_5_1862 node_5_50
    _ = (276 : Int) := by decide

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

theorem node_4_45 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 = (3 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (45 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_5_45 node_5_1
    _ = (3 : Int) := by decide

theorem node_3_1862 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 = (273 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1862 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 (by decide)
    _ = (276 : Int) - (3 : Int) :=
      sub_congr node_4_1862 node_4_45
    _ = (273 : Int) := by decide

theorem node_4_43 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 = (3 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (43 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_5_43 node_5_1
    _ = (3 : Int) := by decide

theorem node_3_43 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 = (2 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (43 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_4_43 node_4_1
    _ = (2 : Int) := by decide

theorem node_2_1862 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 = (271 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1862 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 (by decide)
    _ = (273 : Int) - (2 : Int) :=
      sub_congr node_3_1862 node_3_43
    _ = (271 : Int) := by decide

theorem node_1_87522 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 = (12152 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (87522 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 (by decide)
    _ = (12423 : Int) - (271 : Int) :=
      sub_congr node_2_87522 node_2_1862
    _ = (12152 : Int) := by decide

theorem node_8_1651 : count [19, 17, 13, 11, 7, 5, 3, 2] 1651 = (280 : Int) := by
  decide

theorem node_7_1651 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1651 = (267 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1651 = count [19, 17, 13, 11, 7, 5, 3, 2] 1651 - count [19, 17, 13, 11, 7, 5, 3, 2] (1651 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1651 (by decide)
    _ = (280 : Int) - (13 : Int) :=
      sub_congr node_8_1651 node_8_71
    _ = (267 : Int) := by decide

theorem node_6_1651 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1651 = (259 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1651 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1651 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1651 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1651 (by decide)
    _ = (267 : Int) - (8 : Int) :=
      sub_congr node_7_1651 node_7_56
    _ = (259 : Int) := by decide

theorem node_5_1651 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1651 = (252 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1651 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1651 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1651 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1651 (by decide)
    _ = (259 : Int) - (7 : Int) :=
      sub_congr node_6_1651 node_6_53
    _ = (252 : Int) := by decide

theorem node_4_1651 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1651 = (248 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1651 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1651 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1651 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1651 (by decide)
    _ = (252 : Int) - (4 : Int) :=
      sub_congr node_5_1651 node_5_44
    _ = (248 : Int) := by decide

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

theorem node_3_1651 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1651 = (247 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1651 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1651 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1651 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1651 (by decide)
    _ = (248 : Int) - (1 : Int) :=
      sub_congr node_4_1651 node_4_40
    _ = (247 : Int) := by decide

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

theorem node_3_38 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (38 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_38 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1651 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1651 = (246 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1651 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1651 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1651 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1651 (by decide)
    _ = (247 : Int) - (1 : Int) :=
      sub_congr node_3_1651 node_3_38
    _ = (246 : Int) := by decide

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

theorem node_2_35 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (35 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_35 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1651 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1651 = (245 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1651 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1651 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1651 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1651 (by decide)
    _ = (246 : Int) - (1 : Int) :=
      sub_congr node_2_1651 node_2_35
    _ = (245 : Int) := by decide

theorem node_0_87522 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 = (11907 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (87522 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87522 (by decide)
    _ = (12152 : Int) - (245 : Int) :=
      sub_congr node_1_87522 node_1_1651
    _ = (11907 : Int) := by decide

theorem node_8_88530 : count [19, 17, 13, 11, 7, 5, 3, 2] 88530 = (15141 : Int) := by
  decide

theorem node_8_3849 : count [19, 17, 13, 11, 7, 5, 3, 2] 3849 = (655 : Int) := by
  decide

theorem node_7_88530 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 = (14486 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 = count [19, 17, 13, 11, 7, 5, 3, 2] 88530 - count [19, 17, 13, 11, 7, 5, 3, 2] (88530 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 88530 (by decide)
    _ = (15141 : Int) - (655 : Int) :=
      sub_congr node_8_88530 node_8_3849
    _ = (14486 : Int) := by decide

theorem node_8_3052 : count [19, 17, 13, 11, 7, 5, 3, 2] 3052 = (518 : Int) := by
  decide

theorem node_8_132 : count [19, 17, 13, 11, 7, 5, 3, 2] 132 = (25 : Int) := by
  decide

theorem node_7_3052 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3052 = (493 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3052 = count [19, 17, 13, 11, 7, 5, 3, 2] 3052 - count [19, 17, 13, 11, 7, 5, 3, 2] (3052 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3052 (by decide)
    _ = (518 : Int) - (25 : Int) :=
      sub_congr node_8_3052 node_8_132
    _ = (493 : Int) := by decide

theorem node_6_88530 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 = (13993 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (88530 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 (by decide)
    _ = (14486 : Int) - (493 : Int) :=
      sub_congr node_7_88530 node_7_3052
    _ = (13993 : Int) := by decide

theorem node_8_2855 : count [19, 17, 13, 11, 7, 5, 3, 2] 2855 = (485 : Int) := by
  decide

theorem node_8_124 : count [19, 17, 13, 11, 7, 5, 3, 2] 124 = (23 : Int) := by
  decide

theorem node_7_2855 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2855 = (462 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2855 = count [19, 17, 13, 11, 7, 5, 3, 2] 2855 - count [19, 17, 13, 11, 7, 5, 3, 2] (2855 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2855 (by decide)
    _ = (485 : Int) - (23 : Int) :=
      sub_congr node_8_2855 node_8_124
    _ = (462 : Int) := by decide

theorem node_8_98 : count [19, 17, 13, 11, 7, 5, 3, 2] 98 = (18 : Int) := by
  decide

theorem node_7_98 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 98 = (17 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 98 = count [19, 17, 13, 11, 7, 5, 3, 2] 98 - count [19, 17, 13, 11, 7, 5, 3, 2] (98 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 98 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_8_98 node_8_4
    _ = (17 : Int) := by decide

theorem node_6_2855 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2855 = (445 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2855 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2855 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2855 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2855 (by decide)
    _ = (462 : Int) - (17 : Int) :=
      sub_congr node_7_2855 node_7_98
    _ = (445 : Int) := by decide

theorem node_5_88530 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 = (13548 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (88530 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 (by decide)
    _ = (13993 : Int) - (445 : Int) :=
      sub_congr node_6_88530 node_6_2855
    _ = (13548 : Int) := by decide

theorem node_8_2392 : count [19, 17, 13, 11, 7, 5, 3, 2] 2392 = (406 : Int) := by
  decide

theorem node_8_104 : count [19, 17, 13, 11, 7, 5, 3, 2] 104 = (20 : Int) := by
  decide

theorem node_7_2392 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2392 = (386 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2392 = count [19, 17, 13, 11, 7, 5, 3, 2] 2392 - count [19, 17, 13, 11, 7, 5, 3, 2] (2392 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2392 (by decide)
    _ = (406 : Int) - (20 : Int) :=
      sub_congr node_8_2392 node_8_104
    _ = (386 : Int) := by decide

theorem node_8_82 : count [19, 17, 13, 11, 7, 5, 3, 2] 82 = (15 : Int) := by
  decide

theorem node_7_82 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = (14 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = count [19, 17, 13, 11, 7, 5, 3, 2] 82 - count [19, 17, 13, 11, 7, 5, 3, 2] (82 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 82 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_8_82 node_8_3
    _ = (14 : Int) := by decide

theorem node_6_2392 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2392 = (372 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2392 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2392 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2392 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2392 (by decide)
    _ = (386 : Int) - (14 : Int) :=
      sub_congr node_7_2392 node_7_82
    _ = (372 : Int) := by decide

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

theorem node_5_2392 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2392 = (360 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2392 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2392 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2392 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2392 (by decide)
    _ = (372 : Int) - (12 : Int) :=
      sub_congr node_6_2392 node_6_77
    _ = (360 : Int) := by decide

theorem node_4_88530 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 = (13188 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (88530 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 (by decide)
    _ = (13548 : Int) - (360 : Int) :=
      sub_congr node_5_88530 node_5_2392
    _ = (13188 : Int) := by decide

theorem node_8_2159 : count [19, 17, 13, 11, 7, 5, 3, 2] 2159 = (365 : Int) := by
  decide

theorem node_8_93 : count [19, 17, 13, 11, 7, 5, 3, 2] 93 = (17 : Int) := by
  decide

theorem node_7_2159 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2159 = (348 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2159 = count [19, 17, 13, 11, 7, 5, 3, 2] 2159 - count [19, 17, 13, 11, 7, 5, 3, 2] (2159 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2159 (by decide)
    _ = (365 : Int) - (17 : Int) :=
      sub_congr node_8_2159 node_8_93
    _ = (348 : Int) := by decide

theorem node_6_2159 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2159 = (335 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2159 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2159 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2159 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2159 (by decide)
    _ = (348 : Int) - (13 : Int) :=
      sub_congr node_7_2159 node_7_74
    _ = (335 : Int) := by decide

theorem node_6_69 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = (10 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 69 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (69 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 69 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_7_69 node_7_2
    _ = (10 : Int) := by decide

theorem node_5_2159 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2159 = (325 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2159 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2159 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2159 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2159 (by decide)
    _ = (335 : Int) - (10 : Int) :=
      sub_congr node_6_2159 node_6_69
    _ = (325 : Int) := by decide

theorem node_5_58 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = (6 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (58 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_6_58 node_6_1
    _ = (6 : Int) := by decide

theorem node_4_2159 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2159 = (319 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2159 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2159 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2159 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2159 (by decide)
    _ = (325 : Int) - (6 : Int) :=
      sub_congr node_5_2159 node_5_58
    _ = (319 : Int) := by decide

theorem node_3_88530 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 = (12869 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (88530 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 (by decide)
    _ = (13188 : Int) - (319 : Int) :=
      sub_congr node_4_88530 node_4_2159
    _ = (12869 : Int) := by decide

theorem node_8_2058 : count [19, 17, 13, 11, 7, 5, 3, 2] 2058 = (347 : Int) := by
  decide

theorem node_8_89 : count [19, 17, 13, 11, 7, 5, 3, 2] 89 = (17 : Int) := by
  decide

theorem node_7_2058 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = (330 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = count [19, 17, 13, 11, 7, 5, 3, 2] 2058 - count [19, 17, 13, 11, 7, 5, 3, 2] (2058 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2058 (by decide)
    _ = (347 : Int) - (17 : Int) :=
      sub_congr node_8_2058 node_8_89
    _ = (330 : Int) := by decide

theorem node_6_2058 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = (319 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2058 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 (by decide)
    _ = (330 : Int) - (11 : Int) :=
      sub_congr node_7_2058 node_7_70
    _ = (319 : Int) := by decide

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

theorem node_5_2058 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = (310 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2058 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 (by decide)
    _ = (319 : Int) - (9 : Int) :=
      sub_congr node_6_2058 node_6_66
    _ = (310 : Int) := by decide

theorem node_4_2058 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = (304 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2058 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 (by decide)
    _ = (310 : Int) - (6 : Int) :=
      sub_congr node_5_2058 node_5_55
    _ = (304 : Int) := by decide

theorem node_4_50 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = (4 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (50 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_5_50 node_5_1
    _ = (4 : Int) := by decide

theorem node_3_2058 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = (300 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2058 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 (by decide)
    _ = (304 : Int) - (4 : Int) :=
      sub_congr node_4_2058 node_4_50
    _ = (300 : Int) := by decide

theorem node_2_88530 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 = (12569 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (88530 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 (by decide)
    _ = (12869 : Int) - (300 : Int) :=
      sub_congr node_3_88530 node_3_2058
    _ = (12569 : Int) := by decide

theorem node_8_1883 : count [19, 17, 13, 11, 7, 5, 3, 2] 1883 = (319 : Int) := by
  decide

theorem node_7_1883 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1883 = (304 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1883 = count [19, 17, 13, 11, 7, 5, 3, 2] 1883 - count [19, 17, 13, 11, 7, 5, 3, 2] (1883 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1883 (by decide)
    _ = (319 : Int) - (15 : Int) :=
      sub_congr node_8_1883 node_8_81
    _ = (304 : Int) := by decide

theorem node_6_1883 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1883 = (294 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1883 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1883 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1883 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1883 (by decide)
    _ = (304 : Int) - (10 : Int) :=
      sub_congr node_7_1883 node_7_64
    _ = (294 : Int) := by decide

theorem node_5_1883 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1883 = (286 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1883 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1883 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1883 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1883 (by decide)
    _ = (294 : Int) - (8 : Int) :=
      sub_congr node_6_1883 node_6_60
    _ = (286 : Int) := by decide

theorem node_4_1883 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1883 = (281 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1883 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1883 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1883 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1883 (by decide)
    _ = (286 : Int) - (5 : Int) :=
      sub_congr node_5_1883 node_5_50
    _ = (281 : Int) := by decide

theorem node_3_1883 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1883 = (278 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1883 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1883 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1883 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1883 (by decide)
    _ = (281 : Int) - (3 : Int) :=
      sub_congr node_4_1883 node_4_45
    _ = (278 : Int) := by decide

theorem node_2_1883 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1883 = (276 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1883 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1883 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1883 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1883 (by decide)
    _ = (278 : Int) - (2 : Int) :=
      sub_congr node_3_1883 node_3_43
    _ = (276 : Int) := by decide

theorem node_1_88530 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 = (12293 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (88530 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 (by decide)
    _ = (12569 : Int) - (276 : Int) :=
      sub_congr node_2_88530 node_2_1883
    _ = (12293 : Int) := by decide

theorem node_8_1670 : count [19, 17, 13, 11, 7, 5, 3, 2] 1670 = (284 : Int) := by
  decide

theorem node_7_1670 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1670 = (271 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1670 = count [19, 17, 13, 11, 7, 5, 3, 2] 1670 - count [19, 17, 13, 11, 7, 5, 3, 2] (1670 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1670 (by decide)
    _ = (284 : Int) - (13 : Int) :=
      sub_congr node_8_1670 node_8_72
    _ = (271 : Int) := by decide

theorem node_6_1670 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1670 = (263 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1670 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1670 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1670 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1670 (by decide)
    _ = (271 : Int) - (8 : Int) :=
      sub_congr node_7_1670 node_7_57
    _ = (263 : Int) := by decide

theorem node_5_1670 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1670 = (256 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1670 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1670 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1670 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1670 (by decide)
    _ = (263 : Int) - (7 : Int) :=
      sub_congr node_6_1670 node_6_53
    _ = (256 : Int) := by decide

theorem node_4_1670 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1670 = (252 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1670 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1670 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1670 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1670 (by decide)
    _ = (256 : Int) - (4 : Int) :=
      sub_congr node_5_1670 node_5_45
    _ = (252 : Int) := by decide

theorem node_3_1670 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1670 = (251 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1670 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1670 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1670 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1670 (by decide)
    _ = (252 : Int) - (1 : Int) :=
      sub_congr node_4_1670 node_4_40
    _ = (251 : Int) := by decide

theorem node_2_1670 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1670 = (250 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1670 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1670 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1670 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1670 (by decide)
    _ = (251 : Int) - (1 : Int) :=
      sub_congr node_3_1670 node_3_38
    _ = (250 : Int) := by decide

theorem node_1_1670 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1670 = (249 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1670 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1670 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1670 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1670 (by decide)
    _ = (250 : Int) - (1 : Int) :=
      sub_congr node_2_1670 node_2_35
    _ = (249 : Int) := by decide

theorem node_0_88530 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 = (12044 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (88530 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88530 (by decide)
    _ = (12293 : Int) - (249 : Int) :=
      sub_congr node_1_88530 node_1_1670
    _ = (12044 : Int) := by decide

theorem row_72 : count primes 85548 ≤ (11650 : Int) - 15 := by
  rw [show count primes 85548 = (11635 : Int) from node_0_85548]
  decide

theorem row_73 : count primes 86530 ≤ (11787 : Int) - 15 := by
  rw [show count primes 86530 = (11772 : Int) from node_0_86530]
  decide

theorem row_74 : count primes 87522 ≤ (11922 : Int) - 15 := by
  rw [show count primes 87522 = (11907 : Int) from node_0_87522]
  decide

theorem row_75 : count primes 88530 ≤ (12059 : Int) - 15 := by
  rw [show count primes 88530 = (12044 : Int) from node_0_88530]
  decide

def pairs : List (Nat × Nat) := [(85548, 11650), (86530, 11787), (87522, 11922), (88530, 12059)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl | rfl | rfl
  · exact row_72
  · exact row_73
  · exact row_74
  · exact row_75
end B699CorePrunedSieve.CoreDagBatch19
#check @B699CorePrunedSieve.CoreDagBatch19.pairs_valid
#print axioms B699CorePrunedSieve.CoreDagBatch19.pairs_valid
