import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreRest29
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

theorem row_84 : count primes 97398 ≤ (13284 : Int) - 15 := by
  rw [show count primes 97398 = (13269 : Int) from node_0_97398]
  decide

theorem row_85 : count primes 98418 ≤ (13420 : Int) - 15 := by
  rw [show count primes 98418 = (13405 : Int) from node_0_98418]
  decide

def pairs : List (Nat × Nat) := [(97398, 13284), (98418, 13420)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl
  · exact row_84
  · exact row_85
end B699CorePrunedSieve.CoreRest29
#check @B699CorePrunedSieve.CoreRest29.pairs_valid
#print axioms B699CorePrunedSieve.CoreRest29.pairs_valid
