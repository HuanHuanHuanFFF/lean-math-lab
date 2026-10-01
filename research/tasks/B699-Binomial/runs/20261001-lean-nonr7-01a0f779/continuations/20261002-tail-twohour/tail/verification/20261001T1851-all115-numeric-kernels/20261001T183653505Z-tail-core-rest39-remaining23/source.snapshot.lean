import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreRest39
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_119416 : count [19, 17, 13, 11, 7, 5, 3, 2] 119416 = (20421 : Int) := by
  decide

theorem node_8_5192 : count [19, 17, 13, 11, 7, 5, 3, 2] 5192 = (886 : Int) := by
  decide

theorem node_7_119416 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 = (19535 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 = count [19, 17, 13, 11, 7, 5, 3, 2] 119416 - count [19, 17, 13, 11, 7, 5, 3, 2] (119416 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 119416 (by decide)
    _ = (20421 : Int) - (886 : Int) :=
      sub_congr node_8_119416 node_8_5192
    _ = (19535 : Int) := by decide

theorem node_8_4117 : count [19, 17, 13, 11, 7, 5, 3, 2] 4117 = (701 : Int) := by
  decide

theorem node_8_179 : count [19, 17, 13, 11, 7, 5, 3, 2] 179 = (34 : Int) := by
  decide

theorem node_7_4117 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4117 = (667 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4117 = count [19, 17, 13, 11, 7, 5, 3, 2] 4117 - count [19, 17, 13, 11, 7, 5, 3, 2] (4117 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4117 (by decide)
    _ = (701 : Int) - (34 : Int) :=
      sub_congr node_8_4117 node_8_179
    _ = (667 : Int) := by decide

theorem node_6_119416 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 = (18868 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (119416 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 (by decide)
    _ = (19535 : Int) - (667 : Int) :=
      sub_congr node_7_119416 node_7_4117
    _ = (18868 : Int) := by decide

theorem node_8_3852 : count [19, 17, 13, 11, 7, 5, 3, 2] 3852 = (656 : Int) := by
  decide

theorem node_8_167 : count [19, 17, 13, 11, 7, 5, 3, 2] 167 = (32 : Int) := by
  decide

theorem node_7_3852 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3852 = (624 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3852 = count [19, 17, 13, 11, 7, 5, 3, 2] 3852 - count [19, 17, 13, 11, 7, 5, 3, 2] (3852 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3852 (by decide)
    _ = (656 : Int) - (32 : Int) :=
      sub_congr node_8_3852 node_8_167
    _ = (624 : Int) := by decide

theorem node_8_132 : count [19, 17, 13, 11, 7, 5, 3, 2] 132 = (25 : Int) := by
  decide

theorem node_8_5 : count [19, 17, 13, 11, 7, 5, 3, 2] 5 = (1 : Int) := by
  decide

theorem node_7_132 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 132 = (24 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 132 = count [19, 17, 13, 11, 7, 5, 3, 2] 132 - count [19, 17, 13, 11, 7, 5, 3, 2] (132 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 132 (by decide)
    _ = (25 : Int) - (1 : Int) :=
      sub_congr node_8_132 node_8_5
    _ = (24 : Int) := by decide

theorem node_6_3852 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3852 = (600 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3852 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3852 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3852 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3852 (by decide)
    _ = (624 : Int) - (24 : Int) :=
      sub_congr node_7_3852 node_7_132
    _ = (600 : Int) := by decide

theorem node_5_119416 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 = (18268 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (119416 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 (by decide)
    _ = (18868 : Int) - (600 : Int) :=
      sub_congr node_6_119416 node_6_3852
    _ = (18268 : Int) := by decide

theorem node_8_3227 : count [19, 17, 13, 11, 7, 5, 3, 2] 3227 = (548 : Int) := by
  decide

theorem node_8_140 : count [19, 17, 13, 11, 7, 5, 3, 2] 140 = (27 : Int) := by
  decide

theorem node_7_3227 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3227 = (521 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3227 = count [19, 17, 13, 11, 7, 5, 3, 2] 3227 - count [19, 17, 13, 11, 7, 5, 3, 2] (3227 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3227 (by decide)
    _ = (548 : Int) - (27 : Int) :=
      sub_congr node_8_3227 node_8_140
    _ = (521 : Int) := by decide

theorem node_8_111 : count [19, 17, 13, 11, 7, 5, 3, 2] 111 = (22 : Int) := by
  decide

theorem node_8_4 : count [19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  decide

theorem node_7_111 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 111 = (21 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 111 = count [19, 17, 13, 11, 7, 5, 3, 2] 111 - count [19, 17, 13, 11, 7, 5, 3, 2] (111 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 111 (by decide)
    _ = (22 : Int) - (1 : Int) :=
      sub_congr node_8_111 node_8_4
    _ = (21 : Int) := by decide

theorem node_6_3227 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3227 = (500 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3227 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3227 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3227 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3227 (by decide)
    _ = (521 : Int) - (21 : Int) :=
      sub_congr node_7_3227 node_7_111
    _ = (500 : Int) := by decide

theorem node_8_104 : count [19, 17, 13, 11, 7, 5, 3, 2] 104 = (20 : Int) := by
  decide

theorem node_7_104 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 104 = (19 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 104 = count [19, 17, 13, 11, 7, 5, 3, 2] 104 - count [19, 17, 13, 11, 7, 5, 3, 2] (104 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 104 (by decide)
    _ = (20 : Int) - (1 : Int) :=
      sub_congr node_8_104 node_8_4
    _ = (19 : Int) := by decide

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

theorem node_6_104 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104 = (18 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 104 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 104 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (104 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 104 (by decide)
    _ = (19 : Int) - (1 : Int) :=
      sub_congr node_7_104 node_7_3
    _ = (18 : Int) := by decide

theorem node_5_3227 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3227 = (482 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3227 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3227 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3227 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3227 (by decide)
    _ = (500 : Int) - (18 : Int) :=
      sub_congr node_6_3227 node_6_104
    _ = (482 : Int) := by decide

theorem node_4_119416 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 = (17786 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (119416 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 (by decide)
    _ = (18268 : Int) - (482 : Int) :=
      sub_congr node_5_119416 node_5_3227
    _ = (17786 : Int) := by decide

theorem node_8_2912 : count [19, 17, 13, 11, 7, 5, 3, 2] 2912 = (495 : Int) := by
  decide

theorem node_8_126 : count [19, 17, 13, 11, 7, 5, 3, 2] 126 = (23 : Int) := by
  decide

theorem node_7_2912 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2912 = (472 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2912 = count [19, 17, 13, 11, 7, 5, 3, 2] 2912 - count [19, 17, 13, 11, 7, 5, 3, 2] (2912 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2912 (by decide)
    _ = (495 : Int) - (23 : Int) :=
      sub_congr node_8_2912 node_8_126
    _ = (472 : Int) := by decide

theorem node_8_100 : count [19, 17, 13, 11, 7, 5, 3, 2] 100 = (18 : Int) := by
  decide

theorem node_7_100 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 100 = (17 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 100 = count [19, 17, 13, 11, 7, 5, 3, 2] 100 - count [19, 17, 13, 11, 7, 5, 3, 2] (100 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 100 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_8_100 node_8_4
    _ = (17 : Int) := by decide

theorem node_6_2912 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2912 = (455 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2912 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2912 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2912 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2912 (by decide)
    _ = (472 : Int) - (17 : Int) :=
      sub_congr node_7_2912 node_7_100
    _ = (455 : Int) := by decide

theorem node_8_93 : count [19, 17, 13, 11, 7, 5, 3, 2] 93 = (17 : Int) := by
  decide

theorem node_7_93 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 93 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 93 = count [19, 17, 13, 11, 7, 5, 3, 2] 93 - count [19, 17, 13, 11, 7, 5, 3, 2] (93 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 93 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_93 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_93 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93 = (15 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 93 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (93 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 93 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_7_93 node_7_3
    _ = (15 : Int) := by decide

theorem node_5_2912 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2912 = (440 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2912 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2912 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2912 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2912 (by decide)
    _ = (455 : Int) - (15 : Int) :=
      sub_congr node_6_2912 node_6_93
    _ = (440 : Int) := by decide

theorem node_8_78 : count [19, 17, 13, 11, 7, 5, 3, 2] 78 = (14 : Int) := by
  decide

theorem node_7_78 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = count [19, 17, 13, 11, 7, 5, 3, 2] 78 - count [19, 17, 13, 11, 7, 5, 3, 2] (78 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 78 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_78 node_8_3
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

theorem node_6_78 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = (12 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (78 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_7_78 node_7_2
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

theorem node_5_78 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = (11 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 78 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (78 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 78 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_6_78 node_6_2
    _ = (11 : Int) := by decide

theorem node_4_2912 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2912 = (429 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2912 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2912 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2912 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2912 (by decide)
    _ = (440 : Int) - (11 : Int) :=
      sub_congr node_5_2912 node_5_78
    _ = (429 : Int) := by decide

theorem node_3_119416 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 = (17357 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (119416 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 (by decide)
    _ = (17786 : Int) - (429 : Int) :=
      sub_congr node_4_119416 node_4_2912
    _ = (17357 : Int) := by decide

theorem node_8_2777 : count [19, 17, 13, 11, 7, 5, 3, 2] 2777 = (473 : Int) := by
  decide

theorem node_8_120 : count [19, 17, 13, 11, 7, 5, 3, 2] 120 = (23 : Int) := by
  decide

theorem node_7_2777 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2777 = (450 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2777 = count [19, 17, 13, 11, 7, 5, 3, 2] 2777 - count [19, 17, 13, 11, 7, 5, 3, 2] (2777 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2777 (by decide)
    _ = (473 : Int) - (23 : Int) :=
      sub_congr node_8_2777 node_8_120
    _ = (450 : Int) := by decide

theorem node_8_95 : count [19, 17, 13, 11, 7, 5, 3, 2] 95 = (17 : Int) := by
  decide

theorem node_7_95 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 95 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 95 = count [19, 17, 13, 11, 7, 5, 3, 2] 95 - count [19, 17, 13, 11, 7, 5, 3, 2] (95 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 95 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_95 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_2777 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2777 = (434 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2777 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2777 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2777 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2777 (by decide)
    _ = (450 : Int) - (16 : Int) :=
      sub_congr node_7_2777 node_7_95
    _ = (434 : Int) := by decide

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

theorem node_5_2777 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2777 = (419 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2777 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2777 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2777 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2777 (by decide)
    _ = (434 : Int) - (15 : Int) :=
      sub_congr node_6_2777 node_6_89
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

theorem node_4_2777 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2777 = (408 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2777 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2777 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2777 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2777 (by decide)
    _ = (419 : Int) - (11 : Int) :=
      sub_congr node_5_2777 node_5_75
    _ = (408 : Int) := by decide

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

theorem node_4_67 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67 = (8 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (67 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_5_67 node_5_1
    _ = (8 : Int) := by decide

theorem node_3_2777 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2777 = (400 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2777 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2777 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2777 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2777 (by decide)
    _ = (408 : Int) - (8 : Int) :=
      sub_congr node_4_2777 node_4_67
    _ = (400 : Int) := by decide

theorem node_2_119416 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 = (16957 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (119416 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 (by decide)
    _ = (17357 : Int) - (400 : Int) :=
      sub_congr node_3_119416 node_3_2777
    _ = (16957 : Int) := by decide

theorem node_8_2540 : count [19, 17, 13, 11, 7, 5, 3, 2] 2540 = (431 : Int) := by
  decide

theorem node_8_110 : count [19, 17, 13, 11, 7, 5, 3, 2] 110 = (22 : Int) := by
  decide

theorem node_7_2540 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2540 = (409 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2540 = count [19, 17, 13, 11, 7, 5, 3, 2] 2540 - count [19, 17, 13, 11, 7, 5, 3, 2] (2540 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2540 (by decide)
    _ = (431 : Int) - (22 : Int) :=
      sub_congr node_8_2540 node_8_110
    _ = (409 : Int) := by decide

theorem node_8_87 : count [19, 17, 13, 11, 7, 5, 3, 2] 87 = (16 : Int) := by
  decide

theorem node_7_87 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = count [19, 17, 13, 11, 7, 5, 3, 2] 87 - count [19, 17, 13, 11, 7, 5, 3, 2] (87 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 87 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_87 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_2540 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2540 = (394 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2540 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2540 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2540 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2540 (by decide)
    _ = (409 : Int) - (15 : Int) :=
      sub_congr node_7_2540 node_7_87
    _ = (394 : Int) := by decide

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

theorem node_5_2540 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2540 = (381 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2540 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2540 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2540 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2540 (by decide)
    _ = (394 : Int) - (13 : Int) :=
      sub_congr node_6_2540 node_6_81
    _ = (381 : Int) := by decide

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

theorem node_4_2540 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2540 = (372 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2540 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2540 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2540 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2540 (by decide)
    _ = (381 : Int) - (9 : Int) :=
      sub_congr node_5_2540 node_5_68
    _ = (372 : Int) := by decide

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

theorem node_5_61 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = (8 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (61 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_6_61 node_6_1
    _ = (8 : Int) := by decide

theorem node_4_61 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = (7 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (61 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_5_61 node_5_1
    _ = (7 : Int) := by decide

theorem node_3_2540 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2540 = (365 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2540 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2540 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2540 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2540 (by decide)
    _ = (372 : Int) - (7 : Int) :=
      sub_congr node_4_2540 node_4_61
    _ = (365 : Int) := by decide

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

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_1 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_1 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_59 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = (5 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (59 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_4_59 node_4_1
    _ = (5 : Int) := by decide

theorem node_2_2540 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2540 = (360 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2540 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2540 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2540 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2540 (by decide)
    _ = (365 : Int) - (5 : Int) :=
      sub_congr node_3_2540 node_3_59
    _ = (360 : Int) := by decide

theorem node_1_119416 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 = (16597 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (119416 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 (by decide)
    _ = (16957 : Int) - (360 : Int) :=
      sub_congr node_2_119416 node_2_2540
    _ = (16597 : Int) := by decide

theorem node_8_2253 : count [19, 17, 13, 11, 7, 5, 3, 2] 2253 = (380 : Int) := by
  decide

theorem node_8_97 : count [19, 17, 13, 11, 7, 5, 3, 2] 97 = (18 : Int) := by
  decide

theorem node_7_2253 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2253 = (362 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2253 = count [19, 17, 13, 11, 7, 5, 3, 2] 2253 - count [19, 17, 13, 11, 7, 5, 3, 2] (2253 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2253 (by decide)
    _ = (380 : Int) - (18 : Int) :=
      sub_congr node_8_2253 node_8_97
    _ = (362 : Int) := by decide

theorem node_8_77 : count [19, 17, 13, 11, 7, 5, 3, 2] 77 = (14 : Int) := by
  decide

theorem node_7_77 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = count [19, 17, 13, 11, 7, 5, 3, 2] 77 - count [19, 17, 13, 11, 7, 5, 3, 2] (77 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 77 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_77 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_2253 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2253 = (349 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2253 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2253 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2253 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2253 (by decide)
    _ = (362 : Int) - (13 : Int) :=
      sub_congr node_7_2253 node_7_77
    _ = (349 : Int) := by decide

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

theorem node_5_2253 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2253 = (338 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2253 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2253 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2253 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2253 (by decide)
    _ = (349 : Int) - (11 : Int) :=
      sub_congr node_6_2253 node_6_72
    _ = (338 : Int) := by decide

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

theorem node_4_2253 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2253 = (331 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2253 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2253 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2253 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2253 (by decide)
    _ = (338 : Int) - (7 : Int) :=
      sub_congr node_5_2253 node_5_60
    _ = (331 : Int) := by decide

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

theorem node_3_2253 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2253 = (326 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2253 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2253 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2253 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2253 (by decide)
    _ = (331 : Int) - (5 : Int) :=
      sub_congr node_4_2253 node_4_54
    _ = (326 : Int) := by decide

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

theorem node_2_2253 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2253 = (323 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2253 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2253 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2253 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2253 (by decide)
    _ = (326 : Int) - (3 : Int) :=
      sub_congr node_3_2253 node_3_52
    _ = (323 : Int) := by decide

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

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_1 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_1 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_47 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 = (2 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (47 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_3_47 node_3_1
    _ = (2 : Int) := by decide

theorem node_1_2253 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2253 = (321 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2253 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2253 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2253 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2253 (by decide)
    _ = (323 : Int) - (2 : Int) :=
      sub_congr node_2_2253 node_2_47
    _ = (321 : Int) := by decide

theorem node_0_119416 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 = (16276 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (119416 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 119416 (by decide)
    _ = (16597 : Int) - (321 : Int) :=
      sub_congr node_1_119416 node_1_2253
    _ = (16276 : Int) := by decide

theorem node_8_120640 : count [19, 17, 13, 11, 7, 5, 3, 2] 120640 = (20629 : Int) := by
  decide

theorem node_8_5245 : count [19, 17, 13, 11, 7, 5, 3, 2] 5245 = (894 : Int) := by
  decide

theorem node_7_120640 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 = (19735 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 = count [19, 17, 13, 11, 7, 5, 3, 2] 120640 - count [19, 17, 13, 11, 7, 5, 3, 2] (120640 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 120640 (by decide)
    _ = (20629 : Int) - (894 : Int) :=
      sub_congr node_8_120640 node_8_5245
    _ = (19735 : Int) := by decide

theorem node_8_4160 : count [19, 17, 13, 11, 7, 5, 3, 2] 4160 = (709 : Int) := by
  decide

theorem node_8_180 : count [19, 17, 13, 11, 7, 5, 3, 2] 180 = (34 : Int) := by
  decide

theorem node_7_4160 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4160 = (675 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4160 = count [19, 17, 13, 11, 7, 5, 3, 2] 4160 - count [19, 17, 13, 11, 7, 5, 3, 2] (4160 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4160 (by decide)
    _ = (709 : Int) - (34 : Int) :=
      sub_congr node_8_4160 node_8_180
    _ = (675 : Int) := by decide

theorem node_6_120640 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 = (19060 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (120640 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 (by decide)
    _ = (19735 : Int) - (675 : Int) :=
      sub_congr node_7_120640 node_7_4160
    _ = (19060 : Int) := by decide

theorem node_8_3891 : count [19, 17, 13, 11, 7, 5, 3, 2] 3891 = (662 : Int) := by
  decide

theorem node_8_169 : count [19, 17, 13, 11, 7, 5, 3, 2] 169 = (32 : Int) := by
  decide

theorem node_7_3891 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3891 = (630 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3891 = count [19, 17, 13, 11, 7, 5, 3, 2] 3891 - count [19, 17, 13, 11, 7, 5, 3, 2] (3891 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3891 (by decide)
    _ = (662 : Int) - (32 : Int) :=
      sub_congr node_8_3891 node_8_169
    _ = (630 : Int) := by decide

theorem node_8_134 : count [19, 17, 13, 11, 7, 5, 3, 2] 134 = (25 : Int) := by
  decide

theorem node_7_134 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 134 = (24 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 134 = count [19, 17, 13, 11, 7, 5, 3, 2] 134 - count [19, 17, 13, 11, 7, 5, 3, 2] (134 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 134 (by decide)
    _ = (25 : Int) - (1 : Int) :=
      sub_congr node_8_134 node_8_5
    _ = (24 : Int) := by decide

theorem node_6_3891 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3891 = (606 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3891 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3891 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3891 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3891 (by decide)
    _ = (630 : Int) - (24 : Int) :=
      sub_congr node_7_3891 node_7_134
    _ = (606 : Int) := by decide

theorem node_5_120640 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 = (18454 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (120640 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 (by decide)
    _ = (19060 : Int) - (606 : Int) :=
      sub_congr node_6_120640 node_6_3891
    _ = (18454 : Int) := by decide

theorem node_8_3260 : count [19, 17, 13, 11, 7, 5, 3, 2] 3260 = (555 : Int) := by
  decide

theorem node_8_141 : count [19, 17, 13, 11, 7, 5, 3, 2] 141 = (27 : Int) := by
  decide

theorem node_7_3260 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3260 = (528 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3260 = count [19, 17, 13, 11, 7, 5, 3, 2] 3260 - count [19, 17, 13, 11, 7, 5, 3, 2] (3260 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3260 (by decide)
    _ = (555 : Int) - (27 : Int) :=
      sub_congr node_8_3260 node_8_141
    _ = (528 : Int) := by decide

theorem node_8_112 : count [19, 17, 13, 11, 7, 5, 3, 2] 112 = (22 : Int) := by
  decide

theorem node_7_112 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 112 = (21 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 112 = count [19, 17, 13, 11, 7, 5, 3, 2] 112 - count [19, 17, 13, 11, 7, 5, 3, 2] (112 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 112 (by decide)
    _ = (22 : Int) - (1 : Int) :=
      sub_congr node_8_112 node_8_4
    _ = (21 : Int) := by decide

theorem node_6_3260 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3260 = (507 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3260 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3260 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3260 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3260 (by decide)
    _ = (528 : Int) - (21 : Int) :=
      sub_congr node_7_3260 node_7_112
    _ = (507 : Int) := by decide

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

theorem node_5_3260 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3260 = (489 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3260 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3260 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3260 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3260 (by decide)
    _ = (507 : Int) - (18 : Int) :=
      sub_congr node_6_3260 node_6_105
    _ = (489 : Int) := by decide

theorem node_4_120640 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 = (17965 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (120640 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 (by decide)
    _ = (18454 : Int) - (489 : Int) :=
      sub_congr node_5_120640 node_5_3260
    _ = (17965 : Int) := by decide

theorem node_8_2942 : count [19, 17, 13, 11, 7, 5, 3, 2] 2942 = (501 : Int) := by
  decide

theorem node_8_127 : count [19, 17, 13, 11, 7, 5, 3, 2] 127 = (24 : Int) := by
  decide

theorem node_7_2942 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2942 = (477 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2942 = count [19, 17, 13, 11, 7, 5, 3, 2] 2942 - count [19, 17, 13, 11, 7, 5, 3, 2] (2942 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2942 (by decide)
    _ = (501 : Int) - (24 : Int) :=
      sub_congr node_8_2942 node_8_127
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

theorem node_6_2942 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2942 = (459 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2942 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2942 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2942 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2942 (by decide)
    _ = (477 : Int) - (18 : Int) :=
      sub_congr node_7_2942 node_7_101
    _ = (459 : Int) := by decide

theorem node_8_94 : count [19, 17, 13, 11, 7, 5, 3, 2] 94 = (17 : Int) := by
  decide

theorem node_7_94 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 94 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 94 = count [19, 17, 13, 11, 7, 5, 3, 2] 94 - count [19, 17, 13, 11, 7, 5, 3, 2] (94 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 94 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_94 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_94 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94 = (15 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 94 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (94 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 94 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_7_94 node_7_3
    _ = (15 : Int) := by decide

theorem node_5_2942 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2942 = (444 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2942 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2942 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2942 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2942 (by decide)
    _ = (459 : Int) - (15 : Int) :=
      sub_congr node_6_2942 node_6_94
    _ = (444 : Int) := by decide

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

theorem node_5_79 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79 = (12 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (79 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_6_79 node_6_2
    _ = (12 : Int) := by decide

theorem node_4_2942 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2942 = (432 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2942 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2942 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2942 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2942 (by decide)
    _ = (444 : Int) - (12 : Int) :=
      sub_congr node_5_2942 node_5_79
    _ = (432 : Int) := by decide

theorem node_3_120640 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 = (17533 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (120640 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 (by decide)
    _ = (17965 : Int) - (432 : Int) :=
      sub_congr node_4_120640 node_4_2942
    _ = (17533 : Int) := by decide

theorem node_8_2805 : count [19, 17, 13, 11, 7, 5, 3, 2] 2805 = (478 : Int) := by
  decide

theorem node_8_121 : count [19, 17, 13, 11, 7, 5, 3, 2] 121 = (23 : Int) := by
  decide

theorem node_7_2805 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2805 = (455 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2805 = count [19, 17, 13, 11, 7, 5, 3, 2] 2805 - count [19, 17, 13, 11, 7, 5, 3, 2] (2805 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2805 (by decide)
    _ = (478 : Int) - (23 : Int) :=
      sub_congr node_8_2805 node_8_121
    _ = (455 : Int) := by decide

theorem node_8_96 : count [19, 17, 13, 11, 7, 5, 3, 2] 96 = (17 : Int) := by
  decide

theorem node_7_96 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 96 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 96 = count [19, 17, 13, 11, 7, 5, 3, 2] 96 - count [19, 17, 13, 11, 7, 5, 3, 2] (96 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 96 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_96 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_2805 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2805 = (439 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2805 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2805 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2805 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2805 (by decide)
    _ = (455 : Int) - (16 : Int) :=
      sub_congr node_7_2805 node_7_96
    _ = (439 : Int) := by decide

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

theorem node_5_2805 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2805 = (424 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2805 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2805 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2805 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2805 (by decide)
    _ = (439 : Int) - (15 : Int) :=
      sub_congr node_6_2805 node_6_90
    _ = (424 : Int) := by decide

theorem node_4_2805 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2805 = (413 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2805 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2805 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2805 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2805 (by decide)
    _ = (424 : Int) - (11 : Int) :=
      sub_congr node_5_2805 node_5_75
    _ = (413 : Int) := by decide

theorem node_4_68 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = (8 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (68 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_5_68 node_5_1
    _ = (8 : Int) := by decide

theorem node_3_2805 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2805 = (405 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2805 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2805 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2805 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2805 (by decide)
    _ = (413 : Int) - (8 : Int) :=
      sub_congr node_4_2805 node_4_68
    _ = (405 : Int) := by decide

theorem node_2_120640 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 = (17128 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (120640 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 (by decide)
    _ = (17533 : Int) - (405 : Int) :=
      sub_congr node_3_120640 node_3_2805
    _ = (17128 : Int) := by decide

theorem node_8_2566 : count [19, 17, 13, 11, 7, 5, 3, 2] 2566 = (435 : Int) := by
  decide

theorem node_7_2566 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2566 = (413 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2566 = count [19, 17, 13, 11, 7, 5, 3, 2] 2566 - count [19, 17, 13, 11, 7, 5, 3, 2] (2566 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2566 (by decide)
    _ = (435 : Int) - (22 : Int) :=
      sub_congr node_8_2566 node_8_111
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

theorem node_6_2566 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2566 = (398 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2566 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2566 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2566 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2566 (by decide)
    _ = (413 : Int) - (15 : Int) :=
      sub_congr node_7_2566 node_7_88
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

theorem node_5_2566 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2566 = (385 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2566 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2566 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2566 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2566 (by decide)
    _ = (398 : Int) - (13 : Int) :=
      sub_congr node_6_2566 node_6_82
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

theorem node_4_2566 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2566 = (376 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2566 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2566 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2566 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2566 (by decide)
    _ = (385 : Int) - (9 : Int) :=
      sub_congr node_5_2566 node_5_69
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

theorem node_4_62 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = (7 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (62 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_5_62 node_5_1
    _ = (7 : Int) := by decide

theorem node_3_2566 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2566 = (369 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2566 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2566 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2566 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2566 (by decide)
    _ = (376 : Int) - (7 : Int) :=
      sub_congr node_4_2566 node_4_62
    _ = (369 : Int) := by decide

theorem node_2_2566 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2566 = (364 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2566 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2566 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2566 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2566 (by decide)
    _ = (369 : Int) - (5 : Int) :=
      sub_congr node_3_2566 node_3_59
    _ = (364 : Int) := by decide

theorem node_1_120640 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 = (16764 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (120640 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 (by decide)
    _ = (17128 : Int) - (364 : Int) :=
      sub_congr node_2_120640 node_2_2566
    _ = (16764 : Int) := by decide

theorem node_8_2276 : count [19, 17, 13, 11, 7, 5, 3, 2] 2276 = (385 : Int) := by
  decide

theorem node_8_98 : count [19, 17, 13, 11, 7, 5, 3, 2] 98 = (18 : Int) := by
  decide

theorem node_7_2276 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2276 = (367 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2276 = count [19, 17, 13, 11, 7, 5, 3, 2] 2276 - count [19, 17, 13, 11, 7, 5, 3, 2] (2276 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2276 (by decide)
    _ = (385 : Int) - (18 : Int) :=
      sub_congr node_8_2276 node_8_98
    _ = (367 : Int) := by decide

theorem node_6_2276 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2276 = (354 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2276 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2276 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2276 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2276 (by decide)
    _ = (367 : Int) - (13 : Int) :=
      sub_congr node_7_2276 node_7_78
    _ = (354 : Int) := by decide

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

theorem node_5_2276 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2276 = (342 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2276 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2276 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2276 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2276 (by decide)
    _ = (354 : Int) - (12 : Int) :=
      sub_congr node_6_2276 node_6_73
    _ = (342 : Int) := by decide

theorem node_4_2276 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2276 = (334 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2276 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2276 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2276 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2276 (by decide)
    _ = (342 : Int) - (8 : Int) :=
      sub_congr node_5_2276 node_5_61
    _ = (334 : Int) := by decide

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

theorem node_3_2276 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2276 = (329 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2276 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2276 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2276 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2276 (by decide)
    _ = (334 : Int) - (5 : Int) :=
      sub_congr node_4_2276 node_4_55
    _ = (329 : Int) := by decide

theorem node_2_2276 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2276 = (326 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2276 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2276 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2276 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2276 (by decide)
    _ = (329 : Int) - (3 : Int) :=
      sub_congr node_3_2276 node_3_52
    _ = (326 : Int) := by decide

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

theorem node_2_48 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = (2 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (48 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_3_48 node_3_1
    _ = (2 : Int) := by decide

theorem node_1_2276 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2276 = (324 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2276 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2276 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2276 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2276 (by decide)
    _ = (326 : Int) - (2 : Int) :=
      sub_congr node_2_2276 node_2_48
    _ = (324 : Int) := by decide

theorem node_0_120640 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 = (16440 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (120640 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 120640 (by decide)
    _ = (16764 : Int) - (324 : Int) :=
      sub_congr node_1_120640 node_1_2276
    _ = (16440 : Int) := by decide

theorem row_104 : count primes 119416 ≤ (16291 : Int) - 15 := by
  rw [show count primes 119416 = (16276 : Int) from node_0_119416]
  decide

theorem row_105 : count primes 120640 ≤ (16455 : Int) - 15 := by
  rw [show count primes 120640 = (16440 : Int) from node_0_120640]
  decide

def pairs : List (Nat × Nat) := [(119416, 16291), (120640, 16455)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl
  · exact row_104
  · exact row_105
end B699CorePrunedSieve.CoreRest39
#check @B699CorePrunedSieve.CoreRest39.pairs_valid
#print axioms B699CorePrunedSieve.CoreRest39.pairs_valid
