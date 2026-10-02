import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreRest34
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_108028 : count [19, 17, 13, 11, 7, 5, 3, 2] 108028 = (18474 : Int) := by
  decide

theorem node_8_4696 : count [19, 17, 13, 11, 7, 5, 3, 2] 4696 = (802 : Int) := by
  decide

theorem node_7_108028 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = (17672 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = count [19, 17, 13, 11, 7, 5, 3, 2] 108028 - count [19, 17, 13, 11, 7, 5, 3, 2] (108028 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 108028 (by decide)
    _ = (18474 : Int) - (802 : Int) :=
      sub_congr node_8_108028 node_8_4696
    _ = (17672 : Int) := by decide

theorem node_8_3725 : count [19, 17, 13, 11, 7, 5, 3, 2] 3725 = (634 : Int) := by
  decide

theorem node_8_161 : count [19, 17, 13, 11, 7, 5, 3, 2] 161 = (30 : Int) := by
  decide

theorem node_7_3725 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3725 = (604 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3725 = count [19, 17, 13, 11, 7, 5, 3, 2] 3725 - count [19, 17, 13, 11, 7, 5, 3, 2] (3725 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3725 (by decide)
    _ = (634 : Int) - (30 : Int) :=
      sub_congr node_8_3725 node_8_161
    _ = (604 : Int) := by decide

theorem node_6_108028 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = (17068 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (108028 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 (by decide)
    _ = (17672 : Int) - (604 : Int) :=
      sub_congr node_7_108028 node_7_3725
    _ = (17068 : Int) := by decide

theorem node_8_3484 : count [19, 17, 13, 11, 7, 5, 3, 2] 3484 = (592 : Int) := by
  decide

theorem node_8_151 : count [19, 17, 13, 11, 7, 5, 3, 2] 151 = (29 : Int) := by
  decide

theorem node_7_3484 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3484 = (563 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3484 = count [19, 17, 13, 11, 7, 5, 3, 2] 3484 - count [19, 17, 13, 11, 7, 5, 3, 2] (3484 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3484 (by decide)
    _ = (592 : Int) - (29 : Int) :=
      sub_congr node_8_3484 node_8_151
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

theorem node_6_3484 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3484 = (541 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3484 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3484 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3484 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3484 (by decide)
    _ = (563 : Int) - (22 : Int) :=
      sub_congr node_7_3484 node_7_120
    _ = (541 : Int) := by decide

theorem node_5_108028 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = (16527 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (108028 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 (by decide)
    _ = (17068 : Int) - (541 : Int) :=
      sub_congr node_6_108028 node_6_3484
    _ = (16527 : Int) := by decide

theorem node_8_2919 : count [19, 17, 13, 11, 7, 5, 3, 2] 2919 = (496 : Int) := by
  decide

theorem node_8_126 : count [19, 17, 13, 11, 7, 5, 3, 2] 126 = (23 : Int) := by
  decide

theorem node_7_2919 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2919 = (473 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2919 = count [19, 17, 13, 11, 7, 5, 3, 2] 2919 - count [19, 17, 13, 11, 7, 5, 3, 2] (2919 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2919 (by decide)
    _ = (496 : Int) - (23 : Int) :=
      sub_congr node_8_2919 node_8_126
    _ = (473 : Int) := by decide

theorem node_8_100 : count [19, 17, 13, 11, 7, 5, 3, 2] 100 = (18 : Int) := by
  decide

theorem node_8_4 : count [19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  decide

theorem node_7_100 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 100 = (17 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 100 = count [19, 17, 13, 11, 7, 5, 3, 2] 100 - count [19, 17, 13, 11, 7, 5, 3, 2] (100 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 100 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_8_100 node_8_4
    _ = (17 : Int) := by decide

theorem node_6_2919 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2919 = (456 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2919 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2919 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2919 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2919 (by decide)
    _ = (473 : Int) - (17 : Int) :=
      sub_congr node_7_2919 node_7_100
    _ = (456 : Int) := by decide

theorem node_8_94 : count [19, 17, 13, 11, 7, 5, 3, 2] 94 = (17 : Int) := by
  decide

theorem node_7_94 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 94 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 94 = count [19, 17, 13, 11, 7, 5, 3, 2] 94 - count [19, 17, 13, 11, 7, 5, 3, 2] (94 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 94 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_94 node_8_4
    _ = (16 : Int) := by decide

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

theorem node_6_94 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94 = (15 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 94 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (94 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 94 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_7_94 node_7_3
    _ = (15 : Int) := by decide

theorem node_5_2919 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2919 = (441 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2919 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2919 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2919 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2919 (by decide)
    _ = (456 : Int) - (15 : Int) :=
      sub_congr node_6_2919 node_6_94
    _ = (441 : Int) := by decide

theorem node_4_108028 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = (16086 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (108028 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 (by decide)
    _ = (16527 : Int) - (441 : Int) :=
      sub_congr node_5_108028 node_5_2919
    _ = (16086 : Int) := by decide

theorem node_8_2634 : count [19, 17, 13, 11, 7, 5, 3, 2] 2634 = (447 : Int) := by
  decide

theorem node_8_114 : count [19, 17, 13, 11, 7, 5, 3, 2] 114 = (23 : Int) := by
  decide

theorem node_7_2634 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 = (424 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 = count [19, 17, 13, 11, 7, 5, 3, 2] 2634 - count [19, 17, 13, 11, 7, 5, 3, 2] (2634 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2634 (by decide)
    _ = (447 : Int) - (23 : Int) :=
      sub_congr node_8_2634 node_8_114
    _ = (424 : Int) := by decide

theorem node_8_90 : count [19, 17, 13, 11, 7, 5, 3, 2] 90 = (17 : Int) := by
  decide

theorem node_7_90 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 90 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 90 = count [19, 17, 13, 11, 7, 5, 3, 2] 90 - count [19, 17, 13, 11, 7, 5, 3, 2] (90 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 90 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_90 node_8_3
    _ = (16 : Int) := by decide

theorem node_6_2634 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 = (408 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2634 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 (by decide)
    _ = (424 : Int) - (16 : Int) :=
      sub_congr node_7_2634 node_7_90
    _ = (408 : Int) := by decide

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

theorem node_5_2634 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 = (394 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2634 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 (by decide)
    _ = (408 : Int) - (14 : Int) :=
      sub_congr node_6_2634 node_6_84
    _ = (394 : Int) := by decide

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

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_2 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_2 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_71 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = (10 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (71 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_6_71 node_6_2
    _ = (10 : Int) := by decide

theorem node_4_2634 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 = (384 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2634 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 (by decide)
    _ = (394 : Int) - (10 : Int) :=
      sub_congr node_5_2634 node_5_71
    _ = (384 : Int) := by decide

theorem node_3_108028 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = (15702 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (108028 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 (by decide)
    _ = (16086 : Int) - (384 : Int) :=
      sub_congr node_4_108028 node_4_2634
    _ = (15702 : Int) := by decide

theorem node_8_2512 : count [19, 17, 13, 11, 7, 5, 3, 2] 2512 = (427 : Int) := by
  decide

theorem node_8_109 : count [19, 17, 13, 11, 7, 5, 3, 2] 109 = (22 : Int) := by
  decide

theorem node_7_2512 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 = (405 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 = count [19, 17, 13, 11, 7, 5, 3, 2] 2512 - count [19, 17, 13, 11, 7, 5, 3, 2] (2512 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2512 (by decide)
    _ = (427 : Int) - (22 : Int) :=
      sub_congr node_8_2512 node_8_109
    _ = (405 : Int) := by decide

theorem node_8_86 : count [19, 17, 13, 11, 7, 5, 3, 2] 86 = (16 : Int) := by
  decide

theorem node_7_86 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = count [19, 17, 13, 11, 7, 5, 3, 2] 86 - count [19, 17, 13, 11, 7, 5, 3, 2] (86 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 86 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_86 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_2512 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 = (390 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2512 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 (by decide)
    _ = (405 : Int) - (15 : Int) :=
      sub_congr node_7_2512 node_7_86
    _ = (390 : Int) := by decide

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

theorem node_5_2512 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 = (377 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2512 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 (by decide)
    _ = (390 : Int) - (13 : Int) :=
      sub_congr node_6_2512 node_6_81
    _ = (377 : Int) := by decide

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

theorem node_4_2512 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 = (368 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2512 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 (by decide)
    _ = (377 : Int) - (9 : Int) :=
      sub_congr node_5_2512 node_5_67
    _ = (368 : Int) := by decide

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

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_1 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_1 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_61 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = (7 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (61 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_5_61 node_5_1
    _ = (7 : Int) := by decide

theorem node_3_2512 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 = (361 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2512 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 (by decide)
    _ = (368 : Int) - (7 : Int) :=
      sub_congr node_4_2512 node_4_61
    _ = (361 : Int) := by decide

theorem node_2_108028 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = (15341 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (108028 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 (by decide)
    _ = (15702 : Int) - (361 : Int) :=
      sub_congr node_3_108028 node_3_2512
    _ = (15341 : Int) := by decide

theorem node_8_2298 : count [19, 17, 13, 11, 7, 5, 3, 2] 2298 = (391 : Int) := by
  decide

theorem node_8_99 : count [19, 17, 13, 11, 7, 5, 3, 2] 99 = (18 : Int) := by
  decide

theorem node_7_2298 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = (373 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = count [19, 17, 13, 11, 7, 5, 3, 2] 2298 - count [19, 17, 13, 11, 7, 5, 3, 2] (2298 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2298 (by decide)
    _ = (391 : Int) - (18 : Int) :=
      sub_congr node_8_2298 node_8_99
    _ = (373 : Int) := by decide

theorem node_8_79 : count [19, 17, 13, 11, 7, 5, 3, 2] 79 = (15 : Int) := by
  decide

theorem node_7_79 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 79 = (14 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 79 = count [19, 17, 13, 11, 7, 5, 3, 2] 79 - count [19, 17, 13, 11, 7, 5, 3, 2] (79 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 79 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_8_79 node_8_3
    _ = (14 : Int) := by decide

theorem node_6_2298 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = (359 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2298 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 (by decide)
    _ = (373 : Int) - (14 : Int) :=
      sub_congr node_7_2298 node_7_79
    _ = (359 : Int) := by decide

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

theorem node_5_2298 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = (347 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2298 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 (by decide)
    _ = (359 : Int) - (12 : Int) :=
      sub_congr node_6_2298 node_6_74
    _ = (347 : Int) := by decide

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

theorem node_4_2298 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = (339 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2298 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 (by decide)
    _ = (347 : Int) - (8 : Int) :=
      sub_congr node_5_2298 node_5_62
    _ = (339 : Int) := by decide

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

theorem node_3_2298 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = (334 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2298 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 (by decide)
    _ = (339 : Int) - (5 : Int) :=
      sub_congr node_4_2298 node_4_56
    _ = (334 : Int) := by decide

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

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_1 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_1 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_53 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = (4 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (53 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_4_53 node_4_1
    _ = (4 : Int) := by decide

theorem node_2_2298 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = (330 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2298 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 (by decide)
    _ = (334 : Int) - (4 : Int) :=
      sub_congr node_3_2298 node_3_53
    _ = (330 : Int) := by decide

theorem node_1_108028 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = (15011 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (108028 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 (by decide)
    _ = (15341 : Int) - (330 : Int) :=
      sub_congr node_2_108028 node_2_2298
    _ = (15011 : Int) := by decide

theorem node_8_2038 : count [19, 17, 13, 11, 7, 5, 3, 2] 2038 = (344 : Int) := by
  decide

theorem node_8_88 : count [19, 17, 13, 11, 7, 5, 3, 2] 88 = (16 : Int) := by
  decide

theorem node_7_2038 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = (328 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = count [19, 17, 13, 11, 7, 5, 3, 2] 2038 - count [19, 17, 13, 11, 7, 5, 3, 2] (2038 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2038 (by decide)
    _ = (344 : Int) - (16 : Int) :=
      sub_congr node_8_2038 node_8_88
    _ = (328 : Int) := by decide

theorem node_8_70 : count [19, 17, 13, 11, 7, 5, 3, 2] 70 = (12 : Int) := by
  decide

theorem node_7_70 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 70 = (11 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 70 = count [19, 17, 13, 11, 7, 5, 3, 2] 70 - count [19, 17, 13, 11, 7, 5, 3, 2] (70 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 70 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_8_70 node_8_3
    _ = (11 : Int) := by decide

theorem node_6_2038 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = (317 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2038 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 (by decide)
    _ = (328 : Int) - (11 : Int) :=
      sub_congr node_7_2038 node_7_70
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

theorem node_5_2038 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = (308 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2038 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 (by decide)
    _ = (317 : Int) - (9 : Int) :=
      sub_congr node_6_2038 node_6_65
    _ = (308 : Int) := by decide

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

theorem node_4_2038 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = (302 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2038 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 (by decide)
    _ = (308 : Int) - (6 : Int) :=
      sub_congr node_5_2038 node_5_55
    _ = (302 : Int) := by decide

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

theorem node_4_49 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = (4 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (49 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_5_49 node_5_1
    _ = (4 : Int) := by decide

theorem node_3_2038 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = (298 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2038 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 (by decide)
    _ = (302 : Int) - (4 : Int) :=
      sub_congr node_4_2038 node_4_49
    _ = (298 : Int) := by decide

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

theorem node_3_47 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 = (3 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (47 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_4_47 node_4_1
    _ = (3 : Int) := by decide

theorem node_2_2038 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = (295 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2038 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 (by decide)
    _ = (298 : Int) - (3 : Int) :=
      sub_congr node_3_2038 node_3_47
    _ = (295 : Int) := by decide

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

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_1 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_1 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_43 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (43 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_3_43 node_3_1
    _ = (1 : Int) := by decide

theorem node_1_2038 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = (294 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2038 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 (by decide)
    _ = (295 : Int) - (1 : Int) :=
      sub_congr node_2_2038 node_2_43
    _ = (294 : Int) := by decide

theorem node_0_108028 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = (14717 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (108028 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 (by decide)
    _ = (15011 : Int) - (294 : Int) :=
      sub_congr node_1_108028 node_1_2038
    _ = (14717 : Int) := by decide

theorem node_8_109110 : count [19, 17, 13, 11, 7, 5, 3, 2] 109110 = (18658 : Int) := by
  decide

theorem node_8_4743 : count [19, 17, 13, 11, 7, 5, 3, 2] 4743 = (810 : Int) := by
  decide

theorem node_7_109110 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = (17848 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = count [19, 17, 13, 11, 7, 5, 3, 2] 109110 - count [19, 17, 13, 11, 7, 5, 3, 2] (109110 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 109110 (by decide)
    _ = (18658 : Int) - (810 : Int) :=
      sub_congr node_8_109110 node_8_4743
    _ = (17848 : Int) := by decide

theorem node_8_3762 : count [19, 17, 13, 11, 7, 5, 3, 2] 3762 = (640 : Int) := by
  decide

theorem node_8_163 : count [19, 17, 13, 11, 7, 5, 3, 2] 163 = (31 : Int) := by
  decide

theorem node_7_3762 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3762 = (609 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3762 = count [19, 17, 13, 11, 7, 5, 3, 2] 3762 - count [19, 17, 13, 11, 7, 5, 3, 2] (3762 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3762 (by decide)
    _ = (640 : Int) - (31 : Int) :=
      sub_congr node_8_3762 node_8_163
    _ = (609 : Int) := by decide

theorem node_6_109110 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = (17239 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (109110 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 (by decide)
    _ = (17848 : Int) - (609 : Int) :=
      sub_congr node_7_109110 node_7_3762
    _ = (17239 : Int) := by decide

theorem node_8_3519 : count [19, 17, 13, 11, 7, 5, 3, 2] 3519 = (597 : Int) := by
  decide

theorem node_8_153 : count [19, 17, 13, 11, 7, 5, 3, 2] 153 = (29 : Int) := by
  decide

theorem node_7_3519 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3519 = (568 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3519 = count [19, 17, 13, 11, 7, 5, 3, 2] 3519 - count [19, 17, 13, 11, 7, 5, 3, 2] (3519 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3519 (by decide)
    _ = (597 : Int) - (29 : Int) :=
      sub_congr node_8_3519 node_8_153
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

theorem node_6_3519 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3519 = (546 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3519 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3519 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3519 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3519 (by decide)
    _ = (568 : Int) - (22 : Int) :=
      sub_congr node_7_3519 node_7_121
    _ = (546 : Int) := by decide

theorem node_5_109110 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = (16693 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (109110 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 (by decide)
    _ = (17239 : Int) - (546 : Int) :=
      sub_congr node_6_109110 node_6_3519
    _ = (16693 : Int) := by decide

theorem node_8_2948 : count [19, 17, 13, 11, 7, 5, 3, 2] 2948 = (501 : Int) := by
  decide

theorem node_8_128 : count [19, 17, 13, 11, 7, 5, 3, 2] 128 = (24 : Int) := by
  decide

theorem node_7_2948 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2948 = (477 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2948 = count [19, 17, 13, 11, 7, 5, 3, 2] 2948 - count [19, 17, 13, 11, 7, 5, 3, 2] (2948 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2948 (by decide)
    _ = (501 : Int) - (24 : Int) :=
      sub_congr node_8_2948 node_8_128
    _ = (477 : Int) := by decide

theorem node_8_101 : count [19, 17, 13, 11, 7, 5, 3, 2] 101 = (19 : Int) := by
  decide

theorem node_7_101 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 101 = (18 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 101 = count [19, 17, 13, 11, 7, 5, 3, 2] 101 - count [19, 17, 13, 11, 7, 5, 3, 2] (101 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 101 (by decide)
    _ = (19 : Int) - (1 : Int) :=
      sub_congr node_8_101 node_8_4
    _ = (18 : Int) := by decide

theorem node_6_2948 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2948 = (459 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2948 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2948 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2948 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2948 (by decide)
    _ = (477 : Int) - (18 : Int) :=
      sub_congr node_7_2948 node_7_101
    _ = (459 : Int) := by decide

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

theorem node_5_2948 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2948 = (444 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2948 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2948 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2948 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2948 (by decide)
    _ = (459 : Int) - (15 : Int) :=
      sub_congr node_6_2948 node_6_95
    _ = (444 : Int) := by decide

theorem node_4_109110 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = (16249 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (109110 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 (by decide)
    _ = (16693 : Int) - (444 : Int) :=
      sub_congr node_5_109110 node_5_2948
    _ = (16249 : Int) := by decide

theorem node_8_2661 : count [19, 17, 13, 11, 7, 5, 3, 2] 2661 = (450 : Int) := by
  decide

theorem node_8_115 : count [19, 17, 13, 11, 7, 5, 3, 2] 115 = (23 : Int) := by
  decide

theorem node_7_2661 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 = (427 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 = count [19, 17, 13, 11, 7, 5, 3, 2] 2661 - count [19, 17, 13, 11, 7, 5, 3, 2] (2661 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2661 (by decide)
    _ = (450 : Int) - (23 : Int) :=
      sub_congr node_8_2661 node_8_115
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

theorem node_6_2661 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 = (411 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2661 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 (by decide)
    _ = (427 : Int) - (16 : Int) :=
      sub_congr node_7_2661 node_7_91
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

theorem node_5_2661 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 = (397 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2661 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 (by decide)
    _ = (411 : Int) - (14 : Int) :=
      sub_congr node_6_2661 node_6_85
    _ = (397 : Int) := by decide

theorem node_4_2661 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 = (387 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2661 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 (by decide)
    _ = (397 : Int) - (10 : Int) :=
      sub_congr node_5_2661 node_5_71
    _ = (387 : Int) := by decide

theorem node_3_109110 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = (15862 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (109110 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 (by decide)
    _ = (16249 : Int) - (387 : Int) :=
      sub_congr node_4_109110 node_4_2661
    _ = (15862 : Int) := by decide

theorem node_8_2537 : count [19, 17, 13, 11, 7, 5, 3, 2] 2537 = (430 : Int) := by
  decide

theorem node_8_110 : count [19, 17, 13, 11, 7, 5, 3, 2] 110 = (22 : Int) := by
  decide

theorem node_7_2537 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 = (408 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 = count [19, 17, 13, 11, 7, 5, 3, 2] 2537 - count [19, 17, 13, 11, 7, 5, 3, 2] (2537 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2537 (by decide)
    _ = (430 : Int) - (22 : Int) :=
      sub_congr node_8_2537 node_8_110
    _ = (408 : Int) := by decide

theorem node_8_87 : count [19, 17, 13, 11, 7, 5, 3, 2] 87 = (16 : Int) := by
  decide

theorem node_7_87 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = count [19, 17, 13, 11, 7, 5, 3, 2] 87 - count [19, 17, 13, 11, 7, 5, 3, 2] (87 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 87 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_87 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_2537 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 = (393 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2537 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 (by decide)
    _ = (408 : Int) - (15 : Int) :=
      sub_congr node_7_2537 node_7_87
    _ = (393 : Int) := by decide

theorem node_5_2537 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 = (380 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2537 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 (by decide)
    _ = (393 : Int) - (13 : Int) :=
      sub_congr node_6_2537 node_6_81
    _ = (380 : Int) := by decide

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

theorem node_4_2537 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 = (371 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2537 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 (by decide)
    _ = (380 : Int) - (9 : Int) :=
      sub_congr node_5_2537 node_5_68
    _ = (371 : Int) := by decide

theorem node_3_2537 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 = (364 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2537 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 (by decide)
    _ = (371 : Int) - (7 : Int) :=
      sub_congr node_4_2537 node_4_61
    _ = (364 : Int) := by decide

theorem node_2_109110 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = (15498 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (109110 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 (by decide)
    _ = (15862 : Int) - (364 : Int) :=
      sub_congr node_3_109110 node_3_2537
    _ = (15498 : Int) := by decide

theorem node_8_2321 : count [19, 17, 13, 11, 7, 5, 3, 2] 2321 = (393 : Int) := by
  decide

theorem node_7_2321 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = (375 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = count [19, 17, 13, 11, 7, 5, 3, 2] 2321 - count [19, 17, 13, 11, 7, 5, 3, 2] (2321 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2321 (by decide)
    _ = (393 : Int) - (18 : Int) :=
      sub_congr node_8_2321 node_8_100
    _ = (375 : Int) := by decide

theorem node_8_80 : count [19, 17, 13, 11, 7, 5, 3, 2] 80 = (15 : Int) := by
  decide

theorem node_7_80 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = (14 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = count [19, 17, 13, 11, 7, 5, 3, 2] 80 - count [19, 17, 13, 11, 7, 5, 3, 2] (80 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 80 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_8_80 node_8_3
    _ = (14 : Int) := by decide

theorem node_6_2321 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = (361 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2321 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 (by decide)
    _ = (375 : Int) - (14 : Int) :=
      sub_congr node_7_2321 node_7_80
    _ = (361 : Int) := by decide

theorem node_5_2321 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = (349 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2321 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 (by decide)
    _ = (361 : Int) - (12 : Int) :=
      sub_congr node_6_2321 node_6_74
    _ = (349 : Int) := by decide

theorem node_4_2321 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = (341 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2321 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 (by decide)
    _ = (349 : Int) - (8 : Int) :=
      sub_congr node_5_2321 node_5_62
    _ = (341 : Int) := by decide

theorem node_3_2321 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = (336 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2321 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 (by decide)
    _ = (341 : Int) - (5 : Int) :=
      sub_congr node_4_2321 node_4_56
    _ = (336 : Int) := by decide

theorem node_2_2321 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = (332 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2321 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 (by decide)
    _ = (336 : Int) - (4 : Int) :=
      sub_congr node_3_2321 node_3_53
    _ = (332 : Int) := by decide

theorem node_1_109110 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = (15166 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (109110 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 (by decide)
    _ = (15498 : Int) - (332 : Int) :=
      sub_congr node_2_109110 node_2_2321
    _ = (15166 : Int) := by decide

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

theorem node_3_2058 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = (300 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2058 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 (by decide)
    _ = (304 : Int) - (4 : Int) :=
      sub_congr node_4_2058 node_4_50
    _ = (300 : Int) := by decide

theorem node_2_2058 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = (297 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2058 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 (by decide)
    _ = (300 : Int) - (3 : Int) :=
      sub_congr node_3_2058 node_3_47
    _ = (297 : Int) := by decide

theorem node_1_2058 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = (296 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2058 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 (by decide)
    _ = (297 : Int) - (1 : Int) :=
      sub_congr node_2_2058 node_2_43
    _ = (296 : Int) := by decide

theorem node_0_109110 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = (14870 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (109110 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 (by decide)
    _ = (15166 : Int) - (296 : Int) :=
      sub_congr node_1_109110 node_1_2058
    _ = (14870 : Int) := by decide

theorem row_94 : count primes 108028 ≤ (14732 : Int) - 15 := by
  rw [show count primes 108028 = (14717 : Int) from node_0_108028]
  decide

theorem row_95 : count primes 109110 ≤ (14885 : Int) - 15 := by
  rw [show count primes 109110 = (14870 : Int) from node_0_109110]
  decide

def pairs : List (Nat × Nat) := [(108028, 14732), (109110, 14885)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl
  · exact row_94
  · exact row_95
end B699CorePrunedSieve.CoreRest34
#check @B699CorePrunedSieve.CoreRest34.pairs_valid
#print axioms B699CorePrunedSieve.CoreRest34.pairs_valid
