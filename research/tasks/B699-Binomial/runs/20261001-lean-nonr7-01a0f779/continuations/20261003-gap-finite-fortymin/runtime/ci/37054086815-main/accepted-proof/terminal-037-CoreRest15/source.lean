import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreRest15
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_70752 : count [19, 17, 13, 11, 7, 5, 3, 2] 70752 = (12102 : Int) := by
  decide

theorem node_8_3076 : count [19, 17, 13, 11, 7, 5, 3, 2] 3076 = (522 : Int) := by
  decide

theorem node_7_70752 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 = (11580 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 = count [19, 17, 13, 11, 7, 5, 3, 2] 70752 - count [19, 17, 13, 11, 7, 5, 3, 2] (70752 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 70752 (by decide)
    _ = (12102 : Int) - (522 : Int) :=
      sub_congr node_8_70752 node_8_3076
    _ = (11580 : Int) := by decide

theorem node_8_2439 : count [19, 17, 13, 11, 7, 5, 3, 2] 2439 = (414 : Int) := by
  decide

theorem node_8_106 : count [19, 17, 13, 11, 7, 5, 3, 2] 106 = (20 : Int) := by
  decide

theorem node_7_2439 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2439 = (394 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2439 = count [19, 17, 13, 11, 7, 5, 3, 2] 2439 - count [19, 17, 13, 11, 7, 5, 3, 2] (2439 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2439 (by decide)
    _ = (414 : Int) - (20 : Int) :=
      sub_congr node_8_2439 node_8_106
    _ = (394 : Int) := by decide

theorem node_6_70752 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 = (11186 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (70752 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 (by decide)
    _ = (11580 : Int) - (394 : Int) :=
      sub_congr node_7_70752 node_7_2439
    _ = (11186 : Int) := by decide

theorem node_8_2282 : count [19, 17, 13, 11, 7, 5, 3, 2] 2282 = (387 : Int) := by
  decide

theorem node_8_99 : count [19, 17, 13, 11, 7, 5, 3, 2] 99 = (18 : Int) := by
  decide

theorem node_7_2282 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2282 = (369 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2282 = count [19, 17, 13, 11, 7, 5, 3, 2] 2282 - count [19, 17, 13, 11, 7, 5, 3, 2] (2282 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2282 (by decide)
    _ = (387 : Int) - (18 : Int) :=
      sub_congr node_8_2282 node_8_99
    _ = (369 : Int) := by decide

theorem node_8_78 : count [19, 17, 13, 11, 7, 5, 3, 2] 78 = (14 : Int) := by
  decide

theorem node_8_3 : count [19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  decide

theorem node_7_78 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = count [19, 17, 13, 11, 7, 5, 3, 2] 78 - count [19, 17, 13, 11, 7, 5, 3, 2] (78 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 78 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_78 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_2282 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2282 = (356 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2282 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2282 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2282 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2282 (by decide)
    _ = (369 : Int) - (13 : Int) :=
      sub_congr node_7_2282 node_7_78
    _ = (356 : Int) := by decide

theorem node_5_70752 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 = (10830 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (70752 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 (by decide)
    _ = (11186 : Int) - (356 : Int) :=
      sub_congr node_6_70752 node_6_2282
    _ = (10830 : Int) := by decide

theorem node_8_1912 : count [19, 17, 13, 11, 7, 5, 3, 2] 1912 = (324 : Int) := by
  decide

theorem node_8_83 : count [19, 17, 13, 11, 7, 5, 3, 2] 83 = (16 : Int) := by
  decide

theorem node_7_1912 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1912 = (308 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1912 = count [19, 17, 13, 11, 7, 5, 3, 2] 1912 - count [19, 17, 13, 11, 7, 5, 3, 2] (1912 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1912 (by decide)
    _ = (324 : Int) - (16 : Int) :=
      sub_congr node_8_1912 node_8_83
    _ = (308 : Int) := by decide

theorem node_8_65 : count [19, 17, 13, 11, 7, 5, 3, 2] 65 = (11 : Int) := by
  decide

theorem node_8_2 : count [19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  decide

theorem node_7_65 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = (10 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = count [19, 17, 13, 11, 7, 5, 3, 2] 65 - count [19, 17, 13, 11, 7, 5, 3, 2] (65 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 65 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_8_65 node_8_2
    _ = (10 : Int) := by decide

theorem node_6_1912 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1912 = (298 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1912 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1912 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1912 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1912 (by decide)
    _ = (308 : Int) - (10 : Int) :=
      sub_congr node_7_1912 node_7_65
    _ = (298 : Int) := by decide

theorem node_8_61 : count [19, 17, 13, 11, 7, 5, 3, 2] 61 = (11 : Int) := by
  decide

theorem node_7_61 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = (10 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = count [19, 17, 13, 11, 7, 5, 3, 2] 61 - count [19, 17, 13, 11, 7, 5, 3, 2] (61 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 61 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_8_61 node_8_2
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

theorem node_6_61 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = (9 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 61 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (61 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 61 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_7_61 node_7_2
    _ = (9 : Int) := by decide

theorem node_5_1912 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1912 = (289 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1912 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1912 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1912 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1912 (by decide)
    _ = (298 : Int) - (9 : Int) :=
      sub_congr node_6_1912 node_6_61
    _ = (289 : Int) := by decide

theorem node_4_70752 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 = (10541 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (70752 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 (by decide)
    _ = (10830 : Int) - (289 : Int) :=
      sub_congr node_5_70752 node_5_1912
    _ = (10541 : Int) := by decide

theorem node_8_1725 : count [19, 17, 13, 11, 7, 5, 3, 2] 1725 = (293 : Int) := by
  decide

theorem node_8_75 : count [19, 17, 13, 11, 7, 5, 3, 2] 75 = (14 : Int) := by
  decide

theorem node_7_1725 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1725 = (279 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1725 = count [19, 17, 13, 11, 7, 5, 3, 2] 1725 - count [19, 17, 13, 11, 7, 5, 3, 2] (1725 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1725 (by decide)
    _ = (293 : Int) - (14 : Int) :=
      sub_congr node_8_1725 node_8_75
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

theorem node_6_1725 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1725 = (270 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1725 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1725 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1725 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1725 (by decide)
    _ = (279 : Int) - (9 : Int) :=
      sub_congr node_7_1725 node_7_59
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

theorem node_8_1 : count [19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  decide

theorem node_7_1 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [19, 17, 13, 11, 7, 5, 3, 2] 1 - count [19, 17, 13, 11, 7, 5, 3, 2] (1 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_1 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_55 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = (7 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 55 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (55 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 55 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_7_55 node_7_1
    _ = (7 : Int) := by decide

theorem node_5_1725 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1725 = (263 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1725 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1725 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1725 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1725 (by decide)
    _ = (270 : Int) - (7 : Int) :=
      sub_congr node_6_1725 node_6_55
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

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_1 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_1 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_46 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = (4 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (46 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_6_46 node_6_1
    _ = (4 : Int) := by decide

theorem node_4_1725 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1725 = (259 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1725 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1725 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1725 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1725 (by decide)
    _ = (263 : Int) - (4 : Int) :=
      sub_congr node_5_1725 node_5_46
    _ = (259 : Int) := by decide

theorem node_3_70752 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 = (10282 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (70752 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 (by decide)
    _ = (10541 : Int) - (259 : Int) :=
      sub_congr node_4_70752 node_4_1725
    _ = (10282 : Int) := by decide

theorem node_8_1645 : count [19, 17, 13, 11, 7, 5, 3, 2] 1645 = (280 : Int) := by
  decide

theorem node_8_71 : count [19, 17, 13, 11, 7, 5, 3, 2] 71 = (13 : Int) := by
  decide

theorem node_7_1645 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1645 = (267 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1645 = count [19, 17, 13, 11, 7, 5, 3, 2] 1645 - count [19, 17, 13, 11, 7, 5, 3, 2] (1645 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1645 (by decide)
    _ = (280 : Int) - (13 : Int) :=
      sub_congr node_8_1645 node_8_71
    _ = (267 : Int) := by decide

theorem node_8_56 : count [19, 17, 13, 11, 7, 5, 3, 2] 56 = (9 : Int) := by
  decide

theorem node_7_56 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = count [19, 17, 13, 11, 7, 5, 3, 2] 56 - count [19, 17, 13, 11, 7, 5, 3, 2] (56 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 56 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_56 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_1645 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1645 = (259 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1645 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1645 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1645 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1645 (by decide)
    _ = (267 : Int) - (8 : Int) :=
      sub_congr node_7_1645 node_7_56
    _ = (259 : Int) := by decide

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

theorem node_5_1645 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1645 = (252 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1645 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1645 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1645 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1645 (by decide)
    _ = (259 : Int) - (7 : Int) :=
      sub_congr node_6_1645 node_6_53
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

theorem node_4_1645 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1645 = (248 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1645 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1645 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1645 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1645 (by decide)
    _ = (252 : Int) - (4 : Int) :=
      sub_congr node_5_1645 node_5_44
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

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_1 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_1 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_40 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (40 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_5_40 node_5_1
    _ = (1 : Int) := by decide

theorem node_3_1645 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1645 = (247 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1645 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1645 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1645 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1645 (by decide)
    _ = (248 : Int) - (1 : Int) :=
      sub_congr node_4_1645 node_4_40
    _ = (247 : Int) := by decide

theorem node_2_70752 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 = (10035 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (70752 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 (by decide)
    _ = (10282 : Int) - (247 : Int) :=
      sub_congr node_3_70752 node_3_1645
    _ = (10035 : Int) := by decide

theorem node_8_1505 : count [19, 17, 13, 11, 7, 5, 3, 2] 1505 = (254 : Int) := by
  decide

theorem node_7_1505 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1505 = (243 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1505 = count [19, 17, 13, 11, 7, 5, 3, 2] 1505 - count [19, 17, 13, 11, 7, 5, 3, 2] (1505 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1505 (by decide)
    _ = (254 : Int) - (11 : Int) :=
      sub_congr node_8_1505 node_8_65
    _ = (243 : Int) := by decide

theorem node_8_51 : count [19, 17, 13, 11, 7, 5, 3, 2] 51 = (8 : Int) := by
  decide

theorem node_7_51 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = (7 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = count [19, 17, 13, 11, 7, 5, 3, 2] 51 - count [19, 17, 13, 11, 7, 5, 3, 2] (51 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 51 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_8_51 node_8_2
    _ = (7 : Int) := by decide

theorem node_6_1505 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1505 = (236 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1505 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1505 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1505 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1505 (by decide)
    _ = (243 : Int) - (7 : Int) :=
      sub_congr node_7_1505 node_7_51
    _ = (236 : Int) := by decide

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

theorem node_5_1505 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1505 = (230 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1505 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1505 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1505 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1505 (by decide)
    _ = (236 : Int) - (6 : Int) :=
      sub_congr node_6_1505 node_6_48
    _ = (230 : Int) := by decide

theorem node_4_1505 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1505 = (228 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1505 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1505 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1505 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1505 (by decide)
    _ = (230 : Int) - (2 : Int) :=
      sub_congr node_5_1505 node_5_40
    _ = (228 : Int) := by decide

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

theorem node_3_1505 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1505 = (227 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1505 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1505 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1505 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1505 (by decide)
    _ = (228 : Int) - (1 : Int) :=
      sub_congr node_4_1505 node_4_36
    _ = (227 : Int) := by decide

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

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_35 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (35 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_35 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1505 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1505 = (226 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1505 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1505 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1505 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1505 (by decide)
    _ = (227 : Int) - (1 : Int) :=
      sub_congr node_3_1505 node_3_35
    _ = (226 : Int) := by decide

theorem node_1_70752 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 = (9809 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (70752 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 (by decide)
    _ = (10035 : Int) - (226 : Int) :=
      sub_congr node_2_70752 node_2_1505
    _ = (9809 : Int) := by decide

theorem node_8_1334 : count [19, 17, 13, 11, 7, 5, 3, 2] 1334 = (227 : Int) := by
  decide

theorem node_8_58 : count [19, 17, 13, 11, 7, 5, 3, 2] 58 = (9 : Int) := by
  decide

theorem node_7_1334 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1334 = (218 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1334 = count [19, 17, 13, 11, 7, 5, 3, 2] 1334 - count [19, 17, 13, 11, 7, 5, 3, 2] (1334 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1334 (by decide)
    _ = (227 : Int) - (9 : Int) :=
      sub_congr node_8_1334 node_8_58
    _ = (218 : Int) := by decide

theorem node_6_1334 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1334 = (212 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1334 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1334 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1334 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1334 (by decide)
    _ = (218 : Int) - (6 : Int) :=
      sub_congr node_7_1334 node_7_46
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

theorem node_5_1334 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1334 = (207 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1334 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1334 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1334 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1334 (by decide)
    _ = (212 : Int) - (5 : Int) :=
      sub_congr node_6_1334 node_6_43
    _ = (207 : Int) := by decide

theorem node_4_1334 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1334 = (206 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1334 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1334 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1334 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1334 (by decide)
    _ = (207 : Int) - (1 : Int) :=
      sub_congr node_5_1334 node_5_36
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

theorem node_3_1334 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1334 = (205 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1334 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1334 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1334 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1334 (by decide)
    _ = (206 : Int) - (1 : Int) :=
      sub_congr node_4_1334 node_4_32
    _ = (205 : Int) := by decide

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

theorem node_3_31 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (31 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_31 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1334 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1334 = (204 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1334 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1334 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1334 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1334 (by decide)
    _ = (205 : Int) - (1 : Int) :=
      sub_congr node_3_1334 node_3_31
    _ = (204 : Int) := by decide

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

theorem node_3_0 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_2_28 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (28 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_28 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1334 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1334 = (203 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1334 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1334 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1334 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1334 (by decide)
    _ = (204 : Int) - (1 : Int) :=
      sub_congr node_2_1334 node_2_28
    _ = (203 : Int) := by decide

theorem node_0_70752 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 = (9606 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (70752 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70752 (by decide)
    _ = (9809 : Int) - (203 : Int) :=
      sub_congr node_1_70752 node_1_1334
    _ = (9606 : Int) := by decide

theorem node_8_71652 : count [19, 17, 13, 11, 7, 5, 3, 2] 71652 = (12255 : Int) := by
  decide

theorem node_8_3115 : count [19, 17, 13, 11, 7, 5, 3, 2] 3115 = (527 : Int) := by
  decide

theorem node_7_71652 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 = (11728 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 = count [19, 17, 13, 11, 7, 5, 3, 2] 71652 - count [19, 17, 13, 11, 7, 5, 3, 2] (71652 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 71652 (by decide)
    _ = (12255 : Int) - (527 : Int) :=
      sub_congr node_8_71652 node_8_3115
    _ = (11728 : Int) := by decide

theorem node_8_2470 : count [19, 17, 13, 11, 7, 5, 3, 2] 2470 = (420 : Int) := by
  decide

theorem node_8_107 : count [19, 17, 13, 11, 7, 5, 3, 2] 107 = (21 : Int) := by
  decide

theorem node_7_2470 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2470 = (399 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2470 = count [19, 17, 13, 11, 7, 5, 3, 2] 2470 - count [19, 17, 13, 11, 7, 5, 3, 2] (2470 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2470 (by decide)
    _ = (420 : Int) - (21 : Int) :=
      sub_congr node_8_2470 node_8_107
    _ = (399 : Int) := by decide

theorem node_6_71652 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 = (11329 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (71652 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 (by decide)
    _ = (11728 : Int) - (399 : Int) :=
      sub_congr node_7_71652 node_7_2470
    _ = (11329 : Int) := by decide

theorem node_8_2311 : count [19, 17, 13, 11, 7, 5, 3, 2] 2311 = (393 : Int) := by
  decide

theorem node_8_100 : count [19, 17, 13, 11, 7, 5, 3, 2] 100 = (18 : Int) := by
  decide

theorem node_7_2311 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2311 = (375 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2311 = count [19, 17, 13, 11, 7, 5, 3, 2] 2311 - count [19, 17, 13, 11, 7, 5, 3, 2] (2311 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2311 (by decide)
    _ = (393 : Int) - (18 : Int) :=
      sub_congr node_8_2311 node_8_100
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

theorem node_6_2311 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2311 = (361 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2311 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2311 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2311 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2311 (by decide)
    _ = (375 : Int) - (14 : Int) :=
      sub_congr node_7_2311 node_7_79
    _ = (361 : Int) := by decide

theorem node_5_71652 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 = (10968 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (71652 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 (by decide)
    _ = (11329 : Int) - (361 : Int) :=
      sub_congr node_6_71652 node_6_2311
    _ = (10968 : Int) := by decide

theorem node_8_1936 : count [19, 17, 13, 11, 7, 5, 3, 2] 1936 = (328 : Int) := by
  decide

theorem node_8_84 : count [19, 17, 13, 11, 7, 5, 3, 2] 84 = (16 : Int) := by
  decide

theorem node_7_1936 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1936 = (312 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1936 = count [19, 17, 13, 11, 7, 5, 3, 2] 1936 - count [19, 17, 13, 11, 7, 5, 3, 2] (1936 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1936 (by decide)
    _ = (328 : Int) - (16 : Int) :=
      sub_congr node_8_1936 node_8_84
    _ = (312 : Int) := by decide

theorem node_8_66 : count [19, 17, 13, 11, 7, 5, 3, 2] 66 = (11 : Int) := by
  decide

theorem node_7_66 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = (10 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = count [19, 17, 13, 11, 7, 5, 3, 2] 66 - count [19, 17, 13, 11, 7, 5, 3, 2] (66 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 66 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_8_66 node_8_2
    _ = (10 : Int) := by decide

theorem node_6_1936 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1936 = (302 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1936 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1936 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1936 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1936 (by decide)
    _ = (312 : Int) - (10 : Int) :=
      sub_congr node_7_1936 node_7_66
    _ = (302 : Int) := by decide

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

theorem node_5_1936 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1936 = (293 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1936 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1936 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1936 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1936 (by decide)
    _ = (302 : Int) - (9 : Int) :=
      sub_congr node_6_1936 node_6_62
    _ = (293 : Int) := by decide

theorem node_4_71652 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 = (10675 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (71652 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 (by decide)
    _ = (10968 : Int) - (293 : Int) :=
      sub_congr node_5_71652 node_5_1936
    _ = (10675 : Int) := by decide

theorem node_8_1747 : count [19, 17, 13, 11, 7, 5, 3, 2] 1747 = (297 : Int) := by
  decide

theorem node_7_1747 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1747 = (283 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1747 = count [19, 17, 13, 11, 7, 5, 3, 2] 1747 - count [19, 17, 13, 11, 7, 5, 3, 2] (1747 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1747 (by decide)
    _ = (297 : Int) - (14 : Int) :=
      sub_congr node_8_1747 node_8_75
    _ = (283 : Int) := by decide

theorem node_8_60 : count [19, 17, 13, 11, 7, 5, 3, 2] 60 = (10 : Int) := by
  decide

theorem node_7_60 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = (9 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = count [19, 17, 13, 11, 7, 5, 3, 2] 60 - count [19, 17, 13, 11, 7, 5, 3, 2] (60 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 60 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_8_60 node_8_2
    _ = (9 : Int) := by decide

theorem node_6_1747 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1747 = (274 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1747 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1747 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1747 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1747 (by decide)
    _ = (283 : Int) - (9 : Int) :=
      sub_congr node_7_1747 node_7_60
    _ = (274 : Int) := by decide

theorem node_6_56 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = (7 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 56 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (56 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 56 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_7_56 node_7_1
    _ = (7 : Int) := by decide

theorem node_5_1747 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1747 = (267 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1747 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1747 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1747 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1747 (by decide)
    _ = (274 : Int) - (7 : Int) :=
      sub_congr node_6_1747 node_6_56
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

theorem node_4_1747 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1747 = (262 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1747 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1747 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1747 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1747 (by decide)
    _ = (267 : Int) - (5 : Int) :=
      sub_congr node_5_1747 node_5_47
    _ = (262 : Int) := by decide

theorem node_3_71652 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 = (10413 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (71652 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 (by decide)
    _ = (10675 : Int) - (262 : Int) :=
      sub_congr node_4_71652 node_4_1747
    _ = (10413 : Int) := by decide

theorem node_8_1666 : count [19, 17, 13, 11, 7, 5, 3, 2] 1666 = (282 : Int) := by
  decide

theorem node_8_72 : count [19, 17, 13, 11, 7, 5, 3, 2] 72 = (13 : Int) := by
  decide

theorem node_7_1666 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1666 = (269 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1666 = count [19, 17, 13, 11, 7, 5, 3, 2] 1666 - count [19, 17, 13, 11, 7, 5, 3, 2] (1666 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1666 (by decide)
    _ = (282 : Int) - (13 : Int) :=
      sub_congr node_8_1666 node_8_72
    _ = (269 : Int) := by decide

theorem node_8_57 : count [19, 17, 13, 11, 7, 5, 3, 2] 57 = (9 : Int) := by
  decide

theorem node_7_57 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = count [19, 17, 13, 11, 7, 5, 3, 2] 57 - count [19, 17, 13, 11, 7, 5, 3, 2] (57 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 57 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_57 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_1666 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1666 = (261 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1666 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1666 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1666 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1666 (by decide)
    _ = (269 : Int) - (8 : Int) :=
      sub_congr node_7_1666 node_7_57
    _ = (261 : Int) := by decide

theorem node_5_1666 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1666 = (254 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1666 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1666 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1666 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1666 (by decide)
    _ = (261 : Int) - (7 : Int) :=
      sub_congr node_6_1666 node_6_53
    _ = (254 : Int) := by decide

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

theorem node_4_1666 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1666 = (250 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1666 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1666 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1666 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1666 (by decide)
    _ = (254 : Int) - (4 : Int) :=
      sub_congr node_5_1666 node_5_45
    _ = (250 : Int) := by decide

theorem node_3_1666 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1666 = (249 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1666 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1666 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1666 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1666 (by decide)
    _ = (250 : Int) - (1 : Int) :=
      sub_congr node_4_1666 node_4_40
    _ = (249 : Int) := by decide

theorem node_2_71652 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 = (10164 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (71652 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 (by decide)
    _ = (10413 : Int) - (249 : Int) :=
      sub_congr node_3_71652 node_3_1666
    _ = (10164 : Int) := by decide

theorem node_8_1524 : count [19, 17, 13, 11, 7, 5, 3, 2] 1524 = (257 : Int) := by
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

theorem node_2_1524 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1524 = (228 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1524 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1524 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1524 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1524 (by decide)
    _ = (229 : Int) - (1 : Int) :=
      sub_congr node_3_1524 node_3_35
    _ = (228 : Int) := by decide

theorem node_1_71652 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 = (9936 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (71652 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 (by decide)
    _ = (10164 : Int) - (228 : Int) :=
      sub_congr node_2_71652 node_2_1524
    _ = (9936 : Int) := by decide

theorem node_8_1351 : count [19, 17, 13, 11, 7, 5, 3, 2] 1351 = (227 : Int) := by
  decide

theorem node_7_1351 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 = (218 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 = count [19, 17, 13, 11, 7, 5, 3, 2] 1351 - count [19, 17, 13, 11, 7, 5, 3, 2] (1351 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1351 (by decide)
    _ = (227 : Int) - (9 : Int) :=
      sub_congr node_8_1351 node_8_58
    _ = (218 : Int) := by decide

theorem node_6_1351 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 = (212 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1351 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 (by decide)
    _ = (218 : Int) - (6 : Int) :=
      sub_congr node_7_1351 node_7_46
    _ = (212 : Int) := by decide

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

theorem node_3_1351 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 = (205 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1351 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 (by decide)
    _ = (206 : Int) - (1 : Int) :=
      sub_congr node_4_1351 node_4_32
    _ = (205 : Int) := by decide

theorem node_2_1351 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 = (204 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1351 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 (by decide)
    _ = (205 : Int) - (1 : Int) :=
      sub_congr node_3_1351 node_3_31
    _ = (204 : Int) := by decide

theorem node_1_1351 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 = (203 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1351 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1351 (by decide)
    _ = (204 : Int) - (1 : Int) :=
      sub_congr node_2_1351 node_2_28
    _ = (203 : Int) := by decide

theorem node_0_71652 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 = (9733 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (71652 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71652 (by decide)
    _ = (9936 : Int) - (203 : Int) :=
      sub_congr node_1_71652 node_1_1351
    _ = (9733 : Int) := by decide

theorem row_56 : count primes 70752 ≤ (9621 : Int) - 15 := by
  rw [show count primes 70752 = (9606 : Int) from node_0_70752]
  decide

theorem row_57 : count primes 71652 ≤ (9748 : Int) - 15 := by
  rw [show count primes 71652 = (9733 : Int) from node_0_71652]
  decide

def pairs : List (Nat × Nat) := [(70752, 9621), (71652, 9748)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl
  · exact row_56
  · exact row_57
end B699CorePrunedSieve.CoreRest15
#check @B699CorePrunedSieve.CoreRest15.pairs_valid
#print axioms B699CorePrunedSieve.CoreRest15.pairs_valid
