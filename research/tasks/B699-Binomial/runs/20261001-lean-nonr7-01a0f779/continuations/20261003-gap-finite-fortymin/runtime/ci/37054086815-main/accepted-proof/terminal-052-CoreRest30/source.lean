import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreRest30
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

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

theorem node_8_4 : count [19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
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

theorem node_8_3 : count [19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
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

theorem node_8_0 : count [19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [19, 17, 13, 11, 7, 5, 3, 2]

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

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_2 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_2 node_7_0
    _ = (1 : Int) := by decide

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

theorem node_8_79 : count [19, 17, 13, 11, 7, 5, 3, 2] 79 = (15 : Int) := by
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

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_1 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_1 node_6_0
    _ = (1 : Int) := by decide

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

theorem node_8_91 : count [19, 17, 13, 11, 7, 5, 3, 2] 91 = (17 : Int) := by
  decide

theorem node_7_2115 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 = (341 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 = count [19, 17, 13, 11, 7, 5, 3, 2] 2115 - count [19, 17, 13, 11, 7, 5, 3, 2] (2115 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2115 (by decide)
    _ = (358 : Int) - (17 : Int) :=
      sub_congr node_8_2115 node_8_91
    _ = (341 : Int) := by decide

theorem node_8_72 : count [19, 17, 13, 11, 7, 5, 3, 2] 72 = (13 : Int) := by
  decide

theorem node_7_72 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = (12 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = count [19, 17, 13, 11, 7, 5, 3, 2] 72 - count [19, 17, 13, 11, 7, 5, 3, 2] (72 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 72 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_8_72 node_8_3
    _ = (12 : Int) := by decide

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

theorem node_3_2115 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 = (309 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2115 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2115 (by decide)
    _ = (313 : Int) - (4 : Int) :=
      sub_congr node_4_2115 node_4_51
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

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_1 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_1 node_5_0
    _ = (1 : Int) := by decide

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

theorem node_8_81 : count [19, 17, 13, 11, 7, 5, 3, 2] 81 = (15 : Int) := by
  decide

theorem node_7_1876 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 = (302 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 = count [19, 17, 13, 11, 7, 5, 3, 2] 1876 - count [19, 17, 13, 11, 7, 5, 3, 2] (1876 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1876 (by decide)
    _ = (317 : Int) - (15 : Int) :=
      sub_congr node_8_1876 node_8_81
    _ = (302 : Int) := by decide

theorem node_8_64 : count [19, 17, 13, 11, 7, 5, 3, 2] 64 = (11 : Int) := by
  decide

theorem node_7_64 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = (10 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = count [19, 17, 13, 11, 7, 5, 3, 2] 64 - count [19, 17, 13, 11, 7, 5, 3, 2] (64 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 64 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_8_64 node_8_2
    _ = (10 : Int) := by decide

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

theorem node_4_1876 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 = (279 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1876 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 (by decide)
    _ = (284 : Int) - (5 : Int) :=
      sub_congr node_5_1876 node_5_50
    _ = (279 : Int) := by decide

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

theorem node_3_1876 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 = (276 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1876 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 (by decide)
    _ = (279 : Int) - (3 : Int) :=
      sub_congr node_4_1876 node_4_45
    _ = (276 : Int) := by decide

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

theorem node_2_1876 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 = (274 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1876 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1876 (by decide)
    _ = (276 : Int) - (2 : Int) :=
      sub_congr node_3_1876 node_3_43
    _ = (274 : Int) := by decide

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

theorem node_8_84 : count [19, 17, 13, 11, 7, 5, 3, 2] 84 = (16 : Int) := by
  decide

theorem node_7_84 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 84 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 84 = count [19, 17, 13, 11, 7, 5, 3, 2] 84 - count [19, 17, 13, 11, 7, 5, 3, 2] (84 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 84 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_84 node_8_3
    _ = (15 : Int) := by decide

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

theorem node_8_80 : count [19, 17, 13, 11, 7, 5, 3, 2] 80 = (15 : Int) := by
  decide

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

theorem node_8_73 : count [19, 17, 13, 11, 7, 5, 3, 2] 73 = (14 : Int) := by
  decide

theorem node_7_73 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 73 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 73 = count [19, 17, 13, 11, 7, 5, 3, 2] 73 - count [19, 17, 13, 11, 7, 5, 3, 2] (73 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 73 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_73 node_8_3
    _ = (13 : Int) := by decide

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

theorem node_8_82 : count [19, 17, 13, 11, 7, 5, 3, 2] 82 = (15 : Int) := by
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

theorem row_86 : count primes 99442 ≤ (13561 : Int) - 15 := by
  rw [show count primes 99442 = (13546 : Int) from node_0_99442]
  decide

theorem row_87 : count primes 100492 ≤ (13702 : Int) - 15 := by
  rw [show count primes 100492 = (13687 : Int) from node_0_100492]
  decide

def pairs : List (Nat × Nat) := [(99442, 13561), (100492, 13702)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl
  · exact row_86
  · exact row_87
end B699CorePrunedSieve.CoreRest30
#check @B699CorePrunedSieve.CoreRest30.pairs_valid
#print axioms B699CorePrunedSieve.CoreRest30.pairs_valid
