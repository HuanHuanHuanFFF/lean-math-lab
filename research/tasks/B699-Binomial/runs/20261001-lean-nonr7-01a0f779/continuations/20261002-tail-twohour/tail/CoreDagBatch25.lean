import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreDagBatch25
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

theorem node_8_112456 : count [19, 17, 13, 11, 7, 5, 3, 2] 112456 = (19230 : Int) := by
  decide

theorem node_8_4889 : count [19, 17, 13, 11, 7, 5, 3, 2] 4889 = (834 : Int) := by
  decide

theorem node_7_112456 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 = (18396 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 = count [19, 17, 13, 11, 7, 5, 3, 2] 112456 - count [19, 17, 13, 11, 7, 5, 3, 2] (112456 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 112456 (by decide)
    _ = (19230 : Int) - (834 : Int) :=
      sub_congr node_8_112456 node_8_4889
    _ = (18396 : Int) := by decide

theorem node_8_3877 : count [19, 17, 13, 11, 7, 5, 3, 2] 3877 = (660 : Int) := by
  decide

theorem node_8_168 : count [19, 17, 13, 11, 7, 5, 3, 2] 168 = (32 : Int) := by
  decide

theorem node_7_3877 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3877 = (628 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3877 = count [19, 17, 13, 11, 7, 5, 3, 2] 3877 - count [19, 17, 13, 11, 7, 5, 3, 2] (3877 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3877 (by decide)
    _ = (660 : Int) - (32 : Int) :=
      sub_congr node_8_3877 node_8_168
    _ = (628 : Int) := by decide

theorem node_6_112456 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 = (17768 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (112456 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 (by decide)
    _ = (18396 : Int) - (628 : Int) :=
      sub_congr node_7_112456 node_7_3877
    _ = (17768 : Int) := by decide

theorem node_8_3627 : count [19, 17, 13, 11, 7, 5, 3, 2] 3627 = (618 : Int) := by
  decide

theorem node_8_157 : count [19, 17, 13, 11, 7, 5, 3, 2] 157 = (30 : Int) := by
  decide

theorem node_7_3627 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3627 = (588 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3627 = count [19, 17, 13, 11, 7, 5, 3, 2] 3627 - count [19, 17, 13, 11, 7, 5, 3, 2] (3627 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3627 (by decide)
    _ = (618 : Int) - (30 : Int) :=
      sub_congr node_8_3627 node_8_157
    _ = (588 : Int) := by decide

theorem node_8_125 : count [19, 17, 13, 11, 7, 5, 3, 2] 125 = (23 : Int) := by
  decide

theorem node_7_125 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 125 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 125 = count [19, 17, 13, 11, 7, 5, 3, 2] 125 - count [19, 17, 13, 11, 7, 5, 3, 2] (125 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 125 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_125 node_8_5
    _ = (22 : Int) := by decide

theorem node_6_3627 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3627 = (566 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3627 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3627 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3627 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3627 (by decide)
    _ = (588 : Int) - (22 : Int) :=
      sub_congr node_7_3627 node_7_125
    _ = (566 : Int) := by decide

theorem node_5_112456 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 = (17202 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (112456 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 (by decide)
    _ = (17768 : Int) - (566 : Int) :=
      sub_congr node_6_112456 node_6_3627
    _ = (17202 : Int) := by decide

theorem node_8_3039 : count [19, 17, 13, 11, 7, 5, 3, 2] 3039 = (516 : Int) := by
  decide

theorem node_8_132 : count [19, 17, 13, 11, 7, 5, 3, 2] 132 = (25 : Int) := by
  decide

theorem node_7_3039 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3039 = (491 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3039 = count [19, 17, 13, 11, 7, 5, 3, 2] 3039 - count [19, 17, 13, 11, 7, 5, 3, 2] (3039 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3039 (by decide)
    _ = (516 : Int) - (25 : Int) :=
      sub_congr node_8_3039 node_8_132
    _ = (491 : Int) := by decide

theorem node_8_104 : count [19, 17, 13, 11, 7, 5, 3, 2] 104 = (20 : Int) := by
  decide

theorem node_7_104 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 104 = (19 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 104 = count [19, 17, 13, 11, 7, 5, 3, 2] 104 - count [19, 17, 13, 11, 7, 5, 3, 2] (104 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 104 (by decide)
    _ = (20 : Int) - (1 : Int) :=
      sub_congr node_8_104 node_8_4
    _ = (19 : Int) := by decide

theorem node_6_3039 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3039 = (472 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3039 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3039 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3039 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3039 (by decide)
    _ = (491 : Int) - (19 : Int) :=
      sub_congr node_7_3039 node_7_104
    _ = (472 : Int) := by decide

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

theorem node_5_3039 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3039 = (456 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3039 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3039 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3039 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3039 (by decide)
    _ = (472 : Int) - (16 : Int) :=
      sub_congr node_6_3039 node_6_98
    _ = (456 : Int) := by decide

theorem node_4_112456 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 = (16746 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (112456 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 (by decide)
    _ = (17202 : Int) - (456 : Int) :=
      sub_congr node_5_112456 node_5_3039
    _ = (16746 : Int) := by decide

theorem node_8_2742 : count [19, 17, 13, 11, 7, 5, 3, 2] 2742 = (466 : Int) := by
  decide

theorem node_8_119 : count [19, 17, 13, 11, 7, 5, 3, 2] 119 = (23 : Int) := by
  decide

theorem node_7_2742 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2742 = (443 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2742 = count [19, 17, 13, 11, 7, 5, 3, 2] 2742 - count [19, 17, 13, 11, 7, 5, 3, 2] (2742 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2742 (by decide)
    _ = (466 : Int) - (23 : Int) :=
      sub_congr node_8_2742 node_8_119
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

theorem node_6_2742 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2742 = (427 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2742 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2742 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2742 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2742 (by decide)
    _ = (443 : Int) - (16 : Int) :=
      sub_congr node_7_2742 node_7_94
    _ = (427 : Int) := by decide

theorem node_6_88 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88 = (14 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 88 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (88 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 88 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_7_88 node_7_3
    _ = (14 : Int) := by decide

theorem node_5_2742 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2742 = (413 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2742 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2742 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2742 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2742 (by decide)
    _ = (427 : Int) - (14 : Int) :=
      sub_congr node_6_2742 node_6_88
    _ = (413 : Int) := by decide

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

theorem node_4_2742 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2742 = (402 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2742 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2742 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2742 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2742 (by decide)
    _ = (413 : Int) - (11 : Int) :=
      sub_congr node_5_2742 node_5_74
    _ = (402 : Int) := by decide

theorem node_3_112456 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 = (16344 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (112456 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 (by decide)
    _ = (16746 : Int) - (402 : Int) :=
      sub_congr node_4_112456 node_4_2742
    _ = (16344 : Int) := by decide

theorem node_8_2615 : count [19, 17, 13, 11, 7, 5, 3, 2] 2615 = (442 : Int) := by
  decide

theorem node_8_113 : count [19, 17, 13, 11, 7, 5, 3, 2] 113 = (23 : Int) := by
  decide

theorem node_7_2615 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2615 = (419 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2615 = count [19, 17, 13, 11, 7, 5, 3, 2] 2615 - count [19, 17, 13, 11, 7, 5, 3, 2] (2615 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2615 (by decide)
    _ = (442 : Int) - (23 : Int) :=
      sub_congr node_8_2615 node_8_113
    _ = (419 : Int) := by decide

theorem node_7_90 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 90 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 90 = count [19, 17, 13, 11, 7, 5, 3, 2] 90 - count [19, 17, 13, 11, 7, 5, 3, 2] (90 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 90 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_90 node_8_3
    _ = (16 : Int) := by decide

theorem node_6_2615 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2615 = (403 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2615 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2615 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2615 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2615 (by decide)
    _ = (419 : Int) - (16 : Int) :=
      sub_congr node_7_2615 node_7_90
    _ = (403 : Int) := by decide

theorem node_8_84 : count [19, 17, 13, 11, 7, 5, 3, 2] 84 = (16 : Int) := by
  decide

theorem node_7_84 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 84 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 84 = count [19, 17, 13, 11, 7, 5, 3, 2] 84 - count [19, 17, 13, 11, 7, 5, 3, 2] (84 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 84 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_84 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_84 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84 = (14 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 84 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (84 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 84 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_7_84 node_7_2
    _ = (14 : Int) := by decide

theorem node_5_2615 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2615 = (389 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2615 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2615 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2615 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2615 (by decide)
    _ = (403 : Int) - (14 : Int) :=
      sub_congr node_6_2615 node_6_84
    _ = (389 : Int) := by decide

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

theorem node_5_70 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70 = (9 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (70 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_6_70 node_6_2
    _ = (9 : Int) := by decide

theorem node_4_2615 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2615 = (380 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2615 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2615 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2615 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2615 (by decide)
    _ = (389 : Int) - (9 : Int) :=
      sub_congr node_5_2615 node_5_70
    _ = (380 : Int) := by decide

theorem node_3_2615 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2615 = (373 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2615 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2615 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2615 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2615 (by decide)
    _ = (380 : Int) - (7 : Int) :=
      sub_congr node_4_2615 node_4_63
    _ = (373 : Int) := by decide

theorem node_2_112456 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 = (15971 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (112456 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 (by decide)
    _ = (16344 : Int) - (373 : Int) :=
      sub_congr node_3_112456 node_3_2615
    _ = (15971 : Int) := by decide

theorem node_8_2392 : count [19, 17, 13, 11, 7, 5, 3, 2] 2392 = (406 : Int) := by
  decide

theorem node_7_2392 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2392 = (386 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2392 = count [19, 17, 13, 11, 7, 5, 3, 2] 2392 - count [19, 17, 13, 11, 7, 5, 3, 2] (2392 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2392 (by decide)
    _ = (406 : Int) - (20 : Int) :=
      sub_congr node_8_2392 node_8_104
    _ = (386 : Int) := by decide

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

theorem node_4_2392 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2392 = (352 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2392 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2392 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2392 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2392 (by decide)
    _ = (360 : Int) - (8 : Int) :=
      sub_congr node_5_2392 node_5_64
    _ = (352 : Int) := by decide

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

theorem node_4_58 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = (5 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (58 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_5_58 node_5_1
    _ = (5 : Int) := by decide

theorem node_3_2392 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2392 = (347 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2392 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2392 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2392 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2392 (by decide)
    _ = (352 : Int) - (5 : Int) :=
      sub_congr node_4_2392 node_4_58
    _ = (347 : Int) := by decide

theorem node_2_2392 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2392 = (343 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2392 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2392 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2392 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2392 (by decide)
    _ = (347 : Int) - (4 : Int) :=
      sub_congr node_3_2392 node_3_55
    _ = (343 : Int) := by decide

theorem node_1_112456 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 = (15628 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (112456 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 (by decide)
    _ = (15971 : Int) - (343 : Int) :=
      sub_congr node_2_112456 node_2_2392
    _ = (15628 : Int) := by decide

theorem node_8_2121 : count [19, 17, 13, 11, 7, 5, 3, 2] 2121 = (359 : Int) := by
  decide

theorem node_7_2121 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2121 = (342 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2121 = count [19, 17, 13, 11, 7, 5, 3, 2] 2121 - count [19, 17, 13, 11, 7, 5, 3, 2] (2121 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2121 (by decide)
    _ = (359 : Int) - (17 : Int) :=
      sub_congr node_8_2121 node_8_92
    _ = (342 : Int) := by decide

theorem node_6_2121 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2121 = (329 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2121 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2121 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2121 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2121 (by decide)
    _ = (342 : Int) - (13 : Int) :=
      sub_congr node_7_2121 node_7_73
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

theorem node_5_2121 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2121 = (319 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2121 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2121 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2121 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2121 (by decide)
    _ = (329 : Int) - (10 : Int) :=
      sub_congr node_6_2121 node_6_68
    _ = (319 : Int) := by decide

theorem node_4_2121 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2121 = (313 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2121 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2121 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2121 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2121 (by decide)
    _ = (319 : Int) - (6 : Int) :=
      sub_congr node_5_2121 node_5_57
    _ = (313 : Int) := by decide

theorem node_3_2121 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2121 = (309 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2121 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2121 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2121 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2121 (by decide)
    _ = (313 : Int) - (4 : Int) :=
      sub_congr node_4_2121 node_4_51
    _ = (309 : Int) := by decide

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

theorem node_3_49 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = (3 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (49 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_4_49 node_4_1
    _ = (3 : Int) := by decide

theorem node_2_2121 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2121 = (306 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2121 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2121 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2121 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2121 (by decide)
    _ = (309 : Int) - (3 : Int) :=
      sub_congr node_3_2121 node_3_49
    _ = (306 : Int) := by decide

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

theorem node_2_45 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (45 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_3_45 node_3_1
    _ = (1 : Int) := by decide

theorem node_1_2121 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2121 = (305 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2121 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2121 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2121 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2121 (by decide)
    _ = (306 : Int) - (1 : Int) :=
      sub_congr node_2_2121 node_2_45
    _ = (305 : Int) := by decide

theorem node_0_112456 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 = (15323 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (112456 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 112456 (by decide)
    _ = (15628 : Int) - (305 : Int) :=
      sub_congr node_1_112456 node_1_2121
    _ = (15323 : Int) := by decide

theorem node_8_113608 : count [19, 17, 13, 11, 7, 5, 3, 2] 113608 = (19428 : Int) := by
  decide

theorem node_8_4939 : count [19, 17, 13, 11, 7, 5, 3, 2] 4939 = (842 : Int) := by
  decide

theorem node_7_113608 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 = (18586 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 = count [19, 17, 13, 11, 7, 5, 3, 2] 113608 - count [19, 17, 13, 11, 7, 5, 3, 2] (113608 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 113608 (by decide)
    _ = (19428 : Int) - (842 : Int) :=
      sub_congr node_8_113608 node_8_4939
    _ = (18586 : Int) := by decide

theorem node_8_3917 : count [19, 17, 13, 11, 7, 5, 3, 2] 3917 = (666 : Int) := by
  decide

theorem node_8_170 : count [19, 17, 13, 11, 7, 5, 3, 2] 170 = (32 : Int) := by
  decide

theorem node_7_3917 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3917 = (634 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3917 = count [19, 17, 13, 11, 7, 5, 3, 2] 3917 - count [19, 17, 13, 11, 7, 5, 3, 2] (3917 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3917 (by decide)
    _ = (666 : Int) - (32 : Int) :=
      sub_congr node_8_3917 node_8_170
    _ = (634 : Int) := by decide

theorem node_6_113608 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 = (17952 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (113608 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 (by decide)
    _ = (18586 : Int) - (634 : Int) :=
      sub_congr node_7_113608 node_7_3917
    _ = (17952 : Int) := by decide

theorem node_8_3664 : count [19, 17, 13, 11, 7, 5, 3, 2] 3664 = (623 : Int) := by
  decide

theorem node_8_159 : count [19, 17, 13, 11, 7, 5, 3, 2] 159 = (30 : Int) := by
  decide

theorem node_7_3664 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3664 = (593 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3664 = count [19, 17, 13, 11, 7, 5, 3, 2] 3664 - count [19, 17, 13, 11, 7, 5, 3, 2] (3664 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3664 (by decide)
    _ = (623 : Int) - (30 : Int) :=
      sub_congr node_8_3664 node_8_159
    _ = (593 : Int) := by decide

theorem node_8_126 : count [19, 17, 13, 11, 7, 5, 3, 2] 126 = (23 : Int) := by
  decide

theorem node_7_126 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 126 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 126 = count [19, 17, 13, 11, 7, 5, 3, 2] 126 - count [19, 17, 13, 11, 7, 5, 3, 2] (126 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 126 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_126 node_8_5
    _ = (22 : Int) := by decide

theorem node_6_3664 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3664 = (571 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3664 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3664 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3664 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3664 (by decide)
    _ = (593 : Int) - (22 : Int) :=
      sub_congr node_7_3664 node_7_126
    _ = (571 : Int) := by decide

theorem node_5_113608 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 = (17381 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (113608 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 (by decide)
    _ = (17952 : Int) - (571 : Int) :=
      sub_congr node_6_113608 node_6_3664
    _ = (17381 : Int) := by decide

theorem node_8_3070 : count [19, 17, 13, 11, 7, 5, 3, 2] 3070 = (521 : Int) := by
  decide

theorem node_8_133 : count [19, 17, 13, 11, 7, 5, 3, 2] 133 = (25 : Int) := by
  decide

theorem node_7_3070 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3070 = (496 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3070 = count [19, 17, 13, 11, 7, 5, 3, 2] 3070 - count [19, 17, 13, 11, 7, 5, 3, 2] (3070 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3070 (by decide)
    _ = (521 : Int) - (25 : Int) :=
      sub_congr node_8_3070 node_8_133
    _ = (496 : Int) := by decide

theorem node_8_105 : count [19, 17, 13, 11, 7, 5, 3, 2] 105 = (20 : Int) := by
  decide

theorem node_7_105 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 105 = (19 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 105 = count [19, 17, 13, 11, 7, 5, 3, 2] 105 - count [19, 17, 13, 11, 7, 5, 3, 2] (105 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 105 (by decide)
    _ = (20 : Int) - (1 : Int) :=
      sub_congr node_8_105 node_8_4
    _ = (19 : Int) := by decide

theorem node_6_3070 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3070 = (477 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3070 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3070 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3070 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3070 (by decide)
    _ = (496 : Int) - (19 : Int) :=
      sub_congr node_7_3070 node_7_105
    _ = (477 : Int) := by decide

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

theorem node_5_3070 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3070 = (461 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3070 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3070 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3070 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3070 (by decide)
    _ = (477 : Int) - (16 : Int) :=
      sub_congr node_6_3070 node_6_99
    _ = (461 : Int) := by decide

theorem node_4_113608 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 = (16920 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (113608 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 (by decide)
    _ = (17381 : Int) - (461 : Int) :=
      sub_congr node_5_113608 node_5_3070
    _ = (16920 : Int) := by decide

theorem node_8_2770 : count [19, 17, 13, 11, 7, 5, 3, 2] 2770 = (471 : Int) := by
  decide

theorem node_8_120 : count [19, 17, 13, 11, 7, 5, 3, 2] 120 = (23 : Int) := by
  decide

theorem node_7_2770 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2770 = (448 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2770 = count [19, 17, 13, 11, 7, 5, 3, 2] 2770 - count [19, 17, 13, 11, 7, 5, 3, 2] (2770 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2770 (by decide)
    _ = (471 : Int) - (23 : Int) :=
      sub_congr node_8_2770 node_8_120
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

theorem node_6_2770 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2770 = (432 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2770 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2770 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2770 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2770 (by decide)
    _ = (448 : Int) - (16 : Int) :=
      sub_congr node_7_2770 node_7_95
    _ = (432 : Int) := by decide

theorem node_6_89 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = (15 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 89 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (89 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 89 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_7_89 node_7_3
    _ = (15 : Int) := by decide

theorem node_5_2770 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2770 = (417 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2770 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2770 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2770 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2770 (by decide)
    _ = (432 : Int) - (15 : Int) :=
      sub_congr node_6_2770 node_6_89
    _ = (417 : Int) := by decide

theorem node_4_2770 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2770 = (406 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2770 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2770 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2770 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2770 (by decide)
    _ = (417 : Int) - (11 : Int) :=
      sub_congr node_5_2770 node_5_74
    _ = (406 : Int) := by decide

theorem node_3_113608 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 = (16514 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (113608 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 (by decide)
    _ = (16920 : Int) - (406 : Int) :=
      sub_congr node_4_113608 node_4_2770
    _ = (16514 : Int) := by decide

theorem node_8_2642 : count [19, 17, 13, 11, 7, 5, 3, 2] 2642 = (447 : Int) := by
  decide

theorem node_8_114 : count [19, 17, 13, 11, 7, 5, 3, 2] 114 = (23 : Int) := by
  decide

theorem node_7_2642 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2642 = (424 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2642 = count [19, 17, 13, 11, 7, 5, 3, 2] 2642 - count [19, 17, 13, 11, 7, 5, 3, 2] (2642 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2642 (by decide)
    _ = (447 : Int) - (23 : Int) :=
      sub_congr node_8_2642 node_8_114
    _ = (424 : Int) := by decide

theorem node_7_91 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 91 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 91 = count [19, 17, 13, 11, 7, 5, 3, 2] 91 - count [19, 17, 13, 11, 7, 5, 3, 2] (91 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 91 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_91 node_8_3
    _ = (16 : Int) := by decide

theorem node_6_2642 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2642 = (408 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2642 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2642 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2642 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2642 (by decide)
    _ = (424 : Int) - (16 : Int) :=
      sub_congr node_7_2642 node_7_91
    _ = (408 : Int) := by decide

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

theorem node_5_2642 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2642 = (394 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2642 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2642 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2642 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2642 (by decide)
    _ = (408 : Int) - (14 : Int) :=
      sub_congr node_6_2642 node_6_85
    _ = (394 : Int) := by decide

theorem node_6_71 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = (11 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (71 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_7_71 node_7_2
    _ = (11 : Int) := by decide

theorem node_5_71 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = (10 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (71 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_6_71 node_6_2
    _ = (10 : Int) := by decide

theorem node_4_2642 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2642 = (384 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2642 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2642 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2642 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2642 (by decide)
    _ = (394 : Int) - (10 : Int) :=
      sub_congr node_5_2642 node_5_71
    _ = (384 : Int) := by decide

theorem node_4_64 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = (7 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (64 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_5_64 node_5_1
    _ = (7 : Int) := by decide

theorem node_3_2642 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2642 = (377 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2642 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2642 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2642 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2642 (by decide)
    _ = (384 : Int) - (7 : Int) :=
      sub_congr node_4_2642 node_4_64
    _ = (377 : Int) := by decide

theorem node_2_113608 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 = (16137 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (113608 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 (by decide)
    _ = (16514 : Int) - (377 : Int) :=
      sub_congr node_3_113608 node_3_2642
    _ = (16137 : Int) := by decide

theorem node_8_2417 : count [19, 17, 13, 11, 7, 5, 3, 2] 2417 = (411 : Int) := by
  decide

theorem node_7_2417 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2417 = (391 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2417 = count [19, 17, 13, 11, 7, 5, 3, 2] 2417 - count [19, 17, 13, 11, 7, 5, 3, 2] (2417 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2417 (by decide)
    _ = (411 : Int) - (20 : Int) :=
      sub_congr node_8_2417 node_8_105
    _ = (391 : Int) := by decide

theorem node_6_2417 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2417 = (376 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2417 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2417 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2417 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2417 (by decide)
    _ = (391 : Int) - (15 : Int) :=
      sub_congr node_7_2417 node_7_83
    _ = (376 : Int) := by decide

theorem node_5_2417 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2417 = (364 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2417 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2417 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2417 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2417 (by decide)
    _ = (376 : Int) - (12 : Int) :=
      sub_congr node_6_2417 node_6_77
    _ = (364 : Int) := by decide

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

theorem node_4_2417 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2417 = (356 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2417 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2417 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2417 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2417 (by decide)
    _ = (364 : Int) - (8 : Int) :=
      sub_congr node_5_2417 node_5_65
    _ = (356 : Int) := by decide

theorem node_3_2417 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2417 = (351 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2417 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2417 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2417 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2417 (by decide)
    _ = (356 : Int) - (5 : Int) :=
      sub_congr node_4_2417 node_4_58
    _ = (351 : Int) := by decide

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

theorem node_2_2417 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2417 = (347 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2417 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2417 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2417 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2417 (by decide)
    _ = (351 : Int) - (4 : Int) :=
      sub_congr node_3_2417 node_3_56
    _ = (347 : Int) := by decide

theorem node_1_113608 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 = (15790 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (113608 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 (by decide)
    _ = (16137 : Int) - (347 : Int) :=
      sub_congr node_2_113608 node_2_2417
    _ = (15790 : Int) := by decide

theorem node_8_2143 : count [19, 17, 13, 11, 7, 5, 3, 2] 2143 = (364 : Int) := by
  decide

theorem node_7_2143 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2143 = (347 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2143 = count [19, 17, 13, 11, 7, 5, 3, 2] 2143 - count [19, 17, 13, 11, 7, 5, 3, 2] (2143 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2143 (by decide)
    _ = (364 : Int) - (17 : Int) :=
      sub_congr node_8_2143 node_8_93
    _ = (347 : Int) := by decide

theorem node_6_2143 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2143 = (334 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2143 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2143 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2143 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2143 (by decide)
    _ = (347 : Int) - (13 : Int) :=
      sub_congr node_7_2143 node_7_73
    _ = (334 : Int) := by decide

theorem node_5_2143 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2143 = (324 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2143 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2143 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2143 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2143 (by decide)
    _ = (334 : Int) - (10 : Int) :=
      sub_congr node_6_2143 node_6_69
    _ = (324 : Int) := by decide

theorem node_4_2143 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2143 = (318 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2143 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2143 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2143 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2143 (by decide)
    _ = (324 : Int) - (6 : Int) :=
      sub_congr node_5_2143 node_5_57
    _ = (318 : Int) := by decide

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

theorem node_3_2143 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2143 = (314 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2143 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2143 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2143 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2143 (by decide)
    _ = (318 : Int) - (4 : Int) :=
      sub_congr node_4_2143 node_4_52
    _ = (314 : Int) := by decide

theorem node_2_2143 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2143 = (311 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2143 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2143 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2143 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2143 (by decide)
    _ = (314 : Int) - (3 : Int) :=
      sub_congr node_3_2143 node_3_49
    _ = (311 : Int) := by decide

theorem node_1_2143 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2143 = (310 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2143 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2143 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2143 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2143 (by decide)
    _ = (311 : Int) - (1 : Int) :=
      sub_congr node_2_2143 node_2_45
    _ = (310 : Int) := by decide

theorem node_0_113608 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 = (15480 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (113608 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 113608 (by decide)
    _ = (15790 : Int) - (310 : Int) :=
      sub_congr node_1_113608 node_1_2143
    _ = (15480 : Int) := by decide

theorem row_96 : count primes 110206 ≤ (15034 : Int) - 15 := by
  rw [show count primes 110206 = (15019 : Int) from node_0_110206]
  decide

theorem row_97 : count primes 111316 ≤ (15185 : Int) - 15 := by
  rw [show count primes 111316 = (15170 : Int) from node_0_111316]
  decide

theorem row_98 : count primes 112456 ≤ (15338 : Int) - 15 := by
  rw [show count primes 112456 = (15323 : Int) from node_0_112456]
  decide

theorem row_99 : count primes 113608 ≤ (15495 : Int) - 15 := by
  rw [show count primes 113608 = (15480 : Int) from node_0_113608]
  decide

def pairs : List (Nat × Nat) := [(110206, 15034), (111316, 15185), (112456, 15338), (113608, 15495)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl | rfl | rfl
  · exact row_96
  · exact row_97
  · exact row_98
  · exact row_99
end B699CorePrunedSieve.CoreDagBatch25
#check @B699CorePrunedSieve.CoreDagBatch25.pairs_valid
#print axioms B699CorePrunedSieve.CoreDagBatch25.pairs_valid
