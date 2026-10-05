import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreRest35
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_110206 : count [19, 17, 13, 11, 7, 5, 3, 2] 110206 = (18848 : Int) := by
  decide

theorem node_8_4791 : count [19, 17, 13, 11, 7, 5, 3, 2] 4791 = (817 : Int) := by
  decide

theorem node_7_110206 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 = (18031 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 = count [19, 17, 13, 11, 7, 5, 3, 2] 110206 - count [19, 17, 13, 11, 7, 5, 3, 2] (110206 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 110206 (by decide)
    _ = (18848 : Int) - (817 : Int) :=
      sub_congr node_8_110206 node_8_4791
    _ = (18031 : Int) := by decide

theorem node_8_3800 : count [19, 17, 13, 11, 7, 5, 3, 2] 3800 = (647 : Int) := by
  decide

theorem node_8_165 : count [19, 17, 13, 11, 7, 5, 3, 2] 165 = (31 : Int) := by
  decide

theorem node_7_3800 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3800 = (616 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3800 = count [19, 17, 13, 11, 7, 5, 3, 2] 3800 - count [19, 17, 13, 11, 7, 5, 3, 2] (3800 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3800 (by decide)
    _ = (647 : Int) - (31 : Int) :=
      sub_congr node_8_3800 node_8_165
    _ = (616 : Int) := by decide

theorem node_6_110206 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 = (17415 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (110206 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 (by decide)
    _ = (18031 : Int) - (616 : Int) :=
      sub_congr node_7_110206 node_7_3800
    _ = (17415 : Int) := by decide

theorem node_8_3555 : count [19, 17, 13, 11, 7, 5, 3, 2] 3555 = (604 : Int) := by
  decide

theorem node_8_154 : count [19, 17, 13, 11, 7, 5, 3, 2] 154 = (29 : Int) := by
  decide

theorem node_7_3555 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3555 = (575 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3555 = count [19, 17, 13, 11, 7, 5, 3, 2] 3555 - count [19, 17, 13, 11, 7, 5, 3, 2] (3555 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3555 (by decide)
    _ = (604 : Int) - (29 : Int) :=
      sub_congr node_8_3555 node_8_154
    _ = (575 : Int) := by decide

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

theorem node_6_3555 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3555 = (553 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3555 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3555 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3555 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3555 (by decide)
    _ = (575 : Int) - (22 : Int) :=
      sub_congr node_7_3555 node_7_122
    _ = (553 : Int) := by decide

theorem node_5_110206 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 = (16862 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (110206 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 (by decide)
    _ = (17415 : Int) - (553 : Int) :=
      sub_congr node_6_110206 node_6_3555
    _ = (16862 : Int) := by decide

theorem node_8_2978 : count [19, 17, 13, 11, 7, 5, 3, 2] 2978 = (506 : Int) := by
  decide

theorem node_8_129 : count [19, 17, 13, 11, 7, 5, 3, 2] 129 = (24 : Int) := by
  decide

theorem node_7_2978 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2978 = (482 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2978 = count [19, 17, 13, 11, 7, 5, 3, 2] 2978 - count [19, 17, 13, 11, 7, 5, 3, 2] (2978 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2978 (by decide)
    _ = (506 : Int) - (24 : Int) :=
      sub_congr node_8_2978 node_8_129
    _ = (482 : Int) := by decide

theorem node_8_102 : count [19, 17, 13, 11, 7, 5, 3, 2] 102 = (19 : Int) := by
  decide

theorem node_8_4 : count [19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  decide

theorem node_7_102 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 102 = (18 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 102 = count [19, 17, 13, 11, 7, 5, 3, 2] 102 - count [19, 17, 13, 11, 7, 5, 3, 2] (102 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 102 (by decide)
    _ = (19 : Int) - (1 : Int) :=
      sub_congr node_8_102 node_8_4
    _ = (18 : Int) := by decide

theorem node_6_2978 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2978 = (464 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2978 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2978 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2978 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2978 (by decide)
    _ = (482 : Int) - (18 : Int) :=
      sub_congr node_7_2978 node_7_102
    _ = (464 : Int) := by decide

theorem node_8_96 : count [19, 17, 13, 11, 7, 5, 3, 2] 96 = (17 : Int) := by
  decide

theorem node_7_96 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 96 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 96 = count [19, 17, 13, 11, 7, 5, 3, 2] 96 - count [19, 17, 13, 11, 7, 5, 3, 2] (96 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 96 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_96 node_8_4
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

theorem node_6_96 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96 = (15 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 96 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (96 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 96 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_7_96 node_7_3
    _ = (15 : Int) := by decide

theorem node_5_2978 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2978 = (449 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2978 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2978 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2978 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2978 (by decide)
    _ = (464 : Int) - (15 : Int) :=
      sub_congr node_6_2978 node_6_96
    _ = (449 : Int) := by decide

theorem node_4_110206 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 = (16413 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (110206 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 (by decide)
    _ = (16862 : Int) - (449 : Int) :=
      sub_congr node_5_110206 node_5_2978
    _ = (16413 : Int) := by decide

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

theorem node_5_2687 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2687 = (402 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2687 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2687 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2687 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2687 (by decide)
    _ = (416 : Int) - (14 : Int) :=
      sub_congr node_6_2687 node_6_86
    _ = (402 : Int) := by decide

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

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_2 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_2 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_72 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = (10 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (72 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_6_72 node_6_2
    _ = (10 : Int) := by decide

theorem node_4_2687 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2687 = (392 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2687 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2687 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2687 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2687 (by decide)
    _ = (402 : Int) - (10 : Int) :=
      sub_congr node_5_2687 node_5_72
    _ = (392 : Int) := by decide

theorem node_3_110206 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 = (16021 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (110206 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 (by decide)
    _ = (16413 : Int) - (392 : Int) :=
      sub_congr node_4_110206 node_4_2687
    _ = (16021 : Int) := by decide

theorem node_8_2562 : count [19, 17, 13, 11, 7, 5, 3, 2] 2562 = (435 : Int) := by
  decide

theorem node_8_111 : count [19, 17, 13, 11, 7, 5, 3, 2] 111 = (22 : Int) := by
  decide

theorem node_7_2562 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2562 = (413 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2562 = count [19, 17, 13, 11, 7, 5, 3, 2] 2562 - count [19, 17, 13, 11, 7, 5, 3, 2] (2562 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2562 (by decide)
    _ = (435 : Int) - (22 : Int) :=
      sub_congr node_8_2562 node_8_111
    _ = (413 : Int) := by decide

theorem node_8_88 : count [19, 17, 13, 11, 7, 5, 3, 2] 88 = (16 : Int) := by
  decide

theorem node_7_88 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 88 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 88 = count [19, 17, 13, 11, 7, 5, 3, 2] 88 - count [19, 17, 13, 11, 7, 5, 3, 2] (88 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 88 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_88 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_2562 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2562 = (398 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2562 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2562 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2562 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2562 (by decide)
    _ = (413 : Int) - (15 : Int) :=
      sub_congr node_7_2562 node_7_88
    _ = (398 : Int) := by decide

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

theorem node_5_2562 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2562 = (385 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2562 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2562 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2562 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2562 (by decide)
    _ = (398 : Int) - (13 : Int) :=
      sub_congr node_6_2562 node_6_82
    _ = (385 : Int) := by decide

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

theorem node_5_69 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = (9 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (69 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_6_69 node_6_2
    _ = (9 : Int) := by decide

theorem node_4_2562 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2562 = (376 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2562 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2562 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2562 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2562 (by decide)
    _ = (385 : Int) - (9 : Int) :=
      sub_congr node_5_2562 node_5_69
    _ = (376 : Int) := by decide

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

theorem node_4_62 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = (7 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (62 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_5_62 node_5_1
    _ = (7 : Int) := by decide

theorem node_3_2562 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2562 = (369 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2562 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2562 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2562 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2562 (by decide)
    _ = (376 : Int) - (7 : Int) :=
      sub_congr node_4_2562 node_4_62
    _ = (369 : Int) := by decide

theorem node_2_110206 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 = (15652 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (110206 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 (by decide)
    _ = (16021 : Int) - (369 : Int) :=
      sub_congr node_3_110206 node_3_2562
    _ = (15652 : Int) := by decide

theorem node_8_2344 : count [19, 17, 13, 11, 7, 5, 3, 2] 2344 = (397 : Int) := by
  decide

theorem node_8_101 : count [19, 17, 13, 11, 7, 5, 3, 2] 101 = (19 : Int) := by
  decide

theorem node_7_2344 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2344 = (378 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2344 = count [19, 17, 13, 11, 7, 5, 3, 2] 2344 - count [19, 17, 13, 11, 7, 5, 3, 2] (2344 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2344 (by decide)
    _ = (397 : Int) - (19 : Int) :=
      sub_congr node_8_2344 node_8_101
    _ = (378 : Int) := by decide

theorem node_8_80 : count [19, 17, 13, 11, 7, 5, 3, 2] 80 = (15 : Int) := by
  decide

theorem node_7_80 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = (14 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = count [19, 17, 13, 11, 7, 5, 3, 2] 80 - count [19, 17, 13, 11, 7, 5, 3, 2] (80 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 80 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_8_80 node_8_3
    _ = (14 : Int) := by decide

theorem node_6_2344 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2344 = (364 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2344 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2344 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2344 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2344 (by decide)
    _ = (378 : Int) - (14 : Int) :=
      sub_congr node_7_2344 node_7_80
    _ = (364 : Int) := by decide

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

theorem node_5_2344 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2344 = (352 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2344 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2344 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2344 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2344 (by decide)
    _ = (364 : Int) - (12 : Int) :=
      sub_congr node_6_2344 node_6_75
    _ = (352 : Int) := by decide

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

theorem node_4_2344 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2344 = (344 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2344 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2344 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2344 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2344 (by decide)
    _ = (352 : Int) - (8 : Int) :=
      sub_congr node_5_2344 node_5_63
    _ = (344 : Int) := by decide

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

theorem node_3_2344 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2344 = (339 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2344 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2344 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2344 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2344 (by decide)
    _ = (344 : Int) - (5 : Int) :=
      sub_congr node_4_2344 node_4_57
    _ = (339 : Int) := by decide

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

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_1 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_1 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_54 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 = (4 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (54 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_4_54 node_4_1
    _ = (4 : Int) := by decide

theorem node_2_2344 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2344 = (335 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2344 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2344 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2344 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2344 (by decide)
    _ = (339 : Int) - (4 : Int) :=
      sub_congr node_3_2344 node_3_54
    _ = (335 : Int) := by decide

theorem node_1_110206 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 = (15317 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (110206 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 (by decide)
    _ = (15652 : Int) - (335 : Int) :=
      sub_congr node_2_110206 node_2_2344
    _ = (15317 : Int) := by decide

theorem node_8_2079 : count [19, 17, 13, 11, 7, 5, 3, 2] 2079 = (351 : Int) := by
  decide

theorem node_8_90 : count [19, 17, 13, 11, 7, 5, 3, 2] 90 = (17 : Int) := by
  decide

theorem node_7_2079 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2079 = (334 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2079 = count [19, 17, 13, 11, 7, 5, 3, 2] 2079 - count [19, 17, 13, 11, 7, 5, 3, 2] (2079 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2079 (by decide)
    _ = (351 : Int) - (17 : Int) :=
      sub_congr node_8_2079 node_8_90
    _ = (334 : Int) := by decide

theorem node_8_71 : count [19, 17, 13, 11, 7, 5, 3, 2] 71 = (13 : Int) := by
  decide

theorem node_7_71 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = (12 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = count [19, 17, 13, 11, 7, 5, 3, 2] 71 - count [19, 17, 13, 11, 7, 5, 3, 2] (71 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 71 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_8_71 node_8_3
    _ = (12 : Int) := by decide

theorem node_6_2079 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2079 = (322 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2079 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2079 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2079 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2079 (by decide)
    _ = (334 : Int) - (12 : Int) :=
      sub_congr node_7_2079 node_7_71
    _ = (322 : Int) := by decide

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

theorem node_5_2079 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2079 = (312 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2079 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2079 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2079 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2079 (by decide)
    _ = (322 : Int) - (10 : Int) :=
      sub_congr node_6_2079 node_6_67
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

theorem node_4_2079 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2079 = (306 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2079 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2079 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2079 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2079 (by decide)
    _ = (312 : Int) - (6 : Int) :=
      sub_congr node_5_2079 node_5_56
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

theorem node_3_2079 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2079 = (302 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2079 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2079 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2079 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2079 (by decide)
    _ = (306 : Int) - (4 : Int) :=
      sub_congr node_4_2079 node_4_50
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

theorem node_3_48 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = (3 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (48 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_4_48 node_4_1
    _ = (3 : Int) := by decide

theorem node_2_2079 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2079 = (299 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2079 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2079 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2079 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2079 (by decide)
    _ = (302 : Int) - (3 : Int) :=
      sub_congr node_3_2079 node_3_48
    _ = (299 : Int) := by decide

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

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_1 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_1 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_44 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (44 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_3_44 node_3_1
    _ = (1 : Int) := by decide

theorem node_1_2079 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2079 = (298 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2079 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2079 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2079 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2079 (by decide)
    _ = (299 : Int) - (1 : Int) :=
      sub_congr node_2_2079 node_2_44
    _ = (298 : Int) := by decide

theorem node_0_110206 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 = (15019 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (110206 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110206 (by decide)
    _ = (15317 : Int) - (298 : Int) :=
      sub_congr node_1_110206 node_1_2079
    _ = (15019 : Int) := by decide

theorem node_8_111316 : count [19, 17, 13, 11, 7, 5, 3, 2] 111316 = (19037 : Int) := by
  decide

theorem node_8_4839 : count [19, 17, 13, 11, 7, 5, 3, 2] 4839 = (824 : Int) := by
  decide

theorem node_7_111316 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 = (18213 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 = count [19, 17, 13, 11, 7, 5, 3, 2] 111316 - count [19, 17, 13, 11, 7, 5, 3, 2] (111316 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 111316 (by decide)
    _ = (19037 : Int) - (824 : Int) :=
      sub_congr node_8_111316 node_8_4839
    _ = (18213 : Int) := by decide

theorem node_8_3838 : count [19, 17, 13, 11, 7, 5, 3, 2] 3838 = (653 : Int) := by
  decide

theorem node_8_166 : count [19, 17, 13, 11, 7, 5, 3, 2] 166 = (31 : Int) := by
  decide

theorem node_7_3838 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3838 = (622 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3838 = count [19, 17, 13, 11, 7, 5, 3, 2] 3838 - count [19, 17, 13, 11, 7, 5, 3, 2] (3838 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3838 (by decide)
    _ = (653 : Int) - (31 : Int) :=
      sub_congr node_8_3838 node_8_166
    _ = (622 : Int) := by decide

theorem node_6_111316 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 = (17591 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (111316 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 (by decide)
    _ = (18213 : Int) - (622 : Int) :=
      sub_congr node_7_111316 node_7_3838
    _ = (17591 : Int) := by decide

theorem node_8_3590 : count [19, 17, 13, 11, 7, 5, 3, 2] 3590 = (611 : Int) := by
  decide

theorem node_8_156 : count [19, 17, 13, 11, 7, 5, 3, 2] 156 = (29 : Int) := by
  decide

theorem node_7_3590 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3590 = (582 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3590 = count [19, 17, 13, 11, 7, 5, 3, 2] 3590 - count [19, 17, 13, 11, 7, 5, 3, 2] (3590 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3590 (by decide)
    _ = (611 : Int) - (29 : Int) :=
      sub_congr node_8_3590 node_8_156
    _ = (582 : Int) := by decide

theorem node_8_123 : count [19, 17, 13, 11, 7, 5, 3, 2] 123 = (23 : Int) := by
  decide

theorem node_7_123 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 123 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 123 = count [19, 17, 13, 11, 7, 5, 3, 2] 123 - count [19, 17, 13, 11, 7, 5, 3, 2] (123 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 123 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_123 node_8_5
    _ = (22 : Int) := by decide

theorem node_6_3590 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3590 = (560 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3590 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3590 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3590 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3590 (by decide)
    _ = (582 : Int) - (22 : Int) :=
      sub_congr node_7_3590 node_7_123
    _ = (560 : Int) := by decide

theorem node_5_111316 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 = (17031 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (111316 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 (by decide)
    _ = (17591 : Int) - (560 : Int) :=
      sub_congr node_6_111316 node_6_3590
    _ = (17031 : Int) := by decide

theorem node_8_3008 : count [19, 17, 13, 11, 7, 5, 3, 2] 3008 = (511 : Int) := by
  decide

theorem node_8_130 : count [19, 17, 13, 11, 7, 5, 3, 2] 130 = (24 : Int) := by
  decide

theorem node_7_3008 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3008 = (487 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3008 = count [19, 17, 13, 11, 7, 5, 3, 2] 3008 - count [19, 17, 13, 11, 7, 5, 3, 2] (3008 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3008 (by decide)
    _ = (511 : Int) - (24 : Int) :=
      sub_congr node_8_3008 node_8_130
    _ = (487 : Int) := by decide

theorem node_8_103 : count [19, 17, 13, 11, 7, 5, 3, 2] 103 = (20 : Int) := by
  decide

theorem node_7_103 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 103 = (19 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 103 = count [19, 17, 13, 11, 7, 5, 3, 2] 103 - count [19, 17, 13, 11, 7, 5, 3, 2] (103 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 103 (by decide)
    _ = (20 : Int) - (1 : Int) :=
      sub_congr node_8_103 node_8_4
    _ = (19 : Int) := by decide

theorem node_6_3008 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3008 = (468 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3008 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3008 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3008 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3008 (by decide)
    _ = (487 : Int) - (19 : Int) :=
      sub_congr node_7_3008 node_7_103
    _ = (468 : Int) := by decide

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

theorem node_5_3008 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3008 = (452 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3008 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3008 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3008 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3008 (by decide)
    _ = (468 : Int) - (16 : Int) :=
      sub_congr node_6_3008 node_6_97
    _ = (452 : Int) := by decide

theorem node_4_111316 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 = (16579 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (111316 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 (by decide)
    _ = (17031 : Int) - (452 : Int) :=
      sub_congr node_5_111316 node_5_3008
    _ = (16579 : Int) := by decide

theorem node_8_2715 : count [19, 17, 13, 11, 7, 5, 3, 2] 2715 = (462 : Int) := by
  decide

theorem node_8_118 : count [19, 17, 13, 11, 7, 5, 3, 2] 118 = (23 : Int) := by
  decide

theorem node_7_2715 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2715 = (439 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2715 = count [19, 17, 13, 11, 7, 5, 3, 2] 2715 - count [19, 17, 13, 11, 7, 5, 3, 2] (2715 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2715 (by decide)
    _ = (462 : Int) - (23 : Int) :=
      sub_congr node_8_2715 node_8_118
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

theorem node_6_2715 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2715 = (423 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2715 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2715 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2715 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2715 (by decide)
    _ = (439 : Int) - (16 : Int) :=
      sub_congr node_7_2715 node_7_93
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

theorem node_6_87 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = (14 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 87 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (87 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 87 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_7_87 node_7_3
    _ = (14 : Int) := by decide

theorem node_5_2715 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2715 = (409 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2715 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2715 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2715 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2715 (by decide)
    _ = (423 : Int) - (14 : Int) :=
      sub_congr node_6_2715 node_6_87
    _ = (409 : Int) := by decide

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

theorem node_4_2715 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2715 = (398 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2715 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2715 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2715 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2715 (by decide)
    _ = (409 : Int) - (11 : Int) :=
      sub_congr node_5_2715 node_5_73
    _ = (398 : Int) := by decide

theorem node_3_111316 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 = (16181 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (111316 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 (by decide)
    _ = (16579 : Int) - (398 : Int) :=
      sub_congr node_4_111316 node_4_2715
    _ = (16181 : Int) := by decide

theorem node_8_2588 : count [19, 17, 13, 11, 7, 5, 3, 2] 2588 = (438 : Int) := by
  decide

theorem node_8_112 : count [19, 17, 13, 11, 7, 5, 3, 2] 112 = (22 : Int) := by
  decide

theorem node_7_2588 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2588 = (416 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2588 = count [19, 17, 13, 11, 7, 5, 3, 2] 2588 - count [19, 17, 13, 11, 7, 5, 3, 2] (2588 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2588 (by decide)
    _ = (438 : Int) - (22 : Int) :=
      sub_congr node_8_2588 node_8_112
    _ = (416 : Int) := by decide

theorem node_8_89 : count [19, 17, 13, 11, 7, 5, 3, 2] 89 = (17 : Int) := by
  decide

theorem node_7_89 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = count [19, 17, 13, 11, 7, 5, 3, 2] 89 - count [19, 17, 13, 11, 7, 5, 3, 2] (89 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 89 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_89 node_8_3
    _ = (16 : Int) := by decide

theorem node_6_2588 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2588 = (400 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2588 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2588 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2588 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2588 (by decide)
    _ = (416 : Int) - (16 : Int) :=
      sub_congr node_7_2588 node_7_89
    _ = (400 : Int) := by decide

theorem node_8_83 : count [19, 17, 13, 11, 7, 5, 3, 2] 83 = (16 : Int) := by
  decide

theorem node_7_83 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 83 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 83 = count [19, 17, 13, 11, 7, 5, 3, 2] 83 - count [19, 17, 13, 11, 7, 5, 3, 2] (83 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 83 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_83 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_83 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83 = (14 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 83 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (83 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 83 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_7_83 node_7_2
    _ = (14 : Int) := by decide

theorem node_5_2588 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2588 = (386 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2588 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2588 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2588 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2588 (by decide)
    _ = (400 : Int) - (14 : Int) :=
      sub_congr node_6_2588 node_6_83
    _ = (386 : Int) := by decide

theorem node_4_2588 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2588 = (377 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2588 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2588 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2588 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2588 (by decide)
    _ = (386 : Int) - (9 : Int) :=
      sub_congr node_5_2588 node_5_69
    _ = (377 : Int) := by decide

theorem node_4_63 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 = (7 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (63 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_5_63 node_5_1
    _ = (7 : Int) := by decide

theorem node_3_2588 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2588 = (370 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2588 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2588 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2588 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2588 (by decide)
    _ = (377 : Int) - (7 : Int) :=
      sub_congr node_4_2588 node_4_63
    _ = (370 : Int) := by decide

theorem node_2_111316 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 = (15811 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (111316 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 (by decide)
    _ = (16181 : Int) - (370 : Int) :=
      sub_congr node_3_111316 node_3_2588
    _ = (15811 : Int) := by decide

theorem node_8_2368 : count [19, 17, 13, 11, 7, 5, 3, 2] 2368 = (400 : Int) := by
  decide

theorem node_7_2368 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 = (381 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 = count [19, 17, 13, 11, 7, 5, 3, 2] 2368 - count [19, 17, 13, 11, 7, 5, 3, 2] (2368 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2368 (by decide)
    _ = (400 : Int) - (19 : Int) :=
      sub_congr node_8_2368 node_8_102
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

theorem node_6_2368 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 = (367 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2368 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 (by decide)
    _ = (381 : Int) - (14 : Int) :=
      sub_congr node_7_2368 node_7_81
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

theorem node_5_2368 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 = (355 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2368 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 (by decide)
    _ = (367 : Int) - (12 : Int) :=
      sub_congr node_6_2368 node_6_76
    _ = (355 : Int) := by decide

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

theorem node_4_2368 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 = (347 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2368 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 (by decide)
    _ = (355 : Int) - (8 : Int) :=
      sub_congr node_5_2368 node_5_64
    _ = (347 : Int) := by decide

theorem node_3_2368 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 = (342 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2368 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 (by decide)
    _ = (347 : Int) - (5 : Int) :=
      sub_congr node_4_2368 node_4_57
    _ = (342 : Int) := by decide

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

theorem node_4_55 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = (5 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (55 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_5_55 node_5_1
    _ = (5 : Int) := by decide

theorem node_3_55 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = (4 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (55 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_4_55 node_4_1
    _ = (4 : Int) := by decide

theorem node_2_2368 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 = (338 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2368 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2368 (by decide)
    _ = (342 : Int) - (4 : Int) :=
      sub_congr node_3_2368 node_3_55
    _ = (338 : Int) := by decide

theorem node_1_111316 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 = (15473 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (111316 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 (by decide)
    _ = (15811 : Int) - (338 : Int) :=
      sub_congr node_2_111316 node_2_2368
    _ = (15473 : Int) := by decide

theorem node_8_2100 : count [19, 17, 13, 11, 7, 5, 3, 2] 2100 = (356 : Int) := by
  decide

theorem node_8_91 : count [19, 17, 13, 11, 7, 5, 3, 2] 91 = (17 : Int) := by
  decide

theorem node_7_2100 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2100 = (339 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2100 = count [19, 17, 13, 11, 7, 5, 3, 2] 2100 - count [19, 17, 13, 11, 7, 5, 3, 2] (2100 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2100 (by decide)
    _ = (356 : Int) - (17 : Int) :=
      sub_congr node_8_2100 node_8_91
    _ = (339 : Int) := by decide

theorem node_6_2100 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2100 = (327 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2100 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2100 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2100 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2100 (by decide)
    _ = (339 : Int) - (12 : Int) :=
      sub_congr node_7_2100 node_7_72
    _ = (327 : Int) := by decide

theorem node_5_2100 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2100 = (317 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2100 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2100 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2100 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2100 (by decide)
    _ = (327 : Int) - (10 : Int) :=
      sub_congr node_6_2100 node_6_67
    _ = (317 : Int) := by decide

theorem node_4_2100 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2100 = (311 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2100 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2100 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2100 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2100 (by decide)
    _ = (317 : Int) - (6 : Int) :=
      sub_congr node_5_2100 node_5_56
    _ = (311 : Int) := by decide

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

theorem node_3_2100 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2100 = (307 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2100 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2100 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2100 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2100 (by decide)
    _ = (311 : Int) - (4 : Int) :=
      sub_congr node_4_2100 node_4_51
    _ = (307 : Int) := by decide

theorem node_2_2100 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2100 = (304 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2100 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2100 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2100 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2100 (by decide)
    _ = (307 : Int) - (3 : Int) :=
      sub_congr node_3_2100 node_3_48
    _ = (304 : Int) := by decide

theorem node_1_2100 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2100 = (303 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2100 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2100 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2100 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2100 (by decide)
    _ = (304 : Int) - (1 : Int) :=
      sub_congr node_2_2100 node_2_44
    _ = (303 : Int) := by decide

theorem node_0_111316 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 = (15170 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (111316 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111316 (by decide)
    _ = (15473 : Int) - (303 : Int) :=
      sub_congr node_1_111316 node_1_2100
    _ = (15170 : Int) := by decide

theorem row_96 : count primes 110206 ≤ (15034 : Int) - 15 := by
  rw [show count primes 110206 = (15019 : Int) from node_0_110206]
  decide

theorem row_97 : count primes 111316 ≤ (15185 : Int) - 15 := by
  rw [show count primes 111316 = (15170 : Int) from node_0_111316]
  decide

def pairs : List (Nat × Nat) := [(110206, 15034), (111316, 15185)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl
  · exact row_96
  · exact row_97
end B699CorePrunedSieve.CoreRest35
#check @B699CorePrunedSieve.CoreRest35.pairs_valid
#print axioms B699CorePrunedSieve.CoreRest35.pairs_valid
