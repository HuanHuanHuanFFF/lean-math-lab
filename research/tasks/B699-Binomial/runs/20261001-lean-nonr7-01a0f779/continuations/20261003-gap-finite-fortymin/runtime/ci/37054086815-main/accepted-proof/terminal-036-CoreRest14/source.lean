import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreRest14
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_68916 : count [19, 17, 13, 11, 7, 5, 3, 2] 68916 = (11787 : Int) := by
  decide

theorem node_8_2996 : count [19, 17, 13, 11, 7, 5, 3, 2] 2996 = (508 : Int) := by
  decide

theorem node_7_68916 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 = (11279 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 = count [19, 17, 13, 11, 7, 5, 3, 2] 68916 - count [19, 17, 13, 11, 7, 5, 3, 2] (68916 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 68916 (by decide)
    _ = (11787 : Int) - (508 : Int) :=
      sub_congr node_8_68916 node_8_2996
    _ = (11279 : Int) := by decide

theorem node_8_2376 : count [19, 17, 13, 11, 7, 5, 3, 2] 2376 = (402 : Int) := by
  decide

theorem node_8_103 : count [19, 17, 13, 11, 7, 5, 3, 2] 103 = (20 : Int) := by
  decide

theorem node_7_2376 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2376 = (382 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2376 = count [19, 17, 13, 11, 7, 5, 3, 2] 2376 - count [19, 17, 13, 11, 7, 5, 3, 2] (2376 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2376 (by decide)
    _ = (402 : Int) - (20 : Int) :=
      sub_congr node_8_2376 node_8_103
    _ = (382 : Int) := by decide

theorem node_6_68916 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 = (10897 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (68916 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 (by decide)
    _ = (11279 : Int) - (382 : Int) :=
      sub_congr node_7_68916 node_7_2376
    _ = (10897 : Int) := by decide

theorem node_8_2223 : count [19, 17, 13, 11, 7, 5, 3, 2] 2223 = (375 : Int) := by
  decide

theorem node_8_96 : count [19, 17, 13, 11, 7, 5, 3, 2] 96 = (17 : Int) := by
  decide

theorem node_7_2223 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2223 = (358 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2223 = count [19, 17, 13, 11, 7, 5, 3, 2] 2223 - count [19, 17, 13, 11, 7, 5, 3, 2] (2223 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2223 (by decide)
    _ = (375 : Int) - (17 : Int) :=
      sub_congr node_8_2223 node_8_96
    _ = (358 : Int) := by decide

theorem node_8_76 : count [19, 17, 13, 11, 7, 5, 3, 2] 76 = (14 : Int) := by
  decide

theorem node_8_3 : count [19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  decide

theorem node_7_76 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 76 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 76 = count [19, 17, 13, 11, 7, 5, 3, 2] 76 - count [19, 17, 13, 11, 7, 5, 3, 2] (76 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 76 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_76 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_2223 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2223 = (345 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2223 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2223 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2223 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2223 (by decide)
    _ = (358 : Int) - (13 : Int) :=
      sub_congr node_7_2223 node_7_76
    _ = (345 : Int) := by decide

theorem node_5_68916 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 = (10552 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (68916 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 (by decide)
    _ = (10897 : Int) - (345 : Int) :=
      sub_congr node_6_68916 node_6_2223
    _ = (10552 : Int) := by decide

theorem node_8_1862 : count [19, 17, 13, 11, 7, 5, 3, 2] 1862 = (314 : Int) := by
  decide

theorem node_8_80 : count [19, 17, 13, 11, 7, 5, 3, 2] 80 = (15 : Int) := by
  decide

theorem node_7_1862 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 = (299 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 = count [19, 17, 13, 11, 7, 5, 3, 2] 1862 - count [19, 17, 13, 11, 7, 5, 3, 2] (1862 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1862 (by decide)
    _ = (314 : Int) - (15 : Int) :=
      sub_congr node_8_1862 node_8_80
    _ = (299 : Int) := by decide

theorem node_8_64 : count [19, 17, 13, 11, 7, 5, 3, 2] 64 = (11 : Int) := by
  decide

theorem node_8_2 : count [19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  decide

theorem node_7_64 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = (10 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = count [19, 17, 13, 11, 7, 5, 3, 2] 64 - count [19, 17, 13, 11, 7, 5, 3, 2] (64 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 64 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_8_64 node_8_2
    _ = (10 : Int) := by decide

theorem node_6_1862 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 = (289 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1862 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 (by decide)
    _ = (299 : Int) - (10 : Int) :=
      sub_congr node_7_1862 node_7_64
    _ = (289 : Int) := by decide

theorem node_8_60 : count [19, 17, 13, 11, 7, 5, 3, 2] 60 = (10 : Int) := by
  decide

theorem node_7_60 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = (9 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = count [19, 17, 13, 11, 7, 5, 3, 2] 60 - count [19, 17, 13, 11, 7, 5, 3, 2] (60 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 60 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_8_60 node_8_2
    _ = (9 : Int) := by decide

theorem node_8_0 : count [19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [19, 17, 13, 11, 7, 5, 3, 2]

theorem node_7_2 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [19, 17, 13, 11, 7, 5, 3, 2] 2 - count [19, 17, 13, 11, 7, 5, 3, 2] (2 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_2 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_60 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = (8 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 60 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (60 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 60 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_7_60 node_7_2
    _ = (8 : Int) := by decide

theorem node_5_1862 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 = (281 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1862 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1862 (by decide)
    _ = (289 : Int) - (8 : Int) :=
      sub_congr node_6_1862 node_6_60
    _ = (281 : Int) := by decide

theorem node_4_68916 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 = (10271 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (68916 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 (by decide)
    _ = (10552 : Int) - (281 : Int) :=
      sub_congr node_5_68916 node_5_1862
    _ = (10271 : Int) := by decide

theorem node_8_1680 : count [19, 17, 13, 11, 7, 5, 3, 2] 1680 = (285 : Int) := by
  decide

theorem node_8_73 : count [19, 17, 13, 11, 7, 5, 3, 2] 73 = (14 : Int) := by
  decide

theorem node_7_1680 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1680 = (271 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1680 = count [19, 17, 13, 11, 7, 5, 3, 2] 1680 - count [19, 17, 13, 11, 7, 5, 3, 2] (1680 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1680 (by decide)
    _ = (285 : Int) - (14 : Int) :=
      sub_congr node_8_1680 node_8_73
    _ = (271 : Int) := by decide

theorem node_8_57 : count [19, 17, 13, 11, 7, 5, 3, 2] 57 = (9 : Int) := by
  decide

theorem node_7_57 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = count [19, 17, 13, 11, 7, 5, 3, 2] 57 - count [19, 17, 13, 11, 7, 5, 3, 2] (57 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 57 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_57 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_1680 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1680 = (263 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1680 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1680 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1680 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1680 (by decide)
    _ = (271 : Int) - (8 : Int) :=
      sub_congr node_7_1680 node_7_57
    _ = (263 : Int) := by decide

theorem node_8_54 : count [19, 17, 13, 11, 7, 5, 3, 2] 54 = (9 : Int) := by
  decide

theorem node_7_54 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 54 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 54 = count [19, 17, 13, 11, 7, 5, 3, 2] 54 - count [19, 17, 13, 11, 7, 5, 3, 2] (54 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 54 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_54 node_8_2
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

theorem node_6_54 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 = (7 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 54 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (54 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 54 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_7_54 node_7_1
    _ = (7 : Int) := by decide

theorem node_5_1680 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1680 = (256 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1680 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1680 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1680 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1680 (by decide)
    _ = (263 : Int) - (7 : Int) :=
      sub_congr node_6_1680 node_6_54
    _ = (256 : Int) := by decide

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

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_1 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_1 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_45 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 = (4 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (45 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 45 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_6_45 node_6_1
    _ = (4 : Int) := by decide

theorem node_4_1680 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1680 = (252 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1680 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1680 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1680 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1680 (by decide)
    _ = (256 : Int) - (4 : Int) :=
      sub_congr node_5_1680 node_5_45
    _ = (252 : Int) := by decide

theorem node_3_68916 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 = (10019 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (68916 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 (by decide)
    _ = (10271 : Int) - (252 : Int) :=
      sub_congr node_4_68916 node_4_1680
    _ = (10019 : Int) := by decide

theorem node_8_1602 : count [19, 17, 13, 11, 7, 5, 3, 2] 1602 = (271 : Int) := by
  decide

theorem node_8_69 : count [19, 17, 13, 11, 7, 5, 3, 2] 69 = (12 : Int) := by
  decide

theorem node_7_1602 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1602 = (259 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1602 = count [19, 17, 13, 11, 7, 5, 3, 2] 1602 - count [19, 17, 13, 11, 7, 5, 3, 2] (1602 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1602 (by decide)
    _ = (271 : Int) - (12 : Int) :=
      sub_congr node_8_1602 node_8_69
    _ = (259 : Int) := by decide

theorem node_8_55 : count [19, 17, 13, 11, 7, 5, 3, 2] 55 = (9 : Int) := by
  decide

theorem node_7_55 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = count [19, 17, 13, 11, 7, 5, 3, 2] 55 - count [19, 17, 13, 11, 7, 5, 3, 2] (55 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 55 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_55 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_1602 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1602 = (251 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1602 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1602 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1602 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1602 (by decide)
    _ = (259 : Int) - (8 : Int) :=
      sub_congr node_7_1602 node_7_55
    _ = (251 : Int) := by decide

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

theorem node_5_1602 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1602 = (245 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1602 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1602 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1602 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1602 (by decide)
    _ = (251 : Int) - (6 : Int) :=
      sub_congr node_6_1602 node_6_51
    _ = (245 : Int) := by decide

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

theorem node_4_1602 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1602 = (241 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1602 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1602 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1602 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1602 (by decide)
    _ = (245 : Int) - (4 : Int) :=
      sub_congr node_5_1602 node_5_43
    _ = (241 : Int) := by decide

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

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_1 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_1 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_39 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (39 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_5_39 node_5_1
    _ = (1 : Int) := by decide

theorem node_3_1602 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1602 = (240 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1602 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1602 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1602 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1602 (by decide)
    _ = (241 : Int) - (1 : Int) :=
      sub_congr node_4_1602 node_4_39
    _ = (240 : Int) := by decide

theorem node_2_68916 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 = (9779 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (68916 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 (by decide)
    _ = (10019 : Int) - (240 : Int) :=
      sub_congr node_3_68916 node_3_1602
    _ = (9779 : Int) := by decide

theorem node_8_1466 : count [19, 17, 13, 11, 7, 5, 3, 2] 1466 = (247 : Int) := by
  decide

theorem node_8_63 : count [19, 17, 13, 11, 7, 5, 3, 2] 63 = (11 : Int) := by
  decide

theorem node_7_1466 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1466 = (236 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1466 = count [19, 17, 13, 11, 7, 5, 3, 2] 1466 - count [19, 17, 13, 11, 7, 5, 3, 2] (1466 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1466 (by decide)
    _ = (247 : Int) - (11 : Int) :=
      sub_congr node_8_1466 node_8_63
    _ = (236 : Int) := by decide

theorem node_8_50 : count [19, 17, 13, 11, 7, 5, 3, 2] 50 = (8 : Int) := by
  decide

theorem node_7_50 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = (7 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = count [19, 17, 13, 11, 7, 5, 3, 2] 50 - count [19, 17, 13, 11, 7, 5, 3, 2] (50 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 50 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_8_50 node_8_2
    _ = (7 : Int) := by decide

theorem node_6_1466 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1466 = (229 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1466 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1466 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1466 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1466 (by decide)
    _ = (236 : Int) - (7 : Int) :=
      sub_congr node_7_1466 node_7_50
    _ = (229 : Int) := by decide

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

theorem node_5_1466 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1466 = (223 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1466 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1466 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1466 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1466 (by decide)
    _ = (229 : Int) - (6 : Int) :=
      sub_congr node_6_1466 node_6_47
    _ = (223 : Int) := by decide

theorem node_4_1466 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1466 = (221 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1466 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1466 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1466 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1466 (by decide)
    _ = (223 : Int) - (2 : Int) :=
      sub_congr node_5_1466 node_5_39
    _ = (221 : Int) := by decide

theorem node_8_35 : count [19, 17, 13, 11, 7, 5, 3, 2] 35 = (4 : Int) := by
  decide

theorem node_7_35 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = (3 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = count [19, 17, 13, 11, 7, 5, 3, 2] 35 - count [19, 17, 13, 11, 7, 5, 3, 2] (35 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 35 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_8_35 node_8_1
    _ = (3 : Int) := by decide

theorem node_6_35 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = (2 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 35 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (35 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 35 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_7_35 node_7_1
    _ = (2 : Int) := by decide

theorem node_5_35 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (35 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_6_35 node_6_1
    _ = (1 : Int) := by decide

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_35 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (35 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_35 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_1466 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1466 = (220 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1466 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1466 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1466 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1466 (by decide)
    _ = (221 : Int) - (1 : Int) :=
      sub_congr node_4_1466 node_4_35
    _ = (220 : Int) := by decide

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

theorem node_4_34 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (34 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_34 node_5_0
    _ = (1 : Int) := by decide

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_34 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (34 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_34 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1466 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1466 = (219 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1466 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1466 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1466 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1466 (by decide)
    _ = (220 : Int) - (1 : Int) :=
      sub_congr node_3_1466 node_3_34
    _ = (219 : Int) := by decide

theorem node_1_68916 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 = (9560 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (68916 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 (by decide)
    _ = (9779 : Int) - (219 : Int) :=
      sub_congr node_2_68916 node_2_1466
    _ = (9560 : Int) := by decide

theorem node_8_1300 : count [19, 17, 13, 11, 7, 5, 3, 2] 1300 = (220 : Int) := by
  decide

theorem node_8_56 : count [19, 17, 13, 11, 7, 5, 3, 2] 56 = (9 : Int) := by
  decide

theorem node_7_1300 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1300 = (211 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1300 = count [19, 17, 13, 11, 7, 5, 3, 2] 1300 - count [19, 17, 13, 11, 7, 5, 3, 2] (1300 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1300 (by decide)
    _ = (220 : Int) - (9 : Int) :=
      sub_congr node_8_1300 node_8_56
    _ = (211 : Int) := by decide

theorem node_8_44 : count [19, 17, 13, 11, 7, 5, 3, 2] 44 = (7 : Int) := by
  decide

theorem node_7_44 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 44 = (6 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 44 = count [19, 17, 13, 11, 7, 5, 3, 2] 44 - count [19, 17, 13, 11, 7, 5, 3, 2] (44 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 44 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_8_44 node_8_1
    _ = (6 : Int) := by decide

theorem node_6_1300 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1300 = (205 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1300 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1300 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1300 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1300 (by decide)
    _ = (211 : Int) - (6 : Int) :=
      sub_congr node_7_1300 node_7_44
    _ = (205 : Int) := by decide

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

theorem node_5_1300 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1300 = (201 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1300 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1300 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1300 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1300 (by decide)
    _ = (205 : Int) - (4 : Int) :=
      sub_congr node_6_1300 node_6_41
    _ = (201 : Int) := by decide

theorem node_4_1300 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1300 = (200 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1300 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1300 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1300 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1300 (by decide)
    _ = (201 : Int) - (1 : Int) :=
      sub_congr node_5_1300 node_5_35
    _ = (200 : Int) := by decide

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

theorem node_3_1300 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1300 = (199 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1300 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1300 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1300 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1300 (by decide)
    _ = (200 : Int) - (1 : Int) :=
      sub_congr node_4_1300 node_4_31
    _ = (199 : Int) := by decide

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

theorem node_3_30 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 30 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 30 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 30 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (30 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 30 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_30 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1300 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1300 = (198 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1300 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1300 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1300 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1300 (by decide)
    _ = (199 : Int) - (1 : Int) :=
      sub_congr node_3_1300 node_3_30
    _ = (198 : Int) := by decide

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

theorem node_3_27 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (27 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_27 node_4_0
    _ = (1 : Int) := by decide

theorem node_3_0 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_2_27 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (27 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_27 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1300 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1300 = (197 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1300 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1300 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1300 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1300 (by decide)
    _ = (198 : Int) - (1 : Int) :=
      sub_congr node_2_1300 node_2_27
    _ = (197 : Int) := by decide

theorem node_0_68916 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 = (9363 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (68916 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68916 (by decide)
    _ = (9560 : Int) - (197 : Int) :=
      sub_congr node_1_68916 node_1_1300
    _ = (9363 : Int) := by decide

theorem node_8_69828 : count [19, 17, 13, 11, 7, 5, 3, 2] 69828 = (11942 : Int) := by
  decide

theorem node_8_3036 : count [19, 17, 13, 11, 7, 5, 3, 2] 3036 = (515 : Int) := by
  decide

theorem node_7_69828 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 = (11427 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 = count [19, 17, 13, 11, 7, 5, 3, 2] 69828 - count [19, 17, 13, 11, 7, 5, 3, 2] (69828 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 69828 (by decide)
    _ = (11942 : Int) - (515 : Int) :=
      sub_congr node_8_69828 node_8_3036
    _ = (11427 : Int) := by decide

theorem node_8_2407 : count [19, 17, 13, 11, 7, 5, 3, 2] 2407 = (409 : Int) := by
  decide

theorem node_8_104 : count [19, 17, 13, 11, 7, 5, 3, 2] 104 = (20 : Int) := by
  decide

theorem node_7_2407 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2407 = (389 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2407 = count [19, 17, 13, 11, 7, 5, 3, 2] 2407 - count [19, 17, 13, 11, 7, 5, 3, 2] (2407 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2407 (by decide)
    _ = (409 : Int) - (20 : Int) :=
      sub_congr node_8_2407 node_8_104
    _ = (389 : Int) := by decide

theorem node_6_69828 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 = (11038 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (69828 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 (by decide)
    _ = (11427 : Int) - (389 : Int) :=
      sub_congr node_7_69828 node_7_2407
    _ = (11038 : Int) := by decide

theorem node_8_2252 : count [19, 17, 13, 11, 7, 5, 3, 2] 2252 = (380 : Int) := by
  decide

theorem node_8_97 : count [19, 17, 13, 11, 7, 5, 3, 2] 97 = (18 : Int) := by
  decide

theorem node_7_2252 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2252 = (362 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2252 = count [19, 17, 13, 11, 7, 5, 3, 2] 2252 - count [19, 17, 13, 11, 7, 5, 3, 2] (2252 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2252 (by decide)
    _ = (380 : Int) - (18 : Int) :=
      sub_congr node_8_2252 node_8_97
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

theorem node_6_2252 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2252 = (349 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2252 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2252 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2252 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2252 (by decide)
    _ = (362 : Int) - (13 : Int) :=
      sub_congr node_7_2252 node_7_77
    _ = (349 : Int) := by decide

theorem node_5_69828 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 = (10689 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (69828 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 (by decide)
    _ = (11038 : Int) - (349 : Int) :=
      sub_congr node_6_69828 node_6_2252
    _ = (10689 : Int) := by decide

theorem node_8_1887 : count [19, 17, 13, 11, 7, 5, 3, 2] 1887 = (319 : Int) := by
  decide

theorem node_8_82 : count [19, 17, 13, 11, 7, 5, 3, 2] 82 = (15 : Int) := by
  decide

theorem node_7_1887 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1887 = (304 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1887 = count [19, 17, 13, 11, 7, 5, 3, 2] 1887 - count [19, 17, 13, 11, 7, 5, 3, 2] (1887 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1887 (by decide)
    _ = (319 : Int) - (15 : Int) :=
      sub_congr node_8_1887 node_8_82
    _ = (304 : Int) := by decide

theorem node_8_65 : count [19, 17, 13, 11, 7, 5, 3, 2] 65 = (11 : Int) := by
  decide

theorem node_7_65 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = (10 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = count [19, 17, 13, 11, 7, 5, 3, 2] 65 - count [19, 17, 13, 11, 7, 5, 3, 2] (65 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 65 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_8_65 node_8_2
    _ = (10 : Int) := by decide

theorem node_6_1887 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1887 = (294 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1887 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1887 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1887 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1887 (by decide)
    _ = (304 : Int) - (10 : Int) :=
      sub_congr node_7_1887 node_7_65
    _ = (294 : Int) := by decide

theorem node_5_1887 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1887 = (286 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1887 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1887 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1887 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1887 (by decide)
    _ = (294 : Int) - (8 : Int) :=
      sub_congr node_6_1887 node_6_60
    _ = (286 : Int) := by decide

theorem node_4_69828 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 = (10403 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (69828 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 (by decide)
    _ = (10689 : Int) - (286 : Int) :=
      sub_congr node_5_69828 node_5_1887
    _ = (10403 : Int) := by decide

theorem node_8_1703 : count [19, 17, 13, 11, 7, 5, 3, 2] 1703 = (289 : Int) := by
  decide

theorem node_8_74 : count [19, 17, 13, 11, 7, 5, 3, 2] 74 = (14 : Int) := by
  decide

theorem node_7_1703 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1703 = (275 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1703 = count [19, 17, 13, 11, 7, 5, 3, 2] 1703 - count [19, 17, 13, 11, 7, 5, 3, 2] (1703 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1703 (by decide)
    _ = (289 : Int) - (14 : Int) :=
      sub_congr node_8_1703 node_8_74
    _ = (275 : Int) := by decide

theorem node_8_58 : count [19, 17, 13, 11, 7, 5, 3, 2] 58 = (9 : Int) := by
  decide

theorem node_7_58 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = count [19, 17, 13, 11, 7, 5, 3, 2] 58 - count [19, 17, 13, 11, 7, 5, 3, 2] (58 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 58 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_58 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_1703 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1703 = (267 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1703 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1703 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1703 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1703 (by decide)
    _ = (275 : Int) - (8 : Int) :=
      sub_congr node_7_1703 node_7_58
    _ = (267 : Int) := by decide

theorem node_5_1703 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1703 = (260 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1703 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1703 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1703 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1703 (by decide)
    _ = (267 : Int) - (7 : Int) :=
      sub_congr node_6_1703 node_6_54
    _ = (260 : Int) := by decide

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

theorem node_4_1703 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1703 = (256 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1703 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1703 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1703 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1703 (by decide)
    _ = (260 : Int) - (4 : Int) :=
      sub_congr node_5_1703 node_5_46
    _ = (256 : Int) := by decide

theorem node_3_69828 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 = (10147 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (69828 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 (by decide)
    _ = (10403 : Int) - (256 : Int) :=
      sub_congr node_4_69828 node_4_1703
    _ = (10147 : Int) := by decide

theorem node_8_1623 : count [19, 17, 13, 11, 7, 5, 3, 2] 1623 = (276 : Int) := by
  decide

theorem node_8_70 : count [19, 17, 13, 11, 7, 5, 3, 2] 70 = (12 : Int) := by
  decide

theorem node_7_1623 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1623 = (264 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1623 = count [19, 17, 13, 11, 7, 5, 3, 2] 1623 - count [19, 17, 13, 11, 7, 5, 3, 2] (1623 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1623 (by decide)
    _ = (276 : Int) - (12 : Int) :=
      sub_congr node_8_1623 node_8_70
    _ = (264 : Int) := by decide

theorem node_6_1623 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1623 = (256 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1623 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1623 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1623 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1623 (by decide)
    _ = (264 : Int) - (8 : Int) :=
      sub_congr node_7_1623 node_7_55
    _ = (256 : Int) := by decide

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

theorem node_5_1623 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1623 = (250 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1623 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1623 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1623 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1623 (by decide)
    _ = (256 : Int) - (6 : Int) :=
      sub_congr node_6_1623 node_6_52
    _ = (250 : Int) := by decide

theorem node_4_1623 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1623 = (246 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1623 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1623 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1623 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1623 (by decide)
    _ = (250 : Int) - (4 : Int) :=
      sub_congr node_5_1623 node_5_43
    _ = (246 : Int) := by decide

theorem node_3_1623 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1623 = (245 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1623 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1623 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1623 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1623 (by decide)
    _ = (246 : Int) - (1 : Int) :=
      sub_congr node_4_1623 node_4_39
    _ = (245 : Int) := by decide

theorem node_2_69828 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 = (9902 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (69828 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 (by decide)
    _ = (10147 : Int) - (245 : Int) :=
      sub_congr node_3_69828 node_3_1623
    _ = (9902 : Int) := by decide

theorem node_8_1485 : count [19, 17, 13, 11, 7, 5, 3, 2] 1485 = (250 : Int) := by
  decide

theorem node_7_1485 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 = (239 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 = count [19, 17, 13, 11, 7, 5, 3, 2] 1485 - count [19, 17, 13, 11, 7, 5, 3, 2] (1485 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1485 (by decide)
    _ = (250 : Int) - (11 : Int) :=
      sub_congr node_8_1485 node_8_64
    _ = (239 : Int) := by decide

theorem node_6_1485 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 = (232 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1485 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 (by decide)
    _ = (239 : Int) - (7 : Int) :=
      sub_congr node_7_1485 node_7_51
    _ = (232 : Int) := by decide

theorem node_5_1485 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 = (226 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1485 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 (by decide)
    _ = (232 : Int) - (6 : Int) :=
      sub_congr node_6_1485 node_6_47
    _ = (226 : Int) := by decide

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

theorem node_4_1485 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 = (224 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1485 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 (by decide)
    _ = (226 : Int) - (2 : Int) :=
      sub_congr node_5_1485 node_5_40
    _ = (224 : Int) := by decide

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

theorem node_3_1485 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 = (223 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1485 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 (by decide)
    _ = (224 : Int) - (1 : Int) :=
      sub_congr node_4_1485 node_4_36
    _ = (223 : Int) := by decide

theorem node_2_1485 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 = (222 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1485 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1485 (by decide)
    _ = (223 : Int) - (1 : Int) :=
      sub_congr node_3_1485 node_3_34
    _ = (222 : Int) := by decide

theorem node_1_69828 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 = (9680 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (69828 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 (by decide)
    _ = (9902 : Int) - (222 : Int) :=
      sub_congr node_2_69828 node_2_1485
    _ = (9680 : Int) := by decide

theorem node_8_1317 : count [19, 17, 13, 11, 7, 5, 3, 2] 1317 = (223 : Int) := by
  decide

theorem node_7_1317 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1317 = (214 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1317 = count [19, 17, 13, 11, 7, 5, 3, 2] 1317 - count [19, 17, 13, 11, 7, 5, 3, 2] (1317 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1317 (by decide)
    _ = (223 : Int) - (9 : Int) :=
      sub_congr node_8_1317 node_8_57
    _ = (214 : Int) := by decide

theorem node_6_1317 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1317 = (208 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1317 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1317 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1317 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1317 (by decide)
    _ = (214 : Int) - (6 : Int) :=
      sub_congr node_7_1317 node_7_45
    _ = (208 : Int) := by decide

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

theorem node_5_1317 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1317 = (204 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1317 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1317 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1317 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1317 (by decide)
    _ = (208 : Int) - (4 : Int) :=
      sub_congr node_6_1317 node_6_42
    _ = (204 : Int) := by decide

theorem node_4_1317 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1317 = (203 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1317 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1317 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1317 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1317 (by decide)
    _ = (204 : Int) - (1 : Int) :=
      sub_congr node_5_1317 node_5_35
    _ = (203 : Int) := by decide

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

theorem node_3_1317 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1317 = (202 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1317 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1317 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1317 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1317 (by decide)
    _ = (203 : Int) - (1 : Int) :=
      sub_congr node_4_1317 node_4_32
    _ = (202 : Int) := by decide

theorem node_2_1317 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1317 = (201 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1317 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1317 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1317 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1317 (by decide)
    _ = (202 : Int) - (1 : Int) :=
      sub_congr node_3_1317 node_3_30
    _ = (201 : Int) := by decide

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

theorem node_2_28 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (28 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_28 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1317 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1317 = (200 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1317 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1317 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1317 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1317 (by decide)
    _ = (201 : Int) - (1 : Int) :=
      sub_congr node_2_1317 node_2_28
    _ = (200 : Int) := by decide

theorem node_0_69828 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 = (9480 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (69828 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69828 (by decide)
    _ = (9680 : Int) - (200 : Int) :=
      sub_congr node_1_69828 node_1_1317
    _ = (9480 : Int) := by decide

theorem row_54 : count primes 68916 ≤ (9378 : Int) - 15 := by
  rw [show count primes 68916 = (9363 : Int) from node_0_68916]
  decide

theorem row_55 : count primes 69828 ≤ (9495 : Int) - 15 := by
  rw [show count primes 69828 = (9480 : Int) from node_0_69828]
  decide

def pairs : List (Nat × Nat) := [(68916, 9378), (69828, 9495)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl
  · exact row_54
  · exact row_55
end B699CorePrunedSieve.CoreRest14
#check @B699CorePrunedSieve.CoreRest14.pairs_valid
#print axioms B699CorePrunedSieve.CoreRest14.pairs_valid
