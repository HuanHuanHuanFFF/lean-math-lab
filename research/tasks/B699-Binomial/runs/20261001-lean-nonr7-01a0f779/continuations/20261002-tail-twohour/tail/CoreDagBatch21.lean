import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreDagBatch21
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_93480 : count [19, 17, 13, 11, 7, 5, 3, 2] 93480 = (15989 : Int) := by
  decide

theorem node_8_4064 : count [19, 17, 13, 11, 7, 5, 3, 2] 4064 = (693 : Int) := by
  decide

theorem node_7_93480 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 = (15296 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 = count [19, 17, 13, 11, 7, 5, 3, 2] 93480 - count [19, 17, 13, 11, 7, 5, 3, 2] (93480 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 93480 (by decide)
    _ = (15989 : Int) - (693 : Int) :=
      sub_congr node_8_93480 node_8_4064
    _ = (15296 : Int) := by decide

theorem node_8_3223 : count [19, 17, 13, 11, 7, 5, 3, 2] 3223 = (548 : Int) := by
  decide

theorem node_8_140 : count [19, 17, 13, 11, 7, 5, 3, 2] 140 = (27 : Int) := by
  decide

theorem node_7_3223 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3223 = (521 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3223 = count [19, 17, 13, 11, 7, 5, 3, 2] 3223 - count [19, 17, 13, 11, 7, 5, 3, 2] (3223 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3223 (by decide)
    _ = (548 : Int) - (27 : Int) :=
      sub_congr node_8_3223 node_8_140
    _ = (521 : Int) := by decide

theorem node_6_93480 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 = (14775 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (93480 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 (by decide)
    _ = (15296 : Int) - (521 : Int) :=
      sub_congr node_7_93480 node_7_3223
    _ = (14775 : Int) := by decide

theorem node_8_3015 : count [19, 17, 13, 11, 7, 5, 3, 2] 3015 = (513 : Int) := by
  decide

theorem node_8_131 : count [19, 17, 13, 11, 7, 5, 3, 2] 131 = (25 : Int) := by
  decide

theorem node_7_3015 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3015 = (488 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3015 = count [19, 17, 13, 11, 7, 5, 3, 2] 3015 - count [19, 17, 13, 11, 7, 5, 3, 2] (3015 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3015 (by decide)
    _ = (513 : Int) - (25 : Int) :=
      sub_congr node_8_3015 node_8_131
    _ = (488 : Int) := by decide

theorem node_8_103 : count [19, 17, 13, 11, 7, 5, 3, 2] 103 = (20 : Int) := by
  decide

theorem node_8_4 : count [19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  decide

theorem node_7_103 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 103 = (19 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 103 = count [19, 17, 13, 11, 7, 5, 3, 2] 103 - count [19, 17, 13, 11, 7, 5, 3, 2] (103 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 103 (by decide)
    _ = (20 : Int) - (1 : Int) :=
      sub_congr node_8_103 node_8_4
    _ = (19 : Int) := by decide

theorem node_6_3015 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3015 = (469 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3015 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3015 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3015 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3015 (by decide)
    _ = (488 : Int) - (19 : Int) :=
      sub_congr node_7_3015 node_7_103
    _ = (469 : Int) := by decide

theorem node_5_93480 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 = (14306 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (93480 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 (by decide)
    _ = (14775 : Int) - (469 : Int) :=
      sub_congr node_6_93480 node_6_3015
    _ = (14306 : Int) := by decide

theorem node_8_2526 : count [19, 17, 13, 11, 7, 5, 3, 2] 2526 = (428 : Int) := by
  decide

theorem node_8_109 : count [19, 17, 13, 11, 7, 5, 3, 2] 109 = (22 : Int) := by
  decide

theorem node_7_2526 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2526 = (406 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2526 = count [19, 17, 13, 11, 7, 5, 3, 2] 2526 - count [19, 17, 13, 11, 7, 5, 3, 2] (2526 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2526 (by decide)
    _ = (428 : Int) - (22 : Int) :=
      sub_congr node_8_2526 node_8_109
    _ = (406 : Int) := by decide

theorem node_8_87 : count [19, 17, 13, 11, 7, 5, 3, 2] 87 = (16 : Int) := by
  decide

theorem node_8_3 : count [19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  decide

theorem node_7_87 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = count [19, 17, 13, 11, 7, 5, 3, 2] 87 - count [19, 17, 13, 11, 7, 5, 3, 2] (87 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 87 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_87 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_2526 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2526 = (391 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2526 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2526 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2526 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2526 (by decide)
    _ = (406 : Int) - (15 : Int) :=
      sub_congr node_7_2526 node_7_87
    _ = (391 : Int) := by decide

theorem node_8_81 : count [19, 17, 13, 11, 7, 5, 3, 2] 81 = (15 : Int) := by
  decide

theorem node_7_81 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = (14 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = count [19, 17, 13, 11, 7, 5, 3, 2] 81 - count [19, 17, 13, 11, 7, 5, 3, 2] (81 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 81 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_8_81 node_8_3
    _ = (14 : Int) := by decide

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

theorem node_6_81 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = (13 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 81 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (81 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 81 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_7_81 node_7_2
    _ = (13 : Int) := by decide

theorem node_5_2526 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2526 = (378 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2526 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2526 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2526 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2526 (by decide)
    _ = (391 : Int) - (13 : Int) :=
      sub_congr node_6_2526 node_6_81
    _ = (378 : Int) := by decide

theorem node_4_93480 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 = (13928 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (93480 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 (by decide)
    _ = (14306 : Int) - (378 : Int) :=
      sub_congr node_5_93480 node_5_2526
    _ = (13928 : Int) := by decide

theorem node_8_2280 : count [19, 17, 13, 11, 7, 5, 3, 2] 2280 = (386 : Int) := by
  decide

theorem node_8_99 : count [19, 17, 13, 11, 7, 5, 3, 2] 99 = (18 : Int) := by
  decide

theorem node_7_2280 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2280 = (368 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2280 = count [19, 17, 13, 11, 7, 5, 3, 2] 2280 - count [19, 17, 13, 11, 7, 5, 3, 2] (2280 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2280 (by decide)
    _ = (386 : Int) - (18 : Int) :=
      sub_congr node_8_2280 node_8_99
    _ = (368 : Int) := by decide

theorem node_8_78 : count [19, 17, 13, 11, 7, 5, 3, 2] 78 = (14 : Int) := by
  decide

theorem node_7_78 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = count [19, 17, 13, 11, 7, 5, 3, 2] 78 - count [19, 17, 13, 11, 7, 5, 3, 2] (78 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 78 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_78 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_2280 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2280 = (355 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2280 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2280 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2280 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2280 (by decide)
    _ = (368 : Int) - (13 : Int) :=
      sub_congr node_7_2280 node_7_78
    _ = (355 : Int) := by decide

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

theorem node_5_2280 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2280 = (343 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2280 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2280 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2280 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2280 (by decide)
    _ = (355 : Int) - (12 : Int) :=
      sub_congr node_6_2280 node_6_73
    _ = (343 : Int) := by decide

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

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

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

theorem node_4_2280 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2280 = (335 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2280 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2280 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2280 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2280 (by decide)
    _ = (343 : Int) - (8 : Int) :=
      sub_congr node_5_2280 node_5_61
    _ = (335 : Int) := by decide

theorem node_3_93480 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 = (13593 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (93480 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 (by decide)
    _ = (13928 : Int) - (335 : Int) :=
      sub_congr node_4_93480 node_4_2280
    _ = (13593 : Int) := by decide

theorem node_8_2173 : count [19, 17, 13, 11, 7, 5, 3, 2] 2173 = (367 : Int) := by
  decide

theorem node_8_94 : count [19, 17, 13, 11, 7, 5, 3, 2] 94 = (17 : Int) := by
  decide

theorem node_7_2173 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2173 = (350 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2173 = count [19, 17, 13, 11, 7, 5, 3, 2] 2173 - count [19, 17, 13, 11, 7, 5, 3, 2] (2173 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2173 (by decide)
    _ = (367 : Int) - (17 : Int) :=
      sub_congr node_8_2173 node_8_94
    _ = (350 : Int) := by decide

theorem node_8_74 : count [19, 17, 13, 11, 7, 5, 3, 2] 74 = (14 : Int) := by
  decide

theorem node_7_74 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = count [19, 17, 13, 11, 7, 5, 3, 2] 74 - count [19, 17, 13, 11, 7, 5, 3, 2] (74 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 74 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_74 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_2173 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2173 = (337 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2173 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2173 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2173 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2173 (by decide)
    _ = (350 : Int) - (13 : Int) :=
      sub_congr node_7_2173 node_7_74
    _ = (337 : Int) := by decide

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

theorem node_5_2173 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2173 = (327 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2173 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2173 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2173 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2173 (by decide)
    _ = (337 : Int) - (10 : Int) :=
      sub_congr node_6_2173 node_6_70
    _ = (327 : Int) := by decide

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

theorem node_4_2173 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2173 = (321 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2173 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2173 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2173 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2173 (by decide)
    _ = (327 : Int) - (6 : Int) :=
      sub_congr node_5_2173 node_5_58
    _ = (321 : Int) := by decide

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

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_1 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_1 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_53 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = (5 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (53 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_5_53 node_5_1
    _ = (5 : Int) := by decide

theorem node_3_2173 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2173 = (316 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2173 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2173 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2173 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2173 (by decide)
    _ = (321 : Int) - (5 : Int) :=
      sub_congr node_4_2173 node_4_53
    _ = (316 : Int) := by decide

theorem node_2_93480 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 = (13277 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (93480 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 (by decide)
    _ = (13593 : Int) - (316 : Int) :=
      sub_congr node_3_93480 node_3_2173
    _ = (13277 : Int) := by decide

theorem node_8_1988 : count [19, 17, 13, 11, 7, 5, 3, 2] 1988 = (335 : Int) := by
  decide

theorem node_8_86 : count [19, 17, 13, 11, 7, 5, 3, 2] 86 = (16 : Int) := by
  decide

theorem node_7_1988 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1988 = (319 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1988 = count [19, 17, 13, 11, 7, 5, 3, 2] 1988 - count [19, 17, 13, 11, 7, 5, 3, 2] (1988 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1988 (by decide)
    _ = (335 : Int) - (16 : Int) :=
      sub_congr node_8_1988 node_8_86
    _ = (319 : Int) := by decide

theorem node_8_68 : count [19, 17, 13, 11, 7, 5, 3, 2] 68 = (12 : Int) := by
  decide

theorem node_7_68 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = (11 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = count [19, 17, 13, 11, 7, 5, 3, 2] 68 - count [19, 17, 13, 11, 7, 5, 3, 2] (68 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 68 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_8_68 node_8_2
    _ = (11 : Int) := by decide

theorem node_6_1988 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1988 = (308 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1988 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1988 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1988 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1988 (by decide)
    _ = (319 : Int) - (11 : Int) :=
      sub_congr node_7_1988 node_7_68
    _ = (308 : Int) := by decide

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

theorem node_5_1988 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1988 = (299 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1988 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1988 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1988 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1988 (by decide)
    _ = (308 : Int) - (9 : Int) :=
      sub_congr node_6_1988 node_6_64
    _ = (299 : Int) := by decide

theorem node_4_1988 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1988 = (293 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1988 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1988 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1988 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1988 (by decide)
    _ = (299 : Int) - (6 : Int) :=
      sub_congr node_5_1988 node_5_53
    _ = (293 : Int) := by decide

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

theorem node_3_1988 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1988 = (289 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1988 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1988 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1988 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1988 (by decide)
    _ = (293 : Int) - (4 : Int) :=
      sub_congr node_4_1988 node_4_48
    _ = (289 : Int) := by decide

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

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_1 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_1 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_46 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = (2 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (46 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_4_46 node_4_1
    _ = (2 : Int) := by decide

theorem node_2_1988 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1988 = (287 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1988 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1988 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1988 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1988 (by decide)
    _ = (289 : Int) - (2 : Int) :=
      sub_congr node_3_1988 node_3_46
    _ = (287 : Int) := by decide

theorem node_1_93480 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 = (12990 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (93480 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 (by decide)
    _ = (13277 : Int) - (287 : Int) :=
      sub_congr node_2_93480 node_2_1988
    _ = (12990 : Int) := by decide

theorem node_8_1763 : count [19, 17, 13, 11, 7, 5, 3, 2] 1763 = (300 : Int) := by
  decide

theorem node_8_76 : count [19, 17, 13, 11, 7, 5, 3, 2] 76 = (14 : Int) := by
  decide

theorem node_7_1763 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1763 = (286 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1763 = count [19, 17, 13, 11, 7, 5, 3, 2] 1763 - count [19, 17, 13, 11, 7, 5, 3, 2] (1763 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1763 (by decide)
    _ = (300 : Int) - (14 : Int) :=
      sub_congr node_8_1763 node_8_76
    _ = (286 : Int) := by decide

theorem node_8_60 : count [19, 17, 13, 11, 7, 5, 3, 2] 60 = (10 : Int) := by
  decide

theorem node_7_60 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = (9 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = count [19, 17, 13, 11, 7, 5, 3, 2] 60 - count [19, 17, 13, 11, 7, 5, 3, 2] (60 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 60 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_8_60 node_8_2
    _ = (9 : Int) := by decide

theorem node_6_1763 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1763 = (277 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1763 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1763 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1763 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1763 (by decide)
    _ = (286 : Int) - (9 : Int) :=
      sub_congr node_7_1763 node_7_60
    _ = (277 : Int) := by decide

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

theorem node_5_1763 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1763 = (270 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1763 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1763 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1763 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1763 (by decide)
    _ = (277 : Int) - (7 : Int) :=
      sub_congr node_6_1763 node_6_56
    _ = (270 : Int) := by decide

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

theorem node_4_1763 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1763 = (265 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1763 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1763 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1763 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1763 (by decide)
    _ = (270 : Int) - (5 : Int) :=
      sub_congr node_5_1763 node_5_47
    _ = (265 : Int) := by decide

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

theorem node_3_1763 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1763 = (262 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1763 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1763 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1763 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1763 (by decide)
    _ = (265 : Int) - (3 : Int) :=
      sub_congr node_4_1763 node_4_43
    _ = (262 : Int) := by decide

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

theorem node_4_41 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = (2 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (41 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_5_41 node_5_1
    _ = (2 : Int) := by decide

theorem node_3_41 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (41 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_4_41 node_4_1
    _ = (1 : Int) := by decide

theorem node_2_1763 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1763 = (261 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1763 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1763 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1763 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1763 (by decide)
    _ = (262 : Int) - (1 : Int) :=
      sub_congr node_3_1763 node_3_41
    _ = (261 : Int) := by decide

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

theorem node_4_37 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (37 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_5_37 node_5_1
    _ = (1 : Int) := by decide

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_37 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (37 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_37 node_4_0
    _ = (1 : Int) := by decide

theorem node_3_0 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_2_37 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (37 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_37 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1763 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1763 = (260 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1763 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1763 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1763 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1763 (by decide)
    _ = (261 : Int) - (1 : Int) :=
      sub_congr node_2_1763 node_2_37
    _ = (260 : Int) := by decide

theorem node_0_93480 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 = (12730 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (93480 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93480 (by decide)
    _ = (12990 : Int) - (260 : Int) :=
      sub_congr node_1_93480 node_1_1763
    _ = (12730 : Int) := by decide

theorem node_8_94446 : count [19, 17, 13, 11, 7, 5, 3, 2] 94446 = (16155 : Int) := by
  decide

theorem node_8_4106 : count [19, 17, 13, 11, 7, 5, 3, 2] 4106 = (699 : Int) := by
  decide

theorem node_7_94446 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 = (15456 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 = count [19, 17, 13, 11, 7, 5, 3, 2] 94446 - count [19, 17, 13, 11, 7, 5, 3, 2] (94446 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 94446 (by decide)
    _ = (16155 : Int) - (699 : Int) :=
      sub_congr node_8_94446 node_8_4106
    _ = (15456 : Int) := by decide

theorem node_8_3256 : count [19, 17, 13, 11, 7, 5, 3, 2] 3256 = (553 : Int) := by
  decide

theorem node_8_141 : count [19, 17, 13, 11, 7, 5, 3, 2] 141 = (27 : Int) := by
  decide

theorem node_7_3256 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3256 = (526 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3256 = count [19, 17, 13, 11, 7, 5, 3, 2] 3256 - count [19, 17, 13, 11, 7, 5, 3, 2] (3256 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3256 (by decide)
    _ = (553 : Int) - (27 : Int) :=
      sub_congr node_8_3256 node_8_141
    _ = (526 : Int) := by decide

theorem node_6_94446 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 = (14930 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (94446 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 (by decide)
    _ = (15456 : Int) - (526 : Int) :=
      sub_congr node_7_94446 node_7_3256
    _ = (14930 : Int) := by decide

theorem node_8_3046 : count [19, 17, 13, 11, 7, 5, 3, 2] 3046 = (517 : Int) := by
  decide

theorem node_8_132 : count [19, 17, 13, 11, 7, 5, 3, 2] 132 = (25 : Int) := by
  decide

theorem node_7_3046 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3046 = (492 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3046 = count [19, 17, 13, 11, 7, 5, 3, 2] 3046 - count [19, 17, 13, 11, 7, 5, 3, 2] (3046 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3046 (by decide)
    _ = (517 : Int) - (25 : Int) :=
      sub_congr node_8_3046 node_8_132
    _ = (492 : Int) := by decide

theorem node_8_105 : count [19, 17, 13, 11, 7, 5, 3, 2] 105 = (20 : Int) := by
  decide

theorem node_7_105 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 105 = (19 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 105 = count [19, 17, 13, 11, 7, 5, 3, 2] 105 - count [19, 17, 13, 11, 7, 5, 3, 2] (105 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 105 (by decide)
    _ = (20 : Int) - (1 : Int) :=
      sub_congr node_8_105 node_8_4
    _ = (19 : Int) := by decide

theorem node_6_3046 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3046 = (473 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3046 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3046 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3046 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3046 (by decide)
    _ = (492 : Int) - (19 : Int) :=
      sub_congr node_7_3046 node_7_105
    _ = (473 : Int) := by decide

theorem node_5_94446 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 = (14457 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (94446 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 (by decide)
    _ = (14930 : Int) - (473 : Int) :=
      sub_congr node_6_94446 node_6_3046
    _ = (14457 : Int) := by decide

theorem node_8_2552 : count [19, 17, 13, 11, 7, 5, 3, 2] 2552 = (434 : Int) := by
  decide

theorem node_8_110 : count [19, 17, 13, 11, 7, 5, 3, 2] 110 = (22 : Int) := by
  decide

theorem node_7_2552 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2552 = (412 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2552 = count [19, 17, 13, 11, 7, 5, 3, 2] 2552 - count [19, 17, 13, 11, 7, 5, 3, 2] (2552 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2552 (by decide)
    _ = (434 : Int) - (22 : Int) :=
      sub_congr node_8_2552 node_8_110
    _ = (412 : Int) := by decide

theorem node_8_88 : count [19, 17, 13, 11, 7, 5, 3, 2] 88 = (16 : Int) := by
  decide

theorem node_7_88 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 88 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 88 = count [19, 17, 13, 11, 7, 5, 3, 2] 88 - count [19, 17, 13, 11, 7, 5, 3, 2] (88 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 88 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_88 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_2552 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2552 = (397 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2552 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2552 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2552 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2552 (by decide)
    _ = (412 : Int) - (15 : Int) :=
      sub_congr node_7_2552 node_7_88
    _ = (397 : Int) := by decide

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

theorem node_5_2552 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2552 = (384 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2552 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2552 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2552 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2552 (by decide)
    _ = (397 : Int) - (13 : Int) :=
      sub_congr node_6_2552 node_6_82
    _ = (384 : Int) := by decide

theorem node_4_94446 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 = (14073 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (94446 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 (by decide)
    _ = (14457 : Int) - (384 : Int) :=
      sub_congr node_5_94446 node_5_2552
    _ = (14073 : Int) := by decide

theorem node_8_2303 : count [19, 17, 13, 11, 7, 5, 3, 2] 2303 = (391 : Int) := by
  decide

theorem node_8_100 : count [19, 17, 13, 11, 7, 5, 3, 2] 100 = (18 : Int) := by
  decide

theorem node_7_2303 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2303 = (373 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2303 = count [19, 17, 13, 11, 7, 5, 3, 2] 2303 - count [19, 17, 13, 11, 7, 5, 3, 2] (2303 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2303 (by decide)
    _ = (391 : Int) - (18 : Int) :=
      sub_congr node_8_2303 node_8_100
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

theorem node_6_2303 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2303 = (359 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2303 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2303 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2303 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2303 (by decide)
    _ = (373 : Int) - (14 : Int) :=
      sub_congr node_7_2303 node_7_79
    _ = (359 : Int) := by decide

theorem node_6_74 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = (12 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 74 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (74 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 74 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_7_74 node_7_2
    _ = (12 : Int) := by decide

theorem node_5_2303 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2303 = (347 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2303 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2303 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2303 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2303 (by decide)
    _ = (359 : Int) - (12 : Int) :=
      sub_congr node_6_2303 node_6_74
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

theorem node_6_2 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_2 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_62 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = (8 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (62 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_6_62 node_6_2
    _ = (8 : Int) := by decide

theorem node_4_2303 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2303 = (339 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2303 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2303 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2303 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2303 (by decide)
    _ = (347 : Int) - (8 : Int) :=
      sub_congr node_5_2303 node_5_62
    _ = (339 : Int) := by decide

theorem node_3_94446 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 = (13734 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (94446 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 (by decide)
    _ = (14073 : Int) - (339 : Int) :=
      sub_congr node_4_94446 node_4_2303
    _ = (13734 : Int) := by decide

theorem node_8_2196 : count [19, 17, 13, 11, 7, 5, 3, 2] 2196 = (369 : Int) := by
  decide

theorem node_8_95 : count [19, 17, 13, 11, 7, 5, 3, 2] 95 = (17 : Int) := by
  decide

theorem node_7_2196 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2196 = (352 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2196 = count [19, 17, 13, 11, 7, 5, 3, 2] 2196 - count [19, 17, 13, 11, 7, 5, 3, 2] (2196 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2196 (by decide)
    _ = (369 : Int) - (17 : Int) :=
      sub_congr node_8_2196 node_8_95
    _ = (352 : Int) := by decide

theorem node_8_75 : count [19, 17, 13, 11, 7, 5, 3, 2] 75 = (14 : Int) := by
  decide

theorem node_7_75 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = count [19, 17, 13, 11, 7, 5, 3, 2] 75 - count [19, 17, 13, 11, 7, 5, 3, 2] (75 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 75 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_75 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_2196 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2196 = (339 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2196 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2196 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2196 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2196 (by decide)
    _ = (352 : Int) - (13 : Int) :=
      sub_congr node_7_2196 node_7_75
    _ = (339 : Int) := by decide

theorem node_5_2196 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2196 = (329 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2196 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2196 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2196 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2196 (by decide)
    _ = (339 : Int) - (10 : Int) :=
      sub_congr node_6_2196 node_6_70
    _ = (329 : Int) := by decide

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

theorem node_4_2196 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2196 = (322 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2196 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2196 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2196 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2196 (by decide)
    _ = (329 : Int) - (7 : Int) :=
      sub_congr node_5_2196 node_5_59
    _ = (322 : Int) := by decide

theorem node_3_2196 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2196 = (317 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2196 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2196 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2196 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2196 (by decide)
    _ = (322 : Int) - (5 : Int) :=
      sub_congr node_4_2196 node_4_53
    _ = (317 : Int) := by decide

theorem node_2_94446 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 = (13417 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (94446 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 (by decide)
    _ = (13734 : Int) - (317 : Int) :=
      sub_congr node_3_94446 node_3_2196
    _ = (13417 : Int) := by decide

theorem node_8_2009 : count [19, 17, 13, 11, 7, 5, 3, 2] 2009 = (339 : Int) := by
  decide

theorem node_7_2009 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2009 = (323 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2009 = count [19, 17, 13, 11, 7, 5, 3, 2] 2009 - count [19, 17, 13, 11, 7, 5, 3, 2] (2009 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2009 (by decide)
    _ = (339 : Int) - (16 : Int) :=
      sub_congr node_8_2009 node_8_87
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

theorem node_6_2009 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2009 = (312 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2009 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2009 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2009 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2009 (by decide)
    _ = (323 : Int) - (11 : Int) :=
      sub_congr node_7_2009 node_7_69
    _ = (312 : Int) := by decide

theorem node_5_2009 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2009 = (303 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2009 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2009 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2009 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2009 (by decide)
    _ = (312 : Int) - (9 : Int) :=
      sub_congr node_6_2009 node_6_64
    _ = (303 : Int) := by decide

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

theorem node_4_2009 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2009 = (297 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2009 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2009 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2009 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2009 (by decide)
    _ = (303 : Int) - (6 : Int) :=
      sub_congr node_5_2009 node_5_54
    _ = (297 : Int) := by decide

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

theorem node_3_2009 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2009 = (293 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2009 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2009 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2009 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2009 (by decide)
    _ = (297 : Int) - (4 : Int) :=
      sub_congr node_4_2009 node_4_49
    _ = (293 : Int) := by decide

theorem node_2_2009 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2009 = (291 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2009 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2009 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2009 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2009 (by decide)
    _ = (293 : Int) - (2 : Int) :=
      sub_congr node_3_2009 node_3_46
    _ = (291 : Int) := by decide

theorem node_1_94446 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 = (13126 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (94446 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 (by decide)
    _ = (13417 : Int) - (291 : Int) :=
      sub_congr node_2_94446 node_2_2009
    _ = (13126 : Int) := by decide

theorem node_8_1782 : count [19, 17, 13, 11, 7, 5, 3, 2] 1782 = (302 : Int) := by
  decide

theorem node_8_77 : count [19, 17, 13, 11, 7, 5, 3, 2] 77 = (14 : Int) := by
  decide

theorem node_7_1782 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1782 = (288 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1782 = count [19, 17, 13, 11, 7, 5, 3, 2] 1782 - count [19, 17, 13, 11, 7, 5, 3, 2] (1782 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1782 (by decide)
    _ = (302 : Int) - (14 : Int) :=
      sub_congr node_8_1782 node_8_77
    _ = (288 : Int) := by decide

theorem node_6_1782 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1782 = (278 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1782 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1782 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1782 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1782 (by decide)
    _ = (288 : Int) - (10 : Int) :=
      sub_congr node_7_1782 node_7_61
    _ = (278 : Int) := by decide

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

theorem node_5_1782 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1782 = (271 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1782 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1782 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1782 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1782 (by decide)
    _ = (278 : Int) - (7 : Int) :=
      sub_congr node_6_1782 node_6_57
    _ = (271 : Int) := by decide

theorem node_4_1782 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1782 = (266 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1782 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1782 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1782 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1782 (by decide)
    _ = (271 : Int) - (5 : Int) :=
      sub_congr node_5_1782 node_5_48
    _ = (266 : Int) := by decide

theorem node_3_1782 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1782 = (263 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1782 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1782 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1782 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1782 (by decide)
    _ = (266 : Int) - (3 : Int) :=
      sub_congr node_4_1782 node_4_43
    _ = (263 : Int) := by decide

theorem node_2_1782 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1782 = (262 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1782 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1782 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1782 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1782 (by decide)
    _ = (263 : Int) - (1 : Int) :=
      sub_congr node_3_1782 node_3_41
    _ = (262 : Int) := by decide

theorem node_1_1782 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1782 = (261 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1782 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1782 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1782 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1782 (by decide)
    _ = (262 : Int) - (1 : Int) :=
      sub_congr node_2_1782 node_2_37
    _ = (261 : Int) := by decide

theorem node_0_94446 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 = (12865 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (94446 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 94446 (by decide)
    _ = (13126 : Int) - (261 : Int) :=
      sub_congr node_1_94446 node_1_1782
    _ = (12865 : Int) := by decide

theorem node_8_95418 : count [19, 17, 13, 11, 7, 5, 3, 2] 95418 = (16318 : Int) := by
  decide

theorem node_8_4148 : count [19, 17, 13, 11, 7, 5, 3, 2] 4148 = (706 : Int) := by
  decide

theorem node_7_95418 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 = (15612 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 = count [19, 17, 13, 11, 7, 5, 3, 2] 95418 - count [19, 17, 13, 11, 7, 5, 3, 2] (95418 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 95418 (by decide)
    _ = (16318 : Int) - (706 : Int) :=
      sub_congr node_8_95418 node_8_4148
    _ = (15612 : Int) := by decide

theorem node_8_3290 : count [19, 17, 13, 11, 7, 5, 3, 2] 3290 = (557 : Int) := by
  decide

theorem node_8_143 : count [19, 17, 13, 11, 7, 5, 3, 2] 143 = (27 : Int) := by
  decide

theorem node_7_3290 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3290 = (530 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3290 = count [19, 17, 13, 11, 7, 5, 3, 2] 3290 - count [19, 17, 13, 11, 7, 5, 3, 2] (3290 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3290 (by decide)
    _ = (557 : Int) - (27 : Int) :=
      sub_congr node_8_3290 node_8_143
    _ = (530 : Int) := by decide

theorem node_6_95418 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 = (15082 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (95418 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 (by decide)
    _ = (15612 : Int) - (530 : Int) :=
      sub_congr node_7_95418 node_7_3290
    _ = (15082 : Int) := by decide

theorem node_8_3078 : count [19, 17, 13, 11, 7, 5, 3, 2] 3078 = (522 : Int) := by
  decide

theorem node_8_133 : count [19, 17, 13, 11, 7, 5, 3, 2] 133 = (25 : Int) := by
  decide

theorem node_7_3078 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3078 = (497 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3078 = count [19, 17, 13, 11, 7, 5, 3, 2] 3078 - count [19, 17, 13, 11, 7, 5, 3, 2] (3078 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3078 (by decide)
    _ = (522 : Int) - (25 : Int) :=
      sub_congr node_8_3078 node_8_133
    _ = (497 : Int) := by decide

theorem node_8_106 : count [19, 17, 13, 11, 7, 5, 3, 2] 106 = (20 : Int) := by
  decide

theorem node_7_106 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 106 = (19 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 106 = count [19, 17, 13, 11, 7, 5, 3, 2] 106 - count [19, 17, 13, 11, 7, 5, 3, 2] (106 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 106 (by decide)
    _ = (20 : Int) - (1 : Int) :=
      sub_congr node_8_106 node_8_4
    _ = (19 : Int) := by decide

theorem node_6_3078 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3078 = (478 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3078 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3078 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3078 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3078 (by decide)
    _ = (497 : Int) - (19 : Int) :=
      sub_congr node_7_3078 node_7_106
    _ = (478 : Int) := by decide

theorem node_5_95418 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 = (14604 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (95418 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 (by decide)
    _ = (15082 : Int) - (478 : Int) :=
      sub_congr node_6_95418 node_6_3078
    _ = (14604 : Int) := by decide

theorem node_8_2578 : count [19, 17, 13, 11, 7, 5, 3, 2] 2578 = (436 : Int) := by
  decide

theorem node_8_112 : count [19, 17, 13, 11, 7, 5, 3, 2] 112 = (22 : Int) := by
  decide

theorem node_7_2578 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2578 = (414 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2578 = count [19, 17, 13, 11, 7, 5, 3, 2] 2578 - count [19, 17, 13, 11, 7, 5, 3, 2] (2578 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2578 (by decide)
    _ = (436 : Int) - (22 : Int) :=
      sub_congr node_8_2578 node_8_112
    _ = (414 : Int) := by decide

theorem node_6_2578 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2578 = (399 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2578 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2578 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2578 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2578 (by decide)
    _ = (414 : Int) - (15 : Int) :=
      sub_congr node_7_2578 node_7_88
    _ = (399 : Int) := by decide

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

theorem node_5_2578 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2578 = (385 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2578 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2578 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2578 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2578 (by decide)
    _ = (399 : Int) - (14 : Int) :=
      sub_congr node_6_2578 node_6_83
    _ = (385 : Int) := by decide

theorem node_4_95418 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 = (14219 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (95418 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 (by decide)
    _ = (14604 : Int) - (385 : Int) :=
      sub_congr node_5_95418 node_5_2578
    _ = (14219 : Int) := by decide

theorem node_8_2327 : count [19, 17, 13, 11, 7, 5, 3, 2] 2327 = (394 : Int) := by
  decide

theorem node_8_101 : count [19, 17, 13, 11, 7, 5, 3, 2] 101 = (19 : Int) := by
  decide

theorem node_7_2327 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2327 = (375 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2327 = count [19, 17, 13, 11, 7, 5, 3, 2] 2327 - count [19, 17, 13, 11, 7, 5, 3, 2] (2327 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2327 (by decide)
    _ = (394 : Int) - (19 : Int) :=
      sub_congr node_8_2327 node_8_101
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

theorem node_6_2327 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2327 = (361 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2327 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2327 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2327 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2327 (by decide)
    _ = (375 : Int) - (14 : Int) :=
      sub_congr node_7_2327 node_7_80
    _ = (361 : Int) := by decide

theorem node_6_75 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = (12 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 75 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (75 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 75 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_7_75 node_7_2
    _ = (12 : Int) := by decide

theorem node_5_2327 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2327 = (349 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2327 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2327 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2327 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2327 (by decide)
    _ = (361 : Int) - (12 : Int) :=
      sub_congr node_6_2327 node_6_75
    _ = (349 : Int) := by decide

theorem node_4_2327 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2327 = (341 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2327 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2327 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2327 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2327 (by decide)
    _ = (349 : Int) - (8 : Int) :=
      sub_congr node_5_2327 node_5_62
    _ = (341 : Int) := by decide

theorem node_3_95418 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 = (13878 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (95418 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 (by decide)
    _ = (14219 : Int) - (341 : Int) :=
      sub_congr node_4_95418 node_4_2327
    _ = (13878 : Int) := by decide

theorem node_8_2219 : count [19, 17, 13, 11, 7, 5, 3, 2] 2219 = (374 : Int) := by
  decide

theorem node_8_96 : count [19, 17, 13, 11, 7, 5, 3, 2] 96 = (17 : Int) := by
  decide

theorem node_7_2219 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2219 = (357 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2219 = count [19, 17, 13, 11, 7, 5, 3, 2] 2219 - count [19, 17, 13, 11, 7, 5, 3, 2] (2219 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2219 (by decide)
    _ = (374 : Int) - (17 : Int) :=
      sub_congr node_8_2219 node_8_96
    _ = (357 : Int) := by decide

theorem node_7_76 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 76 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 76 = count [19, 17, 13, 11, 7, 5, 3, 2] 76 - count [19, 17, 13, 11, 7, 5, 3, 2] (76 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 76 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_76 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_2219 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2219 = (344 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2219 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2219 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2219 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2219 (by decide)
    _ = (357 : Int) - (13 : Int) :=
      sub_congr node_7_2219 node_7_76
    _ = (344 : Int) := by decide

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

theorem node_5_2219 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2219 = (333 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2219 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2219 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2219 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2219 (by decide)
    _ = (344 : Int) - (11 : Int) :=
      sub_congr node_6_2219 node_6_71
    _ = (333 : Int) := by decide

theorem node_4_2219 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2219 = (326 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2219 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2219 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2219 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2219 (by decide)
    _ = (333 : Int) - (7 : Int) :=
      sub_congr node_5_2219 node_5_59
    _ = (326 : Int) := by decide

theorem node_4_54 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 = (5 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (54 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_5_54 node_5_1
    _ = (5 : Int) := by decide

theorem node_3_2219 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2219 = (321 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2219 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2219 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2219 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2219 (by decide)
    _ = (326 : Int) - (5 : Int) :=
      sub_congr node_4_2219 node_4_54
    _ = (321 : Int) := by decide

theorem node_2_95418 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 = (13557 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (95418 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 (by decide)
    _ = (13878 : Int) - (321 : Int) :=
      sub_congr node_3_95418 node_3_2219
    _ = (13557 : Int) := by decide

theorem node_8_2030 : count [19, 17, 13, 11, 7, 5, 3, 2] 2030 = (344 : Int) := by
  decide

theorem node_7_2030 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2030 = (328 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2030 = count [19, 17, 13, 11, 7, 5, 3, 2] 2030 - count [19, 17, 13, 11, 7, 5, 3, 2] (2030 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2030 (by decide)
    _ = (344 : Int) - (16 : Int) :=
      sub_congr node_8_2030 node_8_88
    _ = (328 : Int) := by decide

theorem node_6_2030 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2030 = (317 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2030 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2030 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2030 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2030 (by decide)
    _ = (328 : Int) - (11 : Int) :=
      sub_congr node_7_2030 node_7_70
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

theorem node_5_2030 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2030 = (308 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2030 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2030 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2030 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2030 (by decide)
    _ = (317 : Int) - (9 : Int) :=
      sub_congr node_6_2030 node_6_65
    _ = (308 : Int) := by decide

theorem node_4_2030 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2030 = (302 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2030 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2030 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2030 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2030 (by decide)
    _ = (308 : Int) - (6 : Int) :=
      sub_congr node_5_2030 node_5_54
    _ = (302 : Int) := by decide

theorem node_3_2030 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2030 = (298 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2030 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2030 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2030 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2030 (by decide)
    _ = (302 : Int) - (4 : Int) :=
      sub_congr node_4_2030 node_4_49
    _ = (298 : Int) := by decide

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

theorem node_2_2030 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2030 = (295 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2030 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2030 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2030 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2030 (by decide)
    _ = (298 : Int) - (3 : Int) :=
      sub_congr node_3_2030 node_3_47
    _ = (295 : Int) := by decide

theorem node_1_95418 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 = (13262 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (95418 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 (by decide)
    _ = (13557 : Int) - (295 : Int) :=
      sub_congr node_2_95418 node_2_2030
    _ = (13262 : Int) := by decide

theorem node_8_1800 : count [19, 17, 13, 11, 7, 5, 3, 2] 1800 = (305 : Int) := by
  decide

theorem node_7_1800 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1800 = (291 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1800 = count [19, 17, 13, 11, 7, 5, 3, 2] 1800 - count [19, 17, 13, 11, 7, 5, 3, 2] (1800 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1800 (by decide)
    _ = (305 : Int) - (14 : Int) :=
      sub_congr node_8_1800 node_8_78
    _ = (291 : Int) := by decide

theorem node_6_1800 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1800 = (281 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1800 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1800 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1800 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1800 (by decide)
    _ = (291 : Int) - (10 : Int) :=
      sub_congr node_7_1800 node_7_62
    _ = (281 : Int) := by decide

theorem node_5_1800 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1800 = (274 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1800 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1800 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1800 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1800 (by decide)
    _ = (281 : Int) - (7 : Int) :=
      sub_congr node_6_1800 node_6_58
    _ = (274 : Int) := by decide

theorem node_4_1800 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1800 = (269 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1800 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1800 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1800 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1800 (by decide)
    _ = (274 : Int) - (5 : Int) :=
      sub_congr node_5_1800 node_5_48
    _ = (269 : Int) := by decide

theorem node_3_1800 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1800 = (266 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1800 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1800 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1800 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1800 (by decide)
    _ = (269 : Int) - (3 : Int) :=
      sub_congr node_4_1800 node_4_43
    _ = (266 : Int) := by decide

theorem node_2_1800 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1800 = (265 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1800 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1800 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1800 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1800 (by decide)
    _ = (266 : Int) - (1 : Int) :=
      sub_congr node_3_1800 node_3_41
    _ = (265 : Int) := by decide

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

theorem node_3_38 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (38 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_38 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_38 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (38 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_38 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1800 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1800 = (264 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1800 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1800 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1800 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1800 (by decide)
    _ = (265 : Int) - (1 : Int) :=
      sub_congr node_2_1800 node_2_38
    _ = (264 : Int) := by decide

theorem node_0_95418 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 = (12998 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (95418 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95418 (by decide)
    _ = (13262 : Int) - (264 : Int) :=
      sub_congr node_1_95418 node_1_1800
    _ = (12998 : Int) := by decide

theorem node_8_96408 : count [19, 17, 13, 11, 7, 5, 3, 2] 96408 = (16488 : Int) := by
  decide

theorem node_8_4191 : count [19, 17, 13, 11, 7, 5, 3, 2] 4191 = (716 : Int) := by
  decide

theorem node_7_96408 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 = (15772 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 = count [19, 17, 13, 11, 7, 5, 3, 2] 96408 - count [19, 17, 13, 11, 7, 5, 3, 2] (96408 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 96408 (by decide)
    _ = (16488 : Int) - (716 : Int) :=
      sub_congr node_8_96408 node_8_4191
    _ = (15772 : Int) := by decide

theorem node_8_3324 : count [19, 17, 13, 11, 7, 5, 3, 2] 3324 = (565 : Int) := by
  decide

theorem node_8_144 : count [19, 17, 13, 11, 7, 5, 3, 2] 144 = (27 : Int) := by
  decide

theorem node_7_3324 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3324 = (538 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3324 = count [19, 17, 13, 11, 7, 5, 3, 2] 3324 - count [19, 17, 13, 11, 7, 5, 3, 2] (3324 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3324 (by decide)
    _ = (565 : Int) - (27 : Int) :=
      sub_congr node_8_3324 node_8_144
    _ = (538 : Int) := by decide

theorem node_6_96408 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 = (15234 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (96408 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 (by decide)
    _ = (15772 : Int) - (538 : Int) :=
      sub_congr node_7_96408 node_7_3324
    _ = (15234 : Int) := by decide

theorem node_8_3109 : count [19, 17, 13, 11, 7, 5, 3, 2] 3109 = (527 : Int) := by
  decide

theorem node_8_135 : count [19, 17, 13, 11, 7, 5, 3, 2] 135 = (25 : Int) := by
  decide

theorem node_7_3109 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3109 = (502 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3109 = count [19, 17, 13, 11, 7, 5, 3, 2] 3109 - count [19, 17, 13, 11, 7, 5, 3, 2] (3109 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3109 (by decide)
    _ = (527 : Int) - (25 : Int) :=
      sub_congr node_8_3109 node_8_135
    _ = (502 : Int) := by decide

theorem node_8_107 : count [19, 17, 13, 11, 7, 5, 3, 2] 107 = (21 : Int) := by
  decide

theorem node_7_107 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 107 = (20 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 107 = count [19, 17, 13, 11, 7, 5, 3, 2] 107 - count [19, 17, 13, 11, 7, 5, 3, 2] (107 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 107 (by decide)
    _ = (21 : Int) - (1 : Int) :=
      sub_congr node_8_107 node_8_4
    _ = (20 : Int) := by decide

theorem node_6_3109 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3109 = (482 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3109 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3109 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3109 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3109 (by decide)
    _ = (502 : Int) - (20 : Int) :=
      sub_congr node_7_3109 node_7_107
    _ = (482 : Int) := by decide

theorem node_5_96408 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 = (14752 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (96408 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 (by decide)
    _ = (15234 : Int) - (482 : Int) :=
      sub_congr node_6_96408 node_6_3109
    _ = (14752 : Int) := by decide

theorem node_8_2605 : count [19, 17, 13, 11, 7, 5, 3, 2] 2605 = (441 : Int) := by
  decide

theorem node_8_113 : count [19, 17, 13, 11, 7, 5, 3, 2] 113 = (23 : Int) := by
  decide

theorem node_7_2605 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2605 = (418 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2605 = count [19, 17, 13, 11, 7, 5, 3, 2] 2605 - count [19, 17, 13, 11, 7, 5, 3, 2] (2605 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2605 (by decide)
    _ = (441 : Int) - (23 : Int) :=
      sub_congr node_8_2605 node_8_113
    _ = (418 : Int) := by decide

theorem node_8_89 : count [19, 17, 13, 11, 7, 5, 3, 2] 89 = (17 : Int) := by
  decide

theorem node_7_89 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = count [19, 17, 13, 11, 7, 5, 3, 2] 89 - count [19, 17, 13, 11, 7, 5, 3, 2] (89 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 89 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_89 node_8_3
    _ = (16 : Int) := by decide

theorem node_6_2605 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2605 = (402 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2605 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2605 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2605 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2605 (by decide)
    _ = (418 : Int) - (16 : Int) :=
      sub_congr node_7_2605 node_7_89
    _ = (402 : Int) := by decide

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

theorem node_5_2605 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2605 = (388 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2605 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2605 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2605 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2605 (by decide)
    _ = (402 : Int) - (14 : Int) :=
      sub_congr node_6_2605 node_6_84
    _ = (388 : Int) := by decide

theorem node_4_96408 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 = (14364 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (96408 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 (by decide)
    _ = (14752 : Int) - (388 : Int) :=
      sub_congr node_5_96408 node_5_2605
    _ = (14364 : Int) := by decide

theorem node_8_2351 : count [19, 17, 13, 11, 7, 5, 3, 2] 2351 = (399 : Int) := by
  decide

theorem node_8_102 : count [19, 17, 13, 11, 7, 5, 3, 2] 102 = (19 : Int) := by
  decide

theorem node_7_2351 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2351 = (380 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2351 = count [19, 17, 13, 11, 7, 5, 3, 2] 2351 - count [19, 17, 13, 11, 7, 5, 3, 2] (2351 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2351 (by decide)
    _ = (399 : Int) - (19 : Int) :=
      sub_congr node_8_2351 node_8_102
    _ = (380 : Int) := by decide

theorem node_6_2351 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2351 = (366 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2351 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2351 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2351 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2351 (by decide)
    _ = (380 : Int) - (14 : Int) :=
      sub_congr node_7_2351 node_7_81
    _ = (366 : Int) := by decide

theorem node_5_2351 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2351 = (354 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2351 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2351 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2351 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2351 (by decide)
    _ = (366 : Int) - (12 : Int) :=
      sub_congr node_6_2351 node_6_75
    _ = (354 : Int) := by decide

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

theorem node_4_2351 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2351 = (346 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2351 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2351 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2351 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2351 (by decide)
    _ = (354 : Int) - (8 : Int) :=
      sub_congr node_5_2351 node_5_63
    _ = (346 : Int) := by decide

theorem node_3_96408 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 = (14018 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (96408 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 (by decide)
    _ = (14364 : Int) - (346 : Int) :=
      sub_congr node_4_96408 node_4_2351
    _ = (14018 : Int) := by decide

theorem node_8_2242 : count [19, 17, 13, 11, 7, 5, 3, 2] 2242 = (378 : Int) := by
  decide

theorem node_8_97 : count [19, 17, 13, 11, 7, 5, 3, 2] 97 = (18 : Int) := by
  decide

theorem node_7_2242 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2242 = (360 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2242 = count [19, 17, 13, 11, 7, 5, 3, 2] 2242 - count [19, 17, 13, 11, 7, 5, 3, 2] (2242 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2242 (by decide)
    _ = (378 : Int) - (18 : Int) :=
      sub_congr node_8_2242 node_8_97
    _ = (360 : Int) := by decide

theorem node_7_77 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = count [19, 17, 13, 11, 7, 5, 3, 2] 77 - count [19, 17, 13, 11, 7, 5, 3, 2] (77 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 77 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_77 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_2242 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2242 = (347 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2242 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2242 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2242 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2242 (by decide)
    _ = (360 : Int) - (13 : Int) :=
      sub_congr node_7_2242 node_7_77
    _ = (347 : Int) := by decide

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

theorem node_5_2242 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2242 = (336 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2242 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2242 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2242 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2242 (by decide)
    _ = (347 : Int) - (11 : Int) :=
      sub_congr node_6_2242 node_6_72
    _ = (336 : Int) := by decide

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

theorem node_4_2242 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2242 = (329 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2242 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2242 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2242 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2242 (by decide)
    _ = (336 : Int) - (7 : Int) :=
      sub_congr node_5_2242 node_5_60
    _ = (329 : Int) := by decide

theorem node_3_2242 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2242 = (324 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2242 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2242 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2242 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2242 (by decide)
    _ = (329 : Int) - (5 : Int) :=
      sub_congr node_4_2242 node_4_54
    _ = (324 : Int) := by decide

theorem node_2_96408 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 = (13694 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (96408 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 (by decide)
    _ = (14018 : Int) - (324 : Int) :=
      sub_congr node_3_96408 node_3_2242
    _ = (13694 : Int) := by decide

theorem node_8_2051 : count [19, 17, 13, 11, 7, 5, 3, 2] 2051 = (346 : Int) := by
  decide

theorem node_7_2051 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2051 = (329 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2051 = count [19, 17, 13, 11, 7, 5, 3, 2] 2051 - count [19, 17, 13, 11, 7, 5, 3, 2] (2051 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2051 (by decide)
    _ = (346 : Int) - (17 : Int) :=
      sub_congr node_8_2051 node_8_89
    _ = (329 : Int) := by decide

theorem node_6_2051 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2051 = (318 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2051 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2051 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2051 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2051 (by decide)
    _ = (329 : Int) - (11 : Int) :=
      sub_congr node_7_2051 node_7_70
    _ = (318 : Int) := by decide

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

theorem node_5_2051 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2051 = (309 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2051 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2051 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2051 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2051 (by decide)
    _ = (318 : Int) - (9 : Int) :=
      sub_congr node_6_2051 node_6_66
    _ = (309 : Int) := by decide

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

theorem node_4_2051 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2051 = (303 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2051 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2051 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2051 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2051 (by decide)
    _ = (309 : Int) - (6 : Int) :=
      sub_congr node_5_2051 node_5_55
    _ = (303 : Int) := by decide

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

theorem node_3_2051 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2051 = (299 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2051 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2051 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2051 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2051 (by decide)
    _ = (303 : Int) - (4 : Int) :=
      sub_congr node_4_2051 node_4_50
    _ = (299 : Int) := by decide

theorem node_2_2051 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2051 = (296 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2051 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2051 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2051 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2051 (by decide)
    _ = (299 : Int) - (3 : Int) :=
      sub_congr node_3_2051 node_3_47
    _ = (296 : Int) := by decide

theorem node_1_96408 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 = (13398 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (96408 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 (by decide)
    _ = (13694 : Int) - (296 : Int) :=
      sub_congr node_2_96408 node_2_2051
    _ = (13398 : Int) := by decide

theorem node_8_1819 : count [19, 17, 13, 11, 7, 5, 3, 2] 1819 = (308 : Int) := by
  decide

theorem node_7_1819 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1819 = (293 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1819 = count [19, 17, 13, 11, 7, 5, 3, 2] 1819 - count [19, 17, 13, 11, 7, 5, 3, 2] (1819 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1819 (by decide)
    _ = (308 : Int) - (15 : Int) :=
      sub_congr node_8_1819 node_8_79
    _ = (293 : Int) := by decide

theorem node_6_1819 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1819 = (283 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1819 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1819 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1819 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1819 (by decide)
    _ = (293 : Int) - (10 : Int) :=
      sub_congr node_7_1819 node_7_62
    _ = (283 : Int) := by decide

theorem node_5_1819 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1819 = (276 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1819 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1819 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1819 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1819 (by decide)
    _ = (283 : Int) - (7 : Int) :=
      sub_congr node_6_1819 node_6_58
    _ = (276 : Int) := by decide

theorem node_4_1819 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1819 = (271 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1819 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1819 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1819 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1819 (by decide)
    _ = (276 : Int) - (5 : Int) :=
      sub_congr node_5_1819 node_5_49
    _ = (271 : Int) := by decide

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

theorem node_3_1819 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1819 = (268 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1819 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1819 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1819 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1819 (by decide)
    _ = (271 : Int) - (3 : Int) :=
      sub_congr node_4_1819 node_4_44
    _ = (268 : Int) := by decide

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

theorem node_4_42 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = (2 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (42 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_5_42 node_5_1
    _ = (2 : Int) := by decide

theorem node_3_42 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (42 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_4_42 node_4_1
    _ = (1 : Int) := by decide

theorem node_2_1819 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1819 = (267 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1819 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1819 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1819 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1819 (by decide)
    _ = (268 : Int) - (1 : Int) :=
      sub_congr node_3_1819 node_3_42
    _ = (267 : Int) := by decide

theorem node_1_1819 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1819 = (266 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1819 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1819 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1819 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1819 (by decide)
    _ = (267 : Int) - (1 : Int) :=
      sub_congr node_2_1819 node_2_38
    _ = (266 : Int) := by decide

theorem node_0_96408 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 = (13132 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (96408 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 96408 (by decide)
    _ = (13398 : Int) - (266 : Int) :=
      sub_congr node_1_96408 node_1_1819
    _ = (13132 : Int) := by decide

theorem row_80 : count primes 93480 ≤ (12745 : Int) - 15 := by
  rw [show count primes 93480 = (12730 : Int) from node_0_93480]
  decide

theorem row_81 : count primes 94446 ≤ (12880 : Int) - 15 := by
  rw [show count primes 94446 = (12865 : Int) from node_0_94446]
  decide

theorem row_82 : count primes 95418 ≤ (13013 : Int) - 15 := by
  rw [show count primes 95418 = (12998 : Int) from node_0_95418]
  decide

theorem row_83 : count primes 96408 ≤ (13147 : Int) - 15 := by
  rw [show count primes 96408 = (13132 : Int) from node_0_96408]
  decide

def pairs : List (Nat × Nat) := [(93480, 12745), (94446, 12880), (95418, 13013), (96408, 13147)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl | rfl | rfl
  · exact row_80
  · exact row_81
  · exact row_82
  · exact row_83
end B699CorePrunedSieve.CoreDagBatch21
#check @B699CorePrunedSieve.CoreDagBatch21.pairs_valid
#print axioms B699CorePrunedSieve.CoreDagBatch21.pairs_valid
