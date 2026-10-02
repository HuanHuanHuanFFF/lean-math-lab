import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreRest13
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_67236 : count [19, 17, 13, 11, 7, 5, 3, 2] 67236 = (11502 : Int) := by
  decide

theorem node_8_2923 : count [19, 17, 13, 11, 7, 5, 3, 2] 2923 = (498 : Int) := by
  decide

theorem node_7_67236 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 = (11004 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 = count [19, 17, 13, 11, 7, 5, 3, 2] 67236 - count [19, 17, 13, 11, 7, 5, 3, 2] (67236 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 67236 (by decide)
    _ = (11502 : Int) - (498 : Int) :=
      sub_congr node_8_67236 node_8_2923
    _ = (11004 : Int) := by decide

theorem node_8_2318 : count [19, 17, 13, 11, 7, 5, 3, 2] 2318 = (393 : Int) := by
  decide

theorem node_8_100 : count [19, 17, 13, 11, 7, 5, 3, 2] 100 = (18 : Int) := by
  decide

theorem node_7_2318 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2318 = (375 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2318 = count [19, 17, 13, 11, 7, 5, 3, 2] 2318 - count [19, 17, 13, 11, 7, 5, 3, 2] (2318 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2318 (by decide)
    _ = (393 : Int) - (18 : Int) :=
      sub_congr node_8_2318 node_8_100
    _ = (375 : Int) := by decide

theorem node_6_67236 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 = (10629 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (67236 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 (by decide)
    _ = (11004 : Int) - (375 : Int) :=
      sub_congr node_7_67236 node_7_2318
    _ = (10629 : Int) := by decide

theorem node_8_2168 : count [19, 17, 13, 11, 7, 5, 3, 2] 2168 = (366 : Int) := by
  decide

theorem node_8_94 : count [19, 17, 13, 11, 7, 5, 3, 2] 94 = (17 : Int) := by
  decide

theorem node_7_2168 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2168 = (349 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2168 = count [19, 17, 13, 11, 7, 5, 3, 2] 2168 - count [19, 17, 13, 11, 7, 5, 3, 2] (2168 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2168 (by decide)
    _ = (366 : Int) - (17 : Int) :=
      sub_congr node_8_2168 node_8_94
    _ = (349 : Int) := by decide

theorem node_8_74 : count [19, 17, 13, 11, 7, 5, 3, 2] 74 = (14 : Int) := by
  decide

theorem node_8_3 : count [19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  decide

theorem node_7_74 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = count [19, 17, 13, 11, 7, 5, 3, 2] 74 - count [19, 17, 13, 11, 7, 5, 3, 2] (74 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 74 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_74 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_2168 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2168 = (336 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2168 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2168 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2168 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2168 (by decide)
    _ = (349 : Int) - (13 : Int) :=
      sub_congr node_7_2168 node_7_74
    _ = (336 : Int) := by decide

theorem node_5_67236 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 = (10293 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (67236 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 (by decide)
    _ = (10629 : Int) - (336 : Int) :=
      sub_congr node_6_67236 node_6_2168
    _ = (10293 : Int) := by decide

theorem node_8_1817 : count [19, 17, 13, 11, 7, 5, 3, 2] 1817 = (308 : Int) := by
  decide

theorem node_8_79 : count [19, 17, 13, 11, 7, 5, 3, 2] 79 = (15 : Int) := by
  decide

theorem node_7_1817 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1817 = (293 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1817 = count [19, 17, 13, 11, 7, 5, 3, 2] 1817 - count [19, 17, 13, 11, 7, 5, 3, 2] (1817 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1817 (by decide)
    _ = (308 : Int) - (15 : Int) :=
      sub_congr node_8_1817 node_8_79
    _ = (293 : Int) := by decide

theorem node_8_62 : count [19, 17, 13, 11, 7, 5, 3, 2] 62 = (11 : Int) := by
  decide

theorem node_8_2 : count [19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  decide

theorem node_7_62 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = (10 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = count [19, 17, 13, 11, 7, 5, 3, 2] 62 - count [19, 17, 13, 11, 7, 5, 3, 2] (62 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 62 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_8_62 node_8_2
    _ = (10 : Int) := by decide

theorem node_6_1817 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1817 = (283 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1817 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1817 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1817 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1817 (by decide)
    _ = (293 : Int) - (10 : Int) :=
      sub_congr node_7_1817 node_7_62
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

theorem node_8_0 : count [19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [19, 17, 13, 11, 7, 5, 3, 2]

theorem node_7_2 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [19, 17, 13, 11, 7, 5, 3, 2] 2 - count [19, 17, 13, 11, 7, 5, 3, 2] (2 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_2 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_58 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = (7 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 58 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (58 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 58 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_7_58 node_7_2
    _ = (7 : Int) := by decide

theorem node_5_1817 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1817 = (276 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1817 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1817 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1817 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1817 (by decide)
    _ = (283 : Int) - (7 : Int) :=
      sub_congr node_6_1817 node_6_58
    _ = (276 : Int) := by decide

theorem node_4_67236 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 = (10017 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (67236 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 (by decide)
    _ = (10293 : Int) - (276 : Int) :=
      sub_congr node_5_67236 node_5_1817
    _ = (10017 : Int) := by decide

theorem node_8_1639 : count [19, 17, 13, 11, 7, 5, 3, 2] 1639 = (279 : Int) := by
  decide

theorem node_8_71 : count [19, 17, 13, 11, 7, 5, 3, 2] 71 = (13 : Int) := by
  decide

theorem node_7_1639 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1639 = (266 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1639 = count [19, 17, 13, 11, 7, 5, 3, 2] 1639 - count [19, 17, 13, 11, 7, 5, 3, 2] (1639 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1639 (by decide)
    _ = (279 : Int) - (13 : Int) :=
      sub_congr node_8_1639 node_8_71
    _ = (266 : Int) := by decide

theorem node_8_56 : count [19, 17, 13, 11, 7, 5, 3, 2] 56 = (9 : Int) := by
  decide

theorem node_7_56 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = count [19, 17, 13, 11, 7, 5, 3, 2] 56 - count [19, 17, 13, 11, 7, 5, 3, 2] (56 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 56 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_56 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_1639 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1639 = (258 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1639 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1639 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1639 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1639 (by decide)
    _ = (266 : Int) - (8 : Int) :=
      sub_congr node_7_1639 node_7_56
    _ = (258 : Int) := by decide

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

theorem node_5_1639 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1639 = (252 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1639 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1639 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1639 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1639 (by decide)
    _ = (258 : Int) - (6 : Int) :=
      sub_congr node_6_1639 node_6_52
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

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_1 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_1 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_44 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 = (4 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (44 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_6_44 node_6_1
    _ = (4 : Int) := by decide

theorem node_4_1639 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1639 = (248 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1639 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1639 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1639 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1639 (by decide)
    _ = (252 : Int) - (4 : Int) :=
      sub_congr node_5_1639 node_5_44
    _ = (248 : Int) := by decide

theorem node_3_67236 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 = (9769 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (67236 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 (by decide)
    _ = (10017 : Int) - (248 : Int) :=
      sub_congr node_4_67236 node_4_1639
    _ = (9769 : Int) := by decide

theorem node_8_1563 : count [19, 17, 13, 11, 7, 5, 3, 2] 1563 = (264 : Int) := by
  decide

theorem node_8_67 : count [19, 17, 13, 11, 7, 5, 3, 2] 67 = (12 : Int) := by
  decide

theorem node_7_1563 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1563 = (252 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1563 = count [19, 17, 13, 11, 7, 5, 3, 2] 1563 - count [19, 17, 13, 11, 7, 5, 3, 2] (1563 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1563 (by decide)
    _ = (264 : Int) - (12 : Int) :=
      sub_congr node_8_1563 node_8_67
    _ = (252 : Int) := by decide

theorem node_8_53 : count [19, 17, 13, 11, 7, 5, 3, 2] 53 = (9 : Int) := by
  decide

theorem node_7_53 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = count [19, 17, 13, 11, 7, 5, 3, 2] 53 - count [19, 17, 13, 11, 7, 5, 3, 2] (53 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 53 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_53 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_1563 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1563 = (244 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1563 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1563 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1563 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1563 (by decide)
    _ = (252 : Int) - (8 : Int) :=
      sub_congr node_7_1563 node_7_53
    _ = (244 : Int) := by decide

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

theorem node_5_1563 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1563 = (238 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1563 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1563 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1563 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1563 (by decide)
    _ = (244 : Int) - (6 : Int) :=
      sub_congr node_6_1563 node_6_50
    _ = (238 : Int) := by decide

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

theorem node_4_1563 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1563 = (235 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1563 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1563 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1563 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1563 (by decide)
    _ = (238 : Int) - (3 : Int) :=
      sub_congr node_5_1563 node_5_42
    _ = (235 : Int) := by decide

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

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_1 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_1 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_38 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (38 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_5_38 node_5_1
    _ = (1 : Int) := by decide

theorem node_3_1563 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1563 = (234 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1563 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1563 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1563 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1563 (by decide)
    _ = (235 : Int) - (1 : Int) :=
      sub_congr node_4_1563 node_4_38
    _ = (234 : Int) := by decide

theorem node_2_67236 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 = (9535 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (67236 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 (by decide)
    _ = (9769 : Int) - (234 : Int) :=
      sub_congr node_3_67236 node_3_1563
    _ = (9535 : Int) := by decide

theorem node_8_1430 : count [19, 17, 13, 11, 7, 5, 3, 2] 1430 = (240 : Int) := by
  decide

theorem node_7_1430 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1430 = (229 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1430 = count [19, 17, 13, 11, 7, 5, 3, 2] 1430 - count [19, 17, 13, 11, 7, 5, 3, 2] (1430 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1430 (by decide)
    _ = (240 : Int) - (11 : Int) :=
      sub_congr node_8_1430 node_8_62
    _ = (229 : Int) := by decide

theorem node_8_49 : count [19, 17, 13, 11, 7, 5, 3, 2] 49 = (8 : Int) := by
  decide

theorem node_7_49 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = (7 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = count [19, 17, 13, 11, 7, 5, 3, 2] 49 - count [19, 17, 13, 11, 7, 5, 3, 2] (49 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 49 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_8_49 node_8_2
    _ = (7 : Int) := by decide

theorem node_6_1430 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1430 = (222 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1430 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1430 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1430 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1430 (by decide)
    _ = (229 : Int) - (7 : Int) :=
      sub_congr node_7_1430 node_7_49
    _ = (222 : Int) := by decide

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

theorem node_5_1430 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1430 = (217 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1430 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1430 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1430 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1430 (by decide)
    _ = (222 : Int) - (5 : Int) :=
      sub_congr node_6_1430 node_6_46
    _ = (217 : Int) := by decide

theorem node_4_1430 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1430 = (215 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1430 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1430 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1430 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1430 (by decide)
    _ = (217 : Int) - (2 : Int) :=
      sub_congr node_5_1430 node_5_38
    _ = (215 : Int) := by decide

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

theorem node_3_1430 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1430 = (214 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1430 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1430 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1430 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1430 (by decide)
    _ = (215 : Int) - (1 : Int) :=
      sub_congr node_4_1430 node_4_34
    _ = (214 : Int) := by decide

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

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_33 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (33 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_33 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1430 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1430 = (213 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1430 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1430 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1430 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1430 (by decide)
    _ = (214 : Int) - (1 : Int) :=
      sub_congr node_3_1430 node_3_33
    _ = (213 : Int) := by decide

theorem node_1_67236 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 = (9322 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (67236 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 (by decide)
    _ = (9535 : Int) - (213 : Int) :=
      sub_congr node_2_67236 node_2_1430
    _ = (9322 : Int) := by decide

theorem node_8_1268 : count [19, 17, 13, 11, 7, 5, 3, 2] 1268 = (213 : Int) := by
  decide

theorem node_8_55 : count [19, 17, 13, 11, 7, 5, 3, 2] 55 = (9 : Int) := by
  decide

theorem node_7_1268 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1268 = (204 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1268 = count [19, 17, 13, 11, 7, 5, 3, 2] 1268 - count [19, 17, 13, 11, 7, 5, 3, 2] (1268 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1268 (by decide)
    _ = (213 : Int) - (9 : Int) :=
      sub_congr node_8_1268 node_8_55
    _ = (204 : Int) := by decide

theorem node_8_43 : count [19, 17, 13, 11, 7, 5, 3, 2] 43 = (7 : Int) := by
  decide

theorem node_7_43 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 43 = (6 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 43 = count [19, 17, 13, 11, 7, 5, 3, 2] 43 - count [19, 17, 13, 11, 7, 5, 3, 2] (43 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 43 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_8_43 node_8_1
    _ = (6 : Int) := by decide

theorem node_6_1268 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1268 = (198 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1268 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1268 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1268 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1268 (by decide)
    _ = (204 : Int) - (6 : Int) :=
      sub_congr node_7_1268 node_7_43
    _ = (198 : Int) := by decide

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

theorem node_5_1268 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1268 = (195 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1268 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1268 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1268 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1268 (by decide)
    _ = (198 : Int) - (3 : Int) :=
      sub_congr node_6_1268 node_6_40
    _ = (195 : Int) := by decide

theorem node_4_1268 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1268 = (194 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1268 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1268 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1268 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1268 (by decide)
    _ = (195 : Int) - (1 : Int) :=
      sub_congr node_5_1268 node_5_34
    _ = (194 : Int) := by decide

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

theorem node_3_1268 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1268 = (193 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1268 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1268 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1268 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1268 (by decide)
    _ = (194 : Int) - (1 : Int) :=
      sub_congr node_4_1268 node_4_30
    _ = (193 : Int) := by decide

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

theorem node_2_1268 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1268 = (192 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1268 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1268 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1268 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1268 (by decide)
    _ = (193 : Int) - (1 : Int) :=
      sub_congr node_3_1268 node_3_29
    _ = (192 : Int) := by decide

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

theorem node_1_1268 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1268 = (191 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1268 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1268 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1268 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1268 (by decide)
    _ = (192 : Int) - (1 : Int) :=
      sub_congr node_2_1268 node_2_26
    _ = (191 : Int) := by decide

theorem node_0_67236 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 = (9131 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (67236 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67236 (by decide)
    _ = (9322 : Int) - (191 : Int) :=
      sub_congr node_1_67236 node_1_1268
    _ = (9131 : Int) := by decide

theorem node_8_68070 : count [19, 17, 13, 11, 7, 5, 3, 2] 68070 = (11644 : Int) := by
  decide

theorem node_8_2959 : count [19, 17, 13, 11, 7, 5, 3, 2] 2959 = (503 : Int) := by
  decide

theorem node_7_68070 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 = (11141 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 = count [19, 17, 13, 11, 7, 5, 3, 2] 68070 - count [19, 17, 13, 11, 7, 5, 3, 2] (68070 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 68070 (by decide)
    _ = (11644 : Int) - (503 : Int) :=
      sub_congr node_8_68070 node_8_2959
    _ = (11141 : Int) := by decide

theorem node_8_2347 : count [19, 17, 13, 11, 7, 5, 3, 2] 2347 = (398 : Int) := by
  decide

theorem node_8_102 : count [19, 17, 13, 11, 7, 5, 3, 2] 102 = (19 : Int) := by
  decide

theorem node_7_2347 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2347 = (379 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2347 = count [19, 17, 13, 11, 7, 5, 3, 2] 2347 - count [19, 17, 13, 11, 7, 5, 3, 2] (2347 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2347 (by decide)
    _ = (398 : Int) - (19 : Int) :=
      sub_congr node_8_2347 node_8_102
    _ = (379 : Int) := by decide

theorem node_6_68070 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 = (10762 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (68070 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 (by decide)
    _ = (11141 : Int) - (379 : Int) :=
      sub_congr node_7_68070 node_7_2347
    _ = (10762 : Int) := by decide

theorem node_8_2195 : count [19, 17, 13, 11, 7, 5, 3, 2] 2195 = (369 : Int) := by
  decide

theorem node_8_95 : count [19, 17, 13, 11, 7, 5, 3, 2] 95 = (17 : Int) := by
  decide

theorem node_7_2195 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2195 = (352 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2195 = count [19, 17, 13, 11, 7, 5, 3, 2] 2195 - count [19, 17, 13, 11, 7, 5, 3, 2] (2195 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2195 (by decide)
    _ = (369 : Int) - (17 : Int) :=
      sub_congr node_8_2195 node_8_95
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

theorem node_6_2195 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2195 = (339 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2195 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2195 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2195 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2195 (by decide)
    _ = (352 : Int) - (13 : Int) :=
      sub_congr node_7_2195 node_7_75
    _ = (339 : Int) := by decide

theorem node_5_68070 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 = (10423 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (68070 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 (by decide)
    _ = (10762 : Int) - (339 : Int) :=
      sub_congr node_6_68070 node_6_2195
    _ = (10423 : Int) := by decide

theorem node_8_1839 : count [19, 17, 13, 11, 7, 5, 3, 2] 1839 = (311 : Int) := by
  decide

theorem node_7_1839 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1839 = (296 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1839 = count [19, 17, 13, 11, 7, 5, 3, 2] 1839 - count [19, 17, 13, 11, 7, 5, 3, 2] (1839 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1839 (by decide)
    _ = (311 : Int) - (15 : Int) :=
      sub_congr node_8_1839 node_8_79
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

theorem node_6_1839 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1839 = (286 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1839 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1839 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1839 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1839 (by decide)
    _ = (296 : Int) - (10 : Int) :=
      sub_congr node_7_1839 node_7_63
    _ = (286 : Int) := by decide

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

theorem node_5_1839 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1839 = (278 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1839 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1839 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1839 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1839 (by decide)
    _ = (286 : Int) - (8 : Int) :=
      sub_congr node_6_1839 node_6_59
    _ = (278 : Int) := by decide

theorem node_4_68070 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 = (10145 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (68070 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 (by decide)
    _ = (10423 : Int) - (278 : Int) :=
      sub_congr node_5_68070 node_5_1839
    _ = (10145 : Int) := by decide

theorem node_8_1660 : count [19, 17, 13, 11, 7, 5, 3, 2] 1660 = (281 : Int) := by
  decide

theorem node_8_72 : count [19, 17, 13, 11, 7, 5, 3, 2] 72 = (13 : Int) := by
  decide

theorem node_7_1660 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1660 = (268 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1660 = count [19, 17, 13, 11, 7, 5, 3, 2] 1660 - count [19, 17, 13, 11, 7, 5, 3, 2] (1660 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1660 (by decide)
    _ = (281 : Int) - (13 : Int) :=
      sub_congr node_8_1660 node_8_72
    _ = (268 : Int) := by decide

theorem node_8_57 : count [19, 17, 13, 11, 7, 5, 3, 2] 57 = (9 : Int) := by
  decide

theorem node_7_57 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = count [19, 17, 13, 11, 7, 5, 3, 2] 57 - count [19, 17, 13, 11, 7, 5, 3, 2] (57 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 57 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_57 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_1660 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1660 = (260 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1660 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1660 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1660 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1660 (by decide)
    _ = (268 : Int) - (8 : Int) :=
      sub_congr node_7_1660 node_7_57
    _ = (260 : Int) := by decide

theorem node_6_53 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = (7 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 53 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (53 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 53 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_7_53 node_7_1
    _ = (7 : Int) := by decide

theorem node_5_1660 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1660 = (253 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1660 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1660 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1660 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1660 (by decide)
    _ = (260 : Int) - (7 : Int) :=
      sub_congr node_6_1660 node_6_53
    _ = (253 : Int) := by decide

theorem node_4_1660 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1660 = (249 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1660 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1660 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1660 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1660 (by decide)
    _ = (253 : Int) - (4 : Int) :=
      sub_congr node_5_1660 node_5_44
    _ = (249 : Int) := by decide

theorem node_3_68070 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 = (9896 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (68070 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 (by decide)
    _ = (10145 : Int) - (249 : Int) :=
      sub_congr node_4_68070 node_4_1660
    _ = (9896 : Int) := by decide

theorem node_8_1583 : count [19, 17, 13, 11, 7, 5, 3, 2] 1583 = (268 : Int) := by
  decide

theorem node_8_68 : count [19, 17, 13, 11, 7, 5, 3, 2] 68 = (12 : Int) := by
  decide

theorem node_7_1583 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1583 = (256 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1583 = count [19, 17, 13, 11, 7, 5, 3, 2] 1583 - count [19, 17, 13, 11, 7, 5, 3, 2] (1583 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1583 (by decide)
    _ = (268 : Int) - (12 : Int) :=
      sub_congr node_8_1583 node_8_68
    _ = (256 : Int) := by decide

theorem node_8_54 : count [19, 17, 13, 11, 7, 5, 3, 2] 54 = (9 : Int) := by
  decide

theorem node_7_54 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 54 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 54 = count [19, 17, 13, 11, 7, 5, 3, 2] 54 - count [19, 17, 13, 11, 7, 5, 3, 2] (54 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 54 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_54 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_1583 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1583 = (248 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1583 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1583 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1583 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1583 (by decide)
    _ = (256 : Int) - (8 : Int) :=
      sub_congr node_7_1583 node_7_54
    _ = (248 : Int) := by decide

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

theorem node_5_1583 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1583 = (242 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1583 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1583 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1583 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1583 (by decide)
    _ = (248 : Int) - (6 : Int) :=
      sub_congr node_6_1583 node_6_51
    _ = (242 : Int) := by decide

theorem node_4_1583 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1583 = (239 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1583 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1583 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1583 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1583 (by decide)
    _ = (242 : Int) - (3 : Int) :=
      sub_congr node_5_1583 node_5_42
    _ = (239 : Int) := by decide

theorem node_3_1583 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1583 = (238 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1583 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1583 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1583 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1583 (by decide)
    _ = (239 : Int) - (1 : Int) :=
      sub_congr node_4_1583 node_4_38
    _ = (238 : Int) := by decide

theorem node_2_68070 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 = (9658 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (68070 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 (by decide)
    _ = (9896 : Int) - (238 : Int) :=
      sub_congr node_3_68070 node_3_1583
    _ = (9658 : Int) := by decide

theorem node_8_1448 : count [19, 17, 13, 11, 7, 5, 3, 2] 1448 = (243 : Int) := by
  decide

theorem node_7_1448 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 = (232 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 = count [19, 17, 13, 11, 7, 5, 3, 2] 1448 - count [19, 17, 13, 11, 7, 5, 3, 2] (1448 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1448 (by decide)
    _ = (243 : Int) - (11 : Int) :=
      sub_congr node_8_1448 node_8_62
    _ = (232 : Int) := by decide

theorem node_6_1448 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 = (225 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1448 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 (by decide)
    _ = (232 : Int) - (7 : Int) :=
      sub_congr node_7_1448 node_7_49
    _ = (225 : Int) := by decide

theorem node_5_1448 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 = (220 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1448 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 (by decide)
    _ = (225 : Int) - (5 : Int) :=
      sub_congr node_6_1448 node_6_46
    _ = (220 : Int) := by decide

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

theorem node_4_1448 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 = (218 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1448 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 (by decide)
    _ = (220 : Int) - (2 : Int) :=
      sub_congr node_5_1448 node_5_39
    _ = (218 : Int) := by decide

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

theorem node_3_1448 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 = (217 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1448 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 (by decide)
    _ = (218 : Int) - (1 : Int) :=
      sub_congr node_4_1448 node_4_35
    _ = (217 : Int) := by decide

theorem node_2_1448 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 = (216 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1448 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 (by decide)
    _ = (217 : Int) - (1 : Int) :=
      sub_congr node_3_1448 node_3_33
    _ = (216 : Int) := by decide

theorem node_1_68070 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 = (9442 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (68070 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 (by decide)
    _ = (9658 : Int) - (216 : Int) :=
      sub_congr node_2_68070 node_2_1448
    _ = (9442 : Int) := by decide

theorem node_8_1284 : count [19, 17, 13, 11, 7, 5, 3, 2] 1284 = (217 : Int) := by
  decide

theorem node_7_1284 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1284 = (208 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1284 = count [19, 17, 13, 11, 7, 5, 3, 2] 1284 - count [19, 17, 13, 11, 7, 5, 3, 2] (1284 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1284 (by decide)
    _ = (217 : Int) - (9 : Int) :=
      sub_congr node_8_1284 node_8_55
    _ = (208 : Int) := by decide

theorem node_6_1284 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1284 = (202 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1284 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1284 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1284 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1284 (by decide)
    _ = (208 : Int) - (6 : Int) :=
      sub_congr node_7_1284 node_7_44
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

theorem node_5_1284 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1284 = (198 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1284 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1284 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1284 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1284 (by decide)
    _ = (202 : Int) - (4 : Int) :=
      sub_congr node_6_1284 node_6_41
    _ = (198 : Int) := by decide

theorem node_4_1284 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1284 = (197 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1284 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1284 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1284 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1284 (by decide)
    _ = (198 : Int) - (1 : Int) :=
      sub_congr node_5_1284 node_5_34
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

theorem node_3_1284 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1284 = (196 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1284 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1284 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1284 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1284 (by decide)
    _ = (197 : Int) - (1 : Int) :=
      sub_congr node_4_1284 node_4_31
    _ = (196 : Int) := by decide

theorem node_2_1284 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1284 = (195 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1284 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1284 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1284 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1284 (by decide)
    _ = (196 : Int) - (1 : Int) :=
      sub_congr node_3_1284 node_3_29
    _ = (195 : Int) := by decide

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

theorem node_2_27 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (27 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_27 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1284 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1284 = (194 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1284 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1284 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1284 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1284 (by decide)
    _ = (195 : Int) - (1 : Int) :=
      sub_congr node_2_1284 node_2_27
    _ = (194 : Int) := by decide

theorem node_0_68070 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 = (9248 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (68070 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68070 (by decide)
    _ = (9442 : Int) - (194 : Int) :=
      sub_congr node_1_68070 node_1_1284
    _ = (9248 : Int) := by decide

theorem row_52 : count primes 67236 ≤ (9146 : Int) - 15 := by
  rw [show count primes 67236 = (9131 : Int) from node_0_67236]
  decide

theorem row_53 : count primes 68070 ≤ (9263 : Int) - 15 := by
  rw [show count primes 68070 = (9248 : Int) from node_0_68070]
  decide

def pairs : List (Nat × Nat) := [(67236, 9146), (68070, 9263)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl
  · exact row_52
  · exact row_53
end B699CorePrunedSieve.CoreRest13
#check @B699CorePrunedSieve.CoreRest13.pairs_valid
#print axioms B699CorePrunedSieve.CoreRest13.pairs_valid
