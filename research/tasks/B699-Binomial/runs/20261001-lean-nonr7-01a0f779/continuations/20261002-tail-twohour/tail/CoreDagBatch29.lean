import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreDagBatch29
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_129120 : count [19, 17, 13, 11, 7, 5, 3, 2] 129120 = (22080 : Int) := by
  decide

theorem node_8_5613 : count [19, 17, 13, 11, 7, 5, 3, 2] 5613 = (958 : Int) := by
  decide

theorem node_7_129120 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 = (21122 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 = count [19, 17, 13, 11, 7, 5, 3, 2] 129120 - count [19, 17, 13, 11, 7, 5, 3, 2] (129120 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 129120 (by decide)
    _ = (22080 : Int) - (958 : Int) :=
      sub_congr node_8_129120 node_8_5613
    _ = (21122 : Int) := by decide

theorem node_8_4452 : count [19, 17, 13, 11, 7, 5, 3, 2] 4452 = (760 : Int) := by
  decide

theorem node_8_193 : count [19, 17, 13, 11, 7, 5, 3, 2] 193 = (37 : Int) := by
  decide

theorem node_7_4452 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4452 = (723 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4452 = count [19, 17, 13, 11, 7, 5, 3, 2] 4452 - count [19, 17, 13, 11, 7, 5, 3, 2] (4452 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4452 (by decide)
    _ = (760 : Int) - (37 : Int) :=
      sub_congr node_8_4452 node_8_193
    _ = (723 : Int) := by decide

theorem node_6_129120 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 = (20399 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (129120 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 (by decide)
    _ = (21122 : Int) - (723 : Int) :=
      sub_congr node_7_129120 node_7_4452
    _ = (20399 : Int) := by decide

theorem node_8_4165 : count [19, 17, 13, 11, 7, 5, 3, 2] 4165 = (710 : Int) := by
  decide

theorem node_8_181 : count [19, 17, 13, 11, 7, 5, 3, 2] 181 = (35 : Int) := by
  decide

theorem node_7_4165 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4165 = (675 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4165 = count [19, 17, 13, 11, 7, 5, 3, 2] 4165 - count [19, 17, 13, 11, 7, 5, 3, 2] (4165 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4165 (by decide)
    _ = (710 : Int) - (35 : Int) :=
      sub_congr node_8_4165 node_8_181
    _ = (675 : Int) := by decide

theorem node_8_143 : count [19, 17, 13, 11, 7, 5, 3, 2] 143 = (27 : Int) := by
  decide

theorem node_8_6 : count [19, 17, 13, 11, 7, 5, 3, 2] 6 = (1 : Int) := by
  decide

theorem node_7_143 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 143 = (26 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 143 = count [19, 17, 13, 11, 7, 5, 3, 2] 143 - count [19, 17, 13, 11, 7, 5, 3, 2] (143 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 143 (by decide)
    _ = (27 : Int) - (1 : Int) :=
      sub_congr node_8_143 node_8_6
    _ = (26 : Int) := by decide

theorem node_6_4165 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4165 = (649 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4165 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4165 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (4165 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 4165 (by decide)
    _ = (675 : Int) - (26 : Int) :=
      sub_congr node_7_4165 node_7_143
    _ = (649 : Int) := by decide

theorem node_5_129120 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 = (19750 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (129120 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 (by decide)
    _ = (20399 : Int) - (649 : Int) :=
      sub_congr node_6_129120 node_6_4165
    _ = (19750 : Int) := by decide

theorem node_8_3489 : count [19, 17, 13, 11, 7, 5, 3, 2] 3489 = (592 : Int) := by
  decide

theorem node_8_151 : count [19, 17, 13, 11, 7, 5, 3, 2] 151 = (29 : Int) := by
  decide

theorem node_7_3489 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3489 = (563 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3489 = count [19, 17, 13, 11, 7, 5, 3, 2] 3489 - count [19, 17, 13, 11, 7, 5, 3, 2] (3489 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3489 (by decide)
    _ = (592 : Int) - (29 : Int) :=
      sub_congr node_8_3489 node_8_151
    _ = (563 : Int) := by decide

theorem node_8_120 : count [19, 17, 13, 11, 7, 5, 3, 2] 120 = (23 : Int) := by
  decide

theorem node_8_5 : count [19, 17, 13, 11, 7, 5, 3, 2] 5 = (1 : Int) := by
  decide

theorem node_7_120 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 120 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 120 = count [19, 17, 13, 11, 7, 5, 3, 2] 120 - count [19, 17, 13, 11, 7, 5, 3, 2] (120 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 120 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_120 node_8_5
    _ = (22 : Int) := by decide

theorem node_6_3489 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3489 = (541 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3489 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3489 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3489 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3489 (by decide)
    _ = (563 : Int) - (22 : Int) :=
      sub_congr node_7_3489 node_7_120
    _ = (541 : Int) := by decide

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

theorem node_6_112 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112 = (20 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 112 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (112 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 112 (by decide)
    _ = (21 : Int) - (1 : Int) :=
      sub_congr node_7_112 node_7_3
    _ = (20 : Int) := by decide

theorem node_5_3489 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3489 = (521 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3489 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3489 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3489 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3489 (by decide)
    _ = (541 : Int) - (20 : Int) :=
      sub_congr node_6_3489 node_6_112
    _ = (521 : Int) := by decide

theorem node_4_129120 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 = (19229 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (129120 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 (by decide)
    _ = (19750 : Int) - (521 : Int) :=
      sub_congr node_5_129120 node_5_3489
    _ = (19229 : Int) := by decide

theorem node_8_3149 : count [19, 17, 13, 11, 7, 5, 3, 2] 3149 = (534 : Int) := by
  decide

theorem node_8_136 : count [19, 17, 13, 11, 7, 5, 3, 2] 136 = (25 : Int) := by
  decide

theorem node_7_3149 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3149 = (509 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3149 = count [19, 17, 13, 11, 7, 5, 3, 2] 3149 - count [19, 17, 13, 11, 7, 5, 3, 2] (3149 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3149 (by decide)
    _ = (534 : Int) - (25 : Int) :=
      sub_congr node_8_3149 node_8_136
    _ = (509 : Int) := by decide

theorem node_8_108 : count [19, 17, 13, 11, 7, 5, 3, 2] 108 = (21 : Int) := by
  decide

theorem node_7_108 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 108 = (20 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 108 = count [19, 17, 13, 11, 7, 5, 3, 2] 108 - count [19, 17, 13, 11, 7, 5, 3, 2] (108 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 108 (by decide)
    _ = (21 : Int) - (1 : Int) :=
      sub_congr node_8_108 node_8_4
    _ = (20 : Int) := by decide

theorem node_6_3149 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3149 = (489 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3149 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3149 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3149 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3149 (by decide)
    _ = (509 : Int) - (20 : Int) :=
      sub_congr node_7_3149 node_7_108
    _ = (489 : Int) := by decide

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

theorem node_5_3149 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3149 = (472 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3149 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3149 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3149 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3149 (by decide)
    _ = (489 : Int) - (17 : Int) :=
      sub_congr node_6_3149 node_6_101
    _ = (472 : Int) := by decide

theorem node_8_85 : count [19, 17, 13, 11, 7, 5, 3, 2] 85 = (16 : Int) := by
  decide

theorem node_7_85 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 85 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 85 = count [19, 17, 13, 11, 7, 5, 3, 2] 85 - count [19, 17, 13, 11, 7, 5, 3, 2] (85 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 85 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_85 node_8_3
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

theorem node_6_85 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85 = (14 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 85 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (85 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 85 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_7_85 node_7_2
    _ = (14 : Int) := by decide

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_2 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_2 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_85 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85 = (13 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (85 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_6_85 node_6_2
    _ = (13 : Int) := by decide

theorem node_4_3149 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3149 = (459 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3149 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3149 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3149 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3149 (by decide)
    _ = (472 : Int) - (13 : Int) :=
      sub_congr node_5_3149 node_5_85
    _ = (459 : Int) := by decide

theorem node_3_129120 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 = (18770 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (129120 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 (by decide)
    _ = (19229 : Int) - (459 : Int) :=
      sub_congr node_4_129120 node_4_3149
    _ = (18770 : Int) := by decide

theorem node_8_3002 : count [19, 17, 13, 11, 7, 5, 3, 2] 3002 = (510 : Int) := by
  decide

theorem node_8_130 : count [19, 17, 13, 11, 7, 5, 3, 2] 130 = (24 : Int) := by
  decide

theorem node_7_3002 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3002 = (486 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3002 = count [19, 17, 13, 11, 7, 5, 3, 2] 3002 - count [19, 17, 13, 11, 7, 5, 3, 2] (3002 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3002 (by decide)
    _ = (510 : Int) - (24 : Int) :=
      sub_congr node_8_3002 node_8_130
    _ = (486 : Int) := by decide

theorem node_8_103 : count [19, 17, 13, 11, 7, 5, 3, 2] 103 = (20 : Int) := by
  decide

theorem node_7_103 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 103 = (19 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 103 = count [19, 17, 13, 11, 7, 5, 3, 2] 103 - count [19, 17, 13, 11, 7, 5, 3, 2] (103 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 103 (by decide)
    _ = (20 : Int) - (1 : Int) :=
      sub_congr node_8_103 node_8_4
    _ = (19 : Int) := by decide

theorem node_6_3002 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3002 = (467 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3002 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3002 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3002 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3002 (by decide)
    _ = (486 : Int) - (19 : Int) :=
      sub_congr node_7_3002 node_7_103
    _ = (467 : Int) := by decide

theorem node_8_96 : count [19, 17, 13, 11, 7, 5, 3, 2] 96 = (17 : Int) := by
  decide

theorem node_7_96 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 96 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 96 = count [19, 17, 13, 11, 7, 5, 3, 2] 96 - count [19, 17, 13, 11, 7, 5, 3, 2] (96 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 96 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_96 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_96 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96 = (15 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 96 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (96 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 96 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_7_96 node_7_3
    _ = (15 : Int) := by decide

theorem node_5_3002 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3002 = (452 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3002 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3002 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3002 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3002 (by decide)
    _ = (467 : Int) - (15 : Int) :=
      sub_congr node_6_3002 node_6_96
    _ = (452 : Int) := by decide

theorem node_8_81 : count [19, 17, 13, 11, 7, 5, 3, 2] 81 = (15 : Int) := by
  decide

theorem node_7_81 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = (14 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = count [19, 17, 13, 11, 7, 5, 3, 2] 81 - count [19, 17, 13, 11, 7, 5, 3, 2] (81 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 81 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_8_81 node_8_3
    _ = (14 : Int) := by decide

theorem node_6_81 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = (13 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 81 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (81 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 81 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_7_81 node_7_2
    _ = (13 : Int) := by decide

theorem node_5_81 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = (12 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (81 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_6_81 node_6_2
    _ = (12 : Int) := by decide

theorem node_4_3002 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3002 = (440 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3002 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3002 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3002 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3002 (by decide)
    _ = (452 : Int) - (12 : Int) :=
      sub_congr node_5_3002 node_5_81
    _ = (440 : Int) := by decide

theorem node_8_73 : count [19, 17, 13, 11, 7, 5, 3, 2] 73 = (14 : Int) := by
  decide

theorem node_7_73 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 73 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 73 = count [19, 17, 13, 11, 7, 5, 3, 2] 73 - count [19, 17, 13, 11, 7, 5, 3, 2] (73 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 73 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_73 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_73 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73 = (12 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 73 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (73 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 73 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_7_73 node_7_2
    _ = (12 : Int) := by decide

theorem node_5_73 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73 = (11 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (73 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_6_73 node_6_2
    _ = (11 : Int) := by decide

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

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_1 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_1 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_73 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73 = (10 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (73 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_5_73 node_5_1
    _ = (10 : Int) := by decide

theorem node_3_3002 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3002 = (430 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3002 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3002 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3002 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3002 (by decide)
    _ = (440 : Int) - (10 : Int) :=
      sub_congr node_4_3002 node_4_73
    _ = (430 : Int) := by decide

theorem node_2_129120 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 = (18340 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (129120 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 (by decide)
    _ = (18770 : Int) - (430 : Int) :=
      sub_congr node_3_129120 node_3_3002
    _ = (18340 : Int) := by decide

theorem node_8_2747 : count [19, 17, 13, 11, 7, 5, 3, 2] 2747 = (467 : Int) := by
  decide

theorem node_8_119 : count [19, 17, 13, 11, 7, 5, 3, 2] 119 = (23 : Int) := by
  decide

theorem node_7_2747 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2747 = (444 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2747 = count [19, 17, 13, 11, 7, 5, 3, 2] 2747 - count [19, 17, 13, 11, 7, 5, 3, 2] (2747 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2747 (by decide)
    _ = (467 : Int) - (23 : Int) :=
      sub_congr node_8_2747 node_8_119
    _ = (444 : Int) := by decide

theorem node_8_94 : count [19, 17, 13, 11, 7, 5, 3, 2] 94 = (17 : Int) := by
  decide

theorem node_7_94 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 94 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 94 = count [19, 17, 13, 11, 7, 5, 3, 2] 94 - count [19, 17, 13, 11, 7, 5, 3, 2] (94 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 94 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_94 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_2747 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2747 = (428 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2747 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2747 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2747 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2747 (by decide)
    _ = (444 : Int) - (16 : Int) :=
      sub_congr node_7_2747 node_7_94
    _ = (428 : Int) := by decide

theorem node_8_88 : count [19, 17, 13, 11, 7, 5, 3, 2] 88 = (16 : Int) := by
  decide

theorem node_7_88 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 88 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 88 = count [19, 17, 13, 11, 7, 5, 3, 2] 88 - count [19, 17, 13, 11, 7, 5, 3, 2] (88 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 88 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_88 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_88 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88 = (14 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 88 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (88 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 88 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_7_88 node_7_3
    _ = (14 : Int) := by decide

theorem node_5_2747 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2747 = (414 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2747 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2747 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2747 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2747 (by decide)
    _ = (428 : Int) - (14 : Int) :=
      sub_congr node_6_2747 node_6_88
    _ = (414 : Int) := by decide

theorem node_8_74 : count [19, 17, 13, 11, 7, 5, 3, 2] 74 = (14 : Int) := by
  decide

theorem node_7_74 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = count [19, 17, 13, 11, 7, 5, 3, 2] 74 - count [19, 17, 13, 11, 7, 5, 3, 2] (74 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 74 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_74 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_74 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = (12 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 74 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (74 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 74 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_7_74 node_7_2
    _ = (12 : Int) := by decide

theorem node_5_74 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = (11 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (74 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_6_74 node_6_2
    _ = (11 : Int) := by decide

theorem node_4_2747 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2747 = (403 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2747 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2747 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2747 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2747 (by decide)
    _ = (414 : Int) - (11 : Int) :=
      sub_congr node_5_2747 node_5_74
    _ = (403 : Int) := by decide

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

theorem node_4_67 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67 = (8 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (67 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_5_67 node_5_1
    _ = (8 : Int) := by decide

theorem node_3_2747 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2747 = (395 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2747 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2747 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2747 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2747 (by decide)
    _ = (403 : Int) - (8 : Int) :=
      sub_congr node_4_2747 node_4_67
    _ = (395 : Int) := by decide

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

theorem node_4_63 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 = (7 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (63 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_5_63 node_5_1
    _ = (7 : Int) := by decide

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_1 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_1 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_63 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 = (6 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (63 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_4_63 node_4_1
    _ = (6 : Int) := by decide

theorem node_2_2747 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2747 = (389 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2747 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2747 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2747 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2747 (by decide)
    _ = (395 : Int) - (6 : Int) :=
      sub_congr node_3_2747 node_3_63
    _ = (389 : Int) := by decide

theorem node_1_129120 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 = (17951 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (129120 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 (by decide)
    _ = (18340 : Int) - (389 : Int) :=
      sub_congr node_2_129120 node_2_2747
    _ = (17951 : Int) := by decide

theorem node_8_2436 : count [19, 17, 13, 11, 7, 5, 3, 2] 2436 = (413 : Int) := by
  decide

theorem node_8_105 : count [19, 17, 13, 11, 7, 5, 3, 2] 105 = (20 : Int) := by
  decide

theorem node_7_2436 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2436 = (393 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2436 = count [19, 17, 13, 11, 7, 5, 3, 2] 2436 - count [19, 17, 13, 11, 7, 5, 3, 2] (2436 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2436 (by decide)
    _ = (413 : Int) - (20 : Int) :=
      sub_congr node_8_2436 node_8_105
    _ = (393 : Int) := by decide

theorem node_8_84 : count [19, 17, 13, 11, 7, 5, 3, 2] 84 = (16 : Int) := by
  decide

theorem node_7_84 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 84 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 84 = count [19, 17, 13, 11, 7, 5, 3, 2] 84 - count [19, 17, 13, 11, 7, 5, 3, 2] (84 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 84 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_84 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_2436 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2436 = (378 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2436 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2436 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2436 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2436 (by decide)
    _ = (393 : Int) - (15 : Int) :=
      sub_congr node_7_2436 node_7_84
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

theorem node_5_2436 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2436 = (366 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2436 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2436 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2436 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2436 (by decide)
    _ = (378 : Int) - (12 : Int) :=
      sub_congr node_6_2436 node_6_78
    _ = (366 : Int) := by decide

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

theorem node_4_2436 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2436 = (358 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2436 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2436 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2436 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2436 (by decide)
    _ = (366 : Int) - (8 : Int) :=
      sub_congr node_5_2436 node_5_65
    _ = (358 : Int) := by decide

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

theorem node_4_59 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = (6 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (59 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_5_59 node_5_1
    _ = (6 : Int) := by decide

theorem node_3_2436 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2436 = (352 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2436 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2436 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2436 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2436 (by decide)
    _ = (358 : Int) - (6 : Int) :=
      sub_congr node_4_2436 node_4_59
    _ = (352 : Int) := by decide

theorem node_8_56 : count [19, 17, 13, 11, 7, 5, 3, 2] 56 = (9 : Int) := by
  decide

theorem node_7_56 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = count [19, 17, 13, 11, 7, 5, 3, 2] 56 - count [19, 17, 13, 11, 7, 5, 3, 2] (56 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 56 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_56 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_56 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = (7 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 56 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (56 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 56 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_7_56 node_7_1
    _ = (7 : Int) := by decide

theorem node_5_56 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = (6 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (56 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_6_56 node_6_1
    _ = (6 : Int) := by decide

theorem node_4_56 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = (5 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (56 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_5_56 node_5_1
    _ = (5 : Int) := by decide

theorem node_3_56 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = (4 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (56 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_4_56 node_4_1
    _ = (4 : Int) := by decide

theorem node_2_2436 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2436 = (348 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2436 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2436 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2436 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2436 (by decide)
    _ = (352 : Int) - (4 : Int) :=
      sub_congr node_3_2436 node_3_56
    _ = (348 : Int) := by decide

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

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_1 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_1 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_51 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = (2 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (51 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_3_51 node_3_1
    _ = (2 : Int) := by decide

theorem node_1_2436 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2436 = (346 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2436 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2436 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2436 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2436 (by decide)
    _ = (348 : Int) - (2 : Int) :=
      sub_congr node_2_2436 node_2_51
    _ = (346 : Int) := by decide

theorem node_0_129120 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 = (17605 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (129120 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 129120 (by decide)
    _ = (17951 : Int) - (346 : Int) :=
      sub_congr node_1_129120 node_1_2436
    _ = (17605 : Int) := by decide

theorem node_8_130362 : count [19, 17, 13, 11, 7, 5, 3, 2] 130362 = (22295 : Int) := by
  decide

theorem node_8_5667 : count [19, 17, 13, 11, 7, 5, 3, 2] 5667 = (968 : Int) := by
  decide

theorem node_7_130362 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 = (21327 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 = count [19, 17, 13, 11, 7, 5, 3, 2] 130362 - count [19, 17, 13, 11, 7, 5, 3, 2] (130362 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 130362 (by decide)
    _ = (22295 : Int) - (968 : Int) :=
      sub_congr node_8_130362 node_8_5667
    _ = (21327 : Int) := by decide

theorem node_8_4495 : count [19, 17, 13, 11, 7, 5, 3, 2] 4495 = (768 : Int) := by
  decide

theorem node_8_195 : count [19, 17, 13, 11, 7, 5, 3, 2] 195 = (37 : Int) := by
  decide

theorem node_7_4495 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4495 = (731 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4495 = count [19, 17, 13, 11, 7, 5, 3, 2] 4495 - count [19, 17, 13, 11, 7, 5, 3, 2] (4495 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4495 (by decide)
    _ = (768 : Int) - (37 : Int) :=
      sub_congr node_8_4495 node_8_195
    _ = (731 : Int) := by decide

theorem node_6_130362 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 = (20596 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (130362 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 (by decide)
    _ = (21327 : Int) - (731 : Int) :=
      sub_congr node_7_130362 node_7_4495
    _ = (20596 : Int) := by decide

theorem node_8_4205 : count [19, 17, 13, 11, 7, 5, 3, 2] 4205 = (717 : Int) := by
  decide

theorem node_8_182 : count [19, 17, 13, 11, 7, 5, 3, 2] 182 = (35 : Int) := by
  decide

theorem node_7_4205 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4205 = (682 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4205 = count [19, 17, 13, 11, 7, 5, 3, 2] 4205 - count [19, 17, 13, 11, 7, 5, 3, 2] (4205 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4205 (by decide)
    _ = (717 : Int) - (35 : Int) :=
      sub_congr node_8_4205 node_8_182
    _ = (682 : Int) := by decide

theorem node_8_145 : count [19, 17, 13, 11, 7, 5, 3, 2] 145 = (27 : Int) := by
  decide

theorem node_7_145 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 145 = (26 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 145 = count [19, 17, 13, 11, 7, 5, 3, 2] 145 - count [19, 17, 13, 11, 7, 5, 3, 2] (145 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 145 (by decide)
    _ = (27 : Int) - (1 : Int) :=
      sub_congr node_8_145 node_8_6
    _ = (26 : Int) := by decide

theorem node_6_4205 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4205 = (656 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4205 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4205 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (4205 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 4205 (by decide)
    _ = (682 : Int) - (26 : Int) :=
      sub_congr node_7_4205 node_7_145
    _ = (656 : Int) := by decide

theorem node_5_130362 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 = (19940 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (130362 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 (by decide)
    _ = (20596 : Int) - (656 : Int) :=
      sub_congr node_6_130362 node_6_4205
    _ = (19940 : Int) := by decide

theorem node_8_3523 : count [19, 17, 13, 11, 7, 5, 3, 2] 3523 = (597 : Int) := by
  decide

theorem node_8_153 : count [19, 17, 13, 11, 7, 5, 3, 2] 153 = (29 : Int) := by
  decide

theorem node_7_3523 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3523 = (568 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3523 = count [19, 17, 13, 11, 7, 5, 3, 2] 3523 - count [19, 17, 13, 11, 7, 5, 3, 2] (3523 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3523 (by decide)
    _ = (597 : Int) - (29 : Int) :=
      sub_congr node_8_3523 node_8_153
    _ = (568 : Int) := by decide

theorem node_8_121 : count [19, 17, 13, 11, 7, 5, 3, 2] 121 = (23 : Int) := by
  decide

theorem node_7_121 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 121 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 121 = count [19, 17, 13, 11, 7, 5, 3, 2] 121 - count [19, 17, 13, 11, 7, 5, 3, 2] (121 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 121 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_121 node_8_5
    _ = (22 : Int) := by decide

theorem node_6_3523 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3523 = (546 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3523 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3523 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3523 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3523 (by decide)
    _ = (568 : Int) - (22 : Int) :=
      sub_congr node_7_3523 node_7_121
    _ = (546 : Int) := by decide

theorem node_8_113 : count [19, 17, 13, 11, 7, 5, 3, 2] 113 = (23 : Int) := by
  decide

theorem node_7_113 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 113 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 113 = count [19, 17, 13, 11, 7, 5, 3, 2] 113 - count [19, 17, 13, 11, 7, 5, 3, 2] (113 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 113 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_113 node_8_4
    _ = (22 : Int) := by decide

theorem node_6_113 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113 = (21 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 113 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (113 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 113 (by decide)
    _ = (22 : Int) - (1 : Int) :=
      sub_congr node_7_113 node_7_3
    _ = (21 : Int) := by decide

theorem node_5_3523 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3523 = (525 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3523 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3523 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3523 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3523 (by decide)
    _ = (546 : Int) - (21 : Int) :=
      sub_congr node_6_3523 node_6_113
    _ = (525 : Int) := by decide

theorem node_4_130362 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 = (19415 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (130362 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 (by decide)
    _ = (19940 : Int) - (525 : Int) :=
      sub_congr node_5_130362 node_5_3523
    _ = (19415 : Int) := by decide

theorem node_8_3179 : count [19, 17, 13, 11, 7, 5, 3, 2] 3179 = (539 : Int) := by
  decide

theorem node_8_138 : count [19, 17, 13, 11, 7, 5, 3, 2] 138 = (26 : Int) := by
  decide

theorem node_7_3179 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3179 = (513 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3179 = count [19, 17, 13, 11, 7, 5, 3, 2] 3179 - count [19, 17, 13, 11, 7, 5, 3, 2] (3179 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3179 (by decide)
    _ = (539 : Int) - (26 : Int) :=
      sub_congr node_8_3179 node_8_138
    _ = (513 : Int) := by decide

theorem node_8_109 : count [19, 17, 13, 11, 7, 5, 3, 2] 109 = (22 : Int) := by
  decide

theorem node_7_109 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 109 = (21 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 109 = count [19, 17, 13, 11, 7, 5, 3, 2] 109 - count [19, 17, 13, 11, 7, 5, 3, 2] (109 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 109 (by decide)
    _ = (22 : Int) - (1 : Int) :=
      sub_congr node_8_109 node_8_4
    _ = (21 : Int) := by decide

theorem node_6_3179 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3179 = (492 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3179 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3179 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3179 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3179 (by decide)
    _ = (513 : Int) - (21 : Int) :=
      sub_congr node_7_3179 node_7_109
    _ = (492 : Int) := by decide

theorem node_8_102 : count [19, 17, 13, 11, 7, 5, 3, 2] 102 = (19 : Int) := by
  decide

theorem node_7_102 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 102 = (18 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 102 = count [19, 17, 13, 11, 7, 5, 3, 2] 102 - count [19, 17, 13, 11, 7, 5, 3, 2] (102 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 102 (by decide)
    _ = (19 : Int) - (1 : Int) :=
      sub_congr node_8_102 node_8_4
    _ = (18 : Int) := by decide

theorem node_6_102 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102 = (17 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 102 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (102 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 102 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_7_102 node_7_3
    _ = (17 : Int) := by decide

theorem node_5_3179 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3179 = (475 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3179 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3179 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3179 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3179 (by decide)
    _ = (492 : Int) - (17 : Int) :=
      sub_congr node_6_3179 node_6_102
    _ = (475 : Int) := by decide

theorem node_4_3179 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3179 = (462 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3179 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3179 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3179 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3179 (by decide)
    _ = (475 : Int) - (13 : Int) :=
      sub_congr node_5_3179 node_5_85
    _ = (462 : Int) := by decide

theorem node_3_130362 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 = (18953 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (130362 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 (by decide)
    _ = (19415 : Int) - (462 : Int) :=
      sub_congr node_4_130362 node_4_3179
    _ = (18953 : Int) := by decide

theorem node_8_3031 : count [19, 17, 13, 11, 7, 5, 3, 2] 3031 = (515 : Int) := by
  decide

theorem node_8_131 : count [19, 17, 13, 11, 7, 5, 3, 2] 131 = (25 : Int) := by
  decide

theorem node_7_3031 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3031 = (490 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3031 = count [19, 17, 13, 11, 7, 5, 3, 2] 3031 - count [19, 17, 13, 11, 7, 5, 3, 2] (3031 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3031 (by decide)
    _ = (515 : Int) - (25 : Int) :=
      sub_congr node_8_3031 node_8_131
    _ = (490 : Int) := by decide

theorem node_8_104 : count [19, 17, 13, 11, 7, 5, 3, 2] 104 = (20 : Int) := by
  decide

theorem node_7_104 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 104 = (19 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 104 = count [19, 17, 13, 11, 7, 5, 3, 2] 104 - count [19, 17, 13, 11, 7, 5, 3, 2] (104 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 104 (by decide)
    _ = (20 : Int) - (1 : Int) :=
      sub_congr node_8_104 node_8_4
    _ = (19 : Int) := by decide

theorem node_6_3031 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3031 = (471 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3031 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3031 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3031 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3031 (by decide)
    _ = (490 : Int) - (19 : Int) :=
      sub_congr node_7_3031 node_7_104
    _ = (471 : Int) := by decide

theorem node_8_97 : count [19, 17, 13, 11, 7, 5, 3, 2] 97 = (18 : Int) := by
  decide

theorem node_7_97 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 97 = (17 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 97 = count [19, 17, 13, 11, 7, 5, 3, 2] 97 - count [19, 17, 13, 11, 7, 5, 3, 2] (97 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 97 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_8_97 node_8_4
    _ = (17 : Int) := by decide

theorem node_6_97 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97 = (16 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 97 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (97 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 97 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_7_97 node_7_3
    _ = (16 : Int) := by decide

theorem node_5_3031 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3031 = (455 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3031 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3031 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3031 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3031 (by decide)
    _ = (471 : Int) - (16 : Int) :=
      sub_congr node_6_3031 node_6_97
    _ = (455 : Int) := by decide

theorem node_4_3031 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3031 = (443 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3031 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3031 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3031 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3031 (by decide)
    _ = (455 : Int) - (12 : Int) :=
      sub_congr node_5_3031 node_5_81
    _ = (443 : Int) := by decide

theorem node_3_3031 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3031 = (433 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3031 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3031 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3031 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3031 (by decide)
    _ = (443 : Int) - (10 : Int) :=
      sub_congr node_4_3031 node_4_73
    _ = (433 : Int) := by decide

theorem node_2_130362 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 = (18520 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (130362 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 (by decide)
    _ = (18953 : Int) - (433 : Int) :=
      sub_congr node_3_130362 node_3_3031
    _ = (18520 : Int) := by decide

theorem node_8_2773 : count [19, 17, 13, 11, 7, 5, 3, 2] 2773 = (472 : Int) := by
  decide

theorem node_7_2773 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2773 = (449 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2773 = count [19, 17, 13, 11, 7, 5, 3, 2] 2773 - count [19, 17, 13, 11, 7, 5, 3, 2] (2773 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2773 (by decide)
    _ = (472 : Int) - (23 : Int) :=
      sub_congr node_8_2773 node_8_120
    _ = (449 : Int) := by decide

theorem node_8_95 : count [19, 17, 13, 11, 7, 5, 3, 2] 95 = (17 : Int) := by
  decide

theorem node_7_95 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 95 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 95 = count [19, 17, 13, 11, 7, 5, 3, 2] 95 - count [19, 17, 13, 11, 7, 5, 3, 2] (95 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 95 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_95 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_2773 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2773 = (433 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2773 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2773 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2773 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2773 (by decide)
    _ = (449 : Int) - (16 : Int) :=
      sub_congr node_7_2773 node_7_95
    _ = (433 : Int) := by decide

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

theorem node_5_2773 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2773 = (418 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2773 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2773 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2773 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2773 (by decide)
    _ = (433 : Int) - (15 : Int) :=
      sub_congr node_6_2773 node_6_89
    _ = (418 : Int) := by decide

theorem node_4_2773 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2773 = (407 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2773 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2773 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2773 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2773 (by decide)
    _ = (418 : Int) - (11 : Int) :=
      sub_congr node_5_2773 node_5_74
    _ = (407 : Int) := by decide

theorem node_3_2773 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2773 = (399 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2773 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2773 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2773 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2773 (by decide)
    _ = (407 : Int) - (8 : Int) :=
      sub_congr node_4_2773 node_4_67
    _ = (399 : Int) := by decide

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

theorem node_4_64 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = (7 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (64 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_5_64 node_5_1
    _ = (7 : Int) := by decide

theorem node_3_64 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = (6 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (64 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_4_64 node_4_1
    _ = (6 : Int) := by decide

theorem node_2_2773 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2773 = (393 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2773 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2773 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2773 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2773 (by decide)
    _ = (399 : Int) - (6 : Int) :=
      sub_congr node_3_2773 node_3_64
    _ = (393 : Int) := by decide

theorem node_1_130362 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 = (18127 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (130362 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 (by decide)
    _ = (18520 : Int) - (393 : Int) :=
      sub_congr node_2_130362 node_2_2773
    _ = (18127 : Int) := by decide

theorem node_8_2459 : count [19, 17, 13, 11, 7, 5, 3, 2] 2459 = (418 : Int) := by
  decide

theorem node_8_106 : count [19, 17, 13, 11, 7, 5, 3, 2] 106 = (20 : Int) := by
  decide

theorem node_7_2459 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2459 = (398 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2459 = count [19, 17, 13, 11, 7, 5, 3, 2] 2459 - count [19, 17, 13, 11, 7, 5, 3, 2] (2459 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2459 (by decide)
    _ = (418 : Int) - (20 : Int) :=
      sub_congr node_8_2459 node_8_106
    _ = (398 : Int) := by decide

theorem node_6_2459 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2459 = (383 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2459 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2459 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2459 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2459 (by decide)
    _ = (398 : Int) - (15 : Int) :=
      sub_congr node_7_2459 node_7_84
    _ = (383 : Int) := by decide

theorem node_8_79 : count [19, 17, 13, 11, 7, 5, 3, 2] 79 = (15 : Int) := by
  decide

theorem node_7_79 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 79 = (14 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 79 = count [19, 17, 13, 11, 7, 5, 3, 2] 79 - count [19, 17, 13, 11, 7, 5, 3, 2] (79 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 79 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_8_79 node_8_3
    _ = (14 : Int) := by decide

theorem node_6_79 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79 = (13 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 79 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (79 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 79 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_7_79 node_7_2
    _ = (13 : Int) := by decide

theorem node_5_2459 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2459 = (370 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2459 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2459 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2459 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2459 (by decide)
    _ = (383 : Int) - (13 : Int) :=
      sub_congr node_6_2459 node_6_79
    _ = (370 : Int) := by decide

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

theorem node_4_2459 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2459 = (362 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2459 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2459 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2459 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2459 (by decide)
    _ = (370 : Int) - (8 : Int) :=
      sub_congr node_5_2459 node_5_66
    _ = (362 : Int) := by decide

theorem node_3_2459 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2459 = (356 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2459 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2459 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2459 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2459 (by decide)
    _ = (362 : Int) - (6 : Int) :=
      sub_congr node_4_2459 node_4_59
    _ = (356 : Int) := by decide

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

theorem node_4_57 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = (5 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (57 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_5_57 node_5_1
    _ = (5 : Int) := by decide

theorem node_3_57 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = (4 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (57 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_4_57 node_4_1
    _ = (4 : Int) := by decide

theorem node_2_2459 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2459 = (352 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2459 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2459 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2459 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2459 (by decide)
    _ = (356 : Int) - (4 : Int) :=
      sub_congr node_3_2459 node_3_57
    _ = (352 : Int) := by decide

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

theorem node_3_52 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = (3 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (52 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_4_52 node_4_1
    _ = (3 : Int) := by decide

theorem node_2_52 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = (2 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (52 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_3_52 node_3_1
    _ = (2 : Int) := by decide

theorem node_1_2459 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2459 = (350 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2459 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2459 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2459 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2459 (by decide)
    _ = (352 : Int) - (2 : Int) :=
      sub_congr node_2_2459 node_2_52
    _ = (350 : Int) := by decide

theorem node_0_130362 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 = (17777 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (130362 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 130362 (by decide)
    _ = (18127 : Int) - (350 : Int) :=
      sub_congr node_1_130362 node_1_2459
    _ = (17777 : Int) := by decide

theorem node_8_131071 : count [19, 17, 13, 11, 7, 5, 3, 2] 131071 = (22418 : Int) := by
  decide

theorem node_8_5698 : count [19, 17, 13, 11, 7, 5, 3, 2] 5698 = (973 : Int) := by
  decide

theorem node_7_131071 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = (21445 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = count [19, 17, 13, 11, 7, 5, 3, 2] 131071 - count [19, 17, 13, 11, 7, 5, 3, 2] (131071 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 131071 (by decide)
    _ = (22418 : Int) - (973 : Int) :=
      sub_congr node_8_131071 node_8_5698
    _ = (21445 : Int) := by decide

theorem node_8_4519 : count [19, 17, 13, 11, 7, 5, 3, 2] 4519 = (772 : Int) := by
  decide

theorem node_8_196 : count [19, 17, 13, 11, 7, 5, 3, 2] 196 = (37 : Int) := by
  decide

theorem node_7_4519 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4519 = (735 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4519 = count [19, 17, 13, 11, 7, 5, 3, 2] 4519 - count [19, 17, 13, 11, 7, 5, 3, 2] (4519 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4519 (by decide)
    _ = (772 : Int) - (37 : Int) :=
      sub_congr node_8_4519 node_8_196
    _ = (735 : Int) := by decide

theorem node_6_131071 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = (20710 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (131071 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 (by decide)
    _ = (21445 : Int) - (735 : Int) :=
      sub_congr node_7_131071 node_7_4519
    _ = (20710 : Int) := by decide

theorem node_8_4228 : count [19, 17, 13, 11, 7, 5, 3, 2] 4228 = (721 : Int) := by
  decide

theorem node_8_183 : count [19, 17, 13, 11, 7, 5, 3, 2] 183 = (35 : Int) := by
  decide

theorem node_7_4228 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4228 = (686 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4228 = count [19, 17, 13, 11, 7, 5, 3, 2] 4228 - count [19, 17, 13, 11, 7, 5, 3, 2] (4228 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4228 (by decide)
    _ = (721 : Int) - (35 : Int) :=
      sub_congr node_8_4228 node_8_183
    _ = (686 : Int) := by decide

theorem node_6_4228 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4228 = (660 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4228 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4228 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (4228 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 4228 (by decide)
    _ = (686 : Int) - (26 : Int) :=
      sub_congr node_7_4228 node_7_145
    _ = (660 : Int) := by decide

theorem node_5_131071 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = (20050 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (131071 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 (by decide)
    _ = (20710 : Int) - (660 : Int) :=
      sub_congr node_6_131071 node_6_4228
    _ = (20050 : Int) := by decide

theorem node_8_3542 : count [19, 17, 13, 11, 7, 5, 3, 2] 3542 = (602 : Int) := by
  decide

theorem node_8_154 : count [19, 17, 13, 11, 7, 5, 3, 2] 154 = (29 : Int) := by
  decide

theorem node_7_3542 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3542 = (573 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3542 = count [19, 17, 13, 11, 7, 5, 3, 2] 3542 - count [19, 17, 13, 11, 7, 5, 3, 2] (3542 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3542 (by decide)
    _ = (602 : Int) - (29 : Int) :=
      sub_congr node_8_3542 node_8_154
    _ = (573 : Int) := by decide

theorem node_8_122 : count [19, 17, 13, 11, 7, 5, 3, 2] 122 = (23 : Int) := by
  decide

theorem node_7_122 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 122 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 122 = count [19, 17, 13, 11, 7, 5, 3, 2] 122 - count [19, 17, 13, 11, 7, 5, 3, 2] (122 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 122 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_122 node_8_5
    _ = (22 : Int) := by decide

theorem node_6_3542 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3542 = (551 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3542 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3542 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3542 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3542 (by decide)
    _ = (573 : Int) - (22 : Int) :=
      sub_congr node_7_3542 node_7_122
    _ = (551 : Int) := by decide

theorem node_8_114 : count [19, 17, 13, 11, 7, 5, 3, 2] 114 = (23 : Int) := by
  decide

theorem node_7_114 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 114 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 114 = count [19, 17, 13, 11, 7, 5, 3, 2] 114 - count [19, 17, 13, 11, 7, 5, 3, 2] (114 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 114 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_114 node_8_4
    _ = (22 : Int) := by decide

theorem node_6_114 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114 = (21 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 114 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (114 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 114 (by decide)
    _ = (22 : Int) - (1 : Int) :=
      sub_congr node_7_114 node_7_3
    _ = (21 : Int) := by decide

theorem node_5_3542 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3542 = (530 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3542 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3542 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3542 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3542 (by decide)
    _ = (551 : Int) - (21 : Int) :=
      sub_congr node_6_3542 node_6_114
    _ = (530 : Int) := by decide

theorem node_4_131071 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = (19520 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (131071 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 (by decide)
    _ = (20050 : Int) - (530 : Int) :=
      sub_congr node_5_131071 node_5_3542
    _ = (19520 : Int) := by decide

theorem node_8_3196 : count [19, 17, 13, 11, 7, 5, 3, 2] 3196 = (543 : Int) := by
  decide

theorem node_7_3196 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 = (517 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 = count [19, 17, 13, 11, 7, 5, 3, 2] 3196 - count [19, 17, 13, 11, 7, 5, 3, 2] (3196 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3196 (by decide)
    _ = (543 : Int) - (26 : Int) :=
      sub_congr node_8_3196 node_8_138
    _ = (517 : Int) := by decide

theorem node_8_110 : count [19, 17, 13, 11, 7, 5, 3, 2] 110 = (22 : Int) := by
  decide

theorem node_7_110 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 110 = (21 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 110 = count [19, 17, 13, 11, 7, 5, 3, 2] 110 - count [19, 17, 13, 11, 7, 5, 3, 2] (110 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 110 (by decide)
    _ = (22 : Int) - (1 : Int) :=
      sub_congr node_8_110 node_8_4
    _ = (21 : Int) := by decide

theorem node_6_3196 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 = (496 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3196 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 (by decide)
    _ = (517 : Int) - (21 : Int) :=
      sub_congr node_7_3196 node_7_110
    _ = (496 : Int) := by decide

theorem node_6_103 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103 = (18 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 103 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (103 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 103 (by decide)
    _ = (19 : Int) - (1 : Int) :=
      sub_congr node_7_103 node_7_3
    _ = (18 : Int) := by decide

theorem node_5_3196 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 = (478 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3196 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 (by decide)
    _ = (496 : Int) - (18 : Int) :=
      sub_congr node_6_3196 node_6_103
    _ = (478 : Int) := by decide

theorem node_8_86 : count [19, 17, 13, 11, 7, 5, 3, 2] 86 = (16 : Int) := by
  decide

theorem node_7_86 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = count [19, 17, 13, 11, 7, 5, 3, 2] 86 - count [19, 17, 13, 11, 7, 5, 3, 2] (86 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 86 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_86 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_86 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = (14 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (86 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_7_86 node_7_2
    _ = (14 : Int) := by decide

theorem node_5_86 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = (13 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (86 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_6_86 node_6_2
    _ = (13 : Int) := by decide

theorem node_4_3196 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 = (465 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3196 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 (by decide)
    _ = (478 : Int) - (13 : Int) :=
      sub_congr node_5_3196 node_5_86
    _ = (465 : Int) := by decide

theorem node_3_131071 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = (19055 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (131071 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 (by decide)
    _ = (19520 : Int) - (465 : Int) :=
      sub_congr node_4_131071 node_4_3196
    _ = (19055 : Int) := by decide

theorem node_8_3048 : count [19, 17, 13, 11, 7, 5, 3, 2] 3048 = (517 : Int) := by
  decide

theorem node_8_132 : count [19, 17, 13, 11, 7, 5, 3, 2] 132 = (25 : Int) := by
  decide

theorem node_7_3048 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 = (492 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 = count [19, 17, 13, 11, 7, 5, 3, 2] 3048 - count [19, 17, 13, 11, 7, 5, 3, 2] (3048 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3048 (by decide)
    _ = (517 : Int) - (25 : Int) :=
      sub_congr node_8_3048 node_8_132
    _ = (492 : Int) := by decide

theorem node_7_105 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 105 = (19 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 105 = count [19, 17, 13, 11, 7, 5, 3, 2] 105 - count [19, 17, 13, 11, 7, 5, 3, 2] (105 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 105 (by decide)
    _ = (20 : Int) - (1 : Int) :=
      sub_congr node_8_105 node_8_4
    _ = (19 : Int) := by decide

theorem node_6_3048 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 = (473 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3048 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 (by decide)
    _ = (492 : Int) - (19 : Int) :=
      sub_congr node_7_3048 node_7_105
    _ = (473 : Int) := by decide

theorem node_8_98 : count [19, 17, 13, 11, 7, 5, 3, 2] 98 = (18 : Int) := by
  decide

theorem node_7_98 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 98 = (17 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 98 = count [19, 17, 13, 11, 7, 5, 3, 2] 98 - count [19, 17, 13, 11, 7, 5, 3, 2] (98 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 98 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_8_98 node_8_4
    _ = (17 : Int) := by decide

theorem node_6_98 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98 = (16 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 98 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (98 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 98 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_7_98 node_7_3
    _ = (16 : Int) := by decide

theorem node_5_3048 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 = (457 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3048 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 (by decide)
    _ = (473 : Int) - (16 : Int) :=
      sub_congr node_6_3048 node_6_98
    _ = (457 : Int) := by decide

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

theorem node_4_3048 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 = (445 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3048 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 (by decide)
    _ = (457 : Int) - (12 : Int) :=
      sub_congr node_5_3048 node_5_82
    _ = (445 : Int) := by decide

theorem node_5_2 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_2 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_74 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = (10 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (74 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_5_74 node_5_2
    _ = (10 : Int) := by decide

theorem node_3_3048 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 = (435 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3048 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 (by decide)
    _ = (445 : Int) - (10 : Int) :=
      sub_congr node_4_3048 node_4_74
    _ = (435 : Int) := by decide

theorem node_2_131071 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = (18620 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (131071 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 (by decide)
    _ = (19055 : Int) - (435 : Int) :=
      sub_congr node_3_131071 node_3_3048
    _ = (18620 : Int) := by decide

theorem node_8_2788 : count [19, 17, 13, 11, 7, 5, 3, 2] 2788 = (473 : Int) := by
  decide

theorem node_7_2788 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 = (450 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 = count [19, 17, 13, 11, 7, 5, 3, 2] 2788 - count [19, 17, 13, 11, 7, 5, 3, 2] (2788 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2788 (by decide)
    _ = (473 : Int) - (23 : Int) :=
      sub_congr node_8_2788 node_8_121
    _ = (450 : Int) := by decide

theorem node_6_2788 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 = (434 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2788 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 (by decide)
    _ = (450 : Int) - (16 : Int) :=
      sub_congr node_7_2788 node_7_96
    _ = (434 : Int) := by decide

theorem node_5_2788 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 = (419 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2788 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 (by decide)
    _ = (434 : Int) - (15 : Int) :=
      sub_congr node_6_2788 node_6_89
    _ = (419 : Int) := by decide

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

theorem node_4_2788 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 = (408 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2788 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 (by decide)
    _ = (419 : Int) - (11 : Int) :=
      sub_congr node_5_2788 node_5_75
    _ = (408 : Int) := by decide

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

theorem node_4_68 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = (8 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (68 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_5_68 node_5_1
    _ = (8 : Int) := by decide

theorem node_3_2788 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 = (400 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2788 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 (by decide)
    _ = (408 : Int) - (8 : Int) :=
      sub_congr node_4_2788 node_4_68
    _ = (400 : Int) := by decide

theorem node_2_2788 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 = (394 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2788 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 (by decide)
    _ = (400 : Int) - (6 : Int) :=
      sub_congr node_3_2788 node_3_64
    _ = (394 : Int) := by decide

theorem node_1_131071 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = (18226 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (131071 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 (by decide)
    _ = (18620 : Int) - (394 : Int) :=
      sub_congr node_2_131071 node_2_2788
    _ = (18226 : Int) := by decide

theorem node_8_2473 : count [19, 17, 13, 11, 7, 5, 3, 2] 2473 = (421 : Int) := by
  decide

theorem node_8_107 : count [19, 17, 13, 11, 7, 5, 3, 2] 107 = (21 : Int) := by
  decide

theorem node_7_2473 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = (400 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = count [19, 17, 13, 11, 7, 5, 3, 2] 2473 - count [19, 17, 13, 11, 7, 5, 3, 2] (2473 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2473 (by decide)
    _ = (421 : Int) - (21 : Int) :=
      sub_congr node_8_2473 node_8_107
    _ = (400 : Int) := by decide

theorem node_6_2473 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = (385 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2473 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 (by decide)
    _ = (400 : Int) - (15 : Int) :=
      sub_congr node_7_2473 node_7_85
    _ = (385 : Int) := by decide

theorem node_5_2473 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = (372 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2473 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 (by decide)
    _ = (385 : Int) - (13 : Int) :=
      sub_congr node_6_2473 node_6_79
    _ = (372 : Int) := by decide

theorem node_4_2473 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = (364 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2473 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 (by decide)
    _ = (372 : Int) - (8 : Int) :=
      sub_congr node_5_2473 node_5_66
    _ = (364 : Int) := by decide

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

theorem node_4_60 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = (6 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (60 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_5_60 node_5_1
    _ = (6 : Int) := by decide

theorem node_3_2473 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = (358 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2473 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 (by decide)
    _ = (364 : Int) - (6 : Int) :=
      sub_congr node_4_2473 node_4_60
    _ = (358 : Int) := by decide

theorem node_2_2473 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = (354 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2473 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 (by decide)
    _ = (358 : Int) - (4 : Int) :=
      sub_congr node_3_2473 node_3_57
    _ = (354 : Int) := by decide

theorem node_1_2473 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = (352 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2473 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 (by decide)
    _ = (354 : Int) - (2 : Int) :=
      sub_congr node_2_2473 node_2_52
    _ = (352 : Int) := by decide

theorem node_0_131071 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = (17874 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (131071 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 (by decide)
    _ = (18226 : Int) - (352 : Int) :=
      sub_congr node_1_131071 node_1_2473
    _ = (17874 : Int) := by decide

theorem row_112 : count primes 129120 ≤ (17620 : Int) - 15 := by
  rw [show count primes 129120 = (17605 : Int) from node_0_129120]
  decide

theorem row_113 : count primes 130362 ≤ (17792 : Int) - 15 := by
  rw [show count primes 130362 = (17777 : Int) from node_0_130362]
  decide

theorem row_114 : count primes 131071 ≤ (17889 : Int) - 15 := by
  rw [show count primes 131071 = (17874 : Int) from node_0_131071]
  decide

def pairs : List (Nat × Nat) := [(129120, 17620), (130362, 17792), (131071, 17889)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl | rfl
  · exact row_112
  · exact row_113
  · exact row_114
end B699CorePrunedSieve.CoreDagBatch29
#check @B699CorePrunedSieve.CoreDagBatch29.pairs_valid
#print axioms B699CorePrunedSieve.CoreDagBatch29.pairs_valid
