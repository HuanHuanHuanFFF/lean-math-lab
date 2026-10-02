import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreRest11
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_60546 : count [19, 17, 13, 11, 7, 5, 3, 2] 60546 = (10356 : Int) := by
  decide

theorem node_8_2632 : count [19, 17, 13, 11, 7, 5, 3, 2] 2632 = (446 : Int) := by
  decide

theorem node_7_60546 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 = (9910 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 = count [19, 17, 13, 11, 7, 5, 3, 2] 60546 - count [19, 17, 13, 11, 7, 5, 3, 2] (60546 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 60546 (by decide)
    _ = (10356 : Int) - (446 : Int) :=
      sub_congr node_8_60546 node_8_2632
    _ = (9910 : Int) := by decide

theorem node_8_2087 : count [19, 17, 13, 11, 7, 5, 3, 2] 2087 = (354 : Int) := by
  decide

theorem node_8_90 : count [19, 17, 13, 11, 7, 5, 3, 2] 90 = (17 : Int) := by
  decide

theorem node_7_2087 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2087 = (337 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2087 = count [19, 17, 13, 11, 7, 5, 3, 2] 2087 - count [19, 17, 13, 11, 7, 5, 3, 2] (2087 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2087 (by decide)
    _ = (354 : Int) - (17 : Int) :=
      sub_congr node_8_2087 node_8_90
    _ = (337 : Int) := by decide

theorem node_6_60546 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 = (9573 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (60546 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 (by decide)
    _ = (9910 : Int) - (337 : Int) :=
      sub_congr node_7_60546 node_7_2087
    _ = (9573 : Int) := by decide

theorem node_8_1953 : count [19, 17, 13, 11, 7, 5, 3, 2] 1953 = (331 : Int) := by
  decide

theorem node_8_84 : count [19, 17, 13, 11, 7, 5, 3, 2] 84 = (16 : Int) := by
  decide

theorem node_7_1953 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1953 = (315 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1953 = count [19, 17, 13, 11, 7, 5, 3, 2] 1953 - count [19, 17, 13, 11, 7, 5, 3, 2] (1953 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1953 (by decide)
    _ = (331 : Int) - (16 : Int) :=
      sub_congr node_8_1953 node_8_84
    _ = (315 : Int) := by decide

theorem node_8_67 : count [19, 17, 13, 11, 7, 5, 3, 2] 67 = (12 : Int) := by
  decide

theorem node_8_2 : count [19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  decide

theorem node_7_67 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 67 = (11 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 67 = count [19, 17, 13, 11, 7, 5, 3, 2] 67 - count [19, 17, 13, 11, 7, 5, 3, 2] (67 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 67 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_8_67 node_8_2
    _ = (11 : Int) := by decide

theorem node_6_1953 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1953 = (304 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1953 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1953 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1953 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1953 (by decide)
    _ = (315 : Int) - (11 : Int) :=
      sub_congr node_7_1953 node_7_67
    _ = (304 : Int) := by decide

theorem node_5_60546 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 = (9269 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (60546 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 (by decide)
    _ = (9573 : Int) - (304 : Int) :=
      sub_congr node_6_60546 node_6_1953
    _ = (9269 : Int) := by decide

theorem node_8_1636 : count [19, 17, 13, 11, 7, 5, 3, 2] 1636 = (278 : Int) := by
  decide

theorem node_8_71 : count [19, 17, 13, 11, 7, 5, 3, 2] 71 = (13 : Int) := by
  decide

theorem node_7_1636 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1636 = (265 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1636 = count [19, 17, 13, 11, 7, 5, 3, 2] 1636 - count [19, 17, 13, 11, 7, 5, 3, 2] (1636 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1636 (by decide)
    _ = (278 : Int) - (13 : Int) :=
      sub_congr node_8_1636 node_8_71
    _ = (265 : Int) := by decide

theorem node_8_56 : count [19, 17, 13, 11, 7, 5, 3, 2] 56 = (9 : Int) := by
  decide

theorem node_7_56 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = count [19, 17, 13, 11, 7, 5, 3, 2] 56 - count [19, 17, 13, 11, 7, 5, 3, 2] (56 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 56 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_56 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_1636 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1636 = (257 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1636 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1636 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1636 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1636 (by decide)
    _ = (265 : Int) - (8 : Int) :=
      sub_congr node_7_1636 node_7_56
    _ = (257 : Int) := by decide

theorem node_8_52 : count [19, 17, 13, 11, 7, 5, 3, 2] 52 = (8 : Int) := by
  decide

theorem node_7_52 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = (7 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = count [19, 17, 13, 11, 7, 5, 3, 2] 52 - count [19, 17, 13, 11, 7, 5, 3, 2] (52 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 52 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_8_52 node_8_2
    _ = (7 : Int) := by decide

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

theorem node_6_52 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = (6 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 52 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (52 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 52 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_7_52 node_7_1
    _ = (6 : Int) := by decide

theorem node_5_1636 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1636 = (251 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1636 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1636 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1636 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1636 (by decide)
    _ = (257 : Int) - (6 : Int) :=
      sub_congr node_6_1636 node_6_52
    _ = (251 : Int) := by decide

theorem node_4_60546 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 = (9018 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (60546 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 (by decide)
    _ = (9269 : Int) - (251 : Int) :=
      sub_congr node_5_60546 node_5_1636
    _ = (9018 : Int) := by decide

theorem node_8_1476 : count [19, 17, 13, 11, 7, 5, 3, 2] 1476 = (248 : Int) := by
  decide

theorem node_8_64 : count [19, 17, 13, 11, 7, 5, 3, 2] 64 = (11 : Int) := by
  decide

theorem node_7_1476 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1476 = (237 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1476 = count [19, 17, 13, 11, 7, 5, 3, 2] 1476 - count [19, 17, 13, 11, 7, 5, 3, 2] (1476 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1476 (by decide)
    _ = (248 : Int) - (11 : Int) :=
      sub_congr node_8_1476 node_8_64
    _ = (237 : Int) := by decide

theorem node_8_50 : count [19, 17, 13, 11, 7, 5, 3, 2] 50 = (8 : Int) := by
  decide

theorem node_7_50 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = (7 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = count [19, 17, 13, 11, 7, 5, 3, 2] 50 - count [19, 17, 13, 11, 7, 5, 3, 2] (50 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 50 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_8_50 node_8_2
    _ = (7 : Int) := by decide

theorem node_6_1476 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1476 = (230 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1476 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1476 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1476 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1476 (by decide)
    _ = (237 : Int) - (7 : Int) :=
      sub_congr node_7_1476 node_7_50
    _ = (230 : Int) := by decide

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

theorem node_5_1476 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1476 = (224 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1476 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1476 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1476 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1476 (by decide)
    _ = (230 : Int) - (6 : Int) :=
      sub_congr node_6_1476 node_6_47
    _ = (224 : Int) := by decide

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

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_1 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_1 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_39 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 = (2 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (39 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_6_39 node_6_1
    _ = (2 : Int) := by decide

theorem node_4_1476 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1476 = (222 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1476 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1476 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1476 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1476 (by decide)
    _ = (224 : Int) - (2 : Int) :=
      sub_congr node_5_1476 node_5_39
    _ = (222 : Int) := by decide

theorem node_3_60546 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 = (8796 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (60546 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 (by decide)
    _ = (9018 : Int) - (222 : Int) :=
      sub_congr node_4_60546 node_4_1476
    _ = (8796 : Int) := by decide

theorem node_8_1408 : count [19, 17, 13, 11, 7, 5, 3, 2] 1408 = (236 : Int) := by
  decide

theorem node_8_61 : count [19, 17, 13, 11, 7, 5, 3, 2] 61 = (11 : Int) := by
  decide

theorem node_7_1408 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1408 = (225 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1408 = count [19, 17, 13, 11, 7, 5, 3, 2] 1408 - count [19, 17, 13, 11, 7, 5, 3, 2] (1408 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1408 (by decide)
    _ = (236 : Int) - (11 : Int) :=
      sub_congr node_8_1408 node_8_61
    _ = (225 : Int) := by decide

theorem node_8_48 : count [19, 17, 13, 11, 7, 5, 3, 2] 48 = (8 : Int) := by
  decide

theorem node_7_48 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = (7 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = count [19, 17, 13, 11, 7, 5, 3, 2] 48 - count [19, 17, 13, 11, 7, 5, 3, 2] (48 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 48 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_8_48 node_8_2
    _ = (7 : Int) := by decide

theorem node_6_1408 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1408 = (218 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1408 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1408 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1408 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1408 (by decide)
    _ = (225 : Int) - (7 : Int) :=
      sub_congr node_7_1408 node_7_48
    _ = (218 : Int) := by decide

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

theorem node_5_1408 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1408 = (213 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1408 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1408 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1408 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1408 (by decide)
    _ = (218 : Int) - (5 : Int) :=
      sub_congr node_6_1408 node_6_45
    _ = (213 : Int) := by decide

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

theorem node_4_1408 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1408 = (211 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1408 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1408 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1408 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1408 (by decide)
    _ = (213 : Int) - (2 : Int) :=
      sub_congr node_5_1408 node_5_38
    _ = (211 : Int) := by decide

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

theorem node_3_1408 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1408 = (210 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1408 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1408 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1408 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1408 (by decide)
    _ = (211 : Int) - (1 : Int) :=
      sub_congr node_4_1408 node_4_34
    _ = (210 : Int) := by decide

theorem node_2_60546 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 = (8586 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (60546 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 (by decide)
    _ = (8796 : Int) - (210 : Int) :=
      sub_congr node_3_60546 node_3_1408
    _ = (8586 : Int) := by decide

theorem node_8_1288 : count [19, 17, 13, 11, 7, 5, 3, 2] 1288 = (217 : Int) := by
  decide

theorem node_7_1288 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1288 = (208 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1288 = count [19, 17, 13, 11, 7, 5, 3, 2] 1288 - count [19, 17, 13, 11, 7, 5, 3, 2] (1288 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1288 (by decide)
    _ = (217 : Int) - (9 : Int) :=
      sub_congr node_8_1288 node_8_56
    _ = (208 : Int) := by decide

theorem node_8_44 : count [19, 17, 13, 11, 7, 5, 3, 2] 44 = (7 : Int) := by
  decide

theorem node_7_44 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 44 = (6 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 44 = count [19, 17, 13, 11, 7, 5, 3, 2] 44 - count [19, 17, 13, 11, 7, 5, 3, 2] (44 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 44 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_8_44 node_8_1
    _ = (6 : Int) := by decide

theorem node_6_1288 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1288 = (202 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1288 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1288 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1288 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1288 (by decide)
    _ = (208 : Int) - (6 : Int) :=
      sub_congr node_7_1288 node_7_44
    _ = (202 : Int) := by decide

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

theorem node_5_1288 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1288 = (198 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1288 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1288 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1288 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1288 (by decide)
    _ = (202 : Int) - (4 : Int) :=
      sub_congr node_6_1288 node_6_41
    _ = (198 : Int) := by decide

theorem node_4_1288 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1288 = (197 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1288 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1288 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1288 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1288 (by decide)
    _ = (198 : Int) - (1 : Int) :=
      sub_congr node_5_1288 node_5_34
    _ = (197 : Int) := by decide

theorem node_8_31 : count [19, 17, 13, 11, 7, 5, 3, 2] 31 = (4 : Int) := by
  decide

theorem node_7_31 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = (3 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = count [19, 17, 13, 11, 7, 5, 3, 2] 31 - count [19, 17, 13, 11, 7, 5, 3, 2] (31 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 31 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_8_31 node_8_1
    _ = (3 : Int) := by decide

theorem node_6_31 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = (2 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 31 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (31 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 31 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_7_31 node_7_1
    _ = (2 : Int) := by decide

theorem node_5_31 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (31 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_6_31 node_6_1
    _ = (1 : Int) := by decide

theorem node_4_31 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (31 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_31 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_1288 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1288 = (196 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1288 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1288 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1288 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1288 (by decide)
    _ = (197 : Int) - (1 : Int) :=
      sub_congr node_4_1288 node_4_31
    _ = (196 : Int) := by decide

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

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

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

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_29 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (29 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_29 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1288 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1288 = (195 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1288 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1288 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1288 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1288 (by decide)
    _ = (196 : Int) - (1 : Int) :=
      sub_congr node_3_1288 node_3_29
    _ = (195 : Int) := by decide

theorem node_1_60546 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 = (8391 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (60546 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 (by decide)
    _ = (8586 : Int) - (195 : Int) :=
      sub_congr node_2_60546 node_2_1288
    _ = (8391 : Int) := by decide

theorem node_8_1142 : count [19, 17, 13, 11, 7, 5, 3, 2] 1142 = (193 : Int) := by
  decide

theorem node_8_49 : count [19, 17, 13, 11, 7, 5, 3, 2] 49 = (8 : Int) := by
  decide

theorem node_7_1142 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1142 = (185 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1142 = count [19, 17, 13, 11, 7, 5, 3, 2] 1142 - count [19, 17, 13, 11, 7, 5, 3, 2] (1142 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1142 (by decide)
    _ = (193 : Int) - (8 : Int) :=
      sub_congr node_8_1142 node_8_49
    _ = (185 : Int) := by decide

theorem node_6_1142 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1142 = (181 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1142 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1142 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1142 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1142 (by decide)
    _ = (185 : Int) - (4 : Int) :=
      sub_congr node_7_1142 node_7_39
    _ = (181 : Int) := by decide

theorem node_8_36 : count [19, 17, 13, 11, 7, 5, 3, 2] 36 = (4 : Int) := by
  decide

theorem node_7_36 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = (3 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = count [19, 17, 13, 11, 7, 5, 3, 2] 36 - count [19, 17, 13, 11, 7, 5, 3, 2] (36 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 36 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_8_36 node_8_1
    _ = (3 : Int) := by decide

theorem node_6_36 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = (2 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 36 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (36 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 36 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_7_36 node_7_1
    _ = (2 : Int) := by decide

theorem node_5_1142 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1142 = (179 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1142 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1142 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1142 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1142 (by decide)
    _ = (181 : Int) - (2 : Int) :=
      sub_congr node_6_1142 node_6_36
    _ = (179 : Int) := by decide

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

theorem node_4_1142 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1142 = (178 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1142 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1142 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1142 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1142 (by decide)
    _ = (179 : Int) - (1 : Int) :=
      sub_congr node_5_1142 node_5_30
    _ = (178 : Int) := by decide

theorem node_8_27 : count [19, 17, 13, 11, 7, 5, 3, 2] 27 = (2 : Int) := by
  decide

theorem node_7_27 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = count [19, 17, 13, 11, 7, 5, 3, 2] 27 - count [19, 17, 13, 11, 7, 5, 3, 2] (27 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 27 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_8_27 node_8_1
    _ = (1 : Int) := by decide

theorem node_6_27 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 27 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (27 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 27 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_27 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_27 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (27 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_27 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_27 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (27 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_27 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_1142 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1142 = (177 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1142 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1142 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1142 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1142 (by decide)
    _ = (178 : Int) - (1 : Int) :=
      sub_congr node_4_1142 node_4_27
    _ = (177 : Int) := by decide

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

theorem node_2_1142 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1142 = (176 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1142 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1142 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1142 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1142 (by decide)
    _ = (177 : Int) - (1 : Int) :=
      sub_congr node_3_1142 node_3_26
    _ = (176 : Int) := by decide

theorem node_8_24 : count [19, 17, 13, 11, 7, 5, 3, 2] 24 = (2 : Int) := by
  decide

theorem node_7_24 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = count [19, 17, 13, 11, 7, 5, 3, 2] 24 - count [19, 17, 13, 11, 7, 5, 3, 2] (24 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 24 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_8_24 node_8_1
    _ = (1 : Int) := by decide

theorem node_6_24 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 24 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (24 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 24 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_24 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_24 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (24 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_24 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_24 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (24 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_24 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_24 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (24 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_24 node_4_0
    _ = (1 : Int) := by decide

theorem node_3_0 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_2_24 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (24 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_24 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1142 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1142 = (175 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1142 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1142 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1142 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1142 (by decide)
    _ = (176 : Int) - (1 : Int) :=
      sub_congr node_2_1142 node_2_24
    _ = (175 : Int) := by decide

theorem node_0_60546 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 = (8216 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (60546 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60546 (by decide)
    _ = (8391 : Int) - (175 : Int) :=
      sub_congr node_1_60546 node_1_1142
    _ = (8216 : Int) := by decide

theorem node_8_63522 : count [19, 17, 13, 11, 7, 5, 3, 2] 63522 = (10865 : Int) := by
  decide

theorem node_8_2761 : count [19, 17, 13, 11, 7, 5, 3, 2] 2761 = (470 : Int) := by
  decide

theorem node_7_63522 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 = (10395 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 = count [19, 17, 13, 11, 7, 5, 3, 2] 63522 - count [19, 17, 13, 11, 7, 5, 3, 2] (63522 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 63522 (by decide)
    _ = (10865 : Int) - (470 : Int) :=
      sub_congr node_8_63522 node_8_2761
    _ = (10395 : Int) := by decide

theorem node_8_2190 : count [19, 17, 13, 11, 7, 5, 3, 2] 2190 = (369 : Int) := by
  decide

theorem node_8_95 : count [19, 17, 13, 11, 7, 5, 3, 2] 95 = (17 : Int) := by
  decide

theorem node_7_2190 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2190 = (352 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2190 = count [19, 17, 13, 11, 7, 5, 3, 2] 2190 - count [19, 17, 13, 11, 7, 5, 3, 2] (2190 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2190 (by decide)
    _ = (369 : Int) - (17 : Int) :=
      sub_congr node_8_2190 node_8_95
    _ = (352 : Int) := by decide

theorem node_6_63522 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 = (10043 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (63522 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 (by decide)
    _ = (10395 : Int) - (352 : Int) :=
      sub_congr node_7_63522 node_7_2190
    _ = (10043 : Int) := by decide

theorem node_8_2049 : count [19, 17, 13, 11, 7, 5, 3, 2] 2049 = (346 : Int) := by
  decide

theorem node_8_89 : count [19, 17, 13, 11, 7, 5, 3, 2] 89 = (17 : Int) := by
  decide

theorem node_7_2049 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2049 = (329 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2049 = count [19, 17, 13, 11, 7, 5, 3, 2] 2049 - count [19, 17, 13, 11, 7, 5, 3, 2] (2049 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2049 (by decide)
    _ = (346 : Int) - (17 : Int) :=
      sub_congr node_8_2049 node_8_89
    _ = (329 : Int) := by decide

theorem node_8_70 : count [19, 17, 13, 11, 7, 5, 3, 2] 70 = (12 : Int) := by
  decide

theorem node_8_3 : count [19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  decide

theorem node_7_70 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 70 = (11 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 70 = count [19, 17, 13, 11, 7, 5, 3, 2] 70 - count [19, 17, 13, 11, 7, 5, 3, 2] (70 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 70 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_8_70 node_8_3
    _ = (11 : Int) := by decide

theorem node_6_2049 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2049 = (318 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2049 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2049 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2049 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2049 (by decide)
    _ = (329 : Int) - (11 : Int) :=
      sub_congr node_7_2049 node_7_70
    _ = (318 : Int) := by decide

theorem node_5_63522 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 = (9725 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (63522 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 (by decide)
    _ = (10043 : Int) - (318 : Int) :=
      sub_congr node_6_63522 node_6_2049
    _ = (9725 : Int) := by decide

theorem node_8_1716 : count [19, 17, 13, 11, 7, 5, 3, 2] 1716 = (291 : Int) := by
  decide

theorem node_8_74 : count [19, 17, 13, 11, 7, 5, 3, 2] 74 = (14 : Int) := by
  decide

theorem node_7_1716 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1716 = (277 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1716 = count [19, 17, 13, 11, 7, 5, 3, 2] 1716 - count [19, 17, 13, 11, 7, 5, 3, 2] (1716 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1716 (by decide)
    _ = (291 : Int) - (14 : Int) :=
      sub_congr node_8_1716 node_8_74
    _ = (277 : Int) := by decide

theorem node_8_59 : count [19, 17, 13, 11, 7, 5, 3, 2] 59 = (10 : Int) := by
  decide

theorem node_7_59 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = (9 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = count [19, 17, 13, 11, 7, 5, 3, 2] 59 - count [19, 17, 13, 11, 7, 5, 3, 2] (59 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 59 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_8_59 node_8_2
    _ = (9 : Int) := by decide

theorem node_6_1716 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1716 = (268 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1716 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1716 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1716 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1716 (by decide)
    _ = (277 : Int) - (9 : Int) :=
      sub_congr node_7_1716 node_7_59
    _ = (268 : Int) := by decide

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

theorem node_5_1716 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1716 = (261 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1716 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1716 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1716 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1716 (by decide)
    _ = (268 : Int) - (7 : Int) :=
      sub_congr node_6_1716 node_6_55
    _ = (261 : Int) := by decide

theorem node_4_63522 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 = (9464 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (63522 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 (by decide)
    _ = (9725 : Int) - (261 : Int) :=
      sub_congr node_5_63522 node_5_1716
    _ = (9464 : Int) := by decide

theorem node_8_1549 : count [19, 17, 13, 11, 7, 5, 3, 2] 1549 = (262 : Int) := by
  decide

theorem node_7_1549 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1549 = (250 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1549 = count [19, 17, 13, 11, 7, 5, 3, 2] 1549 - count [19, 17, 13, 11, 7, 5, 3, 2] (1549 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1549 (by decide)
    _ = (262 : Int) - (12 : Int) :=
      sub_congr node_8_1549 node_8_67
    _ = (250 : Int) := by decide

theorem node_8_53 : count [19, 17, 13, 11, 7, 5, 3, 2] 53 = (9 : Int) := by
  decide

theorem node_7_53 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = count [19, 17, 13, 11, 7, 5, 3, 2] 53 - count [19, 17, 13, 11, 7, 5, 3, 2] (53 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 53 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_53 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_1549 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1549 = (242 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1549 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1549 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1549 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1549 (by decide)
    _ = (250 : Int) - (8 : Int) :=
      sub_congr node_7_1549 node_7_53
    _ = (242 : Int) := by decide

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

theorem node_5_1549 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1549 = (236 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1549 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1549 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1549 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1549 (by decide)
    _ = (242 : Int) - (6 : Int) :=
      sub_congr node_6_1549 node_6_49
    _ = (236 : Int) := by decide

theorem node_5_41 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = (3 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (41 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_6_41 node_6_1
    _ = (3 : Int) := by decide

theorem node_4_1549 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1549 = (233 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1549 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1549 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1549 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1549 (by decide)
    _ = (236 : Int) - (3 : Int) :=
      sub_congr node_5_1549 node_5_41
    _ = (233 : Int) := by decide

theorem node_3_63522 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 = (9231 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (63522 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 (by decide)
    _ = (9464 : Int) - (233 : Int) :=
      sub_congr node_4_63522 node_4_1549
    _ = (9231 : Int) := by decide

theorem node_8_1477 : count [19, 17, 13, 11, 7, 5, 3, 2] 1477 = (248 : Int) := by
  decide

theorem node_7_1477 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1477 = (237 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1477 = count [19, 17, 13, 11, 7, 5, 3, 2] 1477 - count [19, 17, 13, 11, 7, 5, 3, 2] (1477 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1477 (by decide)
    _ = (248 : Int) - (11 : Int) :=
      sub_congr node_8_1477 node_8_64
    _ = (237 : Int) := by decide

theorem node_6_1477 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1477 = (230 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1477 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1477 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1477 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1477 (by decide)
    _ = (237 : Int) - (7 : Int) :=
      sub_congr node_7_1477 node_7_50
    _ = (230 : Int) := by decide

theorem node_5_1477 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1477 = (224 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1477 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1477 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1477 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1477 (by decide)
    _ = (230 : Int) - (6 : Int) :=
      sub_congr node_6_1477 node_6_47
    _ = (224 : Int) := by decide

theorem node_4_1477 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1477 = (222 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1477 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1477 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1477 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1477 (by decide)
    _ = (224 : Int) - (2 : Int) :=
      sub_congr node_5_1477 node_5_39
    _ = (222 : Int) := by decide

theorem node_5_36 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (36 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_6_36 node_6_1
    _ = (1 : Int) := by decide

theorem node_4_36 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (36 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_36 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_1477 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1477 = (221 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1477 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1477 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1477 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1477 (by decide)
    _ = (222 : Int) - (1 : Int) :=
      sub_congr node_4_1477 node_4_36
    _ = (221 : Int) := by decide

theorem node_2_63522 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 = (9010 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (63522 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 (by decide)
    _ = (9231 : Int) - (221 : Int) :=
      sub_congr node_3_63522 node_3_1477
    _ = (9010 : Int) := by decide

theorem node_8_1351 : count [19, 17, 13, 11, 7, 5, 3, 2] 1351 = (227 : Int) := by
  decide

theorem node_8_58 : count [19, 17, 13, 11, 7, 5, 3, 2] 58 = (9 : Int) := by
  decide

theorem node_7_1351 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 = (218 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 = count [19, 17, 13, 11, 7, 5, 3, 2] 1351 - count [19, 17, 13, 11, 7, 5, 3, 2] (1351 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1351 (by decide)
    _ = (227 : Int) - (9 : Int) :=
      sub_congr node_8_1351 node_8_58
    _ = (218 : Int) := by decide

theorem node_8_46 : count [19, 17, 13, 11, 7, 5, 3, 2] 46 = (7 : Int) := by
  decide

theorem node_7_46 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = (6 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = count [19, 17, 13, 11, 7, 5, 3, 2] 46 - count [19, 17, 13, 11, 7, 5, 3, 2] (46 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 46 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_8_46 node_8_2
    _ = (6 : Int) := by decide

theorem node_6_1351 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 = (212 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1351 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 (by decide)
    _ = (218 : Int) - (6 : Int) :=
      sub_congr node_7_1351 node_7_46
    _ = (212 : Int) := by decide

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

theorem node_5_1351 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 = (207 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1351 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 (by decide)
    _ = (212 : Int) - (5 : Int) :=
      sub_congr node_6_1351 node_6_43
    _ = (207 : Int) := by decide

theorem node_4_1351 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 = (206 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1351 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 (by decide)
    _ = (207 : Int) - (1 : Int) :=
      sub_congr node_5_1351 node_5_36
    _ = (206 : Int) := by decide

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

theorem node_3_1351 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 = (205 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1351 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 (by decide)
    _ = (206 : Int) - (1 : Int) :=
      sub_congr node_4_1351 node_4_32
    _ = (205 : Int) := by decide

theorem node_3_31 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (31 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_31 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1351 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 = (204 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1351 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 (by decide)
    _ = (205 : Int) - (1 : Int) :=
      sub_congr node_3_1351 node_3_31
    _ = (204 : Int) := by decide

theorem node_1_63522 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 = (8806 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (63522 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 (by decide)
    _ = (9010 : Int) - (204 : Int) :=
      sub_congr node_2_63522 node_2_1351
    _ = (8806 : Int) := by decide

theorem node_8_1198 : count [19, 17, 13, 11, 7, 5, 3, 2] 1198 = (202 : Int) := by
  decide

theorem node_7_1198 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1198 = (194 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1198 = count [19, 17, 13, 11, 7, 5, 3, 2] 1198 - count [19, 17, 13, 11, 7, 5, 3, 2] (1198 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1198 (by decide)
    _ = (202 : Int) - (8 : Int) :=
      sub_congr node_8_1198 node_8_52
    _ = (194 : Int) := by decide

theorem node_6_1198 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1198 = (189 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1198 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1198 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1198 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1198 (by decide)
    _ = (194 : Int) - (5 : Int) :=
      sub_congr node_7_1198 node_7_41
    _ = (189 : Int) := by decide

theorem node_5_1198 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1198 = (186 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1198 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1198 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1198 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1198 (by decide)
    _ = (189 : Int) - (3 : Int) :=
      sub_congr node_6_1198 node_6_38
    _ = (186 : Int) := by decide

theorem node_4_1198 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1198 = (185 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1198 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1198 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1198 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1198 (by decide)
    _ = (186 : Int) - (1 : Int) :=
      sub_congr node_5_1198 node_5_32
    _ = (185 : Int) := by decide

theorem node_3_1198 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1198 = (184 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1198 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1198 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1198 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1198 (by decide)
    _ = (185 : Int) - (1 : Int) :=
      sub_congr node_4_1198 node_4_29
    _ = (184 : Int) := by decide

theorem node_3_27 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (27 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_27 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1198 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1198 = (183 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1198 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1198 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1198 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1198 (by decide)
    _ = (184 : Int) - (1 : Int) :=
      sub_congr node_3_1198 node_3_27
    _ = (183 : Int) := by decide

theorem node_8_25 : count [19, 17, 13, 11, 7, 5, 3, 2] 25 = (2 : Int) := by
  decide

theorem node_7_25 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = count [19, 17, 13, 11, 7, 5, 3, 2] 25 - count [19, 17, 13, 11, 7, 5, 3, 2] (25 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 25 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_8_25 node_8_1
    _ = (1 : Int) := by decide

theorem node_6_25 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 25 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (25 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 25 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_25 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_25 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (25 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_25 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_25 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (25 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_25 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_25 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (25 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_25 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_25 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (25 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_25 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1198 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1198 = (182 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1198 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1198 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1198 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1198 (by decide)
    _ = (183 : Int) - (1 : Int) :=
      sub_congr node_2_1198 node_2_25
    _ = (182 : Int) := by decide

theorem node_0_63522 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 = (8624 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (63522 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63522 (by decide)
    _ = (8806 : Int) - (182 : Int) :=
      sub_congr node_1_63522 node_1_1198
    _ = (8624 : Int) := by decide

theorem row_48 : count primes 60546 ≤ (8231 : Int) - 15 := by
  rw [show count primes 60546 = (8216 : Int) from node_0_60546]
  decide

theorem row_49 : count primes 63522 ≤ (8639 : Int) - 15 := by
  rw [show count primes 63522 = (8624 : Int) from node_0_63522]
  decide

def pairs : List (Nat × Nat) := [(60546, 8231), (63522, 8639)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl
  · exact row_48
  · exact row_49
end B699CorePrunedSieve.CoreRest11
#check @B699CorePrunedSieve.CoreRest11.pairs_valid
#print axioms B699CorePrunedSieve.CoreRest11.pairs_valid
