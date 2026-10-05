import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreRest37
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_114760 : count [19, 17, 13, 11, 7, 5, 3, 2] 114760 = (19626 : Int) := by
  decide

theorem node_8_4989 : count [19, 17, 13, 11, 7, 5, 3, 2] 4989 = (849 : Int) := by
  decide

theorem node_7_114760 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 = (18777 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 = count [19, 17, 13, 11, 7, 5, 3, 2] 114760 - count [19, 17, 13, 11, 7, 5, 3, 2] (114760 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 114760 (by decide)
    _ = (19626 : Int) - (849 : Int) :=
      sub_congr node_8_114760 node_8_4989
    _ = (18777 : Int) := by decide

theorem node_8_3957 : count [19, 17, 13, 11, 7, 5, 3, 2] 3957 = (674 : Int) := by
  decide

theorem node_8_172 : count [19, 17, 13, 11, 7, 5, 3, 2] 172 = (32 : Int) := by
  decide

theorem node_7_3957 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3957 = (642 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3957 = count [19, 17, 13, 11, 7, 5, 3, 2] 3957 - count [19, 17, 13, 11, 7, 5, 3, 2] (3957 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3957 (by decide)
    _ = (674 : Int) - (32 : Int) :=
      sub_congr node_8_3957 node_8_172
    _ = (642 : Int) := by decide

theorem node_6_114760 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 = (18135 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (114760 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 (by decide)
    _ = (18777 : Int) - (642 : Int) :=
      sub_congr node_7_114760 node_7_3957
    _ = (18135 : Int) := by decide

theorem node_8_3701 : count [19, 17, 13, 11, 7, 5, 3, 2] 3701 = (630 : Int) := by
  decide

theorem node_8_160 : count [19, 17, 13, 11, 7, 5, 3, 2] 160 = (30 : Int) := by
  decide

theorem node_7_3701 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3701 = (600 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3701 = count [19, 17, 13, 11, 7, 5, 3, 2] 3701 - count [19, 17, 13, 11, 7, 5, 3, 2] (3701 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3701 (by decide)
    _ = (630 : Int) - (30 : Int) :=
      sub_congr node_8_3701 node_8_160
    _ = (600 : Int) := by decide

theorem node_8_127 : count [19, 17, 13, 11, 7, 5, 3, 2] 127 = (24 : Int) := by
  decide

theorem node_8_5 : count [19, 17, 13, 11, 7, 5, 3, 2] 5 = (1 : Int) := by
  decide

theorem node_7_127 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 127 = (23 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 127 = count [19, 17, 13, 11, 7, 5, 3, 2] 127 - count [19, 17, 13, 11, 7, 5, 3, 2] (127 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 127 (by decide)
    _ = (24 : Int) - (1 : Int) :=
      sub_congr node_8_127 node_8_5
    _ = (23 : Int) := by decide

theorem node_6_3701 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3701 = (577 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3701 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3701 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3701 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3701 (by decide)
    _ = (600 : Int) - (23 : Int) :=
      sub_congr node_7_3701 node_7_127
    _ = (577 : Int) := by decide

theorem node_5_114760 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 = (17558 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (114760 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 (by decide)
    _ = (18135 : Int) - (577 : Int) :=
      sub_congr node_6_114760 node_6_3701
    _ = (17558 : Int) := by decide

theorem node_8_3101 : count [19, 17, 13, 11, 7, 5, 3, 2] 3101 = (525 : Int) := by
  decide

theorem node_8_134 : count [19, 17, 13, 11, 7, 5, 3, 2] 134 = (25 : Int) := by
  decide

theorem node_7_3101 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3101 = (500 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3101 = count [19, 17, 13, 11, 7, 5, 3, 2] 3101 - count [19, 17, 13, 11, 7, 5, 3, 2] (3101 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3101 (by decide)
    _ = (525 : Int) - (25 : Int) :=
      sub_congr node_8_3101 node_8_134
    _ = (500 : Int) := by decide

theorem node_8_106 : count [19, 17, 13, 11, 7, 5, 3, 2] 106 = (20 : Int) := by
  decide

theorem node_8_4 : count [19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  decide

theorem node_7_106 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 106 = (19 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 106 = count [19, 17, 13, 11, 7, 5, 3, 2] 106 - count [19, 17, 13, 11, 7, 5, 3, 2] (106 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 106 (by decide)
    _ = (20 : Int) - (1 : Int) :=
      sub_congr node_8_106 node_8_4
    _ = (19 : Int) := by decide

theorem node_6_3101 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3101 = (481 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3101 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3101 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3101 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3101 (by decide)
    _ = (500 : Int) - (19 : Int) :=
      sub_congr node_7_3101 node_7_106
    _ = (481 : Int) := by decide

theorem node_8_100 : count [19, 17, 13, 11, 7, 5, 3, 2] 100 = (18 : Int) := by
  decide

theorem node_7_100 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 100 = (17 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 100 = count [19, 17, 13, 11, 7, 5, 3, 2] 100 - count [19, 17, 13, 11, 7, 5, 3, 2] (100 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 100 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_8_100 node_8_4
    _ = (17 : Int) := by decide

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

theorem node_6_100 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100 = (16 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 100 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (100 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 100 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_7_100 node_7_3
    _ = (16 : Int) := by decide

theorem node_5_3101 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3101 = (465 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3101 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3101 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3101 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3101 (by decide)
    _ = (481 : Int) - (16 : Int) :=
      sub_congr node_6_3101 node_6_100
    _ = (465 : Int) := by decide

theorem node_4_114760 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 = (17093 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (114760 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 (by decide)
    _ = (17558 : Int) - (465 : Int) :=
      sub_congr node_5_114760 node_5_3101
    _ = (17093 : Int) := by decide

theorem node_8_2799 : count [19, 17, 13, 11, 7, 5, 3, 2] 2799 = (476 : Int) := by
  decide

theorem node_8_121 : count [19, 17, 13, 11, 7, 5, 3, 2] 121 = (23 : Int) := by
  decide

theorem node_7_2799 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2799 = (453 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2799 = count [19, 17, 13, 11, 7, 5, 3, 2] 2799 - count [19, 17, 13, 11, 7, 5, 3, 2] (2799 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2799 (by decide)
    _ = (476 : Int) - (23 : Int) :=
      sub_congr node_8_2799 node_8_121
    _ = (453 : Int) := by decide

theorem node_8_96 : count [19, 17, 13, 11, 7, 5, 3, 2] 96 = (17 : Int) := by
  decide

theorem node_7_96 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 96 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 96 = count [19, 17, 13, 11, 7, 5, 3, 2] 96 - count [19, 17, 13, 11, 7, 5, 3, 2] (96 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 96 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_96 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_2799 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2799 = (437 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2799 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2799 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2799 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2799 (by decide)
    _ = (453 : Int) - (16 : Int) :=
      sub_congr node_7_2799 node_7_96
    _ = (437 : Int) := by decide

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

theorem node_5_2799 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2799 = (422 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2799 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2799 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2799 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2799 (by decide)
    _ = (437 : Int) - (15 : Int) :=
      sub_congr node_6_2799 node_6_90
    _ = (422 : Int) := by decide

theorem node_8_75 : count [19, 17, 13, 11, 7, 5, 3, 2] 75 = (14 : Int) := by
  decide

theorem node_7_75 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = count [19, 17, 13, 11, 7, 5, 3, 2] 75 - count [19, 17, 13, 11, 7, 5, 3, 2] (75 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 75 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_75 node_8_3
    _ = (13 : Int) := by decide

theorem node_8_2 : count [19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  decide

theorem node_7_2 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [19, 17, 13, 11, 7, 5, 3, 2] 2 - count [19, 17, 13, 11, 7, 5, 3, 2] (2 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_2 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_75 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = (12 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 75 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (75 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 75 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_7_75 node_7_2
    _ = (12 : Int) := by decide

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_2 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_2 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_75 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = (11 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (75 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_6_75 node_6_2
    _ = (11 : Int) := by decide

theorem node_4_2799 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2799 = (411 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2799 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2799 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2799 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2799 (by decide)
    _ = (422 : Int) - (11 : Int) :=
      sub_congr node_5_2799 node_5_75
    _ = (411 : Int) := by decide

theorem node_3_114760 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 = (16682 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (114760 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 (by decide)
    _ = (17093 : Int) - (411 : Int) :=
      sub_congr node_4_114760 node_4_2799
    _ = (16682 : Int) := by decide

theorem node_8_2668 : count [19, 17, 13, 11, 7, 5, 3, 2] 2668 = (451 : Int) := by
  decide

theorem node_8_116 : count [19, 17, 13, 11, 7, 5, 3, 2] 116 = (23 : Int) := by
  decide

theorem node_7_2668 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = (428 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = count [19, 17, 13, 11, 7, 5, 3, 2] 2668 - count [19, 17, 13, 11, 7, 5, 3, 2] (2668 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2668 (by decide)
    _ = (451 : Int) - (23 : Int) :=
      sub_congr node_8_2668 node_8_116
    _ = (428 : Int) := by decide

theorem node_8_92 : count [19, 17, 13, 11, 7, 5, 3, 2] 92 = (17 : Int) := by
  decide

theorem node_7_92 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 92 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 92 = count [19, 17, 13, 11, 7, 5, 3, 2] 92 - count [19, 17, 13, 11, 7, 5, 3, 2] (92 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 92 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_92 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_2668 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = (412 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2668 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 (by decide)
    _ = (428 : Int) - (16 : Int) :=
      sub_congr node_7_2668 node_7_92
    _ = (412 : Int) := by decide

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

theorem node_5_2668 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = (398 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2668 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 (by decide)
    _ = (412 : Int) - (14 : Int) :=
      sub_congr node_6_2668 node_6_86
    _ = (398 : Int) := by decide

theorem node_8_72 : count [19, 17, 13, 11, 7, 5, 3, 2] 72 = (13 : Int) := by
  decide

theorem node_7_72 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = (12 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = count [19, 17, 13, 11, 7, 5, 3, 2] 72 - count [19, 17, 13, 11, 7, 5, 3, 2] (72 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 72 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_8_72 node_8_3
    _ = (12 : Int) := by decide

theorem node_6_72 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = (11 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 72 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (72 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 72 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_7_72 node_7_2
    _ = (11 : Int) := by decide

theorem node_5_72 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = (10 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (72 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_6_72 node_6_2
    _ = (10 : Int) := by decide

theorem node_4_2668 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = (388 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2668 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 (by decide)
    _ = (398 : Int) - (10 : Int) :=
      sub_congr node_5_2668 node_5_72
    _ = (388 : Int) := by decide

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

theorem node_4_65 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = (7 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (65 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_5_65 node_5_1
    _ = (7 : Int) := by decide

theorem node_3_2668 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = (381 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2668 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 (by decide)
    _ = (388 : Int) - (7 : Int) :=
      sub_congr node_4_2668 node_4_65
    _ = (381 : Int) := by decide

theorem node_2_114760 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 = (16301 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (114760 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 (by decide)
    _ = (16682 : Int) - (381 : Int) :=
      sub_congr node_3_114760 node_3_2668
    _ = (16301 : Int) := by decide

theorem node_8_2441 : count [19, 17, 13, 11, 7, 5, 3, 2] 2441 = (415 : Int) := by
  decide

theorem node_7_2441 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2441 = (395 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2441 = count [19, 17, 13, 11, 7, 5, 3, 2] 2441 - count [19, 17, 13, 11, 7, 5, 3, 2] (2441 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2441 (by decide)
    _ = (415 : Int) - (20 : Int) :=
      sub_congr node_8_2441 node_8_106
    _ = (395 : Int) := by decide

theorem node_8_84 : count [19, 17, 13, 11, 7, 5, 3, 2] 84 = (16 : Int) := by
  decide

theorem node_7_84 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 84 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 84 = count [19, 17, 13, 11, 7, 5, 3, 2] 84 - count [19, 17, 13, 11, 7, 5, 3, 2] (84 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 84 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_84 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_2441 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2441 = (380 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2441 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2441 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2441 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2441 (by decide)
    _ = (395 : Int) - (15 : Int) :=
      sub_congr node_7_2441 node_7_84
    _ = (380 : Int) := by decide

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

theorem node_5_2441 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2441 = (368 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2441 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2441 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2441 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2441 (by decide)
    _ = (380 : Int) - (12 : Int) :=
      sub_congr node_6_2441 node_6_78
    _ = (368 : Int) := by decide

theorem node_4_2441 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2441 = (360 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2441 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2441 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2441 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2441 (by decide)
    _ = (368 : Int) - (8 : Int) :=
      sub_congr node_5_2441 node_5_65
    _ = (360 : Int) := by decide

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

theorem node_3_2441 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2441 = (354 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2441 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2441 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2441 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2441 (by decide)
    _ = (360 : Int) - (6 : Int) :=
      sub_congr node_4_2441 node_4_59
    _ = (354 : Int) := by decide

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

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_1 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_1 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_56 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = (4 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (56 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_4_56 node_4_1
    _ = (4 : Int) := by decide

theorem node_2_2441 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2441 = (350 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2441 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2441 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2441 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2441 (by decide)
    _ = (354 : Int) - (4 : Int) :=
      sub_congr node_3_2441 node_3_56
    _ = (350 : Int) := by decide

theorem node_1_114760 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 = (15951 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (114760 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 (by decide)
    _ = (16301 : Int) - (350 : Int) :=
      sub_congr node_2_114760 node_2_2441
    _ = (15951 : Int) := by decide

theorem node_8_2165 : count [19, 17, 13, 11, 7, 5, 3, 2] 2165 = (366 : Int) := by
  decide

theorem node_8_94 : count [19, 17, 13, 11, 7, 5, 3, 2] 94 = (17 : Int) := by
  decide

theorem node_7_2165 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2165 = (349 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2165 = count [19, 17, 13, 11, 7, 5, 3, 2] 2165 - count [19, 17, 13, 11, 7, 5, 3, 2] (2165 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2165 (by decide)
    _ = (366 : Int) - (17 : Int) :=
      sub_congr node_8_2165 node_8_94
    _ = (349 : Int) := by decide

theorem node_8_74 : count [19, 17, 13, 11, 7, 5, 3, 2] 74 = (14 : Int) := by
  decide

theorem node_7_74 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = count [19, 17, 13, 11, 7, 5, 3, 2] 74 - count [19, 17, 13, 11, 7, 5, 3, 2] (74 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 74 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_74 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_2165 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2165 = (336 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2165 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2165 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2165 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2165 (by decide)
    _ = (349 : Int) - (13 : Int) :=
      sub_congr node_7_2165 node_7_74
    _ = (336 : Int) := by decide

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

theorem node_5_2165 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2165 = (326 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2165 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2165 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2165 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2165 (by decide)
    _ = (336 : Int) - (10 : Int) :=
      sub_congr node_6_2165 node_6_69
    _ = (326 : Int) := by decide

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

theorem node_4_2165 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2165 = (320 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2165 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2165 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2165 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2165 (by decide)
    _ = (326 : Int) - (6 : Int) :=
      sub_congr node_5_2165 node_5_58
    _ = (320 : Int) := by decide

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

theorem node_3_2165 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2165 = (316 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2165 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2165 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2165 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2165 (by decide)
    _ = (320 : Int) - (4 : Int) :=
      sub_congr node_4_2165 node_4_52
    _ = (316 : Int) := by decide

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

theorem node_3_50 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = (3 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (50 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_4_50 node_4_1
    _ = (3 : Int) := by decide

theorem node_2_2165 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2165 = (313 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2165 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2165 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2165 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2165 (by decide)
    _ = (316 : Int) - (3 : Int) :=
      sub_congr node_3_2165 node_3_50
    _ = (313 : Int) := by decide

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

theorem node_3_46 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = (2 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (46 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_4_46 node_4_1
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

theorem node_2_46 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (46 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_3_46 node_3_1
    _ = (1 : Int) := by decide

theorem node_1_2165 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2165 = (312 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2165 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2165 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2165 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2165 (by decide)
    _ = (313 : Int) - (1 : Int) :=
      sub_congr node_2_2165 node_2_46
    _ = (312 : Int) := by decide

theorem node_0_114760 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 = (15639 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (114760 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114760 (by decide)
    _ = (15951 : Int) - (312 : Int) :=
      sub_congr node_1_114760 node_1_2165
    _ = (15639 : Int) := by decide

theorem node_8_115902 : count [19, 17, 13, 11, 7, 5, 3, 2] 115902 = (19824 : Int) := by
  decide

theorem node_8_5039 : count [19, 17, 13, 11, 7, 5, 3, 2] 5039 = (859 : Int) := by
  decide

theorem node_7_115902 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 = (18965 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 = count [19, 17, 13, 11, 7, 5, 3, 2] 115902 - count [19, 17, 13, 11, 7, 5, 3, 2] (115902 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 115902 (by decide)
    _ = (19824 : Int) - (859 : Int) :=
      sub_congr node_8_115902 node_8_5039
    _ = (18965 : Int) := by decide

theorem node_8_3996 : count [19, 17, 13, 11, 7, 5, 3, 2] 3996 = (680 : Int) := by
  decide

theorem node_8_173 : count [19, 17, 13, 11, 7, 5, 3, 2] 173 = (33 : Int) := by
  decide

theorem node_7_3996 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3996 = (647 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3996 = count [19, 17, 13, 11, 7, 5, 3, 2] 3996 - count [19, 17, 13, 11, 7, 5, 3, 2] (3996 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3996 (by decide)
    _ = (680 : Int) - (33 : Int) :=
      sub_congr node_8_3996 node_8_173
    _ = (647 : Int) := by decide

theorem node_6_115902 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 = (18318 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (115902 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 (by decide)
    _ = (18965 : Int) - (647 : Int) :=
      sub_congr node_7_115902 node_7_3996
    _ = (18318 : Int) := by decide

theorem node_8_3738 : count [19, 17, 13, 11, 7, 5, 3, 2] 3738 = (637 : Int) := by
  decide

theorem node_8_162 : count [19, 17, 13, 11, 7, 5, 3, 2] 162 = (30 : Int) := by
  decide

theorem node_7_3738 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3738 = (607 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3738 = count [19, 17, 13, 11, 7, 5, 3, 2] 3738 - count [19, 17, 13, 11, 7, 5, 3, 2] (3738 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3738 (by decide)
    _ = (637 : Int) - (30 : Int) :=
      sub_congr node_8_3738 node_8_162
    _ = (607 : Int) := by decide

theorem node_8_128 : count [19, 17, 13, 11, 7, 5, 3, 2] 128 = (24 : Int) := by
  decide

theorem node_7_128 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 128 = (23 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 128 = count [19, 17, 13, 11, 7, 5, 3, 2] 128 - count [19, 17, 13, 11, 7, 5, 3, 2] (128 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 128 (by decide)
    _ = (24 : Int) - (1 : Int) :=
      sub_congr node_8_128 node_8_5
    _ = (23 : Int) := by decide

theorem node_6_3738 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3738 = (584 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3738 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3738 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3738 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3738 (by decide)
    _ = (607 : Int) - (23 : Int) :=
      sub_congr node_7_3738 node_7_128
    _ = (584 : Int) := by decide

theorem node_5_115902 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 = (17734 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (115902 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 (by decide)
    _ = (18318 : Int) - (584 : Int) :=
      sub_congr node_6_115902 node_6_3738
    _ = (17734 : Int) := by decide

theorem node_8_3132 : count [19, 17, 13, 11, 7, 5, 3, 2] 3132 = (531 : Int) := by
  decide

theorem node_8_136 : count [19, 17, 13, 11, 7, 5, 3, 2] 136 = (25 : Int) := by
  decide

theorem node_7_3132 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3132 = (506 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3132 = count [19, 17, 13, 11, 7, 5, 3, 2] 3132 - count [19, 17, 13, 11, 7, 5, 3, 2] (3132 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3132 (by decide)
    _ = (531 : Int) - (25 : Int) :=
      sub_congr node_8_3132 node_8_136
    _ = (506 : Int) := by decide

theorem node_8_108 : count [19, 17, 13, 11, 7, 5, 3, 2] 108 = (21 : Int) := by
  decide

theorem node_7_108 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 108 = (20 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 108 = count [19, 17, 13, 11, 7, 5, 3, 2] 108 - count [19, 17, 13, 11, 7, 5, 3, 2] (108 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 108 (by decide)
    _ = (21 : Int) - (1 : Int) :=
      sub_congr node_8_108 node_8_4
    _ = (20 : Int) := by decide

theorem node_6_3132 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3132 = (486 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3132 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3132 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3132 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3132 (by decide)
    _ = (506 : Int) - (20 : Int) :=
      sub_congr node_7_3132 node_7_108
    _ = (486 : Int) := by decide

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

theorem node_5_3132 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3132 = (469 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3132 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3132 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3132 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3132 (by decide)
    _ = (486 : Int) - (17 : Int) :=
      sub_congr node_6_3132 node_6_101
    _ = (469 : Int) := by decide

theorem node_4_115902 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 = (17265 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (115902 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 (by decide)
    _ = (17734 : Int) - (469 : Int) :=
      sub_congr node_5_115902 node_5_3132
    _ = (17265 : Int) := by decide

theorem node_8_2826 : count [19, 17, 13, 11, 7, 5, 3, 2] 2826 = (481 : Int) := by
  decide

theorem node_8_122 : count [19, 17, 13, 11, 7, 5, 3, 2] 122 = (23 : Int) := by
  decide

theorem node_7_2826 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2826 = (458 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2826 = count [19, 17, 13, 11, 7, 5, 3, 2] 2826 - count [19, 17, 13, 11, 7, 5, 3, 2] (2826 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2826 (by decide)
    _ = (481 : Int) - (23 : Int) :=
      sub_congr node_8_2826 node_8_122
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

theorem node_6_2826 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2826 = (441 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2826 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2826 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2826 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2826 (by decide)
    _ = (458 : Int) - (17 : Int) :=
      sub_congr node_7_2826 node_7_97
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

theorem node_5_2826 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2826 = (426 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2826 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2826 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2826 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2826 (by decide)
    _ = (441 : Int) - (15 : Int) :=
      sub_congr node_6_2826 node_6_91
    _ = (426 : Int) := by decide

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

theorem node_5_76 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76 = (11 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (76 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_6_76 node_6_2
    _ = (11 : Int) := by decide

theorem node_4_2826 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2826 = (415 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2826 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2826 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2826 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2826 (by decide)
    _ = (426 : Int) - (11 : Int) :=
      sub_congr node_5_2826 node_5_76
    _ = (415 : Int) := by decide

theorem node_3_115902 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 = (16850 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (115902 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 (by decide)
    _ = (17265 : Int) - (415 : Int) :=
      sub_congr node_4_115902 node_4_2826
    _ = (16850 : Int) := by decide

theorem node_8_2695 : count [19, 17, 13, 11, 7, 5, 3, 2] 2695 = (457 : Int) := by
  decide

theorem node_8_117 : count [19, 17, 13, 11, 7, 5, 3, 2] 117 = (23 : Int) := by
  decide

theorem node_7_2695 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2695 = (434 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2695 = count [19, 17, 13, 11, 7, 5, 3, 2] 2695 - count [19, 17, 13, 11, 7, 5, 3, 2] (2695 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2695 (by decide)
    _ = (457 : Int) - (23 : Int) :=
      sub_congr node_8_2695 node_8_117
    _ = (434 : Int) := by decide

theorem node_6_2695 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2695 = (418 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2695 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2695 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2695 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2695 (by decide)
    _ = (434 : Int) - (16 : Int) :=
      sub_congr node_7_2695 node_7_92
    _ = (418 : Int) := by decide

theorem node_5_2695 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2695 = (404 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2695 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2695 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2695 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2695 (by decide)
    _ = (418 : Int) - (14 : Int) :=
      sub_congr node_6_2695 node_6_86
    _ = (404 : Int) := by decide

theorem node_4_2695 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2695 = (394 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2695 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2695 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2695 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2695 (by decide)
    _ = (404 : Int) - (10 : Int) :=
      sub_congr node_5_2695 node_5_72
    _ = (394 : Int) := by decide

theorem node_3_2695 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2695 = (387 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2695 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2695 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2695 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2695 (by decide)
    _ = (394 : Int) - (7 : Int) :=
      sub_congr node_4_2695 node_4_65
    _ = (387 : Int) := by decide

theorem node_2_115902 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 = (16463 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (115902 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 (by decide)
    _ = (16850 : Int) - (387 : Int) :=
      sub_congr node_3_115902 node_3_2695
    _ = (16463 : Int) := by decide

theorem node_8_2466 : count [19, 17, 13, 11, 7, 5, 3, 2] 2466 = (419 : Int) := by
  decide

theorem node_8_107 : count [19, 17, 13, 11, 7, 5, 3, 2] 107 = (21 : Int) := by
  decide

theorem node_7_2466 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2466 = (398 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2466 = count [19, 17, 13, 11, 7, 5, 3, 2] 2466 - count [19, 17, 13, 11, 7, 5, 3, 2] (2466 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2466 (by decide)
    _ = (419 : Int) - (21 : Int) :=
      sub_congr node_8_2466 node_8_107
    _ = (398 : Int) := by decide

theorem node_8_85 : count [19, 17, 13, 11, 7, 5, 3, 2] 85 = (16 : Int) := by
  decide

theorem node_7_85 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 85 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 85 = count [19, 17, 13, 11, 7, 5, 3, 2] 85 - count [19, 17, 13, 11, 7, 5, 3, 2] (85 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 85 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_85 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_2466 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2466 = (383 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2466 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2466 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2466 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2466 (by decide)
    _ = (398 : Int) - (15 : Int) :=
      sub_congr node_7_2466 node_7_85
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

theorem node_5_2466 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2466 = (370 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2466 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2466 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2466 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2466 (by decide)
    _ = (383 : Int) - (13 : Int) :=
      sub_congr node_6_2466 node_6_79
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

theorem node_4_2466 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2466 = (362 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2466 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2466 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2466 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2466 (by decide)
    _ = (370 : Int) - (8 : Int) :=
      sub_congr node_5_2466 node_5_66
    _ = (362 : Int) := by decide

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

theorem node_3_2466 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2466 = (356 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2466 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2466 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2466 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2466 (by decide)
    _ = (362 : Int) - (6 : Int) :=
      sub_congr node_4_2466 node_4_60
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

theorem node_2_2466 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2466 = (352 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2466 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2466 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2466 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2466 (by decide)
    _ = (356 : Int) - (4 : Int) :=
      sub_congr node_3_2466 node_3_57
    _ = (352 : Int) := by decide

theorem node_1_115902 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 = (16111 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (115902 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 (by decide)
    _ = (16463 : Int) - (352 : Int) :=
      sub_congr node_2_115902 node_2_2466
    _ = (16111 : Int) := by decide

theorem node_8_2186 : count [19, 17, 13, 11, 7, 5, 3, 2] 2186 = (369 : Int) := by
  decide

theorem node_8_95 : count [19, 17, 13, 11, 7, 5, 3, 2] 95 = (17 : Int) := by
  decide

theorem node_7_2186 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2186 = (352 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2186 = count [19, 17, 13, 11, 7, 5, 3, 2] 2186 - count [19, 17, 13, 11, 7, 5, 3, 2] (2186 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2186 (by decide)
    _ = (369 : Int) - (17 : Int) :=
      sub_congr node_8_2186 node_8_95
    _ = (352 : Int) := by decide

theorem node_6_2186 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2186 = (339 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2186 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2186 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2186 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2186 (by decide)
    _ = (352 : Int) - (13 : Int) :=
      sub_congr node_7_2186 node_7_75
    _ = (339 : Int) := by decide

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

theorem node_5_2186 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2186 = (329 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2186 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2186 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2186 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2186 (by decide)
    _ = (339 : Int) - (10 : Int) :=
      sub_congr node_6_2186 node_6_70
    _ = (329 : Int) := by decide

theorem node_4_2186 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2186 = (322 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2186 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2186 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2186 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2186 (by decide)
    _ = (329 : Int) - (7 : Int) :=
      sub_congr node_5_2186 node_5_59
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

theorem node_3_2186 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2186 = (317 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2186 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2186 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2186 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2186 (by decide)
    _ = (322 : Int) - (5 : Int) :=
      sub_congr node_4_2186 node_4_53
    _ = (317 : Int) := by decide

theorem node_2_2186 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2186 = (314 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2186 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2186 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2186 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2186 (by decide)
    _ = (317 : Int) - (3 : Int) :=
      sub_congr node_3_2186 node_3_50
    _ = (314 : Int) := by decide

theorem node_1_2186 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2186 = (313 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2186 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2186 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2186 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2186 (by decide)
    _ = (314 : Int) - (1 : Int) :=
      sub_congr node_2_2186 node_2_46
    _ = (313 : Int) := by decide

theorem node_0_115902 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 = (15798 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (115902 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 115902 (by decide)
    _ = (16111 : Int) - (313 : Int) :=
      sub_congr node_1_115902 node_1_2186
    _ = (15798 : Int) := by decide

theorem row_100 : count primes 114760 ≤ (15654 : Int) - 15 := by
  rw [show count primes 114760 = (15639 : Int) from node_0_114760]
  decide

theorem row_101 : count primes 115902 ≤ (15813 : Int) - 15 := by
  rw [show count primes 115902 = (15798 : Int) from node_0_115902]
  decide

def pairs : List (Nat × Nat) := [(114760, 15654), (115902, 15813)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl
  · exact row_100
  · exact row_101
end B699CorePrunedSieve.CoreRest37
#check @B699CorePrunedSieve.CoreRest37.pairs_valid
#print axioms B699CorePrunedSieve.CoreRest37.pairs_valid
