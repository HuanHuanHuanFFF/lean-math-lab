import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreDagBatch23
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_101550 : count [19, 17, 13, 11, 7, 5, 3, 2] 101550 = (17368 : Int) := by
  decide

theorem node_8_4415 : count [19, 17, 13, 11, 7, 5, 3, 2] 4415 = (753 : Int) := by
  decide

theorem node_7_101550 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 = (16615 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 = count [19, 17, 13, 11, 7, 5, 3, 2] 101550 - count [19, 17, 13, 11, 7, 5, 3, 2] (101550 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 101550 (by decide)
    _ = (17368 : Int) - (753 : Int) :=
      sub_congr node_8_101550 node_8_4415
    _ = (16615 : Int) := by decide

theorem node_8_3501 : count [19, 17, 13, 11, 7, 5, 3, 2] 3501 = (594 : Int) := by
  decide

theorem node_8_152 : count [19, 17, 13, 11, 7, 5, 3, 2] 152 = (29 : Int) := by
  decide

theorem node_7_3501 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3501 = (565 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3501 = count [19, 17, 13, 11, 7, 5, 3, 2] 3501 - count [19, 17, 13, 11, 7, 5, 3, 2] (3501 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3501 (by decide)
    _ = (594 : Int) - (29 : Int) :=
      sub_congr node_8_3501 node_8_152
    _ = (565 : Int) := by decide

theorem node_6_101550 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 = (16050 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (101550 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 (by decide)
    _ = (16615 : Int) - (565 : Int) :=
      sub_congr node_7_101550 node_7_3501
    _ = (16050 : Int) := by decide

theorem node_8_3275 : count [19, 17, 13, 11, 7, 5, 3, 2] 3275 = (556 : Int) := by
  decide

theorem node_8_142 : count [19, 17, 13, 11, 7, 5, 3, 2] 142 = (27 : Int) := by
  decide

theorem node_7_3275 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3275 = (529 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3275 = count [19, 17, 13, 11, 7, 5, 3, 2] 3275 - count [19, 17, 13, 11, 7, 5, 3, 2] (3275 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3275 (by decide)
    _ = (556 : Int) - (27 : Int) :=
      sub_congr node_8_3275 node_8_142
    _ = (529 : Int) := by decide

theorem node_8_112 : count [19, 17, 13, 11, 7, 5, 3, 2] 112 = (22 : Int) := by
  decide

theorem node_8_4 : count [19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  decide

theorem node_7_112 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 112 = (21 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 112 = count [19, 17, 13, 11, 7, 5, 3, 2] 112 - count [19, 17, 13, 11, 7, 5, 3, 2] (112 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 112 (by decide)
    _ = (22 : Int) - (1 : Int) :=
      sub_congr node_8_112 node_8_4
    _ = (21 : Int) := by decide

theorem node_6_3275 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3275 = (508 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3275 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3275 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3275 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3275 (by decide)
    _ = (529 : Int) - (21 : Int) :=
      sub_congr node_7_3275 node_7_112
    _ = (508 : Int) := by decide

theorem node_5_101550 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 = (15542 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (101550 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 (by decide)
    _ = (16050 : Int) - (508 : Int) :=
      sub_congr node_6_101550 node_6_3275
    _ = (15542 : Int) := by decide

theorem node_8_2744 : count [19, 17, 13, 11, 7, 5, 3, 2] 2744 = (466 : Int) := by
  decide

theorem node_8_119 : count [19, 17, 13, 11, 7, 5, 3, 2] 119 = (23 : Int) := by
  decide

theorem node_7_2744 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2744 = (443 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2744 = count [19, 17, 13, 11, 7, 5, 3, 2] 2744 - count [19, 17, 13, 11, 7, 5, 3, 2] (2744 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2744 (by decide)
    _ = (466 : Int) - (23 : Int) :=
      sub_congr node_8_2744 node_8_119
    _ = (443 : Int) := by decide

theorem node_8_94 : count [19, 17, 13, 11, 7, 5, 3, 2] 94 = (17 : Int) := by
  decide

theorem node_7_94 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 94 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 94 = count [19, 17, 13, 11, 7, 5, 3, 2] 94 - count [19, 17, 13, 11, 7, 5, 3, 2] (94 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 94 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_94 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_2744 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2744 = (427 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2744 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2744 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2744 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2744 (by decide)
    _ = (443 : Int) - (16 : Int) :=
      sub_congr node_7_2744 node_7_94
    _ = (427 : Int) := by decide

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

theorem node_8_0 : count [19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [19, 17, 13, 11, 7, 5, 3, 2]

theorem node_7_3 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = count [19, 17, 13, 11, 7, 5, 3, 2] 3 - count [19, 17, 13, 11, 7, 5, 3, 2] (3 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_3 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_88 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88 = (14 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 88 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (88 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 88 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_7_88 node_7_3
    _ = (14 : Int) := by decide

theorem node_5_2744 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2744 = (413 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2744 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2744 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2744 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2744 (by decide)
    _ = (427 : Int) - (14 : Int) :=
      sub_congr node_6_2744 node_6_88
    _ = (413 : Int) := by decide

theorem node_4_101550 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 = (15129 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (101550 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 (by decide)
    _ = (15542 : Int) - (413 : Int) :=
      sub_congr node_5_101550 node_5_2744
    _ = (15129 : Int) := by decide

theorem node_8_2476 : count [19, 17, 13, 11, 7, 5, 3, 2] 2476 = (421 : Int) := by
  decide

theorem node_8_107 : count [19, 17, 13, 11, 7, 5, 3, 2] 107 = (21 : Int) := by
  decide

theorem node_7_2476 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2476 = (400 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2476 = count [19, 17, 13, 11, 7, 5, 3, 2] 2476 - count [19, 17, 13, 11, 7, 5, 3, 2] (2476 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2476 (by decide)
    _ = (421 : Int) - (21 : Int) :=
      sub_congr node_8_2476 node_8_107
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

theorem node_6_2476 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2476 = (385 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2476 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2476 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2476 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2476 (by decide)
    _ = (400 : Int) - (15 : Int) :=
      sub_congr node_7_2476 node_7_85
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

theorem node_8_2 : count [19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  decide

theorem node_7_2 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [19, 17, 13, 11, 7, 5, 3, 2] 2 - count [19, 17, 13, 11, 7, 5, 3, 2] (2 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_2 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_79 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79 = (13 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 79 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (79 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 79 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_7_79 node_7_2
    _ = (13 : Int) := by decide

theorem node_5_2476 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2476 = (372 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2476 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2476 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2476 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2476 (by decide)
    _ = (385 : Int) - (13 : Int) :=
      sub_congr node_6_2476 node_6_79
    _ = (372 : Int) := by decide

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

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_2 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_2 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_66 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = (8 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (66 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_6_66 node_6_2
    _ = (8 : Int) := by decide

theorem node_4_2476 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2476 = (364 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2476 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2476 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2476 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2476 (by decide)
    _ = (372 : Int) - (8 : Int) :=
      sub_congr node_5_2476 node_5_66
    _ = (364 : Int) := by decide

theorem node_3_101550 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 = (14765 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (101550 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 (by decide)
    _ = (15129 : Int) - (364 : Int) :=
      sub_congr node_4_101550 node_4_2476
    _ = (14765 : Int) := by decide

theorem node_8_2361 : count [19, 17, 13, 11, 7, 5, 3, 2] 2361 = (400 : Int) := by
  decide

theorem node_8_102 : count [19, 17, 13, 11, 7, 5, 3, 2] 102 = (19 : Int) := by
  decide

theorem node_7_2361 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2361 = (381 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2361 = count [19, 17, 13, 11, 7, 5, 3, 2] 2361 - count [19, 17, 13, 11, 7, 5, 3, 2] (2361 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2361 (by decide)
    _ = (400 : Int) - (19 : Int) :=
      sub_congr node_8_2361 node_8_102
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

theorem node_6_2361 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2361 = (367 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2361 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2361 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2361 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2361 (by decide)
    _ = (381 : Int) - (14 : Int) :=
      sub_congr node_7_2361 node_7_81
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

theorem node_5_2361 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2361 = (355 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2361 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2361 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2361 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2361 (by decide)
    _ = (367 : Int) - (12 : Int) :=
      sub_congr node_6_2361 node_6_76
    _ = (355 : Int) := by decide

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

theorem node_5_63 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 = (8 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (63 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_6_63 node_6_2
    _ = (8 : Int) := by decide

theorem node_4_2361 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2361 = (347 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2361 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2361 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2361 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2361 (by decide)
    _ = (355 : Int) - (8 : Int) :=
      sub_congr node_5_2361 node_5_63
    _ = (347 : Int) := by decide

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

theorem node_6_1 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_1 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_57 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = (6 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (57 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_6_57 node_6_1
    _ = (6 : Int) := by decide

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_1 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_1 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_57 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = (5 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (57 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_5_57 node_5_1
    _ = (5 : Int) := by decide

theorem node_3_2361 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2361 = (342 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2361 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2361 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2361 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2361 (by decide)
    _ = (347 : Int) - (5 : Int) :=
      sub_congr node_4_2361 node_4_57
    _ = (342 : Int) := by decide

theorem node_2_101550 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 = (14423 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (101550 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 (by decide)
    _ = (14765 : Int) - (342 : Int) :=
      sub_congr node_3_101550 node_3_2361
    _ = (14423 : Int) := by decide

theorem node_8_2160 : count [19, 17, 13, 11, 7, 5, 3, 2] 2160 = (365 : Int) := by
  decide

theorem node_8_93 : count [19, 17, 13, 11, 7, 5, 3, 2] 93 = (17 : Int) := by
  decide

theorem node_7_2160 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2160 = (348 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2160 = count [19, 17, 13, 11, 7, 5, 3, 2] 2160 - count [19, 17, 13, 11, 7, 5, 3, 2] (2160 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2160 (by decide)
    _ = (365 : Int) - (17 : Int) :=
      sub_congr node_8_2160 node_8_93
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

theorem node_6_2160 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2160 = (335 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2160 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2160 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2160 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2160 (by decide)
    _ = (348 : Int) - (13 : Int) :=
      sub_congr node_7_2160 node_7_74
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

theorem node_6_69 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = (10 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 69 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (69 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 69 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_7_69 node_7_2
    _ = (10 : Int) := by decide

theorem node_5_2160 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2160 = (325 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2160 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2160 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2160 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2160 (by decide)
    _ = (335 : Int) - (10 : Int) :=
      sub_congr node_6_2160 node_6_69
    _ = (325 : Int) := by decide

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

theorem node_5_58 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = (6 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (58 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_6_58 node_6_1
    _ = (6 : Int) := by decide

theorem node_4_2160 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2160 = (319 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2160 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2160 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2160 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2160 (by decide)
    _ = (325 : Int) - (6 : Int) :=
      sub_congr node_5_2160 node_5_58
    _ = (319 : Int) := by decide

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

theorem node_4_52 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = (4 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (52 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_5_52 node_5_1
    _ = (4 : Int) := by decide

theorem node_3_2160 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2160 = (315 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2160 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2160 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2160 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2160 (by decide)
    _ = (319 : Int) - (4 : Int) :=
      sub_congr node_4_2160 node_4_52
    _ = (315 : Int) := by decide

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

theorem node_4_50 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = (4 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (50 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_5_50 node_5_1
    _ = (4 : Int) := by decide

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_1 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_1 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_50 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = (3 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (50 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_4_50 node_4_1
    _ = (3 : Int) := by decide

theorem node_2_2160 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2160 = (312 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2160 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2160 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2160 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2160 (by decide)
    _ = (315 : Int) - (3 : Int) :=
      sub_congr node_3_2160 node_3_50
    _ = (312 : Int) := by decide

theorem node_1_101550 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 = (14111 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (101550 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 (by decide)
    _ = (14423 : Int) - (312 : Int) :=
      sub_congr node_2_101550 node_2_2160
    _ = (14111 : Int) := by decide

theorem node_8_1916 : count [19, 17, 13, 11, 7, 5, 3, 2] 1916 = (325 : Int) := by
  decide

theorem node_8_83 : count [19, 17, 13, 11, 7, 5, 3, 2] 83 = (16 : Int) := by
  decide

theorem node_7_1916 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1916 = (309 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1916 = count [19, 17, 13, 11, 7, 5, 3, 2] 1916 - count [19, 17, 13, 11, 7, 5, 3, 2] (1916 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1916 (by decide)
    _ = (325 : Int) - (16 : Int) :=
      sub_congr node_8_1916 node_8_83
    _ = (309 : Int) := by decide

theorem node_6_1916 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1916 = (299 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1916 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1916 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1916 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1916 (by decide)
    _ = (309 : Int) - (10 : Int) :=
      sub_congr node_7_1916 node_7_66
    _ = (299 : Int) := by decide

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

theorem node_5_1916 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1916 = (290 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1916 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1916 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1916 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1916 (by decide)
    _ = (299 : Int) - (9 : Int) :=
      sub_congr node_6_1916 node_6_61
    _ = (290 : Int) := by decide

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

theorem node_4_1916 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1916 = (285 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1916 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1916 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1916 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1916 (by decide)
    _ = (290 : Int) - (5 : Int) :=
      sub_congr node_5_1916 node_5_51
    _ = (285 : Int) := by decide

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

theorem node_3_1916 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1916 = (282 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1916 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1916 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1916 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1916 (by decide)
    _ = (285 : Int) - (3 : Int) :=
      sub_congr node_4_1916 node_4_46
    _ = (282 : Int) := by decide

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

theorem node_3_44 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 = (2 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (44 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_4_44 node_4_1
    _ = (2 : Int) := by decide

theorem node_2_1916 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1916 = (280 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1916 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1916 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1916 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1916 (by decide)
    _ = (282 : Int) - (2 : Int) :=
      sub_congr node_3_1916 node_3_44
    _ = (280 : Int) := by decide

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

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_40 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (40 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_40 node_4_0
    _ = (1 : Int) := by decide

theorem node_3_0 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_2_40 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (40 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_40 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1916 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1916 = (279 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1916 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1916 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1916 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1916 (by decide)
    _ = (280 : Int) - (1 : Int) :=
      sub_congr node_2_1916 node_2_40
    _ = (279 : Int) := by decide

theorem node_0_101550 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 = (13832 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (101550 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 101550 (by decide)
    _ = (14111 : Int) - (279 : Int) :=
      sub_congr node_1_101550 node_1_1916
    _ = (13832 : Int) := by decide

theorem node_8_102592 : count [19, 17, 13, 11, 7, 5, 3, 2] 102592 = (17547 : Int) := by
  decide

theorem node_8_4460 : count [19, 17, 13, 11, 7, 5, 3, 2] 4460 = (762 : Int) := by
  decide

theorem node_7_102592 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 = (16785 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 = count [19, 17, 13, 11, 7, 5, 3, 2] 102592 - count [19, 17, 13, 11, 7, 5, 3, 2] (102592 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 102592 (by decide)
    _ = (17547 : Int) - (762 : Int) :=
      sub_congr node_8_102592 node_8_4460
    _ = (16785 : Int) := by decide

theorem node_8_3537 : count [19, 17, 13, 11, 7, 5, 3, 2] 3537 = (600 : Int) := by
  decide

theorem node_8_153 : count [19, 17, 13, 11, 7, 5, 3, 2] 153 = (29 : Int) := by
  decide

theorem node_7_3537 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3537 = (571 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3537 = count [19, 17, 13, 11, 7, 5, 3, 2] 3537 - count [19, 17, 13, 11, 7, 5, 3, 2] (3537 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3537 (by decide)
    _ = (600 : Int) - (29 : Int) :=
      sub_congr node_8_3537 node_8_153
    _ = (571 : Int) := by decide

theorem node_6_102592 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 = (16214 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (102592 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 (by decide)
    _ = (16785 : Int) - (571 : Int) :=
      sub_congr node_7_102592 node_7_3537
    _ = (16214 : Int) := by decide

theorem node_8_3309 : count [19, 17, 13, 11, 7, 5, 3, 2] 3309 = (561 : Int) := by
  decide

theorem node_8_143 : count [19, 17, 13, 11, 7, 5, 3, 2] 143 = (27 : Int) := by
  decide

theorem node_7_3309 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3309 = (534 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3309 = count [19, 17, 13, 11, 7, 5, 3, 2] 3309 - count [19, 17, 13, 11, 7, 5, 3, 2] (3309 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3309 (by decide)
    _ = (561 : Int) - (27 : Int) :=
      sub_congr node_8_3309 node_8_143
    _ = (534 : Int) := by decide

theorem node_8_114 : count [19, 17, 13, 11, 7, 5, 3, 2] 114 = (23 : Int) := by
  decide

theorem node_7_114 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 114 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 114 = count [19, 17, 13, 11, 7, 5, 3, 2] 114 - count [19, 17, 13, 11, 7, 5, 3, 2] (114 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 114 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_114 node_8_4
    _ = (22 : Int) := by decide

theorem node_6_3309 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3309 = (512 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3309 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3309 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3309 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3309 (by decide)
    _ = (534 : Int) - (22 : Int) :=
      sub_congr node_7_3309 node_7_114
    _ = (512 : Int) := by decide

theorem node_5_102592 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 = (15702 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (102592 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 (by decide)
    _ = (16214 : Int) - (512 : Int) :=
      sub_congr node_6_102592 node_6_3309
    _ = (15702 : Int) := by decide

theorem node_8_2772 : count [19, 17, 13, 11, 7, 5, 3, 2] 2772 = (471 : Int) := by
  decide

theorem node_8_120 : count [19, 17, 13, 11, 7, 5, 3, 2] 120 = (23 : Int) := by
  decide

theorem node_7_2772 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2772 = (448 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2772 = count [19, 17, 13, 11, 7, 5, 3, 2] 2772 - count [19, 17, 13, 11, 7, 5, 3, 2] (2772 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2772 (by decide)
    _ = (471 : Int) - (23 : Int) :=
      sub_congr node_8_2772 node_8_120
    _ = (448 : Int) := by decide

theorem node_8_95 : count [19, 17, 13, 11, 7, 5, 3, 2] 95 = (17 : Int) := by
  decide

theorem node_7_95 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 95 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 95 = count [19, 17, 13, 11, 7, 5, 3, 2] 95 - count [19, 17, 13, 11, 7, 5, 3, 2] (95 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 95 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_95 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_2772 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2772 = (432 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2772 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2772 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2772 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2772 (by decide)
    _ = (448 : Int) - (16 : Int) :=
      sub_congr node_7_2772 node_7_95
    _ = (432 : Int) := by decide

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

theorem node_5_2772 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2772 = (417 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2772 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2772 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2772 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2772 (by decide)
    _ = (432 : Int) - (15 : Int) :=
      sub_congr node_6_2772 node_6_89
    _ = (417 : Int) := by decide

theorem node_4_102592 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 = (15285 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (102592 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 (by decide)
    _ = (15702 : Int) - (417 : Int) :=
      sub_congr node_5_102592 node_5_2772
    _ = (15285 : Int) := by decide

theorem node_8_2502 : count [19, 17, 13, 11, 7, 5, 3, 2] 2502 = (425 : Int) := by
  decide

theorem node_8_108 : count [19, 17, 13, 11, 7, 5, 3, 2] 108 = (21 : Int) := by
  decide

theorem node_7_2502 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2502 = (404 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2502 = count [19, 17, 13, 11, 7, 5, 3, 2] 2502 - count [19, 17, 13, 11, 7, 5, 3, 2] (2502 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2502 (by decide)
    _ = (425 : Int) - (21 : Int) :=
      sub_congr node_8_2502 node_8_108
    _ = (404 : Int) := by decide

theorem node_8_86 : count [19, 17, 13, 11, 7, 5, 3, 2] 86 = (16 : Int) := by
  decide

theorem node_7_86 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = count [19, 17, 13, 11, 7, 5, 3, 2] 86 - count [19, 17, 13, 11, 7, 5, 3, 2] (86 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 86 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_86 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_2502 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2502 = (389 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2502 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2502 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2502 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2502 (by decide)
    _ = (404 : Int) - (15 : Int) :=
      sub_congr node_7_2502 node_7_86
    _ = (389 : Int) := by decide

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

theorem node_5_2502 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2502 = (376 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2502 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2502 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2502 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2502 (by decide)
    _ = (389 : Int) - (13 : Int) :=
      sub_congr node_6_2502 node_6_80
    _ = (376 : Int) := by decide

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

theorem node_5_67 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67 = (9 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (67 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_6_67 node_6_2
    _ = (9 : Int) := by decide

theorem node_4_2502 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2502 = (367 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2502 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2502 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2502 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2502 (by decide)
    _ = (376 : Int) - (9 : Int) :=
      sub_congr node_5_2502 node_5_67
    _ = (367 : Int) := by decide

theorem node_3_102592 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 = (14918 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (102592 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 (by decide)
    _ = (15285 : Int) - (367 : Int) :=
      sub_congr node_4_102592 node_4_2502
    _ = (14918 : Int) := by decide

theorem node_8_2385 : count [19, 17, 13, 11, 7, 5, 3, 2] 2385 = (405 : Int) := by
  decide

theorem node_8_103 : count [19, 17, 13, 11, 7, 5, 3, 2] 103 = (20 : Int) := by
  decide

theorem node_7_2385 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2385 = (385 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2385 = count [19, 17, 13, 11, 7, 5, 3, 2] 2385 - count [19, 17, 13, 11, 7, 5, 3, 2] (2385 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2385 (by decide)
    _ = (405 : Int) - (20 : Int) :=
      sub_congr node_8_2385 node_8_103
    _ = (385 : Int) := by decide

theorem node_8_82 : count [19, 17, 13, 11, 7, 5, 3, 2] 82 = (15 : Int) := by
  decide

theorem node_7_82 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = (14 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = count [19, 17, 13, 11, 7, 5, 3, 2] 82 - count [19, 17, 13, 11, 7, 5, 3, 2] (82 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 82 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_8_82 node_8_3
    _ = (14 : Int) := by decide

theorem node_6_2385 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2385 = (371 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2385 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2385 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2385 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2385 (by decide)
    _ = (385 : Int) - (14 : Int) :=
      sub_congr node_7_2385 node_7_82
    _ = (371 : Int) := by decide

theorem node_5_2385 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2385 = (359 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2385 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2385 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2385 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2385 (by decide)
    _ = (371 : Int) - (12 : Int) :=
      sub_congr node_6_2385 node_6_76
    _ = (359 : Int) := by decide

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

theorem node_5_64 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = (8 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (64 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_6_64 node_6_2
    _ = (8 : Int) := by decide

theorem node_4_2385 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2385 = (351 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2385 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2385 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2385 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2385 (by decide)
    _ = (359 : Int) - (8 : Int) :=
      sub_congr node_5_2385 node_5_64
    _ = (351 : Int) := by decide

theorem node_4_58 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = (5 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (58 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_5_58 node_5_1
    _ = (5 : Int) := by decide

theorem node_3_2385 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2385 = (346 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2385 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2385 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2385 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2385 (by decide)
    _ = (351 : Int) - (5 : Int) :=
      sub_congr node_4_2385 node_4_58
    _ = (346 : Int) := by decide

theorem node_2_102592 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 = (14572 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (102592 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 (by decide)
    _ = (14918 : Int) - (346 : Int) :=
      sub_congr node_3_102592 node_3_2385
    _ = (14572 : Int) := by decide

theorem node_8_2182 : count [19, 17, 13, 11, 7, 5, 3, 2] 2182 = (368 : Int) := by
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

theorem node_4_2182 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2182 = (322 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2182 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2182 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2182 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2182 (by decide)
    _ = (328 : Int) - (6 : Int) :=
      sub_congr node_5_2182 node_5_58
    _ = (322 : Int) := by decide

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

theorem node_4_53 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = (5 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (53 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_5_53 node_5_1
    _ = (5 : Int) := by decide

theorem node_3_2182 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2182 = (317 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2182 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2182 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2182 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2182 (by decide)
    _ = (322 : Int) - (5 : Int) :=
      sub_congr node_4_2182 node_4_53
    _ = (317 : Int) := by decide

theorem node_2_2182 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2182 = (314 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2182 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2182 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2182 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2182 (by decide)
    _ = (317 : Int) - (3 : Int) :=
      sub_congr node_3_2182 node_3_50
    _ = (314 : Int) := by decide

theorem node_1_102592 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 = (14258 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (102592 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 (by decide)
    _ = (14572 : Int) - (314 : Int) :=
      sub_congr node_2_102592 node_2_2182
    _ = (14258 : Int) := by decide

theorem node_8_1935 : count [19, 17, 13, 11, 7, 5, 3, 2] 1935 = (328 : Int) := by
  decide

theorem node_8_84 : count [19, 17, 13, 11, 7, 5, 3, 2] 84 = (16 : Int) := by
  decide

theorem node_7_1935 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1935 = (312 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1935 = count [19, 17, 13, 11, 7, 5, 3, 2] 1935 - count [19, 17, 13, 11, 7, 5, 3, 2] (1935 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1935 (by decide)
    _ = (328 : Int) - (16 : Int) :=
      sub_congr node_8_1935 node_8_84
    _ = (312 : Int) := by decide

theorem node_6_1935 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1935 = (302 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1935 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1935 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1935 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1935 (by decide)
    _ = (312 : Int) - (10 : Int) :=
      sub_congr node_7_1935 node_7_66
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

theorem node_5_1935 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1935 = (293 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1935 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1935 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1935 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1935 (by decide)
    _ = (302 : Int) - (9 : Int) :=
      sub_congr node_6_1935 node_6_62
    _ = (293 : Int) := by decide

theorem node_4_1935 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1935 = (288 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1935 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1935 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1935 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1935 (by decide)
    _ = (293 : Int) - (5 : Int) :=
      sub_congr node_5_1935 node_5_52
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

theorem node_3_1935 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1935 = (284 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1935 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1935 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1935 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1935 (by decide)
    _ = (288 : Int) - (4 : Int) :=
      sub_congr node_4_1935 node_4_47
    _ = (284 : Int) := by decide

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

theorem node_3_45 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 = (2 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (45 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_4_45 node_4_1
    _ = (2 : Int) := by decide

theorem node_2_1935 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1935 = (282 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1935 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1935 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1935 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1935 (by decide)
    _ = (284 : Int) - (2 : Int) :=
      sub_congr node_3_1935 node_3_45
    _ = (282 : Int) := by decide

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

theorem node_3_41 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (41 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_4_41 node_4_1
    _ = (1 : Int) := by decide

theorem node_2_41 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (41 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_41 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1935 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1935 = (281 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1935 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1935 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1935 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1935 (by decide)
    _ = (282 : Int) - (1 : Int) :=
      sub_congr node_2_1935 node_2_41
    _ = (281 : Int) := by decide

theorem node_0_102592 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 = (13977 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (102592 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102592 (by decide)
    _ = (14258 : Int) - (281 : Int) :=
      sub_congr node_1_102592 node_1_1935
    _ = (13977 : Int) := by decide

theorem node_8_103656 : count [19, 17, 13, 11, 7, 5, 3, 2] 103656 = (17727 : Int) := by
  decide

theorem node_8_4506 : count [19, 17, 13, 11, 7, 5, 3, 2] 4506 = (768 : Int) := by
  decide

theorem node_7_103656 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = (16959 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = count [19, 17, 13, 11, 7, 5, 3, 2] 103656 - count [19, 17, 13, 11, 7, 5, 3, 2] (103656 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 103656 (by decide)
    _ = (17727 : Int) - (768 : Int) :=
      sub_congr node_8_103656 node_8_4506
    _ = (16959 : Int) := by decide

theorem node_8_3574 : count [19, 17, 13, 11, 7, 5, 3, 2] 3574 = (608 : Int) := by
  decide

theorem node_8_155 : count [19, 17, 13, 11, 7, 5, 3, 2] 155 = (29 : Int) := by
  decide

theorem node_7_3574 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3574 = (579 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3574 = count [19, 17, 13, 11, 7, 5, 3, 2] 3574 - count [19, 17, 13, 11, 7, 5, 3, 2] (3574 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3574 (by decide)
    _ = (608 : Int) - (29 : Int) :=
      sub_congr node_8_3574 node_8_155
    _ = (579 : Int) := by decide

theorem node_6_103656 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = (16380 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (103656 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 (by decide)
    _ = (16959 : Int) - (579 : Int) :=
      sub_congr node_7_103656 node_7_3574
    _ = (16380 : Int) := by decide

theorem node_8_3343 : count [19, 17, 13, 11, 7, 5, 3, 2] 3343 = (569 : Int) := by
  decide

theorem node_8_145 : count [19, 17, 13, 11, 7, 5, 3, 2] 145 = (27 : Int) := by
  decide

theorem node_7_3343 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3343 = (542 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3343 = count [19, 17, 13, 11, 7, 5, 3, 2] 3343 - count [19, 17, 13, 11, 7, 5, 3, 2] (3343 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3343 (by decide)
    _ = (569 : Int) - (27 : Int) :=
      sub_congr node_8_3343 node_8_145
    _ = (542 : Int) := by decide

theorem node_8_115 : count [19, 17, 13, 11, 7, 5, 3, 2] 115 = (23 : Int) := by
  decide

theorem node_8_5 : count [19, 17, 13, 11, 7, 5, 3, 2] 5 = (1 : Int) := by
  decide

theorem node_7_115 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 115 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 115 = count [19, 17, 13, 11, 7, 5, 3, 2] 115 - count [19, 17, 13, 11, 7, 5, 3, 2] (115 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 115 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_115 node_8_5
    _ = (22 : Int) := by decide

theorem node_6_3343 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3343 = (520 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3343 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3343 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3343 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3343 (by decide)
    _ = (542 : Int) - (22 : Int) :=
      sub_congr node_7_3343 node_7_115
    _ = (520 : Int) := by decide

theorem node_5_103656 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = (15860 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (103656 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 (by decide)
    _ = (16380 : Int) - (520 : Int) :=
      sub_congr node_6_103656 node_6_3343
    _ = (15860 : Int) := by decide

theorem node_8_2801 : count [19, 17, 13, 11, 7, 5, 3, 2] 2801 = (477 : Int) := by
  decide

theorem node_8_121 : count [19, 17, 13, 11, 7, 5, 3, 2] 121 = (23 : Int) := by
  decide

theorem node_7_2801 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2801 = (454 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2801 = count [19, 17, 13, 11, 7, 5, 3, 2] 2801 - count [19, 17, 13, 11, 7, 5, 3, 2] (2801 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2801 (by decide)
    _ = (477 : Int) - (23 : Int) :=
      sub_congr node_8_2801 node_8_121
    _ = (454 : Int) := by decide

theorem node_8_96 : count [19, 17, 13, 11, 7, 5, 3, 2] 96 = (17 : Int) := by
  decide

theorem node_7_96 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 96 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 96 = count [19, 17, 13, 11, 7, 5, 3, 2] 96 - count [19, 17, 13, 11, 7, 5, 3, 2] (96 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 96 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_96 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_2801 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2801 = (438 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2801 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2801 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2801 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2801 (by decide)
    _ = (454 : Int) - (16 : Int) :=
      sub_congr node_7_2801 node_7_96
    _ = (438 : Int) := by decide

theorem node_8_90 : count [19, 17, 13, 11, 7, 5, 3, 2] 90 = (17 : Int) := by
  decide

theorem node_7_90 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 90 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 90 = count [19, 17, 13, 11, 7, 5, 3, 2] 90 - count [19, 17, 13, 11, 7, 5, 3, 2] (90 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 90 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_90 node_8_3
    _ = (16 : Int) := by decide

theorem node_6_90 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90 = (15 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 90 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 90 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (90 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 90 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_7_90 node_7_3
    _ = (15 : Int) := by decide

theorem node_5_2801 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2801 = (423 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2801 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2801 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2801 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2801 (by decide)
    _ = (438 : Int) - (15 : Int) :=
      sub_congr node_6_2801 node_6_90
    _ = (423 : Int) := by decide

theorem node_4_103656 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = (15437 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (103656 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 (by decide)
    _ = (15860 : Int) - (423 : Int) :=
      sub_congr node_5_103656 node_5_2801
    _ = (15437 : Int) := by decide

theorem node_8_2528 : count [19, 17, 13, 11, 7, 5, 3, 2] 2528 = (428 : Int) := by
  decide

theorem node_8_109 : count [19, 17, 13, 11, 7, 5, 3, 2] 109 = (22 : Int) := by
  decide

theorem node_7_2528 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 = (406 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 = count [19, 17, 13, 11, 7, 5, 3, 2] 2528 - count [19, 17, 13, 11, 7, 5, 3, 2] (2528 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2528 (by decide)
    _ = (428 : Int) - (22 : Int) :=
      sub_congr node_8_2528 node_8_109
    _ = (406 : Int) := by decide

theorem node_8_87 : count [19, 17, 13, 11, 7, 5, 3, 2] 87 = (16 : Int) := by
  decide

theorem node_7_87 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = count [19, 17, 13, 11, 7, 5, 3, 2] 87 - count [19, 17, 13, 11, 7, 5, 3, 2] (87 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 87 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_87 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_2528 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 = (391 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2528 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 (by decide)
    _ = (406 : Int) - (15 : Int) :=
      sub_congr node_7_2528 node_7_87
    _ = (391 : Int) := by decide

theorem node_6_81 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = (13 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 81 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (81 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 81 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_7_81 node_7_2
    _ = (13 : Int) := by decide

theorem node_5_2528 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 = (378 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2528 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 (by decide)
    _ = (391 : Int) - (13 : Int) :=
      sub_congr node_6_2528 node_6_81
    _ = (378 : Int) := by decide

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

theorem node_5_68 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = (9 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (68 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_6_68 node_6_2
    _ = (9 : Int) := by decide

theorem node_4_2528 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 = (369 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2528 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2528 (by decide)
    _ = (378 : Int) - (9 : Int) :=
      sub_congr node_5_2528 node_5_68
    _ = (369 : Int) := by decide

theorem node_3_103656 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = (15068 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (103656 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 (by decide)
    _ = (15437 : Int) - (369 : Int) :=
      sub_congr node_4_103656 node_4_2528
    _ = (15068 : Int) := by decide

theorem node_8_2410 : count [19, 17, 13, 11, 7, 5, 3, 2] 2410 = (409 : Int) := by
  decide

theorem node_8_104 : count [19, 17, 13, 11, 7, 5, 3, 2] 104 = (20 : Int) := by
  decide

theorem node_7_2410 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 = (389 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 = count [19, 17, 13, 11, 7, 5, 3, 2] 2410 - count [19, 17, 13, 11, 7, 5, 3, 2] (2410 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2410 (by decide)
    _ = (409 : Int) - (20 : Int) :=
      sub_congr node_8_2410 node_8_104
    _ = (389 : Int) := by decide

theorem node_7_83 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 83 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 83 = count [19, 17, 13, 11, 7, 5, 3, 2] 83 - count [19, 17, 13, 11, 7, 5, 3, 2] (83 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 83 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_83 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_2410 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 = (374 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2410 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 (by decide)
    _ = (389 : Int) - (15 : Int) :=
      sub_congr node_7_2410 node_7_83
    _ = (374 : Int) := by decide

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

theorem node_5_2410 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 = (362 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2410 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 (by decide)
    _ = (374 : Int) - (12 : Int) :=
      sub_congr node_6_2410 node_6_77
    _ = (362 : Int) := by decide

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

theorem node_5_65 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = (8 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (65 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_6_65 node_6_2
    _ = (8 : Int) := by decide

theorem node_4_2410 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 = (354 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2410 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 (by decide)
    _ = (362 : Int) - (8 : Int) :=
      sub_congr node_5_2410 node_5_65
    _ = (354 : Int) := by decide

theorem node_3_2410 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 = (349 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2410 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2410 (by decide)
    _ = (354 : Int) - (5 : Int) :=
      sub_congr node_4_2410 node_4_58
    _ = (349 : Int) := by decide

theorem node_2_103656 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = (14719 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (103656 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 (by decide)
    _ = (15068 : Int) - (349 : Int) :=
      sub_congr node_3_103656 node_3_2410
    _ = (14719 : Int) := by decide

theorem node_8_2205 : count [19, 17, 13, 11, 7, 5, 3, 2] 2205 = (371 : Int) := by
  decide

theorem node_7_2205 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 = (354 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 = count [19, 17, 13, 11, 7, 5, 3, 2] 2205 - count [19, 17, 13, 11, 7, 5, 3, 2] (2205 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2205 (by decide)
    _ = (371 : Int) - (17 : Int) :=
      sub_congr node_8_2205 node_8_95
    _ = (354 : Int) := by decide

theorem node_6_2205 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 = (341 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2205 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 (by decide)
    _ = (354 : Int) - (13 : Int) :=
      sub_congr node_7_2205 node_7_76
    _ = (341 : Int) := by decide

theorem node_8_71 : count [19, 17, 13, 11, 7, 5, 3, 2] 71 = (13 : Int) := by
  decide

theorem node_7_71 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = (12 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = count [19, 17, 13, 11, 7, 5, 3, 2] 71 - count [19, 17, 13, 11, 7, 5, 3, 2] (71 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 71 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_8_71 node_8_3
    _ = (12 : Int) := by decide

theorem node_6_71 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = (11 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (71 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_7_71 node_7_2
    _ = (11 : Int) := by decide

theorem node_5_2205 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 = (330 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2205 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 (by decide)
    _ = (341 : Int) - (11 : Int) :=
      sub_congr node_6_2205 node_6_71
    _ = (330 : Int) := by decide

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

theorem node_5_59 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = (7 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (59 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_6_59 node_6_1
    _ = (7 : Int) := by decide

theorem node_4_2205 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 = (323 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2205 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 (by decide)
    _ = (330 : Int) - (7 : Int) :=
      sub_congr node_5_2205 node_5_59
    _ = (323 : Int) := by decide

theorem node_3_2205 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 = (318 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2205 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 (by decide)
    _ = (323 : Int) - (5 : Int) :=
      sub_congr node_4_2205 node_4_53
    _ = (318 : Int) := by decide

theorem node_4_51 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = (4 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (51 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_5_51 node_5_1
    _ = (4 : Int) := by decide

theorem node_3_51 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = (3 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (51 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_4_51 node_4_1
    _ = (3 : Int) := by decide

theorem node_2_2205 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 = (315 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2205 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2205 (by decide)
    _ = (318 : Int) - (3 : Int) :=
      sub_congr node_3_2205 node_3_51
    _ = (315 : Int) := by decide

theorem node_1_103656 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = (14404 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (103656 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 (by decide)
    _ = (14719 : Int) - (315 : Int) :=
      sub_congr node_2_103656 node_2_2205
    _ = (14404 : Int) := by decide

theorem node_8_1955 : count [19, 17, 13, 11, 7, 5, 3, 2] 1955 = (331 : Int) := by
  decide

theorem node_7_1955 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = (315 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = count [19, 17, 13, 11, 7, 5, 3, 2] 1955 - count [19, 17, 13, 11, 7, 5, 3, 2] (1955 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1955 (by decide)
    _ = (331 : Int) - (16 : Int) :=
      sub_congr node_8_1955 node_8_85
    _ = (315 : Int) := by decide

theorem node_6_1955 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = (304 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1955 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 (by decide)
    _ = (315 : Int) - (11 : Int) :=
      sub_congr node_7_1955 node_7_67
    _ = (304 : Int) := by decide

theorem node_5_1955 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = (295 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1955 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 (by decide)
    _ = (304 : Int) - (9 : Int) :=
      sub_congr node_6_1955 node_6_63
    _ = (295 : Int) := by decide

theorem node_4_1955 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = (290 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1955 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 (by decide)
    _ = (295 : Int) - (5 : Int) :=
      sub_congr node_5_1955 node_5_52
    _ = (290 : Int) := by decide

theorem node_3_1955 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = (286 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1955 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 (by decide)
    _ = (290 : Int) - (4 : Int) :=
      sub_congr node_4_1955 node_4_47
    _ = (286 : Int) := by decide

theorem node_2_1955 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = (284 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1955 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 (by decide)
    _ = (286 : Int) - (2 : Int) :=
      sub_congr node_3_1955 node_3_45
    _ = (284 : Int) := by decide

theorem node_1_1955 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = (283 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1955 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1955 (by decide)
    _ = (284 : Int) - (1 : Int) :=
      sub_congr node_2_1955 node_2_41
    _ = (283 : Int) := by decide

theorem node_0_103656 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = (14121 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (103656 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103656 (by decide)
    _ = (14404 : Int) - (283 : Int) :=
      sub_congr node_1_103656 node_1_1955
    _ = (14121 : Int) := by decide

theorem node_8_104742 : count [19, 17, 13, 11, 7, 5, 3, 2] 104742 = (17911 : Int) := by
  decide

theorem node_8_4554 : count [19, 17, 13, 11, 7, 5, 3, 2] 4554 = (777 : Int) := by
  decide

theorem node_7_104742 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = (17134 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = count [19, 17, 13, 11, 7, 5, 3, 2] 104742 - count [19, 17, 13, 11, 7, 5, 3, 2] (104742 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 104742 (by decide)
    _ = (17911 : Int) - (777 : Int) :=
      sub_congr node_8_104742 node_8_4554
    _ = (17134 : Int) := by decide

theorem node_8_3611 : count [19, 17, 13, 11, 7, 5, 3, 2] 3611 = (615 : Int) := by
  decide

theorem node_8_157 : count [19, 17, 13, 11, 7, 5, 3, 2] 157 = (30 : Int) := by
  decide

theorem node_7_3611 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3611 = (585 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3611 = count [19, 17, 13, 11, 7, 5, 3, 2] 3611 - count [19, 17, 13, 11, 7, 5, 3, 2] (3611 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3611 (by decide)
    _ = (615 : Int) - (30 : Int) :=
      sub_congr node_8_3611 node_8_157
    _ = (585 : Int) := by decide

theorem node_6_104742 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = (16549 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (104742 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 (by decide)
    _ = (17134 : Int) - (585 : Int) :=
      sub_congr node_7_104742 node_7_3611
    _ = (16549 : Int) := by decide

theorem node_8_3378 : count [19, 17, 13, 11, 7, 5, 3, 2] 3378 = (574 : Int) := by
  decide

theorem node_8_146 : count [19, 17, 13, 11, 7, 5, 3, 2] 146 = (27 : Int) := by
  decide

theorem node_7_3378 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3378 = (547 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3378 = count [19, 17, 13, 11, 7, 5, 3, 2] 3378 - count [19, 17, 13, 11, 7, 5, 3, 2] (3378 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3378 (by decide)
    _ = (574 : Int) - (27 : Int) :=
      sub_congr node_8_3378 node_8_146
    _ = (547 : Int) := by decide

theorem node_8_116 : count [19, 17, 13, 11, 7, 5, 3, 2] 116 = (23 : Int) := by
  decide

theorem node_7_116 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 116 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 116 = count [19, 17, 13, 11, 7, 5, 3, 2] 116 - count [19, 17, 13, 11, 7, 5, 3, 2] (116 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 116 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_116 node_8_5
    _ = (22 : Int) := by decide

theorem node_6_3378 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3378 = (525 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3378 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3378 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3378 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3378 (by decide)
    _ = (547 : Int) - (22 : Int) :=
      sub_congr node_7_3378 node_7_116
    _ = (525 : Int) := by decide

theorem node_5_104742 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = (16024 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (104742 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 (by decide)
    _ = (16549 : Int) - (525 : Int) :=
      sub_congr node_6_104742 node_6_3378
    _ = (16024 : Int) := by decide

theorem node_8_2830 : count [19, 17, 13, 11, 7, 5, 3, 2] 2830 = (481 : Int) := by
  decide

theorem node_8_123 : count [19, 17, 13, 11, 7, 5, 3, 2] 123 = (23 : Int) := by
  decide

theorem node_7_2830 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2830 = (458 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2830 = count [19, 17, 13, 11, 7, 5, 3, 2] 2830 - count [19, 17, 13, 11, 7, 5, 3, 2] (2830 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2830 (by decide)
    _ = (481 : Int) - (23 : Int) :=
      sub_congr node_8_2830 node_8_123
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

theorem node_6_2830 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2830 = (441 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2830 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2830 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2830 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2830 (by decide)
    _ = (458 : Int) - (17 : Int) :=
      sub_congr node_7_2830 node_7_97
    _ = (441 : Int) := by decide

theorem node_8_91 : count [19, 17, 13, 11, 7, 5, 3, 2] 91 = (17 : Int) := by
  decide

theorem node_7_91 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 91 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 91 = count [19, 17, 13, 11, 7, 5, 3, 2] 91 - count [19, 17, 13, 11, 7, 5, 3, 2] (91 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 91 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_91 node_8_3
    _ = (16 : Int) := by decide

theorem node_6_91 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91 = (15 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 91 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 91 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (91 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 91 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_7_91 node_7_3
    _ = (15 : Int) := by decide

theorem node_5_2830 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2830 = (426 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2830 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2830 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2830 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2830 (by decide)
    _ = (441 : Int) - (15 : Int) :=
      sub_congr node_6_2830 node_6_91
    _ = (426 : Int) := by decide

theorem node_4_104742 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = (15598 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (104742 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 (by decide)
    _ = (16024 : Int) - (426 : Int) :=
      sub_congr node_5_104742 node_5_2830
    _ = (15598 : Int) := by decide

theorem node_8_2554 : count [19, 17, 13, 11, 7, 5, 3, 2] 2554 = (434 : Int) := by
  decide

theorem node_8_111 : count [19, 17, 13, 11, 7, 5, 3, 2] 111 = (22 : Int) := by
  decide

theorem node_7_2554 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 = (412 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 = count [19, 17, 13, 11, 7, 5, 3, 2] 2554 - count [19, 17, 13, 11, 7, 5, 3, 2] (2554 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2554 (by decide)
    _ = (434 : Int) - (22 : Int) :=
      sub_congr node_8_2554 node_8_111
    _ = (412 : Int) := by decide

theorem node_6_2554 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 = (397 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2554 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 (by decide)
    _ = (412 : Int) - (15 : Int) :=
      sub_congr node_7_2554 node_7_88
    _ = (397 : Int) := by decide

theorem node_6_82 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = (13 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 82 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (82 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 82 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_7_82 node_7_2
    _ = (13 : Int) := by decide

theorem node_5_2554 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 = (384 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2554 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 (by decide)
    _ = (397 : Int) - (13 : Int) :=
      sub_congr node_6_2554 node_6_82
    _ = (384 : Int) := by decide

theorem node_5_69 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = (9 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (69 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_6_69 node_6_2
    _ = (9 : Int) := by decide

theorem node_4_2554 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 = (375 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2554 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2554 (by decide)
    _ = (384 : Int) - (9 : Int) :=
      sub_congr node_5_2554 node_5_69
    _ = (375 : Int) := by decide

theorem node_3_104742 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = (15223 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (104742 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 (by decide)
    _ = (15598 : Int) - (375 : Int) :=
      sub_congr node_4_104742 node_4_2554
    _ = (15223 : Int) := by decide

theorem node_8_2435 : count [19, 17, 13, 11, 7, 5, 3, 2] 2435 = (413 : Int) := by
  decide

theorem node_8_105 : count [19, 17, 13, 11, 7, 5, 3, 2] 105 = (20 : Int) := by
  decide

theorem node_7_2435 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 = (393 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 = count [19, 17, 13, 11, 7, 5, 3, 2] 2435 - count [19, 17, 13, 11, 7, 5, 3, 2] (2435 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2435 (by decide)
    _ = (413 : Int) - (20 : Int) :=
      sub_congr node_8_2435 node_8_105
    _ = (393 : Int) := by decide

theorem node_6_2435 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 = (378 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2435 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 (by decide)
    _ = (393 : Int) - (15 : Int) :=
      sub_congr node_7_2435 node_7_83
    _ = (378 : Int) := by decide

theorem node_8_78 : count [19, 17, 13, 11, 7, 5, 3, 2] 78 = (14 : Int) := by
  decide

theorem node_7_78 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = count [19, 17, 13, 11, 7, 5, 3, 2] 78 - count [19, 17, 13, 11, 7, 5, 3, 2] (78 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 78 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_78 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_78 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = (12 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (78 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_7_78 node_7_2
    _ = (12 : Int) := by decide

theorem node_5_2435 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 = (366 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2435 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 (by decide)
    _ = (378 : Int) - (12 : Int) :=
      sub_congr node_6_2435 node_6_78
    _ = (366 : Int) := by decide

theorem node_4_2435 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 = (358 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2435 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 (by decide)
    _ = (366 : Int) - (8 : Int) :=
      sub_congr node_5_2435 node_5_65
    _ = (358 : Int) := by decide

theorem node_4_59 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = (6 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (59 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_5_59 node_5_1
    _ = (6 : Int) := by decide

theorem node_3_2435 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 = (352 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2435 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2435 (by decide)
    _ = (358 : Int) - (6 : Int) :=
      sub_congr node_4_2435 node_4_59
    _ = (352 : Int) := by decide

theorem node_2_104742 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = (14871 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (104742 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 (by decide)
    _ = (15223 : Int) - (352 : Int) :=
      sub_congr node_3_104742 node_3_2435
    _ = (14871 : Int) := by decide

theorem node_8_2228 : count [19, 17, 13, 11, 7, 5, 3, 2] 2228 = (375 : Int) := by
  decide

theorem node_7_2228 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 = (358 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 = count [19, 17, 13, 11, 7, 5, 3, 2] 2228 - count [19, 17, 13, 11, 7, 5, 3, 2] (2228 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2228 (by decide)
    _ = (375 : Int) - (17 : Int) :=
      sub_congr node_8_2228 node_8_96
    _ = (358 : Int) := by decide

theorem node_6_2228 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 = (345 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2228 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 (by decide)
    _ = (358 : Int) - (13 : Int) :=
      sub_congr node_7_2228 node_7_76
    _ = (345 : Int) := by decide

theorem node_5_2228 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 = (334 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2228 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 (by decide)
    _ = (345 : Int) - (11 : Int) :=
      sub_congr node_6_2228 node_6_71
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

theorem node_4_2228 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 = (327 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2228 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 (by decide)
    _ = (334 : Int) - (7 : Int) :=
      sub_congr node_5_2228 node_5_60
    _ = (327 : Int) := by decide

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

theorem node_4_54 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 = (5 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (54 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_5_54 node_5_1
    _ = (5 : Int) := by decide

theorem node_3_2228 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 = (322 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2228 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 (by decide)
    _ = (327 : Int) - (5 : Int) :=
      sub_congr node_4_2228 node_4_54
    _ = (322 : Int) := by decide

theorem node_2_2228 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 = (319 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2228 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2228 (by decide)
    _ = (322 : Int) - (3 : Int) :=
      sub_congr node_3_2228 node_3_51
    _ = (319 : Int) := by decide

theorem node_1_104742 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = (14552 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (104742 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 (by decide)
    _ = (14871 : Int) - (319 : Int) :=
      sub_congr node_2_104742 node_2_2228
    _ = (14552 : Int) := by decide

theorem node_8_1976 : count [19, 17, 13, 11, 7, 5, 3, 2] 1976 = (333 : Int) := by
  decide

theorem node_7_1976 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = (317 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = count [19, 17, 13, 11, 7, 5, 3, 2] 1976 - count [19, 17, 13, 11, 7, 5, 3, 2] (1976 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1976 (by decide)
    _ = (333 : Int) - (16 : Int) :=
      sub_congr node_8_1976 node_8_85
    _ = (317 : Int) := by decide

theorem node_6_1976 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = (306 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1976 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 (by decide)
    _ = (317 : Int) - (11 : Int) :=
      sub_congr node_7_1976 node_7_68
    _ = (306 : Int) := by decide

theorem node_5_1976 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = (297 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1976 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 (by decide)
    _ = (306 : Int) - (9 : Int) :=
      sub_congr node_6_1976 node_6_63
    _ = (297 : Int) := by decide

theorem node_4_1976 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = (291 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1976 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 (by decide)
    _ = (297 : Int) - (6 : Int) :=
      sub_congr node_5_1976 node_5_53
    _ = (291 : Int) := by decide

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

theorem node_3_1976 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = (287 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1976 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 (by decide)
    _ = (291 : Int) - (4 : Int) :=
      sub_congr node_4_1976 node_4_48
    _ = (287 : Int) := by decide

theorem node_2_1976 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = (285 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1976 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 (by decide)
    _ = (287 : Int) - (2 : Int) :=
      sub_congr node_3_1976 node_3_45
    _ = (285 : Int) := by decide

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

theorem node_3_42 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (42 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_4_42 node_4_1
    _ = (1 : Int) := by decide

theorem node_2_42 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (42 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_42 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1976 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = (284 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1976 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1976 (by decide)
    _ = (285 : Int) - (1 : Int) :=
      sub_congr node_2_1976 node_2_42
    _ = (284 : Int) := by decide

theorem node_0_104742 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = (14268 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (104742 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104742 (by decide)
    _ = (14552 : Int) - (284 : Int) :=
      sub_congr node_1_104742 node_1_1976
    _ = (14268 : Int) := by decide

theorem row_88 : count primes 101550 ≤ (13847 : Int) - 15 := by
  rw [show count primes 101550 = (13832 : Int) from node_0_101550]
  decide

theorem row_89 : count primes 102592 ≤ (13992 : Int) - 15 := by
  rw [show count primes 102592 = (13977 : Int) from node_0_102592]
  decide

theorem row_90 : count primes 103656 ≤ (14136 : Int) - 15 := by
  rw [show count primes 103656 = (14121 : Int) from node_0_103656]
  decide

theorem row_91 : count primes 104742 ≤ (14283 : Int) - 15 := by
  rw [show count primes 104742 = (14268 : Int) from node_0_104742]
  decide

def pairs : List (Nat × Nat) := [(101550, 13847), (102592, 13992), (103656, 14136), (104742, 14283)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl | rfl | rfl
  · exact row_88
  · exact row_89
  · exact row_90
  · exact row_91
end B699CorePrunedSieve.CoreDagBatch23
#check @B699CorePrunedSieve.CoreDagBatch23.pairs_valid
#print axioms B699CorePrunedSieve.CoreDagBatch23.pairs_valid
