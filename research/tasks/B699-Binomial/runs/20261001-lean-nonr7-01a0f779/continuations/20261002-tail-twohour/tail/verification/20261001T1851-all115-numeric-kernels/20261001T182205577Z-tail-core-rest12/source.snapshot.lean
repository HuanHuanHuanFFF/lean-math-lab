import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreRest12
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_65535 : count [19, 17, 13, 11, 7, 5, 3, 2] 65535 = (11208 : Int) := by
  decide

theorem node_8_2849 : count [19, 17, 13, 11, 7, 5, 3, 2] 2849 = (484 : Int) := by
  decide

theorem node_7_65535 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 = (10724 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 = count [19, 17, 13, 11, 7, 5, 3, 2] 65535 - count [19, 17, 13, 11, 7, 5, 3, 2] (65535 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 65535 (by decide)
    _ = (11208 : Int) - (484 : Int) :=
      sub_congr node_8_65535 node_8_2849
    _ = (10724 : Int) := by decide

theorem node_8_2259 : count [19, 17, 13, 11, 7, 5, 3, 2] 2259 = (381 : Int) := by
  decide

theorem node_8_98 : count [19, 17, 13, 11, 7, 5, 3, 2] 98 = (18 : Int) := by
  decide

theorem node_7_2259 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2259 = (363 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2259 = count [19, 17, 13, 11, 7, 5, 3, 2] 2259 - count [19, 17, 13, 11, 7, 5, 3, 2] (2259 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2259 (by decide)
    _ = (381 : Int) - (18 : Int) :=
      sub_congr node_8_2259 node_8_98
    _ = (363 : Int) := by decide

theorem node_6_65535 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 = (10361 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (65535 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 (by decide)
    _ = (10724 : Int) - (363 : Int) :=
      sub_congr node_7_65535 node_7_2259
    _ = (10361 : Int) := by decide

theorem node_8_2114 : count [19, 17, 13, 11, 7, 5, 3, 2] 2114 = (358 : Int) := by
  decide

theorem node_8_91 : count [19, 17, 13, 11, 7, 5, 3, 2] 91 = (17 : Int) := by
  decide

theorem node_7_2114 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2114 = (341 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2114 = count [19, 17, 13, 11, 7, 5, 3, 2] 2114 - count [19, 17, 13, 11, 7, 5, 3, 2] (2114 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2114 (by decide)
    _ = (358 : Int) - (17 : Int) :=
      sub_congr node_8_2114 node_8_91
    _ = (341 : Int) := by decide

theorem node_8_72 : count [19, 17, 13, 11, 7, 5, 3, 2] 72 = (13 : Int) := by
  decide

theorem node_8_3 : count [19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  decide

theorem node_7_72 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = (12 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = count [19, 17, 13, 11, 7, 5, 3, 2] 72 - count [19, 17, 13, 11, 7, 5, 3, 2] (72 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 72 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_8_72 node_8_3
    _ = (12 : Int) := by decide

theorem node_6_2114 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2114 = (329 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2114 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2114 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2114 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2114 (by decide)
    _ = (341 : Int) - (12 : Int) :=
      sub_congr node_7_2114 node_7_72
    _ = (329 : Int) := by decide

theorem node_5_65535 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 = (10032 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (65535 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 (by decide)
    _ = (10361 : Int) - (329 : Int) :=
      sub_congr node_6_65535 node_6_2114
    _ = (10032 : Int) := by decide

theorem node_8_1771 : count [19, 17, 13, 11, 7, 5, 3, 2] 1771 = (301 : Int) := by
  decide

theorem node_8_77 : count [19, 17, 13, 11, 7, 5, 3, 2] 77 = (14 : Int) := by
  decide

theorem node_7_1771 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1771 = (287 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1771 = count [19, 17, 13, 11, 7, 5, 3, 2] 1771 - count [19, 17, 13, 11, 7, 5, 3, 2] (1771 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1771 (by decide)
    _ = (301 : Int) - (14 : Int) :=
      sub_congr node_8_1771 node_8_77
    _ = (287 : Int) := by decide

theorem node_8_61 : count [19, 17, 13, 11, 7, 5, 3, 2] 61 = (11 : Int) := by
  decide

theorem node_8_2 : count [19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  decide

theorem node_7_61 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = (10 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = count [19, 17, 13, 11, 7, 5, 3, 2] 61 - count [19, 17, 13, 11, 7, 5, 3, 2] (61 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 61 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_8_61 node_8_2
    _ = (10 : Int) := by decide

theorem node_6_1771 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1771 = (277 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1771 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1771 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1771 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1771 (by decide)
    _ = (287 : Int) - (10 : Int) :=
      sub_congr node_7_1771 node_7_61
    _ = (277 : Int) := by decide

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

theorem node_8_0 : count [19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [19, 17, 13, 11, 7, 5, 3, 2]

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

theorem node_5_1771 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1771 = (270 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1771 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1771 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1771 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1771 (by decide)
    _ = (277 : Int) - (7 : Int) :=
      sub_congr node_6_1771 node_6_57
    _ = (270 : Int) := by decide

theorem node_4_65535 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 = (9762 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (65535 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 (by decide)
    _ = (10032 : Int) - (270 : Int) :=
      sub_congr node_5_65535 node_5_1771
    _ = (9762 : Int) := by decide

theorem node_8_1598 : count [19, 17, 13, 11, 7, 5, 3, 2] 1598 = (270 : Int) := by
  decide

theorem node_8_69 : count [19, 17, 13, 11, 7, 5, 3, 2] 69 = (12 : Int) := by
  decide

theorem node_7_1598 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1598 = (258 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1598 = count [19, 17, 13, 11, 7, 5, 3, 2] 1598 - count [19, 17, 13, 11, 7, 5, 3, 2] (1598 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1598 (by decide)
    _ = (270 : Int) - (12 : Int) :=
      sub_congr node_8_1598 node_8_69
    _ = (258 : Int) := by decide

theorem node_8_55 : count [19, 17, 13, 11, 7, 5, 3, 2] 55 = (9 : Int) := by
  decide

theorem node_7_55 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = count [19, 17, 13, 11, 7, 5, 3, 2] 55 - count [19, 17, 13, 11, 7, 5, 3, 2] (55 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 55 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_55 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_1598 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1598 = (250 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1598 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1598 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1598 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1598 (by decide)
    _ = (258 : Int) - (8 : Int) :=
      sub_congr node_7_1598 node_7_55
    _ = (250 : Int) := by decide

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

theorem node_5_1598 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1598 = (244 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1598 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1598 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1598 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1598 (by decide)
    _ = (250 : Int) - (6 : Int) :=
      sub_congr node_6_1598 node_6_51
    _ = (244 : Int) := by decide

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

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_1 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_1 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_43 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 = (4 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (43 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_6_43 node_6_1
    _ = (4 : Int) := by decide

theorem node_4_1598 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1598 = (240 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1598 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1598 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1598 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1598 (by decide)
    _ = (244 : Int) - (4 : Int) :=
      sub_congr node_5_1598 node_5_43
    _ = (240 : Int) := by decide

theorem node_3_65535 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 = (9522 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (65535 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 (by decide)
    _ = (9762 : Int) - (240 : Int) :=
      sub_congr node_4_65535 node_4_1598
    _ = (9522 : Int) := by decide

theorem node_8_1524 : count [19, 17, 13, 11, 7, 5, 3, 2] 1524 = (257 : Int) := by
  decide

theorem node_8_66 : count [19, 17, 13, 11, 7, 5, 3, 2] 66 = (11 : Int) := by
  decide

theorem node_7_1524 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1524 = (246 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1524 = count [19, 17, 13, 11, 7, 5, 3, 2] 1524 - count [19, 17, 13, 11, 7, 5, 3, 2] (1524 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1524 (by decide)
    _ = (257 : Int) - (11 : Int) :=
      sub_congr node_8_1524 node_8_66
    _ = (246 : Int) := by decide

theorem node_8_52 : count [19, 17, 13, 11, 7, 5, 3, 2] 52 = (8 : Int) := by
  decide

theorem node_7_52 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = (7 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = count [19, 17, 13, 11, 7, 5, 3, 2] 52 - count [19, 17, 13, 11, 7, 5, 3, 2] (52 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 52 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_8_52 node_8_2
    _ = (7 : Int) := by decide

theorem node_6_1524 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1524 = (239 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1524 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1524 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1524 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1524 (by decide)
    _ = (246 : Int) - (7 : Int) :=
      sub_congr node_7_1524 node_7_52
    _ = (239 : Int) := by decide

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

theorem node_5_1524 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1524 = (233 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1524 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1524 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1524 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1524 (by decide)
    _ = (239 : Int) - (6 : Int) :=
      sub_congr node_6_1524 node_6_49
    _ = (233 : Int) := by decide

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

theorem node_4_1524 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1524 = (230 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1524 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1524 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1524 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1524 (by decide)
    _ = (233 : Int) - (3 : Int) :=
      sub_congr node_5_1524 node_5_41
    _ = (230 : Int) := by decide

theorem node_8_37 : count [19, 17, 13, 11, 7, 5, 3, 2] 37 = (5 : Int) := by
  decide

theorem node_7_37 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = (4 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = count [19, 17, 13, 11, 7, 5, 3, 2] 37 - count [19, 17, 13, 11, 7, 5, 3, 2] (37 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 37 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_8_37 node_8_1
    _ = (4 : Int) := by decide

theorem node_6_37 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = (3 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 37 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (37 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 37 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_7_37 node_7_1
    _ = (3 : Int) := by decide

theorem node_5_37 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = (2 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (37 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_6_37 node_6_1
    _ = (2 : Int) := by decide

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_1 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_1 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_37 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (37 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_5_37 node_5_1
    _ = (1 : Int) := by decide

theorem node_3_1524 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1524 = (229 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1524 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1524 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1524 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1524 (by decide)
    _ = (230 : Int) - (1 : Int) :=
      sub_congr node_4_1524 node_4_37
    _ = (229 : Int) := by decide

theorem node_2_65535 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 = (9293 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (65535 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 (by decide)
    _ = (9522 : Int) - (229 : Int) :=
      sub_congr node_3_65535 node_3_1524
    _ = (9293 : Int) := by decide

theorem node_8_1394 : count [19, 17, 13, 11, 7, 5, 3, 2] 1394 = (234 : Int) := by
  decide

theorem node_8_60 : count [19, 17, 13, 11, 7, 5, 3, 2] 60 = (10 : Int) := by
  decide

theorem node_7_1394 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1394 = (224 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1394 = count [19, 17, 13, 11, 7, 5, 3, 2] 1394 - count [19, 17, 13, 11, 7, 5, 3, 2] (1394 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1394 (by decide)
    _ = (234 : Int) - (10 : Int) :=
      sub_congr node_8_1394 node_8_60
    _ = (224 : Int) := by decide

theorem node_8_48 : count [19, 17, 13, 11, 7, 5, 3, 2] 48 = (8 : Int) := by
  decide

theorem node_7_48 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = (7 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = count [19, 17, 13, 11, 7, 5, 3, 2] 48 - count [19, 17, 13, 11, 7, 5, 3, 2] (48 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 48 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_8_48 node_8_2
    _ = (7 : Int) := by decide

theorem node_6_1394 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1394 = (217 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1394 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1394 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1394 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1394 (by decide)
    _ = (224 : Int) - (7 : Int) :=
      sub_congr node_7_1394 node_7_48
    _ = (217 : Int) := by decide

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

theorem node_5_1394 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1394 = (212 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1394 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1394 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1394 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1394 (by decide)
    _ = (217 : Int) - (5 : Int) :=
      sub_congr node_6_1394 node_6_44
    _ = (212 : Int) := by decide

theorem node_4_1394 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1394 = (210 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1394 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1394 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1394 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1394 (by decide)
    _ = (212 : Int) - (2 : Int) :=
      sub_congr node_5_1394 node_5_37
    _ = (210 : Int) := by decide

theorem node_8_34 : count [19, 17, 13, 11, 7, 5, 3, 2] 34 = (4 : Int) := by
  decide

theorem node_7_34 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = (3 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = count [19, 17, 13, 11, 7, 5, 3, 2] 34 - count [19, 17, 13, 11, 7, 5, 3, 2] (34 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 34 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_8_34 node_8_1
    _ = (3 : Int) := by decide

theorem node_6_34 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = (2 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 34 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (34 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 34 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_7_34 node_7_1
    _ = (2 : Int) := by decide

theorem node_5_34 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (34 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_6_34 node_6_1
    _ = (1 : Int) := by decide

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_34 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (34 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_34 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_1394 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1394 = (209 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1394 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1394 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1394 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1394 (by decide)
    _ = (210 : Int) - (1 : Int) :=
      sub_congr node_4_1394 node_4_34
    _ = (209 : Int) := by decide

theorem node_8_32 : count [19, 17, 13, 11, 7, 5, 3, 2] 32 = (4 : Int) := by
  decide

theorem node_7_32 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = (3 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = count [19, 17, 13, 11, 7, 5, 3, 2] 32 - count [19, 17, 13, 11, 7, 5, 3, 2] (32 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 32 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_8_32 node_8_1
    _ = (3 : Int) := by decide

theorem node_6_32 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = (2 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 32 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (32 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 32 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_7_32 node_7_1
    _ = (2 : Int) := by decide

theorem node_5_32 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (32 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_6_32 node_6_1
    _ = (1 : Int) := by decide

theorem node_4_32 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (32 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_32 node_5_0
    _ = (1 : Int) := by decide

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_32 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (32 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_32 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1394 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1394 = (208 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1394 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1394 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1394 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1394 (by decide)
    _ = (209 : Int) - (1 : Int) :=
      sub_congr node_3_1394 node_3_32
    _ = (208 : Int) := by decide

theorem node_1_65535 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 = (9085 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (65535 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 (by decide)
    _ = (9293 : Int) - (208 : Int) :=
      sub_congr node_2_65535 node_2_1394
    _ = (9085 : Int) := by decide

theorem node_8_1236 : count [19, 17, 13, 11, 7, 5, 3, 2] 1236 = (209 : Int) := by
  decide

theorem node_8_53 : count [19, 17, 13, 11, 7, 5, 3, 2] 53 = (9 : Int) := by
  decide

theorem node_7_1236 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1236 = (200 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1236 = count [19, 17, 13, 11, 7, 5, 3, 2] 1236 - count [19, 17, 13, 11, 7, 5, 3, 2] (1236 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1236 (by decide)
    _ = (209 : Int) - (9 : Int) :=
      sub_congr node_8_1236 node_8_53
    _ = (200 : Int) := by decide

theorem node_8_42 : count [19, 17, 13, 11, 7, 5, 3, 2] 42 = (6 : Int) := by
  decide

theorem node_7_42 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = (5 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = count [19, 17, 13, 11, 7, 5, 3, 2] 42 - count [19, 17, 13, 11, 7, 5, 3, 2] (42 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 42 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_8_42 node_8_1
    _ = (5 : Int) := by decide

theorem node_6_1236 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1236 = (195 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1236 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1236 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1236 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1236 (by decide)
    _ = (200 : Int) - (5 : Int) :=
      sub_congr node_7_1236 node_7_42
    _ = (195 : Int) := by decide

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

theorem node_5_1236 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1236 = (192 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1236 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1236 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1236 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1236 (by decide)
    _ = (195 : Int) - (3 : Int) :=
      sub_congr node_6_1236 node_6_39
    _ = (192 : Int) := by decide

theorem node_8_33 : count [19, 17, 13, 11, 7, 5, 3, 2] 33 = (4 : Int) := by
  decide

theorem node_7_33 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 33 = (3 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 33 = count [19, 17, 13, 11, 7, 5, 3, 2] 33 - count [19, 17, 13, 11, 7, 5, 3, 2] (33 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 33 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_8_33 node_8_1
    _ = (3 : Int) := by decide

theorem node_6_33 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 = (2 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 33 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (33 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 33 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_7_33 node_7_1
    _ = (2 : Int) := by decide

theorem node_5_33 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (33 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_6_33 node_6_1
    _ = (1 : Int) := by decide

theorem node_4_1236 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1236 = (191 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1236 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1236 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1236 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1236 (by decide)
    _ = (192 : Int) - (1 : Int) :=
      sub_congr node_5_1236 node_5_33
    _ = (191 : Int) := by decide

theorem node_8_30 : count [19, 17, 13, 11, 7, 5, 3, 2] 30 = (3 : Int) := by
  decide

theorem node_7_30 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 30 = (2 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 30 = count [19, 17, 13, 11, 7, 5, 3, 2] 30 - count [19, 17, 13, 11, 7, 5, 3, 2] (30 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 30 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_8_30 node_8_1
    _ = (2 : Int) := by decide

theorem node_6_30 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 30 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 30 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 30 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (30 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 30 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_7_30 node_7_1
    _ = (1 : Int) := by decide

theorem node_5_30 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 30 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 30 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 30 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (30 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 30 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_30 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_30 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 30 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 30 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 30 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (30 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 30 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_30 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_1236 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1236 = (190 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1236 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1236 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1236 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1236 (by decide)
    _ = (191 : Int) - (1 : Int) :=
      sub_congr node_4_1236 node_4_30
    _ = (190 : Int) := by decide

theorem node_8_28 : count [19, 17, 13, 11, 7, 5, 3, 2] 28 = (2 : Int) := by
  decide

theorem node_7_28 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = count [19, 17, 13, 11, 7, 5, 3, 2] 28 - count [19, 17, 13, 11, 7, 5, 3, 2] (28 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 28 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_8_28 node_8_1
    _ = (1 : Int) := by decide

theorem node_6_28 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 28 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (28 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 28 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_28 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_28 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (28 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_28 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_28 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (28 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_28 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_28 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (28 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_28 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1236 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1236 = (189 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1236 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1236 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1236 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1236 (by decide)
    _ = (190 : Int) - (1 : Int) :=
      sub_congr node_3_1236 node_3_28
    _ = (189 : Int) := by decide

theorem node_8_26 : count [19, 17, 13, 11, 7, 5, 3, 2] 26 = (2 : Int) := by
  decide

theorem node_7_26 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = count [19, 17, 13, 11, 7, 5, 3, 2] 26 - count [19, 17, 13, 11, 7, 5, 3, 2] (26 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 26 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_8_26 node_8_1
    _ = (1 : Int) := by decide

theorem node_6_26 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 26 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (26 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 26 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_26 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_26 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (26 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_26 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_26 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (26 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_26 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_26 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (26 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_26 node_4_0
    _ = (1 : Int) := by decide

theorem node_3_0 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_2_26 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (26 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_26 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1236 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1236 = (188 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1236 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1236 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1236 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1236 (by decide)
    _ = (189 : Int) - (1 : Int) :=
      sub_congr node_2_1236 node_2_26
    _ = (188 : Int) := by decide

theorem node_0_65535 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 = (8897 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (65535 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65535 (by decide)
    _ = (9085 : Int) - (188 : Int) :=
      sub_congr node_1_65535 node_1_1236
    _ = (8897 : Int) := by decide

theorem node_8_66382 : count [19, 17, 13, 11, 7, 5, 3, 2] 66382 = (11357 : Int) := by
  decide

theorem node_8_2886 : count [19, 17, 13, 11, 7, 5, 3, 2] 2886 = (490 : Int) := by
  decide

theorem node_7_66382 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 = (10867 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 = count [19, 17, 13, 11, 7, 5, 3, 2] 66382 - count [19, 17, 13, 11, 7, 5, 3, 2] (66382 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 66382 (by decide)
    _ = (11357 : Int) - (490 : Int) :=
      sub_congr node_8_66382 node_8_2886
    _ = (10867 : Int) := by decide

theorem node_8_2289 : count [19, 17, 13, 11, 7, 5, 3, 2] 2289 = (388 : Int) := by
  decide

theorem node_8_99 : count [19, 17, 13, 11, 7, 5, 3, 2] 99 = (18 : Int) := by
  decide

theorem node_7_2289 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2289 = (370 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2289 = count [19, 17, 13, 11, 7, 5, 3, 2] 2289 - count [19, 17, 13, 11, 7, 5, 3, 2] (2289 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2289 (by decide)
    _ = (388 : Int) - (18 : Int) :=
      sub_congr node_8_2289 node_8_99
    _ = (370 : Int) := by decide

theorem node_6_66382 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 = (10497 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (66382 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 (by decide)
    _ = (10867 : Int) - (370 : Int) :=
      sub_congr node_7_66382 node_7_2289
    _ = (10497 : Int) := by decide

theorem node_8_2141 : count [19, 17, 13, 11, 7, 5, 3, 2] 2141 = (363 : Int) := by
  decide

theorem node_8_93 : count [19, 17, 13, 11, 7, 5, 3, 2] 93 = (17 : Int) := by
  decide

theorem node_7_2141 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2141 = (346 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2141 = count [19, 17, 13, 11, 7, 5, 3, 2] 2141 - count [19, 17, 13, 11, 7, 5, 3, 2] (2141 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2141 (by decide)
    _ = (363 : Int) - (17 : Int) :=
      sub_congr node_8_2141 node_8_93
    _ = (346 : Int) := by decide

theorem node_8_73 : count [19, 17, 13, 11, 7, 5, 3, 2] 73 = (14 : Int) := by
  decide

theorem node_7_73 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 73 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 73 = count [19, 17, 13, 11, 7, 5, 3, 2] 73 - count [19, 17, 13, 11, 7, 5, 3, 2] (73 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 73 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_73 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_2141 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2141 = (333 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2141 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2141 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2141 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2141 (by decide)
    _ = (346 : Int) - (13 : Int) :=
      sub_congr node_7_2141 node_7_73
    _ = (333 : Int) := by decide

theorem node_5_66382 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 = (10164 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (66382 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 (by decide)
    _ = (10497 : Int) - (333 : Int) :=
      sub_congr node_6_66382 node_6_2141
    _ = (10164 : Int) := by decide

theorem node_8_1794 : count [19, 17, 13, 11, 7, 5, 3, 2] 1794 = (305 : Int) := by
  decide

theorem node_8_78 : count [19, 17, 13, 11, 7, 5, 3, 2] 78 = (14 : Int) := by
  decide

theorem node_7_1794 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1794 = (291 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1794 = count [19, 17, 13, 11, 7, 5, 3, 2] 1794 - count [19, 17, 13, 11, 7, 5, 3, 2] (1794 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1794 (by decide)
    _ = (305 : Int) - (14 : Int) :=
      sub_congr node_8_1794 node_8_78
    _ = (291 : Int) := by decide

theorem node_6_1794 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1794 = (281 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1794 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1794 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1794 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1794 (by decide)
    _ = (291 : Int) - (10 : Int) :=
      sub_congr node_7_1794 node_7_61
    _ = (281 : Int) := by decide

theorem node_5_1794 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1794 = (274 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1794 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1794 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1794 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1794 (by decide)
    _ = (281 : Int) - (7 : Int) :=
      sub_congr node_6_1794 node_6_57
    _ = (274 : Int) := by decide

theorem node_4_66382 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 = (9890 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (66382 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 (by decide)
    _ = (10164 : Int) - (274 : Int) :=
      sub_congr node_5_66382 node_5_1794
    _ = (9890 : Int) := by decide

theorem node_8_1619 : count [19, 17, 13, 11, 7, 5, 3, 2] 1619 = (275 : Int) := by
  decide

theorem node_8_70 : count [19, 17, 13, 11, 7, 5, 3, 2] 70 = (12 : Int) := by
  decide

theorem node_7_1619 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1619 = (263 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1619 = count [19, 17, 13, 11, 7, 5, 3, 2] 1619 - count [19, 17, 13, 11, 7, 5, 3, 2] (1619 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1619 (by decide)
    _ = (275 : Int) - (12 : Int) :=
      sub_congr node_8_1619 node_8_70
    _ = (263 : Int) := by decide

theorem node_6_1619 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1619 = (255 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1619 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1619 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1619 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1619 (by decide)
    _ = (263 : Int) - (8 : Int) :=
      sub_congr node_7_1619 node_7_55
    _ = (255 : Int) := by decide

theorem node_6_52 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = (6 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 52 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (52 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 52 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_7_52 node_7_1
    _ = (6 : Int) := by decide

theorem node_5_1619 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1619 = (249 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1619 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1619 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1619 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1619 (by decide)
    _ = (255 : Int) - (6 : Int) :=
      sub_congr node_6_1619 node_6_52
    _ = (249 : Int) := by decide

theorem node_4_1619 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1619 = (245 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1619 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1619 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1619 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1619 (by decide)
    _ = (249 : Int) - (4 : Int) :=
      sub_congr node_5_1619 node_5_43
    _ = (245 : Int) := by decide

theorem node_3_66382 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 = (9645 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (66382 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 (by decide)
    _ = (9890 : Int) - (245 : Int) :=
      sub_congr node_4_66382 node_4_1619
    _ = (9645 : Int) := by decide

theorem node_8_1543 : count [19, 17, 13, 11, 7, 5, 3, 2] 1543 = (261 : Int) := by
  decide

theorem node_8_67 : count [19, 17, 13, 11, 7, 5, 3, 2] 67 = (12 : Int) := by
  decide

theorem node_7_1543 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 = (249 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 = count [19, 17, 13, 11, 7, 5, 3, 2] 1543 - count [19, 17, 13, 11, 7, 5, 3, 2] (1543 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1543 (by decide)
    _ = (261 : Int) - (12 : Int) :=
      sub_congr node_8_1543 node_8_67
    _ = (249 : Int) := by decide

theorem node_7_53 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = count [19, 17, 13, 11, 7, 5, 3, 2] 53 - count [19, 17, 13, 11, 7, 5, 3, 2] (53 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 53 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_53 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_1543 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 = (241 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1543 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 (by decide)
    _ = (249 : Int) - (8 : Int) :=
      sub_congr node_7_1543 node_7_53
    _ = (241 : Int) := by decide

theorem node_5_1543 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 = (235 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1543 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 (by decide)
    _ = (241 : Int) - (6 : Int) :=
      sub_congr node_6_1543 node_6_49
    _ = (235 : Int) := by decide

theorem node_4_1543 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 = (232 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1543 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 (by decide)
    _ = (235 : Int) - (3 : Int) :=
      sub_congr node_5_1543 node_5_41
    _ = (232 : Int) := by decide

theorem node_3_1543 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 = (231 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1543 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1543 (by decide)
    _ = (232 : Int) - (1 : Int) :=
      sub_congr node_4_1543 node_4_37
    _ = (231 : Int) := by decide

theorem node_2_66382 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 = (9414 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (66382 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 (by decide)
    _ = (9645 : Int) - (231 : Int) :=
      sub_congr node_3_66382 node_3_1543
    _ = (9414 : Int) := by decide

theorem node_8_1412 : count [19, 17, 13, 11, 7, 5, 3, 2] 1412 = (237 : Int) := by
  decide

theorem node_7_1412 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1412 = (226 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1412 = count [19, 17, 13, 11, 7, 5, 3, 2] 1412 - count [19, 17, 13, 11, 7, 5, 3, 2] (1412 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1412 (by decide)
    _ = (237 : Int) - (11 : Int) :=
      sub_congr node_8_1412 node_8_61
    _ = (226 : Int) := by decide

theorem node_6_1412 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1412 = (219 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1412 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1412 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1412 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1412 (by decide)
    _ = (226 : Int) - (7 : Int) :=
      sub_congr node_7_1412 node_7_48
    _ = (219 : Int) := by decide

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

theorem node_5_1412 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1412 = (214 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1412 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1412 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1412 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1412 (by decide)
    _ = (219 : Int) - (5 : Int) :=
      sub_congr node_6_1412 node_6_45
    _ = (214 : Int) := by decide

theorem node_8_38 : count [19, 17, 13, 11, 7, 5, 3, 2] 38 = (5 : Int) := by
  decide

theorem node_7_38 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = (4 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = count [19, 17, 13, 11, 7, 5, 3, 2] 38 - count [19, 17, 13, 11, 7, 5, 3, 2] (38 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 38 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_8_38 node_8_1
    _ = (4 : Int) := by decide

theorem node_6_38 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = (3 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 38 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (38 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 38 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_7_38 node_7_1
    _ = (3 : Int) := by decide

theorem node_5_38 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = (2 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (38 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_6_38 node_6_1
    _ = (2 : Int) := by decide

theorem node_4_1412 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1412 = (212 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1412 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1412 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1412 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1412 (by decide)
    _ = (214 : Int) - (2 : Int) :=
      sub_congr node_5_1412 node_5_38
    _ = (212 : Int) := by decide

theorem node_3_1412 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1412 = (211 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1412 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1412 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1412 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1412 (by decide)
    _ = (212 : Int) - (1 : Int) :=
      sub_congr node_4_1412 node_4_34
    _ = (211 : Int) := by decide

theorem node_2_1412 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1412 = (210 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1412 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1412 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1412 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1412 (by decide)
    _ = (211 : Int) - (1 : Int) :=
      sub_congr node_3_1412 node_3_32
    _ = (210 : Int) := by decide

theorem node_1_66382 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 = (9204 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (66382 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 (by decide)
    _ = (9414 : Int) - (210 : Int) :=
      sub_congr node_2_66382 node_2_1412
    _ = (9204 : Int) := by decide

theorem node_8_1252 : count [19, 17, 13, 11, 7, 5, 3, 2] 1252 = (212 : Int) := by
  decide

theorem node_8_54 : count [19, 17, 13, 11, 7, 5, 3, 2] 54 = (9 : Int) := by
  decide

theorem node_7_1252 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1252 = (203 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1252 = count [19, 17, 13, 11, 7, 5, 3, 2] 1252 - count [19, 17, 13, 11, 7, 5, 3, 2] (1252 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1252 (by decide)
    _ = (212 : Int) - (9 : Int) :=
      sub_congr node_8_1252 node_8_54
    _ = (203 : Int) := by decide

theorem node_6_1252 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1252 = (197 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1252 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1252 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1252 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1252 (by decide)
    _ = (203 : Int) - (6 : Int) :=
      sub_congr node_7_1252 node_7_43
    _ = (197 : Int) := by decide

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

theorem node_5_1252 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1252 = (194 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1252 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1252 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1252 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1252 (by decide)
    _ = (197 : Int) - (3 : Int) :=
      sub_congr node_6_1252 node_6_40
    _ = (194 : Int) := by decide

theorem node_4_1252 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1252 = (193 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1252 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1252 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1252 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1252 (by decide)
    _ = (194 : Int) - (1 : Int) :=
      sub_congr node_5_1252 node_5_33
    _ = (193 : Int) := by decide

theorem node_3_1252 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1252 = (192 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1252 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1252 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1252 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1252 (by decide)
    _ = (193 : Int) - (1 : Int) :=
      sub_congr node_4_1252 node_4_30
    _ = (192 : Int) := by decide

theorem node_8_29 : count [19, 17, 13, 11, 7, 5, 3, 2] 29 = (3 : Int) := by
  decide

theorem node_7_29 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = (2 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = count [19, 17, 13, 11, 7, 5, 3, 2] 29 - count [19, 17, 13, 11, 7, 5, 3, 2] (29 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 29 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_8_29 node_8_1
    _ = (2 : Int) := by decide

theorem node_6_29 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 29 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (29 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 29 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_7_29 node_7_1
    _ = (1 : Int) := by decide

theorem node_5_29 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (29 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_29 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_29 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (29 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_29 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_29 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (29 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_29 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1252 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1252 = (191 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1252 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1252 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1252 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1252 (by decide)
    _ = (192 : Int) - (1 : Int) :=
      sub_congr node_3_1252 node_3_29
    _ = (191 : Int) := by decide

theorem node_1_1252 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1252 = (190 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1252 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1252 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1252 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1252 (by decide)
    _ = (191 : Int) - (1 : Int) :=
      sub_congr node_2_1252 node_2_26
    _ = (190 : Int) := by decide

theorem node_0_66382 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 = (9014 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (66382 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66382 (by decide)
    _ = (9204 : Int) - (190 : Int) :=
      sub_congr node_1_66382 node_1_1252
    _ = (9014 : Int) := by decide

theorem row_50 : count primes 65535 ≤ (8912 : Int) - 15 := by
  rw [show count primes 65535 = (8897 : Int) from node_0_65535]
  decide

theorem row_51 : count primes 66382 ≤ (9029 : Int) - 15 := by
  rw [show count primes 66382 = (9014 : Int) from node_0_66382]
  decide

def pairs : List (Nat × Nat) := [(65535, 8912), (66382, 9029)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl
  · exact row_50
  · exact row_51
end B699CorePrunedSieve.CoreRest12
#check @B699CorePrunedSieve.CoreRest12.pairs_valid
#print axioms B699CorePrunedSieve.CoreRest12.pairs_valid
