import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreDagBatch16
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_74328 : count [19, 17, 13, 11, 7, 5, 3, 2] 74328 = (12711 : Int) := by
  decide

theorem node_8_3231 : count [19, 17, 13, 11, 7, 5, 3, 2] 3231 = (549 : Int) := by
  decide

theorem node_7_74328 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 = (12162 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 = count [19, 17, 13, 11, 7, 5, 3, 2] 74328 - count [19, 17, 13, 11, 7, 5, 3, 2] (74328 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 74328 (by decide)
    _ = (12711 : Int) - (549 : Int) :=
      sub_congr node_8_74328 node_8_3231
    _ = (12162 : Int) := by decide

theorem node_8_2563 : count [19, 17, 13, 11, 7, 5, 3, 2] 2563 = (435 : Int) := by
  decide

theorem node_8_111 : count [19, 17, 13, 11, 7, 5, 3, 2] 111 = (22 : Int) := by
  decide

theorem node_7_2563 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2563 = (413 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2563 = count [19, 17, 13, 11, 7, 5, 3, 2] 2563 - count [19, 17, 13, 11, 7, 5, 3, 2] (2563 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2563 (by decide)
    _ = (435 : Int) - (22 : Int) :=
      sub_congr node_8_2563 node_8_111
    _ = (413 : Int) := by decide

theorem node_6_74328 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 = (11749 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (74328 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 (by decide)
    _ = (12162 : Int) - (413 : Int) :=
      sub_congr node_7_74328 node_7_2563
    _ = (11749 : Int) := by decide

theorem node_8_2397 : count [19, 17, 13, 11, 7, 5, 3, 2] 2397 = (407 : Int) := by
  decide

theorem node_8_104 : count [19, 17, 13, 11, 7, 5, 3, 2] 104 = (20 : Int) := by
  decide

theorem node_7_2397 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2397 = (387 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2397 = count [19, 17, 13, 11, 7, 5, 3, 2] 2397 - count [19, 17, 13, 11, 7, 5, 3, 2] (2397 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2397 (by decide)
    _ = (407 : Int) - (20 : Int) :=
      sub_congr node_8_2397 node_8_104
    _ = (387 : Int) := by decide

theorem node_8_82 : count [19, 17, 13, 11, 7, 5, 3, 2] 82 = (15 : Int) := by
  decide

theorem node_8_3 : count [19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  decide

theorem node_7_82 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = (14 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = count [19, 17, 13, 11, 7, 5, 3, 2] 82 - count [19, 17, 13, 11, 7, 5, 3, 2] (82 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 82 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_8_82 node_8_3
    _ = (14 : Int) := by decide

theorem node_6_2397 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2397 = (373 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2397 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2397 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2397 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2397 (by decide)
    _ = (387 : Int) - (14 : Int) :=
      sub_congr node_7_2397 node_7_82
    _ = (373 : Int) := by decide

theorem node_5_74328 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 = (11376 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (74328 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 (by decide)
    _ = (11749 : Int) - (373 : Int) :=
      sub_congr node_6_74328 node_6_2397
    _ = (11376 : Int) := by decide

theorem node_8_2008 : count [19, 17, 13, 11, 7, 5, 3, 2] 2008 = (339 : Int) := by
  decide

theorem node_8_87 : count [19, 17, 13, 11, 7, 5, 3, 2] 87 = (16 : Int) := by
  decide

theorem node_7_2008 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2008 = (323 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2008 = count [19, 17, 13, 11, 7, 5, 3, 2] 2008 - count [19, 17, 13, 11, 7, 5, 3, 2] (2008 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2008 (by decide)
    _ = (339 : Int) - (16 : Int) :=
      sub_congr node_8_2008 node_8_87
    _ = (323 : Int) := by decide

theorem node_8_69 : count [19, 17, 13, 11, 7, 5, 3, 2] 69 = (12 : Int) := by
  decide

theorem node_7_69 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = (11 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = count [19, 17, 13, 11, 7, 5, 3, 2] 69 - count [19, 17, 13, 11, 7, 5, 3, 2] (69 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 69 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_8_69 node_8_3
    _ = (11 : Int) := by decide

theorem node_6_2008 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2008 = (312 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2008 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2008 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2008 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2008 (by decide)
    _ = (323 : Int) - (11 : Int) :=
      sub_congr node_7_2008 node_7_69
    _ = (312 : Int) := by decide

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

theorem node_8_0 : count [19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [19, 17, 13, 11, 7, 5, 3, 2]

theorem node_7_2 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [19, 17, 13, 11, 7, 5, 3, 2] 2 - count [19, 17, 13, 11, 7, 5, 3, 2] (2 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_2 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_64 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = (9 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 64 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (64 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 64 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_7_64 node_7_2
    _ = (9 : Int) := by decide

theorem node_5_2008 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2008 = (303 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2008 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2008 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2008 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2008 (by decide)
    _ = (312 : Int) - (9 : Int) :=
      sub_congr node_6_2008 node_6_64
    _ = (303 : Int) := by decide

theorem node_4_74328 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 = (11073 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (74328 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 (by decide)
    _ = (11376 : Int) - (303 : Int) :=
      sub_congr node_5_74328 node_5_2008
    _ = (11073 : Int) := by decide

theorem node_8_1812 : count [19, 17, 13, 11, 7, 5, 3, 2] 1812 = (307 : Int) := by
  decide

theorem node_8_78 : count [19, 17, 13, 11, 7, 5, 3, 2] 78 = (14 : Int) := by
  decide

theorem node_7_1812 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1812 = (293 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1812 = count [19, 17, 13, 11, 7, 5, 3, 2] 1812 - count [19, 17, 13, 11, 7, 5, 3, 2] (1812 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1812 (by decide)
    _ = (307 : Int) - (14 : Int) :=
      sub_congr node_8_1812 node_8_78
    _ = (293 : Int) := by decide

theorem node_8_62 : count [19, 17, 13, 11, 7, 5, 3, 2] 62 = (11 : Int) := by
  decide

theorem node_7_62 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = (10 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = count [19, 17, 13, 11, 7, 5, 3, 2] 62 - count [19, 17, 13, 11, 7, 5, 3, 2] (62 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 62 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_8_62 node_8_2
    _ = (10 : Int) := by decide

theorem node_6_1812 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1812 = (283 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1812 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1812 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1812 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1812 (by decide)
    _ = (293 : Int) - (10 : Int) :=
      sub_congr node_7_1812 node_7_62
    _ = (283 : Int) := by decide

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

theorem node_5_1812 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1812 = (276 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1812 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1812 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1812 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1812 (by decide)
    _ = (283 : Int) - (7 : Int) :=
      sub_congr node_6_1812 node_6_58
    _ = (276 : Int) := by decide

theorem node_8_48 : count [19, 17, 13, 11, 7, 5, 3, 2] 48 = (8 : Int) := by
  decide

theorem node_7_48 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = (7 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = count [19, 17, 13, 11, 7, 5, 3, 2] 48 - count [19, 17, 13, 11, 7, 5, 3, 2] (48 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 48 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_8_48 node_8_2
    _ = (7 : Int) := by decide

theorem node_8_1 : count [19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  decide

theorem node_7_1 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [19, 17, 13, 11, 7, 5, 3, 2] 1 - count [19, 17, 13, 11, 7, 5, 3, 2] (1 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_1 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_48 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = (6 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 48 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (48 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 48 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_7_48 node_7_1
    _ = (6 : Int) := by decide

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_1 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_1 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_48 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = (5 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (48 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 48 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_6_48 node_6_1
    _ = (5 : Int) := by decide

theorem node_4_1812 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1812 = (271 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1812 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1812 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1812 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1812 (by decide)
    _ = (276 : Int) - (5 : Int) :=
      sub_congr node_5_1812 node_5_48
    _ = (271 : Int) := by decide

theorem node_3_74328 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 = (10802 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (74328 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 (by decide)
    _ = (11073 : Int) - (271 : Int) :=
      sub_congr node_4_74328 node_4_1812
    _ = (10802 : Int) := by decide

theorem node_8_1728 : count [19, 17, 13, 11, 7, 5, 3, 2] 1728 = (293 : Int) := by
  decide

theorem node_8_75 : count [19, 17, 13, 11, 7, 5, 3, 2] 75 = (14 : Int) := by
  decide

theorem node_7_1728 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1728 = (279 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1728 = count [19, 17, 13, 11, 7, 5, 3, 2] 1728 - count [19, 17, 13, 11, 7, 5, 3, 2] (1728 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1728 (by decide)
    _ = (293 : Int) - (14 : Int) :=
      sub_congr node_8_1728 node_8_75
    _ = (279 : Int) := by decide

theorem node_8_59 : count [19, 17, 13, 11, 7, 5, 3, 2] 59 = (10 : Int) := by
  decide

theorem node_7_59 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = (9 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = count [19, 17, 13, 11, 7, 5, 3, 2] 59 - count [19, 17, 13, 11, 7, 5, 3, 2] (59 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 59 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_8_59 node_8_2
    _ = (9 : Int) := by decide

theorem node_6_1728 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1728 = (270 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1728 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1728 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1728 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1728 (by decide)
    _ = (279 : Int) - (9 : Int) :=
      sub_congr node_7_1728 node_7_59
    _ = (270 : Int) := by decide

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

theorem node_5_1728 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1728 = (263 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1728 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1728 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1728 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1728 (by decide)
    _ = (270 : Int) - (7 : Int) :=
      sub_congr node_6_1728 node_6_55
    _ = (263 : Int) := by decide

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

theorem node_4_1728 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1728 = (259 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1728 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1728 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1728 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1728 (by decide)
    _ = (263 : Int) - (4 : Int) :=
      sub_congr node_5_1728 node_5_46
    _ = (259 : Int) := by decide

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

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_1 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_1 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_42 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = (2 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (42 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_5_42 node_5_1
    _ = (2 : Int) := by decide

theorem node_3_1728 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1728 = (257 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1728 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1728 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1728 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1728 (by decide)
    _ = (259 : Int) - (2 : Int) :=
      sub_congr node_4_1728 node_4_42
    _ = (257 : Int) := by decide

theorem node_2_74328 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 = (10545 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (74328 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 (by decide)
    _ = (10802 : Int) - (257 : Int) :=
      sub_congr node_3_74328 node_3_1728
    _ = (10545 : Int) := by decide

theorem node_8_1581 : count [19, 17, 13, 11, 7, 5, 3, 2] 1581 = (267 : Int) := by
  decide

theorem node_8_68 : count [19, 17, 13, 11, 7, 5, 3, 2] 68 = (12 : Int) := by
  decide

theorem node_7_1581 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1581 = (255 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1581 = count [19, 17, 13, 11, 7, 5, 3, 2] 1581 - count [19, 17, 13, 11, 7, 5, 3, 2] (1581 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1581 (by decide)
    _ = (267 : Int) - (12 : Int) :=
      sub_congr node_8_1581 node_8_68
    _ = (255 : Int) := by decide

theorem node_8_54 : count [19, 17, 13, 11, 7, 5, 3, 2] 54 = (9 : Int) := by
  decide

theorem node_7_54 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 54 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 54 = count [19, 17, 13, 11, 7, 5, 3, 2] 54 - count [19, 17, 13, 11, 7, 5, 3, 2] (54 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 54 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_54 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_1581 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1581 = (247 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1581 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1581 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1581 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1581 (by decide)
    _ = (255 : Int) - (8 : Int) :=
      sub_congr node_7_1581 node_7_54
    _ = (247 : Int) := by decide

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

theorem node_5_1581 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1581 = (241 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1581 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1581 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1581 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1581 (by decide)
    _ = (247 : Int) - (6 : Int) :=
      sub_congr node_6_1581 node_6_51
    _ = (241 : Int) := by decide

theorem node_4_1581 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1581 = (238 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1581 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1581 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1581 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1581 (by decide)
    _ = (241 : Int) - (3 : Int) :=
      sub_congr node_5_1581 node_5_42
    _ = (238 : Int) := by decide

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

theorem node_4_38 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (38 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_5_38 node_5_1
    _ = (1 : Int) := by decide

theorem node_3_1581 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1581 = (237 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1581 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1581 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1581 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1581 (by decide)
    _ = (238 : Int) - (1 : Int) :=
      sub_congr node_4_1581 node_4_38
    _ = (237 : Int) := by decide

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

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_36 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (36 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_36 node_5_0
    _ = (1 : Int) := by decide

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_36 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (36 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_36 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1581 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1581 = (236 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1581 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1581 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1581 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1581 (by decide)
    _ = (237 : Int) - (1 : Int) :=
      sub_congr node_3_1581 node_3_36
    _ = (236 : Int) := by decide

theorem node_1_74328 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 = (10309 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (74328 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 (by decide)
    _ = (10545 : Int) - (236 : Int) :=
      sub_congr node_2_74328 node_2_1581
    _ = (10309 : Int) := by decide

theorem node_8_1402 : count [19, 17, 13, 11, 7, 5, 3, 2] 1402 = (235 : Int) := by
  decide

theorem node_8_60 : count [19, 17, 13, 11, 7, 5, 3, 2] 60 = (10 : Int) := by
  decide

theorem node_7_1402 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1402 = (225 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1402 = count [19, 17, 13, 11, 7, 5, 3, 2] 1402 - count [19, 17, 13, 11, 7, 5, 3, 2] (1402 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1402 (by decide)
    _ = (235 : Int) - (10 : Int) :=
      sub_congr node_8_1402 node_8_60
    _ = (225 : Int) := by decide

theorem node_6_1402 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1402 = (218 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1402 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1402 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1402 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1402 (by decide)
    _ = (225 : Int) - (7 : Int) :=
      sub_congr node_7_1402 node_7_48
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

theorem node_5_1402 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1402 = (213 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1402 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1402 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1402 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1402 (by decide)
    _ = (218 : Int) - (5 : Int) :=
      sub_congr node_6_1402 node_6_45
    _ = (213 : Int) := by decide

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

theorem node_4_1402 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1402 = (211 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1402 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1402 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1402 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1402 (by decide)
    _ = (213 : Int) - (2 : Int) :=
      sub_congr node_5_1402 node_5_37
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

theorem node_4_34 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (34 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_34 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_1402 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1402 = (210 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1402 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1402 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1402 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1402 (by decide)
    _ = (211 : Int) - (1 : Int) :=
      sub_congr node_4_1402 node_4_34
    _ = (210 : Int) := by decide

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

theorem node_3_32 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (32 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_32 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1402 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1402 = (209 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1402 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1402 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1402 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1402 (by decide)
    _ = (210 : Int) - (1 : Int) :=
      sub_congr node_3_1402 node_3_32
    _ = (209 : Int) := by decide

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

theorem node_3_0 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_2_29 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (29 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_29 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1402 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1402 = (208 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1402 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1402 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1402 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1402 (by decide)
    _ = (209 : Int) - (1 : Int) :=
      sub_congr node_2_1402 node_2_29
    _ = (208 : Int) := by decide

theorem node_0_74328 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 = (10101 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (74328 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74328 (by decide)
    _ = (10309 : Int) - (208 : Int) :=
      sub_congr node_1_74328 node_1_1402
    _ = (10101 : Int) := by decide

theorem node_8_75226 : count [19, 17, 13, 11, 7, 5, 3, 2] 75226 = (12865 : Int) := by
  decide

theorem node_8_3270 : count [19, 17, 13, 11, 7, 5, 3, 2] 3270 = (555 : Int) := by
  decide

theorem node_7_75226 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 = (12310 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 = count [19, 17, 13, 11, 7, 5, 3, 2] 75226 - count [19, 17, 13, 11, 7, 5, 3, 2] (75226 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 75226 (by decide)
    _ = (12865 : Int) - (555 : Int) :=
      sub_congr node_8_75226 node_8_3270
    _ = (12310 : Int) := by decide

theorem node_8_2594 : count [19, 17, 13, 11, 7, 5, 3, 2] 2594 = (440 : Int) := by
  decide

theorem node_8_112 : count [19, 17, 13, 11, 7, 5, 3, 2] 112 = (22 : Int) := by
  decide

theorem node_7_2594 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2594 = (418 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2594 = count [19, 17, 13, 11, 7, 5, 3, 2] 2594 - count [19, 17, 13, 11, 7, 5, 3, 2] (2594 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2594 (by decide)
    _ = (440 : Int) - (22 : Int) :=
      sub_congr node_8_2594 node_8_112
    _ = (418 : Int) := by decide

theorem node_6_75226 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 = (11892 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (75226 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 (by decide)
    _ = (12310 : Int) - (418 : Int) :=
      sub_congr node_7_75226 node_7_2594
    _ = (11892 : Int) := by decide

theorem node_8_2426 : count [19, 17, 13, 11, 7, 5, 3, 2] 2426 = (413 : Int) := by
  decide

theorem node_8_105 : count [19, 17, 13, 11, 7, 5, 3, 2] 105 = (20 : Int) := by
  decide

theorem node_7_2426 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2426 = (393 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2426 = count [19, 17, 13, 11, 7, 5, 3, 2] 2426 - count [19, 17, 13, 11, 7, 5, 3, 2] (2426 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2426 (by decide)
    _ = (413 : Int) - (20 : Int) :=
      sub_congr node_8_2426 node_8_105
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

theorem node_6_2426 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2426 = (378 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2426 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2426 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2426 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2426 (by decide)
    _ = (393 : Int) - (15 : Int) :=
      sub_congr node_7_2426 node_7_83
    _ = (378 : Int) := by decide

theorem node_5_75226 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 = (11514 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (75226 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 (by decide)
    _ = (11892 : Int) - (378 : Int) :=
      sub_congr node_6_75226 node_6_2426
    _ = (11514 : Int) := by decide

theorem node_8_2033 : count [19, 17, 13, 11, 7, 5, 3, 2] 2033 = (344 : Int) := by
  decide

theorem node_8_88 : count [19, 17, 13, 11, 7, 5, 3, 2] 88 = (16 : Int) := by
  decide

theorem node_7_2033 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2033 = (328 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2033 = count [19, 17, 13, 11, 7, 5, 3, 2] 2033 - count [19, 17, 13, 11, 7, 5, 3, 2] (2033 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2033 (by decide)
    _ = (344 : Int) - (16 : Int) :=
      sub_congr node_8_2033 node_8_88
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

theorem node_6_2033 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2033 = (317 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2033 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2033 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2033 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2033 (by decide)
    _ = (328 : Int) - (11 : Int) :=
      sub_congr node_7_2033 node_7_70
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

theorem node_5_2033 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2033 = (308 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2033 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2033 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2033 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2033 (by decide)
    _ = (317 : Int) - (9 : Int) :=
      sub_congr node_6_2033 node_6_65
    _ = (308 : Int) := by decide

theorem node_4_75226 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 = (11206 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (75226 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 (by decide)
    _ = (11514 : Int) - (308 : Int) :=
      sub_congr node_5_75226 node_5_2033
    _ = (11206 : Int) := by decide

theorem node_8_1834 : count [19, 17, 13, 11, 7, 5, 3, 2] 1834 = (311 : Int) := by
  decide

theorem node_8_79 : count [19, 17, 13, 11, 7, 5, 3, 2] 79 = (15 : Int) := by
  decide

theorem node_7_1834 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1834 = (296 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1834 = count [19, 17, 13, 11, 7, 5, 3, 2] 1834 - count [19, 17, 13, 11, 7, 5, 3, 2] (1834 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1834 (by decide)
    _ = (311 : Int) - (15 : Int) :=
      sub_congr node_8_1834 node_8_79
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

theorem node_6_1834 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1834 = (286 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1834 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1834 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1834 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1834 (by decide)
    _ = (296 : Int) - (10 : Int) :=
      sub_congr node_7_1834 node_7_63
    _ = (286 : Int) := by decide

theorem node_6_59 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = (8 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 59 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (59 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 59 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_7_59 node_7_2
    _ = (8 : Int) := by decide

theorem node_5_1834 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1834 = (278 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1834 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1834 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1834 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1834 (by decide)
    _ = (286 : Int) - (8 : Int) :=
      sub_congr node_6_1834 node_6_59
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

theorem node_4_1834 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1834 = (273 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1834 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1834 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1834 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1834 (by decide)
    _ = (278 : Int) - (5 : Int) :=
      sub_congr node_5_1834 node_5_49
    _ = (273 : Int) := by decide

theorem node_3_75226 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 = (10933 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (75226 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 (by decide)
    _ = (11206 : Int) - (273 : Int) :=
      sub_congr node_4_75226 node_4_1834
    _ = (10933 : Int) := by decide

theorem node_8_1749 : count [19, 17, 13, 11, 7, 5, 3, 2] 1749 = (297 : Int) := by
  decide

theorem node_8_76 : count [19, 17, 13, 11, 7, 5, 3, 2] 76 = (14 : Int) := by
  decide

theorem node_7_1749 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1749 = (283 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1749 = count [19, 17, 13, 11, 7, 5, 3, 2] 1749 - count [19, 17, 13, 11, 7, 5, 3, 2] (1749 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1749 (by decide)
    _ = (297 : Int) - (14 : Int) :=
      sub_congr node_8_1749 node_8_76
    _ = (283 : Int) := by decide

theorem node_7_60 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = (9 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = count [19, 17, 13, 11, 7, 5, 3, 2] 60 - count [19, 17, 13, 11, 7, 5, 3, 2] (60 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 60 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_8_60 node_8_2
    _ = (9 : Int) := by decide

theorem node_6_1749 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1749 = (274 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1749 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1749 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1749 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1749 (by decide)
    _ = (283 : Int) - (9 : Int) :=
      sub_congr node_7_1749 node_7_60
    _ = (274 : Int) := by decide

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

theorem node_5_1749 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1749 = (267 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1749 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1749 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1749 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1749 (by decide)
    _ = (274 : Int) - (7 : Int) :=
      sub_congr node_6_1749 node_6_56
    _ = (267 : Int) := by decide

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

theorem node_4_1749 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1749 = (262 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1749 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1749 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1749 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1749 (by decide)
    _ = (267 : Int) - (5 : Int) :=
      sub_congr node_5_1749 node_5_47
    _ = (262 : Int) := by decide

theorem node_3_1749 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1749 = (260 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1749 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1749 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1749 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1749 (by decide)
    _ = (262 : Int) - (2 : Int) :=
      sub_congr node_4_1749 node_4_42
    _ = (260 : Int) := by decide

theorem node_2_75226 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 = (10673 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (75226 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 (by decide)
    _ = (10933 : Int) - (260 : Int) :=
      sub_congr node_3_75226 node_3_1749
    _ = (10673 : Int) := by decide

theorem node_8_1600 : count [19, 17, 13, 11, 7, 5, 3, 2] 1600 = (270 : Int) := by
  decide

theorem node_7_1600 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1600 = (258 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1600 = count [19, 17, 13, 11, 7, 5, 3, 2] 1600 - count [19, 17, 13, 11, 7, 5, 3, 2] (1600 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1600 (by decide)
    _ = (270 : Int) - (12 : Int) :=
      sub_congr node_8_1600 node_8_69
    _ = (258 : Int) := by decide

theorem node_6_1600 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1600 = (250 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1600 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1600 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1600 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1600 (by decide)
    _ = (258 : Int) - (8 : Int) :=
      sub_congr node_7_1600 node_7_55
    _ = (250 : Int) := by decide

theorem node_5_1600 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1600 = (244 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1600 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1600 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1600 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1600 (by decide)
    _ = (250 : Int) - (6 : Int) :=
      sub_congr node_6_1600 node_6_51
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

theorem node_5_43 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 = (4 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (43 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_6_43 node_6_1
    _ = (4 : Int) := by decide

theorem node_4_1600 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1600 = (240 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1600 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1600 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1600 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1600 (by decide)
    _ = (244 : Int) - (4 : Int) :=
      sub_congr node_5_1600 node_5_43
    _ = (240 : Int) := by decide

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

theorem node_3_1600 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1600 = (239 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1600 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1600 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1600 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1600 (by decide)
    _ = (240 : Int) - (1 : Int) :=
      sub_congr node_4_1600 node_4_39
    _ = (239 : Int) := by decide

theorem node_4_37 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (37 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_5_37 node_5_1
    _ = (1 : Int) := by decide

theorem node_3_37 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (37 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_37 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1600 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1600 = (238 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1600 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1600 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1600 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1600 (by decide)
    _ = (239 : Int) - (1 : Int) :=
      sub_congr node_3_1600 node_3_37
    _ = (238 : Int) := by decide

theorem node_1_75226 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 = (10435 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (75226 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 (by decide)
    _ = (10673 : Int) - (238 : Int) :=
      sub_congr node_2_75226 node_2_1600
    _ = (10435 : Int) := by decide

theorem node_8_1419 : count [19, 17, 13, 11, 7, 5, 3, 2] 1419 = (237 : Int) := by
  decide

theorem node_8_61 : count [19, 17, 13, 11, 7, 5, 3, 2] 61 = (11 : Int) := by
  decide

theorem node_7_1419 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1419 = (226 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1419 = count [19, 17, 13, 11, 7, 5, 3, 2] 1419 - count [19, 17, 13, 11, 7, 5, 3, 2] (1419 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1419 (by decide)
    _ = (237 : Int) - (11 : Int) :=
      sub_congr node_8_1419 node_8_61
    _ = (226 : Int) := by decide

theorem node_6_1419 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1419 = (219 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1419 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1419 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1419 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1419 (by decide)
    _ = (226 : Int) - (7 : Int) :=
      sub_congr node_7_1419 node_7_48
    _ = (219 : Int) := by decide

theorem node_5_1419 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1419 = (214 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1419 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1419 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1419 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1419 (by decide)
    _ = (219 : Int) - (5 : Int) :=
      sub_congr node_6_1419 node_6_45
    _ = (214 : Int) := by decide

theorem node_4_1419 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1419 = (212 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1419 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1419 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1419 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1419 (by decide)
    _ = (214 : Int) - (2 : Int) :=
      sub_congr node_5_1419 node_5_38
    _ = (212 : Int) := by decide

theorem node_3_1419 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1419 = (211 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1419 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1419 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1419 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1419 (by decide)
    _ = (212 : Int) - (1 : Int) :=
      sub_congr node_4_1419 node_4_34
    _ = (211 : Int) := by decide

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

theorem node_4_33 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (33 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_33 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_33 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (33 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_33 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1419 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1419 = (210 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1419 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1419 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1419 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1419 (by decide)
    _ = (211 : Int) - (1 : Int) :=
      sub_congr node_3_1419 node_3_33
    _ = (210 : Int) := by decide

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

theorem node_2_30 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 30 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 30 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 30 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (30 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 30 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_30 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1419 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1419 = (209 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1419 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1419 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1419 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1419 (by decide)
    _ = (210 : Int) - (1 : Int) :=
      sub_congr node_2_1419 node_2_30
    _ = (209 : Int) := by decide

theorem node_0_75226 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 = (10226 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (75226 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75226 (by decide)
    _ = (10435 : Int) - (209 : Int) :=
      sub_congr node_1_75226 node_1_1419
    _ = (10226 : Int) := by decide

theorem node_8_76122 : count [19, 17, 13, 11, 7, 5, 3, 2] 76122 = (13018 : Int) := by
  decide

theorem node_8_3309 : count [19, 17, 13, 11, 7, 5, 3, 2] 3309 = (561 : Int) := by
  decide

theorem node_7_76122 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 = (12457 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 = count [19, 17, 13, 11, 7, 5, 3, 2] 76122 - count [19, 17, 13, 11, 7, 5, 3, 2] (76122 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 76122 (by decide)
    _ = (13018 : Int) - (561 : Int) :=
      sub_congr node_8_76122 node_8_3309
    _ = (12457 : Int) := by decide

theorem node_8_2624 : count [19, 17, 13, 11, 7, 5, 3, 2] 2624 = (445 : Int) := by
  decide

theorem node_8_114 : count [19, 17, 13, 11, 7, 5, 3, 2] 114 = (23 : Int) := by
  decide

theorem node_7_2624 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2624 = (422 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2624 = count [19, 17, 13, 11, 7, 5, 3, 2] 2624 - count [19, 17, 13, 11, 7, 5, 3, 2] (2624 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2624 (by decide)
    _ = (445 : Int) - (23 : Int) :=
      sub_congr node_8_2624 node_8_114
    _ = (422 : Int) := by decide

theorem node_6_76122 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 = (12035 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (76122 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 (by decide)
    _ = (12457 : Int) - (422 : Int) :=
      sub_congr node_7_76122 node_7_2624
    _ = (12035 : Int) := by decide

theorem node_8_2455 : count [19, 17, 13, 11, 7, 5, 3, 2] 2455 = (417 : Int) := by
  decide

theorem node_8_106 : count [19, 17, 13, 11, 7, 5, 3, 2] 106 = (20 : Int) := by
  decide

theorem node_7_2455 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2455 = (397 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2455 = count [19, 17, 13, 11, 7, 5, 3, 2] 2455 - count [19, 17, 13, 11, 7, 5, 3, 2] (2455 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2455 (by decide)
    _ = (417 : Int) - (20 : Int) :=
      sub_congr node_8_2455 node_8_106
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

theorem node_6_2455 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2455 = (382 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2455 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2455 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2455 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2455 (by decide)
    _ = (397 : Int) - (15 : Int) :=
      sub_congr node_7_2455 node_7_84
    _ = (382 : Int) := by decide

theorem node_5_76122 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 = (11653 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (76122 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 (by decide)
    _ = (12035 : Int) - (382 : Int) :=
      sub_congr node_6_76122 node_6_2455
    _ = (11653 : Int) := by decide

theorem node_8_2057 : count [19, 17, 13, 11, 7, 5, 3, 2] 2057 = (347 : Int) := by
  decide

theorem node_8_89 : count [19, 17, 13, 11, 7, 5, 3, 2] 89 = (17 : Int) := by
  decide

theorem node_7_2057 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2057 = (330 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2057 = count [19, 17, 13, 11, 7, 5, 3, 2] 2057 - count [19, 17, 13, 11, 7, 5, 3, 2] (2057 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2057 (by decide)
    _ = (347 : Int) - (17 : Int) :=
      sub_congr node_8_2057 node_8_89
    _ = (330 : Int) := by decide

theorem node_6_2057 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2057 = (319 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2057 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2057 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2057 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2057 (by decide)
    _ = (330 : Int) - (11 : Int) :=
      sub_congr node_7_2057 node_7_70
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

theorem node_5_2057 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2057 = (310 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2057 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2057 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2057 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2057 (by decide)
    _ = (319 : Int) - (9 : Int) :=
      sub_congr node_6_2057 node_6_66
    _ = (310 : Int) := by decide

theorem node_4_76122 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 = (11343 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (76122 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 (by decide)
    _ = (11653 : Int) - (310 : Int) :=
      sub_congr node_5_76122 node_5_2057
    _ = (11343 : Int) := by decide

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

theorem node_4_1856 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 = (275 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1856 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1856 (by decide)
    _ = (280 : Int) - (5 : Int) :=
      sub_congr node_5_1856 node_5_50
    _ = (275 : Int) := by decide

theorem node_3_76122 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 = (11068 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (76122 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 (by decide)
    _ = (11343 : Int) - (275 : Int) :=
      sub_congr node_4_76122 node_4_1856
    _ = (11068 : Int) := by decide

theorem node_8_1770 : count [19, 17, 13, 11, 7, 5, 3, 2] 1770 = (301 : Int) := by
  decide

theorem node_7_1770 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1770 = (287 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1770 = count [19, 17, 13, 11, 7, 5, 3, 2] 1770 - count [19, 17, 13, 11, 7, 5, 3, 2] (1770 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1770 (by decide)
    _ = (301 : Int) - (14 : Int) :=
      sub_congr node_8_1770 node_8_76
    _ = (287 : Int) := by decide

theorem node_7_61 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = (10 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = count [19, 17, 13, 11, 7, 5, 3, 2] 61 - count [19, 17, 13, 11, 7, 5, 3, 2] (61 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 61 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_8_61 node_8_2
    _ = (10 : Int) := by decide

theorem node_6_1770 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1770 = (277 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1770 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1770 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1770 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1770 (by decide)
    _ = (287 : Int) - (10 : Int) :=
      sub_congr node_7_1770 node_7_61
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

theorem node_6_57 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = (7 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 57 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (57 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 57 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_7_57 node_7_1
    _ = (7 : Int) := by decide

theorem node_5_1770 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1770 = (270 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1770 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1770 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1770 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1770 (by decide)
    _ = (277 : Int) - (7 : Int) :=
      sub_congr node_6_1770 node_6_57
    _ = (270 : Int) := by decide

theorem node_4_1770 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1770 = (265 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1770 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1770 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1770 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1770 (by decide)
    _ = (270 : Int) - (5 : Int) :=
      sub_congr node_5_1770 node_5_47
    _ = (265 : Int) := by decide

theorem node_4_43 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 = (3 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (43 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_5_43 node_5_1
    _ = (3 : Int) := by decide

theorem node_3_1770 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1770 = (262 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1770 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1770 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1770 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1770 (by decide)
    _ = (265 : Int) - (3 : Int) :=
      sub_congr node_4_1770 node_4_43
    _ = (262 : Int) := by decide

theorem node_2_76122 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 = (10806 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (76122 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 (by decide)
    _ = (11068 : Int) - (262 : Int) :=
      sub_congr node_3_76122 node_3_1770
    _ = (10806 : Int) := by decide

theorem node_8_1619 : count [19, 17, 13, 11, 7, 5, 3, 2] 1619 = (275 : Int) := by
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

theorem node_3_1619 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1619 = (244 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1619 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1619 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1619 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1619 (by decide)
    _ = (245 : Int) - (1 : Int) :=
      sub_congr node_4_1619 node_4_39
    _ = (244 : Int) := by decide

theorem node_2_1619 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1619 = (243 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1619 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1619 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1619 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1619 (by decide)
    _ = (244 : Int) - (1 : Int) :=
      sub_congr node_3_1619 node_3_37
    _ = (243 : Int) := by decide

theorem node_1_76122 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 = (10563 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (76122 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 (by decide)
    _ = (10806 : Int) - (243 : Int) :=
      sub_congr node_2_76122 node_2_1619
    _ = (10563 : Int) := by decide

theorem node_8_1436 : count [19, 17, 13, 11, 7, 5, 3, 2] 1436 = (241 : Int) := by
  decide

theorem node_7_1436 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1436 = (230 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1436 = count [19, 17, 13, 11, 7, 5, 3, 2] 1436 - count [19, 17, 13, 11, 7, 5, 3, 2] (1436 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1436 (by decide)
    _ = (241 : Int) - (11 : Int) :=
      sub_congr node_8_1436 node_8_62
    _ = (230 : Int) := by decide

theorem node_6_1436 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1436 = (223 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1436 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1436 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1436 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1436 (by decide)
    _ = (230 : Int) - (7 : Int) :=
      sub_congr node_7_1436 node_7_49
    _ = (223 : Int) := by decide

theorem node_5_1436 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1436 = (218 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1436 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1436 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1436 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1436 (by decide)
    _ = (223 : Int) - (5 : Int) :=
      sub_congr node_6_1436 node_6_46
    _ = (218 : Int) := by decide

theorem node_4_1436 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1436 = (216 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1436 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1436 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1436 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1436 (by decide)
    _ = (218 : Int) - (2 : Int) :=
      sub_congr node_5_1436 node_5_38
    _ = (216 : Int) := by decide

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

theorem node_4_35 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (35 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_35 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_1436 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1436 = (215 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1436 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1436 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1436 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1436 (by decide)
    _ = (216 : Int) - (1 : Int) :=
      sub_congr node_4_1436 node_4_35
    _ = (215 : Int) := by decide

theorem node_2_1436 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1436 = (214 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1436 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1436 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1436 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1436 (by decide)
    _ = (215 : Int) - (1 : Int) :=
      sub_congr node_3_1436 node_3_33
    _ = (214 : Int) := by decide

theorem node_1_1436 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1436 = (213 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1436 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1436 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1436 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1436 (by decide)
    _ = (214 : Int) - (1 : Int) :=
      sub_congr node_2_1436 node_2_30
    _ = (213 : Int) := by decide

theorem node_0_76122 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 = (10350 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (76122 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76122 (by decide)
    _ = (10563 : Int) - (213 : Int) :=
      sub_congr node_1_76122 node_1_1436
    _ = (10350 : Int) := by decide

theorem node_8_77080 : count [19, 17, 13, 11, 7, 5, 3, 2] 77080 = (13180 : Int) := by
  decide

theorem node_8_3351 : count [19, 17, 13, 11, 7, 5, 3, 2] 3351 = (570 : Int) := by
  decide

theorem node_7_77080 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 = (12610 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 = count [19, 17, 13, 11, 7, 5, 3, 2] 77080 - count [19, 17, 13, 11, 7, 5, 3, 2] (77080 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 77080 (by decide)
    _ = (13180 : Int) - (570 : Int) :=
      sub_congr node_8_77080 node_8_3351
    _ = (12610 : Int) := by decide

theorem node_8_2657 : count [19, 17, 13, 11, 7, 5, 3, 2] 2657 = (449 : Int) := by
  decide

theorem node_8_115 : count [19, 17, 13, 11, 7, 5, 3, 2] 115 = (23 : Int) := by
  decide

theorem node_7_2657 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2657 = (426 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2657 = count [19, 17, 13, 11, 7, 5, 3, 2] 2657 - count [19, 17, 13, 11, 7, 5, 3, 2] (2657 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2657 (by decide)
    _ = (449 : Int) - (23 : Int) :=
      sub_congr node_8_2657 node_8_115
    _ = (426 : Int) := by decide

theorem node_6_77080 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 = (12184 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (77080 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 (by decide)
    _ = (12610 : Int) - (426 : Int) :=
      sub_congr node_7_77080 node_7_2657
    _ = (12184 : Int) := by decide

theorem node_8_2486 : count [19, 17, 13, 11, 7, 5, 3, 2] 2486 = (423 : Int) := by
  decide

theorem node_8_108 : count [19, 17, 13, 11, 7, 5, 3, 2] 108 = (21 : Int) := by
  decide

theorem node_7_2486 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2486 = (402 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2486 = count [19, 17, 13, 11, 7, 5, 3, 2] 2486 - count [19, 17, 13, 11, 7, 5, 3, 2] (2486 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2486 (by decide)
    _ = (423 : Int) - (21 : Int) :=
      sub_congr node_8_2486 node_8_108
    _ = (402 : Int) := by decide

theorem node_8_85 : count [19, 17, 13, 11, 7, 5, 3, 2] 85 = (16 : Int) := by
  decide

theorem node_7_85 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 85 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 85 = count [19, 17, 13, 11, 7, 5, 3, 2] 85 - count [19, 17, 13, 11, 7, 5, 3, 2] (85 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 85 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_85 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_2486 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2486 = (387 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2486 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2486 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2486 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2486 (by decide)
    _ = (402 : Int) - (15 : Int) :=
      sub_congr node_7_2486 node_7_85
    _ = (387 : Int) := by decide

theorem node_5_77080 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 = (11797 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (77080 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 (by decide)
    _ = (12184 : Int) - (387 : Int) :=
      sub_congr node_6_77080 node_6_2486
    _ = (11797 : Int) := by decide

theorem node_8_2083 : count [19, 17, 13, 11, 7, 5, 3, 2] 2083 = (353 : Int) := by
  decide

theorem node_8_90 : count [19, 17, 13, 11, 7, 5, 3, 2] 90 = (17 : Int) := by
  decide

theorem node_7_2083 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2083 = (336 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2083 = count [19, 17, 13, 11, 7, 5, 3, 2] 2083 - count [19, 17, 13, 11, 7, 5, 3, 2] (2083 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2083 (by decide)
    _ = (353 : Int) - (17 : Int) :=
      sub_congr node_8_2083 node_8_90
    _ = (336 : Int) := by decide

theorem node_8_71 : count [19, 17, 13, 11, 7, 5, 3, 2] 71 = (13 : Int) := by
  decide

theorem node_7_71 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = (12 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = count [19, 17, 13, 11, 7, 5, 3, 2] 71 - count [19, 17, 13, 11, 7, 5, 3, 2] (71 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 71 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_8_71 node_8_3
    _ = (12 : Int) := by decide

theorem node_6_2083 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2083 = (324 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2083 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2083 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2083 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2083 (by decide)
    _ = (336 : Int) - (12 : Int) :=
      sub_congr node_7_2083 node_7_71
    _ = (324 : Int) := by decide

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

theorem node_5_2083 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2083 = (314 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2083 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2083 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2083 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2083 (by decide)
    _ = (324 : Int) - (10 : Int) :=
      sub_congr node_6_2083 node_6_67
    _ = (314 : Int) := by decide

theorem node_4_77080 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 = (11483 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (77080 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 (by decide)
    _ = (11797 : Int) - (314 : Int) :=
      sub_congr node_5_77080 node_5_2083
    _ = (11483 : Int) := by decide

theorem node_8_1880 : count [19, 17, 13, 11, 7, 5, 3, 2] 1880 = (319 : Int) := by
  decide

theorem node_8_81 : count [19, 17, 13, 11, 7, 5, 3, 2] 81 = (15 : Int) := by
  decide

theorem node_7_1880 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1880 = (304 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1880 = count [19, 17, 13, 11, 7, 5, 3, 2] 1880 - count [19, 17, 13, 11, 7, 5, 3, 2] (1880 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1880 (by decide)
    _ = (319 : Int) - (15 : Int) :=
      sub_congr node_8_1880 node_8_81
    _ = (304 : Int) := by decide

theorem node_6_1880 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1880 = (294 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1880 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1880 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1880 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1880 (by decide)
    _ = (304 : Int) - (10 : Int) :=
      sub_congr node_7_1880 node_7_64
    _ = (294 : Int) := by decide

theorem node_6_60 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = (8 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 60 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (60 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 60 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_7_60 node_7_2
    _ = (8 : Int) := by decide

theorem node_5_1880 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1880 = (286 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1880 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1880 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1880 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1880 (by decide)
    _ = (294 : Int) - (8 : Int) :=
      sub_congr node_6_1880 node_6_60
    _ = (286 : Int) := by decide

theorem node_4_1880 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1880 = (281 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1880 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1880 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1880 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1880 (by decide)
    _ = (286 : Int) - (5 : Int) :=
      sub_congr node_5_1880 node_5_50
    _ = (281 : Int) := by decide

theorem node_3_77080 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 = (11202 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (77080 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 (by decide)
    _ = (11483 : Int) - (281 : Int) :=
      sub_congr node_4_77080 node_4_1880
    _ = (11202 : Int) := by decide

theorem node_8_1792 : count [19, 17, 13, 11, 7, 5, 3, 2] 1792 = (305 : Int) := by
  decide

theorem node_8_77 : count [19, 17, 13, 11, 7, 5, 3, 2] 77 = (14 : Int) := by
  decide

theorem node_7_1792 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1792 = (291 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1792 = count [19, 17, 13, 11, 7, 5, 3, 2] 1792 - count [19, 17, 13, 11, 7, 5, 3, 2] (1792 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1792 (by decide)
    _ = (305 : Int) - (14 : Int) :=
      sub_congr node_8_1792 node_8_77
    _ = (291 : Int) := by decide

theorem node_6_1792 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1792 = (281 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1792 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1792 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1792 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1792 (by decide)
    _ = (291 : Int) - (10 : Int) :=
      sub_congr node_7_1792 node_7_61
    _ = (281 : Int) := by decide

theorem node_5_1792 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1792 = (274 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1792 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1792 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1792 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1792 (by decide)
    _ = (281 : Int) - (7 : Int) :=
      sub_congr node_6_1792 node_6_57
    _ = (274 : Int) := by decide

theorem node_4_1792 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1792 = (269 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1792 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1792 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1792 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1792 (by decide)
    _ = (274 : Int) - (5 : Int) :=
      sub_congr node_5_1792 node_5_48
    _ = (269 : Int) := by decide

theorem node_3_1792 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1792 = (266 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1792 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1792 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1792 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1792 (by decide)
    _ = (269 : Int) - (3 : Int) :=
      sub_congr node_4_1792 node_4_43
    _ = (266 : Int) := by decide

theorem node_2_77080 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 = (10936 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (77080 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 (by decide)
    _ = (11202 : Int) - (266 : Int) :=
      sub_congr node_3_77080 node_3_1792
    _ = (10936 : Int) := by decide

theorem node_8_1640 : count [19, 17, 13, 11, 7, 5, 3, 2] 1640 = (279 : Int) := by
  decide

theorem node_7_1640 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1640 = (266 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1640 = count [19, 17, 13, 11, 7, 5, 3, 2] 1640 - count [19, 17, 13, 11, 7, 5, 3, 2] (1640 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1640 (by decide)
    _ = (279 : Int) - (13 : Int) :=
      sub_congr node_8_1640 node_8_71
    _ = (266 : Int) := by decide

theorem node_6_1640 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1640 = (258 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1640 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1640 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1640 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1640 (by decide)
    _ = (266 : Int) - (8 : Int) :=
      sub_congr node_7_1640 node_7_56
    _ = (258 : Int) := by decide

theorem node_5_1640 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1640 = (252 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1640 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1640 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1640 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1640 (by decide)
    _ = (258 : Int) - (6 : Int) :=
      sub_congr node_6_1640 node_6_52
    _ = (252 : Int) := by decide

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

theorem node_4_1640 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1640 = (248 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1640 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1640 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1640 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1640 (by decide)
    _ = (252 : Int) - (4 : Int) :=
      sub_congr node_5_1640 node_5_44
    _ = (248 : Int) := by decide

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

theorem node_3_1640 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1640 = (247 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1640 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1640 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1640 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1640 (by decide)
    _ = (248 : Int) - (1 : Int) :=
      sub_congr node_4_1640 node_4_40
    _ = (247 : Int) := by decide

theorem node_3_38 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (38 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_38 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1640 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1640 = (246 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1640 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1640 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1640 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1640 (by decide)
    _ = (247 : Int) - (1 : Int) :=
      sub_congr node_3_1640 node_3_38
    _ = (246 : Int) := by decide

theorem node_1_77080 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 = (10690 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (77080 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 (by decide)
    _ = (10936 : Int) - (246 : Int) :=
      sub_congr node_2_77080 node_2_1640
    _ = (10690 : Int) := by decide

theorem node_8_1454 : count [19, 17, 13, 11, 7, 5, 3, 2] 1454 = (245 : Int) := by
  decide

theorem node_7_1454 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1454 = (234 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1454 = count [19, 17, 13, 11, 7, 5, 3, 2] 1454 - count [19, 17, 13, 11, 7, 5, 3, 2] (1454 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1454 (by decide)
    _ = (245 : Int) - (11 : Int) :=
      sub_congr node_8_1454 node_8_63
    _ = (234 : Int) := by decide

theorem node_6_1454 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1454 = (227 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1454 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1454 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1454 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1454 (by decide)
    _ = (234 : Int) - (7 : Int) :=
      sub_congr node_7_1454 node_7_50
    _ = (227 : Int) := by decide

theorem node_5_1454 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1454 = (222 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1454 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1454 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1454 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1454 (by decide)
    _ = (227 : Int) - (5 : Int) :=
      sub_congr node_6_1454 node_6_46
    _ = (222 : Int) := by decide

theorem node_4_1454 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1454 = (220 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1454 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1454 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1454 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1454 (by decide)
    _ = (222 : Int) - (2 : Int) :=
      sub_congr node_5_1454 node_5_39
    _ = (220 : Int) := by decide

theorem node_3_1454 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1454 = (219 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1454 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1454 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1454 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1454 (by decide)
    _ = (220 : Int) - (1 : Int) :=
      sub_congr node_4_1454 node_4_35
    _ = (219 : Int) := by decide

theorem node_2_1454 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1454 = (218 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1454 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1454 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1454 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1454 (by decide)
    _ = (219 : Int) - (1 : Int) :=
      sub_congr node_3_1454 node_3_33
    _ = (218 : Int) := by decide

theorem node_1_1454 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1454 = (217 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1454 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1454 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1454 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1454 (by decide)
    _ = (218 : Int) - (1 : Int) :=
      sub_congr node_2_1454 node_2_30
    _ = (217 : Int) := by decide

theorem node_0_77080 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 = (10473 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (77080 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77080 (by decide)
    _ = (10690 : Int) - (217 : Int) :=
      sub_congr node_1_77080 node_1_1454
    _ = (10473 : Int) := by decide

theorem row_60 : count primes 74328 ≤ (10116 : Int) - 15 := by
  rw [show count primes 74328 = (10101 : Int) from node_0_74328]
  decide

theorem row_61 : count primes 75226 ≤ (10241 : Int) - 15 := by
  rw [show count primes 75226 = (10226 : Int) from node_0_75226]
  decide

theorem row_62 : count primes 76122 ≤ (10365 : Int) - 15 := by
  rw [show count primes 76122 = (10350 : Int) from node_0_76122]
  decide

theorem row_63 : count primes 77080 ≤ (10488 : Int) - 15 := by
  rw [show count primes 77080 = (10473 : Int) from node_0_77080]
  decide

def pairs : List (Nat × Nat) := [(74328, 10116), (75226, 10241), (76122, 10365), (77080, 10488)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl | rfl | rfl
  · exact row_60
  · exact row_61
  · exact row_62
  · exact row_63
end B699CorePrunedSieve.CoreDagBatch16
#check @B699CorePrunedSieve.CoreDagBatch16.pairs_valid
#print axioms B699CorePrunedSieve.CoreDagBatch16.pairs_valid
