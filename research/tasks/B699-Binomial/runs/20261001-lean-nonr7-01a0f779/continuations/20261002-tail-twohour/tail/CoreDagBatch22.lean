import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreDagBatch22
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_97398 : count [19, 17, 13, 11, 7, 5, 3, 2] 97398 = (16657 : Int) := by
  decide

theorem node_8_4234 : count [19, 17, 13, 11, 7, 5, 3, 2] 4234 = (723 : Int) := by
  decide

theorem node_7_97398 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 = (15934 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 = count [19, 17, 13, 11, 7, 5, 3, 2] 97398 - count [19, 17, 13, 11, 7, 5, 3, 2] (97398 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 97398 (by decide)
    _ = (16657 : Int) - (723 : Int) :=
      sub_congr node_8_97398 node_8_4234
    _ = (15934 : Int) := by decide

theorem node_8_3358 : count [19, 17, 13, 11, 7, 5, 3, 2] 3358 = (570 : Int) := by
  decide

theorem node_8_146 : count [19, 17, 13, 11, 7, 5, 3, 2] 146 = (27 : Int) := by
  decide

theorem node_7_3358 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3358 = (543 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3358 = count [19, 17, 13, 11, 7, 5, 3, 2] 3358 - count [19, 17, 13, 11, 7, 5, 3, 2] (3358 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3358 (by decide)
    _ = (570 : Int) - (27 : Int) :=
      sub_congr node_8_3358 node_8_146
    _ = (543 : Int) := by decide

theorem node_6_97398 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 = (15391 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (97398 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 (by decide)
    _ = (15934 : Int) - (543 : Int) :=
      sub_congr node_7_97398 node_7_3358
    _ = (15391 : Int) := by decide

theorem node_8_3141 : count [19, 17, 13, 11, 7, 5, 3, 2] 3141 = (533 : Int) := by
  decide

theorem node_8_136 : count [19, 17, 13, 11, 7, 5, 3, 2] 136 = (25 : Int) := by
  decide

theorem node_7_3141 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3141 = (508 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3141 = count [19, 17, 13, 11, 7, 5, 3, 2] 3141 - count [19, 17, 13, 11, 7, 5, 3, 2] (3141 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3141 (by decide)
    _ = (533 : Int) - (25 : Int) :=
      sub_congr node_8_3141 node_8_136
    _ = (508 : Int) := by decide

theorem node_8_108 : count [19, 17, 13, 11, 7, 5, 3, 2] 108 = (21 : Int) := by
  decide

theorem node_8_4 : count [19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  decide

theorem node_7_108 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 108 = (20 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 108 = count [19, 17, 13, 11, 7, 5, 3, 2] 108 - count [19, 17, 13, 11, 7, 5, 3, 2] (108 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 108 (by decide)
    _ = (21 : Int) - (1 : Int) :=
      sub_congr node_8_108 node_8_4
    _ = (20 : Int) := by decide

theorem node_6_3141 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3141 = (488 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3141 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3141 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3141 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3141 (by decide)
    _ = (508 : Int) - (20 : Int) :=
      sub_congr node_7_3141 node_7_108
    _ = (488 : Int) := by decide

theorem node_5_97398 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 = (14903 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (97398 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 (by decide)
    _ = (15391 : Int) - (488 : Int) :=
      sub_congr node_6_97398 node_6_3141
    _ = (14903 : Int) := by decide

theorem node_8_2632 : count [19, 17, 13, 11, 7, 5, 3, 2] 2632 = (446 : Int) := by
  decide

theorem node_8_114 : count [19, 17, 13, 11, 7, 5, 3, 2] 114 = (23 : Int) := by
  decide

theorem node_7_2632 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2632 = (423 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2632 = count [19, 17, 13, 11, 7, 5, 3, 2] 2632 - count [19, 17, 13, 11, 7, 5, 3, 2] (2632 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2632 (by decide)
    _ = (446 : Int) - (23 : Int) :=
      sub_congr node_8_2632 node_8_114
    _ = (423 : Int) := by decide

theorem node_8_90 : count [19, 17, 13, 11, 7, 5, 3, 2] 90 = (17 : Int) := by
  decide

theorem node_8_3 : count [19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  decide

theorem node_7_90 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 90 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 90 = count [19, 17, 13, 11, 7, 5, 3, 2] 90 - count [19, 17, 13, 11, 7, 5, 3, 2] (90 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 90 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_90 node_8_3
    _ = (16 : Int) := by decide

theorem node_6_2632 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2632 = (407 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2632 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2632 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2632 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2632 (by decide)
    _ = (423 : Int) - (16 : Int) :=
      sub_congr node_7_2632 node_7_90
    _ = (407 : Int) := by decide

theorem node_8_84 : count [19, 17, 13, 11, 7, 5, 3, 2] 84 = (16 : Int) := by
  decide

theorem node_7_84 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 84 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 84 = count [19, 17, 13, 11, 7, 5, 3, 2] 84 - count [19, 17, 13, 11, 7, 5, 3, 2] (84 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 84 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_84 node_8_3
    _ = (15 : Int) := by decide

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

theorem node_6_84 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84 = (14 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 84 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (84 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 84 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_7_84 node_7_2
    _ = (14 : Int) := by decide

theorem node_5_2632 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2632 = (393 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2632 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2632 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2632 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2632 (by decide)
    _ = (407 : Int) - (14 : Int) :=
      sub_congr node_6_2632 node_6_84
    _ = (393 : Int) := by decide

theorem node_4_97398 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 = (14510 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (97398 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 (by decide)
    _ = (14903 : Int) - (393 : Int) :=
      sub_congr node_5_97398 node_5_2632
    _ = (14510 : Int) := by decide

theorem node_8_2375 : count [19, 17, 13, 11, 7, 5, 3, 2] 2375 = (402 : Int) := by
  decide

theorem node_8_103 : count [19, 17, 13, 11, 7, 5, 3, 2] 103 = (20 : Int) := by
  decide

theorem node_7_2375 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2375 = (382 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2375 = count [19, 17, 13, 11, 7, 5, 3, 2] 2375 - count [19, 17, 13, 11, 7, 5, 3, 2] (2375 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2375 (by decide)
    _ = (402 : Int) - (20 : Int) :=
      sub_congr node_8_2375 node_8_103
    _ = (382 : Int) := by decide

theorem node_8_81 : count [19, 17, 13, 11, 7, 5, 3, 2] 81 = (15 : Int) := by
  decide

theorem node_7_81 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = (14 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = count [19, 17, 13, 11, 7, 5, 3, 2] 81 - count [19, 17, 13, 11, 7, 5, 3, 2] (81 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 81 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_8_81 node_8_3
    _ = (14 : Int) := by decide

theorem node_6_2375 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2375 = (368 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2375 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2375 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2375 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2375 (by decide)
    _ = (382 : Int) - (14 : Int) :=
      sub_congr node_7_2375 node_7_81
    _ = (368 : Int) := by decide

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

theorem node_5_2375 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2375 = (356 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2375 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2375 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2375 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2375 (by decide)
    _ = (368 : Int) - (12 : Int) :=
      sub_congr node_6_2375 node_6_76
    _ = (356 : Int) := by decide

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

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_2 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_2 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_64 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = (8 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (64 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_6_64 node_6_2
    _ = (8 : Int) := by decide

theorem node_4_2375 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2375 = (348 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2375 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2375 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2375 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2375 (by decide)
    _ = (356 : Int) - (8 : Int) :=
      sub_congr node_5_2375 node_5_64
    _ = (348 : Int) := by decide

theorem node_3_97398 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 = (14162 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (97398 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 (by decide)
    _ = (14510 : Int) - (348 : Int) :=
      sub_congr node_4_97398 node_4_2375
    _ = (14162 : Int) := by decide

theorem node_8_2265 : count [19, 17, 13, 11, 7, 5, 3, 2] 2265 = (382 : Int) := by
  decide

theorem node_8_98 : count [19, 17, 13, 11, 7, 5, 3, 2] 98 = (18 : Int) := by
  decide

theorem node_7_2265 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2265 = (364 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2265 = count [19, 17, 13, 11, 7, 5, 3, 2] 2265 - count [19, 17, 13, 11, 7, 5, 3, 2] (2265 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2265 (by decide)
    _ = (382 : Int) - (18 : Int) :=
      sub_congr node_8_2265 node_8_98
    _ = (364 : Int) := by decide

theorem node_8_78 : count [19, 17, 13, 11, 7, 5, 3, 2] 78 = (14 : Int) := by
  decide

theorem node_7_78 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = count [19, 17, 13, 11, 7, 5, 3, 2] 78 - count [19, 17, 13, 11, 7, 5, 3, 2] (78 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 78 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_78 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_2265 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2265 = (351 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2265 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2265 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2265 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2265 (by decide)
    _ = (364 : Int) - (13 : Int) :=
      sub_congr node_7_2265 node_7_78
    _ = (351 : Int) := by decide

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

theorem node_5_2265 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2265 = (339 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2265 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2265 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2265 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2265 (by decide)
    _ = (351 : Int) - (12 : Int) :=
      sub_congr node_6_2265 node_6_73
    _ = (339 : Int) := by decide

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

theorem node_5_61 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = (8 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (61 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_6_61 node_6_1
    _ = (8 : Int) := by decide

theorem node_4_2265 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2265 = (331 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2265 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2265 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2265 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2265 (by decide)
    _ = (339 : Int) - (8 : Int) :=
      sub_congr node_5_2265 node_5_61
    _ = (331 : Int) := by decide

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

theorem node_5_55 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = (6 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (55 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_6_55 node_6_1
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

theorem node_4_55 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = (5 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (55 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_5_55 node_5_1
    _ = (5 : Int) := by decide

theorem node_3_2265 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2265 = (326 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2265 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2265 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2265 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2265 (by decide)
    _ = (331 : Int) - (5 : Int) :=
      sub_congr node_4_2265 node_4_55
    _ = (326 : Int) := by decide

theorem node_2_97398 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 = (13836 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (97398 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 (by decide)
    _ = (14162 : Int) - (326 : Int) :=
      sub_congr node_3_97398 node_3_2265
    _ = (13836 : Int) := by decide

theorem node_8_2072 : count [19, 17, 13, 11, 7, 5, 3, 2] 2072 = (350 : Int) := by
  decide

theorem node_7_2072 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2072 = (333 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2072 = count [19, 17, 13, 11, 7, 5, 3, 2] 2072 - count [19, 17, 13, 11, 7, 5, 3, 2] (2072 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2072 (by decide)
    _ = (350 : Int) - (17 : Int) :=
      sub_congr node_8_2072 node_8_90
    _ = (333 : Int) := by decide

theorem node_8_71 : count [19, 17, 13, 11, 7, 5, 3, 2] 71 = (13 : Int) := by
  decide

theorem node_7_71 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = (12 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = count [19, 17, 13, 11, 7, 5, 3, 2] 71 - count [19, 17, 13, 11, 7, 5, 3, 2] (71 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 71 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_8_71 node_8_3
    _ = (12 : Int) := by decide

theorem node_6_2072 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2072 = (321 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2072 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2072 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2072 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2072 (by decide)
    _ = (333 : Int) - (12 : Int) :=
      sub_congr node_7_2072 node_7_71
    _ = (321 : Int) := by decide

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

theorem node_5_2072 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2072 = (312 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2072 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2072 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2072 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2072 (by decide)
    _ = (321 : Int) - (9 : Int) :=
      sub_congr node_6_2072 node_6_66
    _ = (312 : Int) := by decide

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

theorem node_4_2072 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2072 = (306 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2072 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2072 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2072 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2072 (by decide)
    _ = (312 : Int) - (6 : Int) :=
      sub_congr node_5_2072 node_5_56
    _ = (306 : Int) := by decide

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

theorem node_3_2072 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2072 = (302 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2072 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2072 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2072 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2072 (by decide)
    _ = (306 : Int) - (4 : Int) :=
      sub_congr node_4_2072 node_4_50
    _ = (302 : Int) := by decide

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

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_1 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_1 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_48 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = (3 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (48 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_4_48 node_4_1
    _ = (3 : Int) := by decide

theorem node_2_2072 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2072 = (299 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2072 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2072 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2072 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2072 (by decide)
    _ = (302 : Int) - (3 : Int) :=
      sub_congr node_3_2072 node_3_48
    _ = (299 : Int) := by decide

theorem node_1_97398 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 = (13537 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (97398 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 (by decide)
    _ = (13836 : Int) - (299 : Int) :=
      sub_congr node_2_97398 node_2_2072
    _ = (13537 : Int) := by decide

theorem node_8_1837 : count [19, 17, 13, 11, 7, 5, 3, 2] 1837 = (311 : Int) := by
  decide

theorem node_8_79 : count [19, 17, 13, 11, 7, 5, 3, 2] 79 = (15 : Int) := by
  decide

theorem node_7_1837 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1837 = (296 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1837 = count [19, 17, 13, 11, 7, 5, 3, 2] 1837 - count [19, 17, 13, 11, 7, 5, 3, 2] (1837 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1837 (by decide)
    _ = (311 : Int) - (15 : Int) :=
      sub_congr node_8_1837 node_8_79
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

theorem node_6_1837 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1837 = (286 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1837 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1837 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1837 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1837 (by decide)
    _ = (296 : Int) - (10 : Int) :=
      sub_congr node_7_1837 node_7_63
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

theorem node_5_1837 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1837 = (278 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1837 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1837 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1837 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1837 (by decide)
    _ = (286 : Int) - (8 : Int) :=
      sub_congr node_6_1837 node_6_59
    _ = (278 : Int) := by decide

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

theorem node_4_1837 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1837 = (273 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1837 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1837 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1837 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1837 (by decide)
    _ = (278 : Int) - (5 : Int) :=
      sub_congr node_5_1837 node_5_49
    _ = (273 : Int) := by decide

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

theorem node_3_1837 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1837 = (270 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1837 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1837 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1837 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1837 (by decide)
    _ = (273 : Int) - (3 : Int) :=
      sub_congr node_4_1837 node_4_44
    _ = (270 : Int) := by decide

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

theorem node_2_1837 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1837 = (269 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1837 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1837 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1837 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1837 (by decide)
    _ = (270 : Int) - (1 : Int) :=
      sub_congr node_3_1837 node_3_42
    _ = (269 : Int) := by decide

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

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_39 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (39 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_39 node_4_0
    _ = (1 : Int) := by decide

theorem node_3_0 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_2_39 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (39 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_39 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1837 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1837 = (268 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1837 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1837 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1837 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1837 (by decide)
    _ = (269 : Int) - (1 : Int) :=
      sub_congr node_2_1837 node_2_39
    _ = (268 : Int) := by decide

theorem node_0_97398 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 = (13269 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (97398 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97398 (by decide)
    _ = (13537 : Int) - (268 : Int) :=
      sub_congr node_1_97398 node_1_1837
    _ = (13269 : Int) := by decide

theorem node_8_98418 : count [19, 17, 13, 11, 7, 5, 3, 2] 98418 = (16833 : Int) := by
  decide

theorem node_8_4279 : count [19, 17, 13, 11, 7, 5, 3, 2] 4279 = (731 : Int) := by
  decide

theorem node_7_98418 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 = (16102 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 = count [19, 17, 13, 11, 7, 5, 3, 2] 98418 - count [19, 17, 13, 11, 7, 5, 3, 2] (98418 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 98418 (by decide)
    _ = (16833 : Int) - (731 : Int) :=
      sub_congr node_8_98418 node_8_4279
    _ = (16102 : Int) := by decide

theorem node_8_3393 : count [19, 17, 13, 11, 7, 5, 3, 2] 3393 = (577 : Int) := by
  decide

theorem node_8_147 : count [19, 17, 13, 11, 7, 5, 3, 2] 147 = (27 : Int) := by
  decide

theorem node_7_3393 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3393 = (550 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3393 = count [19, 17, 13, 11, 7, 5, 3, 2] 3393 - count [19, 17, 13, 11, 7, 5, 3, 2] (3393 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3393 (by decide)
    _ = (577 : Int) - (27 : Int) :=
      sub_congr node_8_3393 node_8_147
    _ = (550 : Int) := by decide

theorem node_6_98418 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 = (15552 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (98418 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 (by decide)
    _ = (16102 : Int) - (550 : Int) :=
      sub_congr node_7_98418 node_7_3393
    _ = (15552 : Int) := by decide

theorem node_8_3174 : count [19, 17, 13, 11, 7, 5, 3, 2] 3174 = (539 : Int) := by
  decide

theorem node_8_138 : count [19, 17, 13, 11, 7, 5, 3, 2] 138 = (26 : Int) := by
  decide

theorem node_7_3174 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3174 = (513 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3174 = count [19, 17, 13, 11, 7, 5, 3, 2] 3174 - count [19, 17, 13, 11, 7, 5, 3, 2] (3174 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3174 (by decide)
    _ = (539 : Int) - (26 : Int) :=
      sub_congr node_8_3174 node_8_138
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

theorem node_6_3174 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3174 = (492 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3174 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3174 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3174 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3174 (by decide)
    _ = (513 : Int) - (21 : Int) :=
      sub_congr node_7_3174 node_7_109
    _ = (492 : Int) := by decide

theorem node_5_98418 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 = (15060 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (98418 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 (by decide)
    _ = (15552 : Int) - (492 : Int) :=
      sub_congr node_6_98418 node_6_3174
    _ = (15060 : Int) := by decide

theorem node_8_2659 : count [19, 17, 13, 11, 7, 5, 3, 2] 2659 = (450 : Int) := by
  decide

theorem node_8_115 : count [19, 17, 13, 11, 7, 5, 3, 2] 115 = (23 : Int) := by
  decide

theorem node_7_2659 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2659 = (427 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2659 = count [19, 17, 13, 11, 7, 5, 3, 2] 2659 - count [19, 17, 13, 11, 7, 5, 3, 2] (2659 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2659 (by decide)
    _ = (450 : Int) - (23 : Int) :=
      sub_congr node_8_2659 node_8_115
    _ = (427 : Int) := by decide

theorem node_8_91 : count [19, 17, 13, 11, 7, 5, 3, 2] 91 = (17 : Int) := by
  decide

theorem node_7_91 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 91 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 91 = count [19, 17, 13, 11, 7, 5, 3, 2] 91 - count [19, 17, 13, 11, 7, 5, 3, 2] (91 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 91 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_91 node_8_3
    _ = (16 : Int) := by decide

theorem node_6_2659 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2659 = (411 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2659 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2659 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2659 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2659 (by decide)
    _ = (427 : Int) - (16 : Int) :=
      sub_congr node_7_2659 node_7_91
    _ = (411 : Int) := by decide

theorem node_8_85 : count [19, 17, 13, 11, 7, 5, 3, 2] 85 = (16 : Int) := by
  decide

theorem node_7_85 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 85 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 85 = count [19, 17, 13, 11, 7, 5, 3, 2] 85 - count [19, 17, 13, 11, 7, 5, 3, 2] (85 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 85 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_85 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_85 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85 = (14 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 85 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (85 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 85 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_7_85 node_7_2
    _ = (14 : Int) := by decide

theorem node_5_2659 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2659 = (397 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2659 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2659 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2659 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2659 (by decide)
    _ = (411 : Int) - (14 : Int) :=
      sub_congr node_6_2659 node_6_85
    _ = (397 : Int) := by decide

theorem node_4_98418 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 = (14663 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (98418 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 (by decide)
    _ = (15060 : Int) - (397 : Int) :=
      sub_congr node_5_98418 node_5_2659
    _ = (14663 : Int) := by decide

theorem node_8_2400 : count [19, 17, 13, 11, 7, 5, 3, 2] 2400 = (408 : Int) := by
  decide

theorem node_8_104 : count [19, 17, 13, 11, 7, 5, 3, 2] 104 = (20 : Int) := by
  decide

theorem node_7_2400 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2400 = (388 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2400 = count [19, 17, 13, 11, 7, 5, 3, 2] 2400 - count [19, 17, 13, 11, 7, 5, 3, 2] (2400 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2400 (by decide)
    _ = (408 : Int) - (20 : Int) :=
      sub_congr node_8_2400 node_8_104
    _ = (388 : Int) := by decide

theorem node_8_82 : count [19, 17, 13, 11, 7, 5, 3, 2] 82 = (15 : Int) := by
  decide

theorem node_7_82 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = (14 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = count [19, 17, 13, 11, 7, 5, 3, 2] 82 - count [19, 17, 13, 11, 7, 5, 3, 2] (82 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 82 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_8_82 node_8_3
    _ = (14 : Int) := by decide

theorem node_6_2400 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2400 = (374 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2400 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2400 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2400 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2400 (by decide)
    _ = (388 : Int) - (14 : Int) :=
      sub_congr node_7_2400 node_7_82
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

theorem node_5_2400 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2400 = (362 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2400 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2400 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2400 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2400 (by decide)
    _ = (374 : Int) - (12 : Int) :=
      sub_congr node_6_2400 node_6_77
    _ = (362 : Int) := by decide

theorem node_4_2400 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2400 = (354 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2400 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2400 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2400 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2400 (by decide)
    _ = (362 : Int) - (8 : Int) :=
      sub_congr node_5_2400 node_5_64
    _ = (354 : Int) := by decide

theorem node_3_98418 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 = (14309 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (98418 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 (by decide)
    _ = (14663 : Int) - (354 : Int) :=
      sub_congr node_4_98418 node_4_2400
    _ = (14309 : Int) := by decide

theorem node_8_2288 : count [19, 17, 13, 11, 7, 5, 3, 2] 2288 = (388 : Int) := by
  decide

theorem node_8_99 : count [19, 17, 13, 11, 7, 5, 3, 2] 99 = (18 : Int) := by
  decide

theorem node_7_2288 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2288 = (370 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2288 = count [19, 17, 13, 11, 7, 5, 3, 2] 2288 - count [19, 17, 13, 11, 7, 5, 3, 2] (2288 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2288 (by decide)
    _ = (388 : Int) - (18 : Int) :=
      sub_congr node_8_2288 node_8_99
    _ = (370 : Int) := by decide

theorem node_6_2288 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2288 = (357 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2288 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2288 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2288 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2288 (by decide)
    _ = (370 : Int) - (13 : Int) :=
      sub_congr node_7_2288 node_7_78
    _ = (357 : Int) := by decide

theorem node_5_2288 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2288 = (345 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2288 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2288 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2288 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2288 (by decide)
    _ = (357 : Int) - (12 : Int) :=
      sub_congr node_6_2288 node_6_73
    _ = (345 : Int) := by decide

theorem node_4_2288 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2288 = (337 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2288 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2288 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2288 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2288 (by decide)
    _ = (345 : Int) - (8 : Int) :=
      sub_congr node_5_2288 node_5_61
    _ = (337 : Int) := by decide

theorem node_3_2288 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2288 = (332 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2288 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2288 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2288 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2288 (by decide)
    _ = (337 : Int) - (5 : Int) :=
      sub_congr node_4_2288 node_4_55
    _ = (332 : Int) := by decide

theorem node_2_98418 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 = (13977 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (98418 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 (by decide)
    _ = (14309 : Int) - (332 : Int) :=
      sub_congr node_3_98418 node_3_2288
    _ = (13977 : Int) := by decide

theorem node_8_2094 : count [19, 17, 13, 11, 7, 5, 3, 2] 2094 = (355 : Int) := by
  decide

theorem node_7_2094 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2094 = (338 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2094 = count [19, 17, 13, 11, 7, 5, 3, 2] 2094 - count [19, 17, 13, 11, 7, 5, 3, 2] (2094 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2094 (by decide)
    _ = (355 : Int) - (17 : Int) :=
      sub_congr node_8_2094 node_8_91
    _ = (338 : Int) := by decide

theorem node_8_72 : count [19, 17, 13, 11, 7, 5, 3, 2] 72 = (13 : Int) := by
  decide

theorem node_7_72 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = (12 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = count [19, 17, 13, 11, 7, 5, 3, 2] 72 - count [19, 17, 13, 11, 7, 5, 3, 2] (72 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 72 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_8_72 node_8_3
    _ = (12 : Int) := by decide

theorem node_6_2094 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2094 = (326 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2094 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2094 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2094 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2094 (by decide)
    _ = (338 : Int) - (12 : Int) :=
      sub_congr node_7_2094 node_7_72
    _ = (326 : Int) := by decide

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

theorem node_5_2094 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2094 = (316 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2094 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2094 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2094 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2094 (by decide)
    _ = (326 : Int) - (10 : Int) :=
      sub_congr node_6_2094 node_6_67
    _ = (316 : Int) := by decide

theorem node_4_2094 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2094 = (310 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2094 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2094 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2094 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2094 (by decide)
    _ = (316 : Int) - (6 : Int) :=
      sub_congr node_5_2094 node_5_56
    _ = (310 : Int) := by decide

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

theorem node_3_2094 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2094 = (306 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2094 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2094 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2094 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2094 (by decide)
    _ = (310 : Int) - (4 : Int) :=
      sub_congr node_4_2094 node_4_51
    _ = (306 : Int) := by decide

theorem node_2_2094 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2094 = (303 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2094 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2094 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2094 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2094 (by decide)
    _ = (306 : Int) - (3 : Int) :=
      sub_congr node_3_2094 node_3_48
    _ = (303 : Int) := by decide

theorem node_1_98418 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 = (13674 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (98418 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 (by decide)
    _ = (13977 : Int) - (303 : Int) :=
      sub_congr node_2_98418 node_2_2094
    _ = (13674 : Int) := by decide

theorem node_8_1856 : count [19, 17, 13, 11, 7, 5, 3, 2] 1856 = (313 : Int) := by
  decide

theorem node_8_80 : count [19, 17, 13, 11, 7, 5, 3, 2] 80 = (15 : Int) := by
  decide

theorem node_7_1856 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 = (298 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 = count [19, 17, 13, 11, 7, 5, 3, 2] 1856 - count [19, 17, 13, 11, 7, 5, 3, 2] (1856 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1856 (by decide)
    _ = (313 : Int) - (15 : Int) :=
      sub_congr node_8_1856 node_8_80
    _ = (298 : Int) := by decide

theorem node_6_1856 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 = (288 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1856 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 (by decide)
    _ = (298 : Int) - (10 : Int) :=
      sub_congr node_7_1856 node_7_64
    _ = (288 : Int) := by decide

theorem node_5_1856 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 = (280 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1856 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 (by decide)
    _ = (288 : Int) - (8 : Int) :=
      sub_congr node_6_1856 node_6_59
    _ = (280 : Int) := by decide

theorem node_4_1856 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 = (275 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1856 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 (by decide)
    _ = (280 : Int) - (5 : Int) :=
      sub_congr node_5_1856 node_5_50
    _ = (275 : Int) := by decide

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

theorem node_3_1856 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 = (272 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1856 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 (by decide)
    _ = (275 : Int) - (3 : Int) :=
      sub_congr node_4_1856 node_4_45
    _ = (272 : Int) := by decide

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

theorem node_2_1856 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 = (270 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1856 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 (by decide)
    _ = (272 : Int) - (2 : Int) :=
      sub_congr node_3_1856 node_3_43
    _ = (270 : Int) := by decide

theorem node_1_1856 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 = (269 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1856 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 (by decide)
    _ = (270 : Int) - (1 : Int) :=
      sub_congr node_2_1856 node_2_39
    _ = (269 : Int) := by decide

theorem node_0_98418 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 = (13405 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (98418 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98418 (by decide)
    _ = (13674 : Int) - (269 : Int) :=
      sub_congr node_1_98418 node_1_1856
    _ = (13405 : Int) := by decide

theorem node_8_99442 : count [19, 17, 13, 11, 7, 5, 3, 2] 99442 = (17009 : Int) := by
  decide

theorem node_8_4323 : count [19, 17, 13, 11, 7, 5, 3, 2] 4323 = (737 : Int) := by
  decide

theorem node_7_99442 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 = (16272 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 = count [19, 17, 13, 11, 7, 5, 3, 2] 99442 - count [19, 17, 13, 11, 7, 5, 3, 2] (99442 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 99442 (by decide)
    _ = (17009 : Int) - (737 : Int) :=
      sub_congr node_8_99442 node_8_4323
    _ = (16272 : Int) := by decide

theorem node_8_3429 : count [19, 17, 13, 11, 7, 5, 3, 2] 3429 = (582 : Int) := by
  decide

theorem node_8_149 : count [19, 17, 13, 11, 7, 5, 3, 2] 149 = (28 : Int) := by
  decide

theorem node_7_3429 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3429 = (554 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3429 = count [19, 17, 13, 11, 7, 5, 3, 2] 3429 - count [19, 17, 13, 11, 7, 5, 3, 2] (3429 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3429 (by decide)
    _ = (582 : Int) - (28 : Int) :=
      sub_congr node_8_3429 node_8_149
    _ = (554 : Int) := by decide

theorem node_6_99442 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 = (15718 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (99442 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 (by decide)
    _ = (16272 : Int) - (554 : Int) :=
      sub_congr node_7_99442 node_7_3429
    _ = (15718 : Int) := by decide

theorem node_8_3207 : count [19, 17, 13, 11, 7, 5, 3, 2] 3207 = (545 : Int) := by
  decide

theorem node_8_139 : count [19, 17, 13, 11, 7, 5, 3, 2] 139 = (27 : Int) := by
  decide

theorem node_7_3207 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3207 = (518 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3207 = count [19, 17, 13, 11, 7, 5, 3, 2] 3207 - count [19, 17, 13, 11, 7, 5, 3, 2] (3207 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3207 (by decide)
    _ = (545 : Int) - (27 : Int) :=
      sub_congr node_8_3207 node_8_139
    _ = (518 : Int) := by decide

theorem node_8_110 : count [19, 17, 13, 11, 7, 5, 3, 2] 110 = (22 : Int) := by
  decide

theorem node_7_110 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 110 = (21 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 110 = count [19, 17, 13, 11, 7, 5, 3, 2] 110 - count [19, 17, 13, 11, 7, 5, 3, 2] (110 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 110 (by decide)
    _ = (22 : Int) - (1 : Int) :=
      sub_congr node_8_110 node_8_4
    _ = (21 : Int) := by decide

theorem node_6_3207 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3207 = (497 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3207 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3207 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3207 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3207 (by decide)
    _ = (518 : Int) - (21 : Int) :=
      sub_congr node_7_3207 node_7_110
    _ = (497 : Int) := by decide

theorem node_5_99442 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 = (15221 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (99442 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 (by decide)
    _ = (15718 : Int) - (497 : Int) :=
      sub_congr node_6_99442 node_6_3207
    _ = (15221 : Int) := by decide

theorem node_8_2687 : count [19, 17, 13, 11, 7, 5, 3, 2] 2687 = (455 : Int) := by
  decide

theorem node_8_116 : count [19, 17, 13, 11, 7, 5, 3, 2] 116 = (23 : Int) := by
  decide

theorem node_7_2687 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2687 = (432 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2687 = count [19, 17, 13, 11, 7, 5, 3, 2] 2687 - count [19, 17, 13, 11, 7, 5, 3, 2] (2687 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2687 (by decide)
    _ = (455 : Int) - (23 : Int) :=
      sub_congr node_8_2687 node_8_116
    _ = (432 : Int) := by decide

theorem node_8_92 : count [19, 17, 13, 11, 7, 5, 3, 2] 92 = (17 : Int) := by
  decide

theorem node_7_92 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 92 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 92 = count [19, 17, 13, 11, 7, 5, 3, 2] 92 - count [19, 17, 13, 11, 7, 5, 3, 2] (92 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 92 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_92 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_2687 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2687 = (416 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2687 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2687 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2687 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2687 (by decide)
    _ = (432 : Int) - (16 : Int) :=
      sub_congr node_7_2687 node_7_92
    _ = (416 : Int) := by decide

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

theorem node_5_2687 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2687 = (402 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2687 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2687 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2687 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2687 (by decide)
    _ = (416 : Int) - (14 : Int) :=
      sub_congr node_6_2687 node_6_86
    _ = (402 : Int) := by decide

theorem node_4_99442 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 = (14819 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (99442 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 (by decide)
    _ = (15221 : Int) - (402 : Int) :=
      sub_congr node_5_99442 node_5_2687
    _ = (14819 : Int) := by decide

theorem node_8_2425 : count [19, 17, 13, 11, 7, 5, 3, 2] 2425 = (413 : Int) := by
  decide

theorem node_8_105 : count [19, 17, 13, 11, 7, 5, 3, 2] 105 = (20 : Int) := by
  decide

theorem node_7_2425 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2425 = (393 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2425 = count [19, 17, 13, 11, 7, 5, 3, 2] 2425 - count [19, 17, 13, 11, 7, 5, 3, 2] (2425 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2425 (by decide)
    _ = (413 : Int) - (20 : Int) :=
      sub_congr node_8_2425 node_8_105
    _ = (393 : Int) := by decide

theorem node_8_83 : count [19, 17, 13, 11, 7, 5, 3, 2] 83 = (16 : Int) := by
  decide

theorem node_7_83 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 83 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 83 = count [19, 17, 13, 11, 7, 5, 3, 2] 83 - count [19, 17, 13, 11, 7, 5, 3, 2] (83 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 83 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_83 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_2425 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2425 = (378 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2425 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2425 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2425 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2425 (by decide)
    _ = (393 : Int) - (15 : Int) :=
      sub_congr node_7_2425 node_7_83
    _ = (378 : Int) := by decide

theorem node_6_78 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = (12 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (78 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_7_78 node_7_2
    _ = (12 : Int) := by decide

theorem node_5_2425 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2425 = (366 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2425 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2425 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2425 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2425 (by decide)
    _ = (378 : Int) - (12 : Int) :=
      sub_congr node_6_2425 node_6_78
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

theorem node_4_2425 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2425 = (358 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2425 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2425 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2425 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2425 (by decide)
    _ = (366 : Int) - (8 : Int) :=
      sub_congr node_5_2425 node_5_65
    _ = (358 : Int) := by decide

theorem node_3_99442 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 = (14461 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (99442 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 (by decide)
    _ = (14819 : Int) - (358 : Int) :=
      sub_congr node_4_99442 node_4_2425
    _ = (14461 : Int) := by decide

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

theorem node_5_62 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = (8 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (62 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_6_62 node_6_2
    _ = (8 : Int) := by decide

theorem node_4_2312 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2312 = (341 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2312 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2312 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2312 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2312 (by decide)
    _ = (349 : Int) - (8 : Int) :=
      sub_congr node_5_2312 node_5_62
    _ = (341 : Int) := by decide

theorem node_4_56 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = (5 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (56 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_5_56 node_5_1
    _ = (5 : Int) := by decide

theorem node_3_2312 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2312 = (336 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2312 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2312 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2312 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2312 (by decide)
    _ = (341 : Int) - (5 : Int) :=
      sub_congr node_4_2312 node_4_56
    _ = (336 : Int) := by decide

theorem node_2_99442 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 = (14125 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (99442 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 (by decide)
    _ = (14461 : Int) - (336 : Int) :=
      sub_congr node_3_99442 node_3_2312
    _ = (14125 : Int) := by decide

theorem node_8_2115 : count [19, 17, 13, 11, 7, 5, 3, 2] 2115 = (358 : Int) := by
  decide

theorem node_7_2115 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 = (341 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 = count [19, 17, 13, 11, 7, 5, 3, 2] 2115 - count [19, 17, 13, 11, 7, 5, 3, 2] (2115 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2115 (by decide)
    _ = (358 : Int) - (17 : Int) :=
      sub_congr node_8_2115 node_8_91
    _ = (341 : Int) := by decide

theorem node_6_2115 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 = (329 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2115 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 (by decide)
    _ = (341 : Int) - (12 : Int) :=
      sub_congr node_7_2115 node_7_72
    _ = (329 : Int) := by decide

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

theorem node_5_2115 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 = (319 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2115 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 (by decide)
    _ = (329 : Int) - (10 : Int) :=
      sub_congr node_6_2115 node_6_68
    _ = (319 : Int) := by decide

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

theorem node_4_2115 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 = (313 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2115 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 (by decide)
    _ = (319 : Int) - (6 : Int) :=
      sub_congr node_5_2115 node_5_57
    _ = (313 : Int) := by decide

theorem node_3_2115 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 = (309 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2115 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 (by decide)
    _ = (313 : Int) - (4 : Int) :=
      sub_congr node_4_2115 node_4_51
    _ = (309 : Int) := by decide

theorem node_4_49 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = (4 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (49 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_5_49 node_5_1
    _ = (4 : Int) := by decide

theorem node_3_49 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = (3 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (49 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_4_49 node_4_1
    _ = (3 : Int) := by decide

theorem node_2_2115 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 = (306 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2115 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 (by decide)
    _ = (309 : Int) - (3 : Int) :=
      sub_congr node_3_2115 node_3_49
    _ = (306 : Int) := by decide

theorem node_1_99442 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 = (13819 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (99442 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 (by decide)
    _ = (14125 : Int) - (306 : Int) :=
      sub_congr node_2_99442 node_2_2115
    _ = (13819 : Int) := by decide

theorem node_8_1876 : count [19, 17, 13, 11, 7, 5, 3, 2] 1876 = (317 : Int) := by
  decide

theorem node_7_1876 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 = (302 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 = count [19, 17, 13, 11, 7, 5, 3, 2] 1876 - count [19, 17, 13, 11, 7, 5, 3, 2] (1876 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1876 (by decide)
    _ = (317 : Int) - (15 : Int) :=
      sub_congr node_8_1876 node_8_81
    _ = (302 : Int) := by decide

theorem node_6_1876 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 = (292 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1876 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 (by decide)
    _ = (302 : Int) - (10 : Int) :=
      sub_congr node_7_1876 node_7_64
    _ = (292 : Int) := by decide

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

theorem node_5_1876 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 = (284 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1876 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 (by decide)
    _ = (292 : Int) - (8 : Int) :=
      sub_congr node_6_1876 node_6_60
    _ = (284 : Int) := by decide

theorem node_4_1876 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 = (279 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1876 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 (by decide)
    _ = (284 : Int) - (5 : Int) :=
      sub_congr node_5_1876 node_5_50
    _ = (279 : Int) := by decide

theorem node_3_1876 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 = (276 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1876 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 (by decide)
    _ = (279 : Int) - (3 : Int) :=
      sub_congr node_4_1876 node_4_45
    _ = (276 : Int) := by decide

theorem node_2_1876 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 = (274 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1876 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 (by decide)
    _ = (276 : Int) - (2 : Int) :=
      sub_congr node_3_1876 node_3_43
    _ = (274 : Int) := by decide

theorem node_1_1876 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 = (273 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1876 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 (by decide)
    _ = (274 : Int) - (1 : Int) :=
      sub_congr node_2_1876 node_2_39
    _ = (273 : Int) := by decide

theorem node_0_99442 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 = (13546 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (99442 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99442 (by decide)
    _ = (13819 : Int) - (273 : Int) :=
      sub_congr node_1_99442 node_1_1876
    _ = (13546 : Int) := by decide

theorem node_8_100492 : count [19, 17, 13, 11, 7, 5, 3, 2] 100492 = (17187 : Int) := by
  decide

theorem node_8_4369 : count [19, 17, 13, 11, 7, 5, 3, 2] 4369 = (745 : Int) := by
  decide

theorem node_7_100492 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 = (16442 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 = count [19, 17, 13, 11, 7, 5, 3, 2] 100492 - count [19, 17, 13, 11, 7, 5, 3, 2] (100492 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 100492 (by decide)
    _ = (17187 : Int) - (745 : Int) :=
      sub_congr node_8_100492 node_8_4369
    _ = (16442 : Int) := by decide

theorem node_8_3465 : count [19, 17, 13, 11, 7, 5, 3, 2] 3465 = (588 : Int) := by
  decide

theorem node_8_150 : count [19, 17, 13, 11, 7, 5, 3, 2] 150 = (28 : Int) := by
  decide

theorem node_7_3465 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3465 = (560 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3465 = count [19, 17, 13, 11, 7, 5, 3, 2] 3465 - count [19, 17, 13, 11, 7, 5, 3, 2] (3465 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3465 (by decide)
    _ = (588 : Int) - (28 : Int) :=
      sub_congr node_8_3465 node_8_150
    _ = (560 : Int) := by decide

theorem node_6_100492 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 = (15882 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (100492 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 (by decide)
    _ = (16442 : Int) - (560 : Int) :=
      sub_congr node_7_100492 node_7_3465
    _ = (15882 : Int) := by decide

theorem node_8_3241 : count [19, 17, 13, 11, 7, 5, 3, 2] 3241 = (551 : Int) := by
  decide

theorem node_8_140 : count [19, 17, 13, 11, 7, 5, 3, 2] 140 = (27 : Int) := by
  decide

theorem node_7_3241 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3241 = (524 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3241 = count [19, 17, 13, 11, 7, 5, 3, 2] 3241 - count [19, 17, 13, 11, 7, 5, 3, 2] (3241 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3241 (by decide)
    _ = (551 : Int) - (27 : Int) :=
      sub_congr node_8_3241 node_8_140
    _ = (524 : Int) := by decide

theorem node_8_111 : count [19, 17, 13, 11, 7, 5, 3, 2] 111 = (22 : Int) := by
  decide

theorem node_7_111 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 111 = (21 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 111 = count [19, 17, 13, 11, 7, 5, 3, 2] 111 - count [19, 17, 13, 11, 7, 5, 3, 2] (111 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 111 (by decide)
    _ = (22 : Int) - (1 : Int) :=
      sub_congr node_8_111 node_8_4
    _ = (21 : Int) := by decide

theorem node_6_3241 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3241 = (503 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3241 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3241 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3241 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3241 (by decide)
    _ = (524 : Int) - (21 : Int) :=
      sub_congr node_7_3241 node_7_111
    _ = (503 : Int) := by decide

theorem node_5_100492 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 = (15379 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (100492 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 (by decide)
    _ = (15882 : Int) - (503 : Int) :=
      sub_congr node_6_100492 node_6_3241
    _ = (15379 : Int) := by decide

theorem node_8_2716 : count [19, 17, 13, 11, 7, 5, 3, 2] 2716 = (462 : Int) := by
  decide

theorem node_8_118 : count [19, 17, 13, 11, 7, 5, 3, 2] 118 = (23 : Int) := by
  decide

theorem node_7_2716 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2716 = (439 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2716 = count [19, 17, 13, 11, 7, 5, 3, 2] 2716 - count [19, 17, 13, 11, 7, 5, 3, 2] (2716 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2716 (by decide)
    _ = (462 : Int) - (23 : Int) :=
      sub_congr node_8_2716 node_8_118
    _ = (439 : Int) := by decide

theorem node_8_93 : count [19, 17, 13, 11, 7, 5, 3, 2] 93 = (17 : Int) := by
  decide

theorem node_7_93 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 93 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 93 = count [19, 17, 13, 11, 7, 5, 3, 2] 93 - count [19, 17, 13, 11, 7, 5, 3, 2] (93 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 93 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_93 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_2716 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2716 = (423 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2716 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2716 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2716 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2716 (by decide)
    _ = (439 : Int) - (16 : Int) :=
      sub_congr node_7_2716 node_7_93
    _ = (423 : Int) := by decide

theorem node_8_87 : count [19, 17, 13, 11, 7, 5, 3, 2] 87 = (16 : Int) := by
  decide

theorem node_7_87 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = count [19, 17, 13, 11, 7, 5, 3, 2] 87 - count [19, 17, 13, 11, 7, 5, 3, 2] (87 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 87 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_87 node_8_3
    _ = (15 : Int) := by decide

theorem node_7_3 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = count [19, 17, 13, 11, 7, 5, 3, 2] 3 - count [19, 17, 13, 11, 7, 5, 3, 2] (3 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_3 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_87 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = (14 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 87 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (87 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 87 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_7_87 node_7_3
    _ = (14 : Int) := by decide

theorem node_5_2716 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2716 = (409 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2716 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2716 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2716 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2716 (by decide)
    _ = (423 : Int) - (14 : Int) :=
      sub_congr node_6_2716 node_6_87
    _ = (409 : Int) := by decide

theorem node_4_100492 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 = (14970 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (100492 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 (by decide)
    _ = (15379 : Int) - (409 : Int) :=
      sub_congr node_5_100492 node_5_2716
    _ = (14970 : Int) := by decide

theorem node_8_2451 : count [19, 17, 13, 11, 7, 5, 3, 2] 2451 = (417 : Int) := by
  decide

theorem node_8_106 : count [19, 17, 13, 11, 7, 5, 3, 2] 106 = (20 : Int) := by
  decide

theorem node_7_2451 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2451 = (397 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2451 = count [19, 17, 13, 11, 7, 5, 3, 2] 2451 - count [19, 17, 13, 11, 7, 5, 3, 2] (2451 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2451 (by decide)
    _ = (417 : Int) - (20 : Int) :=
      sub_congr node_8_2451 node_8_106
    _ = (397 : Int) := by decide

theorem node_6_2451 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2451 = (382 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2451 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2451 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2451 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2451 (by decide)
    _ = (397 : Int) - (15 : Int) :=
      sub_congr node_7_2451 node_7_84
    _ = (382 : Int) := by decide

theorem node_6_79 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79 = (13 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 79 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (79 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 79 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_7_79 node_7_2
    _ = (13 : Int) := by decide

theorem node_5_2451 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2451 = (369 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2451 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2451 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2451 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2451 (by decide)
    _ = (382 : Int) - (13 : Int) :=
      sub_congr node_6_2451 node_6_79
    _ = (369 : Int) := by decide

theorem node_5_66 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = (8 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (66 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_6_66 node_6_2
    _ = (8 : Int) := by decide

theorem node_4_2451 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2451 = (361 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2451 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2451 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2451 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2451 (by decide)
    _ = (369 : Int) - (8 : Int) :=
      sub_congr node_5_2451 node_5_66
    _ = (361 : Int) := by decide

theorem node_3_100492 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 = (14609 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (100492 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 (by decide)
    _ = (14970 : Int) - (361 : Int) :=
      sub_congr node_4_100492 node_4_2451
    _ = (14609 : Int) := by decide

theorem node_8_2337 : count [19, 17, 13, 11, 7, 5, 3, 2] 2337 = (395 : Int) := by
  decide

theorem node_8_101 : count [19, 17, 13, 11, 7, 5, 3, 2] 101 = (19 : Int) := by
  decide

theorem node_7_2337 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2337 = (376 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2337 = count [19, 17, 13, 11, 7, 5, 3, 2] 2337 - count [19, 17, 13, 11, 7, 5, 3, 2] (2337 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2337 (by decide)
    _ = (395 : Int) - (19 : Int) :=
      sub_congr node_8_2337 node_8_101
    _ = (376 : Int) := by decide

theorem node_7_80 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = (14 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = count [19, 17, 13, 11, 7, 5, 3, 2] 80 - count [19, 17, 13, 11, 7, 5, 3, 2] (80 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 80 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_8_80 node_8_3
    _ = (14 : Int) := by decide

theorem node_6_2337 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2337 = (362 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2337 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2337 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2337 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2337 (by decide)
    _ = (376 : Int) - (14 : Int) :=
      sub_congr node_7_2337 node_7_80
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

theorem node_5_2337 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2337 = (350 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2337 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2337 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2337 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2337 (by decide)
    _ = (362 : Int) - (12 : Int) :=
      sub_congr node_6_2337 node_6_75
    _ = (350 : Int) := by decide

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

theorem node_4_2337 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2337 = (342 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2337 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2337 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2337 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2337 (by decide)
    _ = (350 : Int) - (8 : Int) :=
      sub_congr node_5_2337 node_5_63
    _ = (342 : Int) := by decide

theorem node_4_57 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = (5 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (57 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_5_57 node_5_1
    _ = (5 : Int) := by decide

theorem node_3_2337 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2337 = (337 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2337 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2337 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2337 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2337 (by decide)
    _ = (342 : Int) - (5 : Int) :=
      sub_congr node_4_2337 node_4_57
    _ = (337 : Int) := by decide

theorem node_2_100492 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 = (14272 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (100492 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 (by decide)
    _ = (14609 : Int) - (337 : Int) :=
      sub_congr node_3_100492 node_3_2337
    _ = (14272 : Int) := by decide

theorem node_8_2138 : count [19, 17, 13, 11, 7, 5, 3, 2] 2138 = (362 : Int) := by
  decide

theorem node_7_2138 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2138 = (345 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2138 = count [19, 17, 13, 11, 7, 5, 3, 2] 2138 - count [19, 17, 13, 11, 7, 5, 3, 2] (2138 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2138 (by decide)
    _ = (362 : Int) - (17 : Int) :=
      sub_congr node_8_2138 node_8_92
    _ = (345 : Int) := by decide

theorem node_6_2138 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2138 = (332 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2138 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2138 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2138 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2138 (by decide)
    _ = (345 : Int) - (13 : Int) :=
      sub_congr node_7_2138 node_7_73
    _ = (332 : Int) := by decide

theorem node_5_2138 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2138 = (322 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2138 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2138 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2138 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2138 (by decide)
    _ = (332 : Int) - (10 : Int) :=
      sub_congr node_6_2138 node_6_68
    _ = (322 : Int) := by decide

theorem node_4_2138 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2138 = (316 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2138 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2138 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2138 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2138 (by decide)
    _ = (322 : Int) - (6 : Int) :=
      sub_congr node_5_2138 node_5_57
    _ = (316 : Int) := by decide

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

theorem node_3_2138 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2138 = (312 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2138 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2138 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2138 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2138 (by decide)
    _ = (316 : Int) - (4 : Int) :=
      sub_congr node_4_2138 node_4_52
    _ = (312 : Int) := by decide

theorem node_2_2138 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2138 = (309 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2138 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2138 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2138 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2138 (by decide)
    _ = (312 : Int) - (3 : Int) :=
      sub_congr node_3_2138 node_3_49
    _ = (309 : Int) := by decide

theorem node_1_100492 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 = (13963 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (100492 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 (by decide)
    _ = (14272 : Int) - (309 : Int) :=
      sub_congr node_2_100492 node_2_2138
    _ = (13963 : Int) := by decide

theorem node_8_1896 : count [19, 17, 13, 11, 7, 5, 3, 2] 1896 = (321 : Int) := by
  decide

theorem node_7_1896 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1896 = (306 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1896 = count [19, 17, 13, 11, 7, 5, 3, 2] 1896 - count [19, 17, 13, 11, 7, 5, 3, 2] (1896 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1896 (by decide)
    _ = (321 : Int) - (15 : Int) :=
      sub_congr node_8_1896 node_8_82
    _ = (306 : Int) := by decide

theorem node_6_1896 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1896 = (296 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1896 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1896 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1896 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1896 (by decide)
    _ = (306 : Int) - (10 : Int) :=
      sub_congr node_7_1896 node_7_65
    _ = (296 : Int) := by decide

theorem node_5_1896 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1896 = (287 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1896 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1896 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1896 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1896 (by decide)
    _ = (296 : Int) - (9 : Int) :=
      sub_congr node_6_1896 node_6_61
    _ = (287 : Int) := by decide

theorem node_4_1896 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1896 = (282 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1896 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1896 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1896 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1896 (by decide)
    _ = (287 : Int) - (5 : Int) :=
      sub_congr node_5_1896 node_5_51
    _ = (282 : Int) := by decide

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

theorem node_3_1896 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1896 = (279 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1896 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1896 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1896 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1896 (by decide)
    _ = (282 : Int) - (3 : Int) :=
      sub_congr node_4_1896 node_4_46
    _ = (279 : Int) := by decide

theorem node_3_44 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 = (2 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (44 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_4_44 node_4_1
    _ = (2 : Int) := by decide

theorem node_2_1896 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1896 = (277 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1896 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1896 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1896 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1896 (by decide)
    _ = (279 : Int) - (2 : Int) :=
      sub_congr node_3_1896 node_3_44
    _ = (277 : Int) := by decide

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

theorem node_3_40 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (40 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_40 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_40 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (40 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_40 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1896 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1896 = (276 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1896 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1896 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1896 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1896 (by decide)
    _ = (277 : Int) - (1 : Int) :=
      sub_congr node_2_1896 node_2_40
    _ = (276 : Int) := by decide

theorem node_0_100492 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 = (13687 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (100492 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100492 (by decide)
    _ = (13963 : Int) - (276 : Int) :=
      sub_congr node_1_100492 node_1_1896
    _ = (13687 : Int) := by decide

theorem row_84 : count primes 97398 ≤ (13284 : Int) - 15 := by
  rw [show count primes 97398 = (13269 : Int) from node_0_97398]
  decide

theorem row_85 : count primes 98418 ≤ (13420 : Int) - 15 := by
  rw [show count primes 98418 = (13405 : Int) from node_0_98418]
  decide

theorem row_86 : count primes 99442 ≤ (13561 : Int) - 15 := by
  rw [show count primes 99442 = (13546 : Int) from node_0_99442]
  decide

theorem row_87 : count primes 100492 ≤ (13702 : Int) - 15 := by
  rw [show count primes 100492 = (13687 : Int) from node_0_100492]
  decide

def pairs : List (Nat × Nat) := [(97398, 13284), (98418, 13420), (99442, 13561), (100492, 13702)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl | rfl | rfl
  · exact row_84
  · exact row_85
  · exact row_86
  · exact row_87
end B699CorePrunedSieve.CoreDagBatch22
#check @B699CorePrunedSieve.CoreDagBatch22.pairs_valid
#print axioms B699CorePrunedSieve.CoreDagBatch22.pairs_valid
