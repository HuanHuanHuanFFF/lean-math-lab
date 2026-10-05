import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreRest27
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

theorem row_80 : count primes 93480 ≤ (12745 : Int) - 15 := by
  rw [show count primes 93480 = (12730 : Int) from node_0_93480]
  decide

theorem row_81 : count primes 94446 ≤ (12880 : Int) - 15 := by
  rw [show count primes 94446 = (12865 : Int) from node_0_94446]
  decide

def pairs : List (Nat × Nat) := [(93480, 12745), (94446, 12880)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl
  · exact row_80
  · exact row_81
end B699CorePrunedSieve.CoreRest27
#check @B699CorePrunedSieve.CoreRest27.pairs_valid
#print axioms B699CorePrunedSieve.CoreRest27.pairs_valid
