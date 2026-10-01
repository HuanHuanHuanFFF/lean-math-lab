import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreDagBatch24
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_105838 : count [19, 17, 13, 11, 7, 5, 3, 2] 105838 = (18100 : Int) := by
  decide

theorem node_8_4601 : count [19, 17, 13, 11, 7, 5, 3, 2] 4601 = (785 : Int) := by
  decide

theorem node_7_105838 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 = (17315 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 = count [19, 17, 13, 11, 7, 5, 3, 2] 105838 - count [19, 17, 13, 11, 7, 5, 3, 2] (105838 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 105838 (by decide)
    _ = (18100 : Int) - (785 : Int) :=
      sub_congr node_8_105838 node_8_4601
    _ = (17315 : Int) := by decide

theorem node_8_3649 : count [19, 17, 13, 11, 7, 5, 3, 2] 3649 = (622 : Int) := by
  decide

theorem node_8_158 : count [19, 17, 13, 11, 7, 5, 3, 2] 158 = (30 : Int) := by
  decide

theorem node_7_3649 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3649 = (592 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3649 = count [19, 17, 13, 11, 7, 5, 3, 2] 3649 - count [19, 17, 13, 11, 7, 5, 3, 2] (3649 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3649 (by decide)
    _ = (622 : Int) - (30 : Int) :=
      sub_congr node_8_3649 node_8_158
    _ = (592 : Int) := by decide

theorem node_6_105838 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 = (16723 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (105838 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 (by decide)
    _ = (17315 : Int) - (592 : Int) :=
      sub_congr node_7_105838 node_7_3649
    _ = (16723 : Int) := by decide

theorem node_8_3414 : count [19, 17, 13, 11, 7, 5, 3, 2] 3414 = (581 : Int) := by
  decide

theorem node_8_148 : count [19, 17, 13, 11, 7, 5, 3, 2] 148 = (27 : Int) := by
  decide

theorem node_7_3414 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3414 = (554 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3414 = count [19, 17, 13, 11, 7, 5, 3, 2] 3414 - count [19, 17, 13, 11, 7, 5, 3, 2] (3414 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3414 (by decide)
    _ = (581 : Int) - (27 : Int) :=
      sub_congr node_8_3414 node_8_148
    _ = (554 : Int) := by decide

theorem node_8_117 : count [19, 17, 13, 11, 7, 5, 3, 2] 117 = (23 : Int) := by
  decide

theorem node_8_5 : count [19, 17, 13, 11, 7, 5, 3, 2] 5 = (1 : Int) := by
  decide

theorem node_7_117 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 117 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 117 = count [19, 17, 13, 11, 7, 5, 3, 2] 117 - count [19, 17, 13, 11, 7, 5, 3, 2] (117 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 117 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_117 node_8_5
    _ = (22 : Int) := by decide

theorem node_6_3414 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3414 = (532 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3414 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3414 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3414 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3414 (by decide)
    _ = (554 : Int) - (22 : Int) :=
      sub_congr node_7_3414 node_7_117
    _ = (532 : Int) := by decide

theorem node_5_105838 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 = (16191 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (105838 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 (by decide)
    _ = (16723 : Int) - (532 : Int) :=
      sub_congr node_6_105838 node_6_3414
    _ = (16191 : Int) := by decide

theorem node_8_2860 : count [19, 17, 13, 11, 7, 5, 3, 2] 2860 = (486 : Int) := by
  decide

theorem node_8_124 : count [19, 17, 13, 11, 7, 5, 3, 2] 124 = (23 : Int) := by
  decide

theorem node_7_2860 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2860 = (463 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2860 = count [19, 17, 13, 11, 7, 5, 3, 2] 2860 - count [19, 17, 13, 11, 7, 5, 3, 2] (2860 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2860 (by decide)
    _ = (486 : Int) - (23 : Int) :=
      sub_congr node_8_2860 node_8_124
    _ = (463 : Int) := by decide

theorem node_8_98 : count [19, 17, 13, 11, 7, 5, 3, 2] 98 = (18 : Int) := by
  decide

theorem node_8_4 : count [19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  decide

theorem node_7_98 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 98 = (17 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 98 = count [19, 17, 13, 11, 7, 5, 3, 2] 98 - count [19, 17, 13, 11, 7, 5, 3, 2] (98 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 98 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_8_98 node_8_4
    _ = (17 : Int) := by decide

theorem node_6_2860 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2860 = (446 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2860 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2860 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2860 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2860 (by decide)
    _ = (463 : Int) - (17 : Int) :=
      sub_congr node_7_2860 node_7_98
    _ = (446 : Int) := by decide

theorem node_8_92 : count [19, 17, 13, 11, 7, 5, 3, 2] 92 = (17 : Int) := by
  decide

theorem node_7_92 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 92 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 92 = count [19, 17, 13, 11, 7, 5, 3, 2] 92 - count [19, 17, 13, 11, 7, 5, 3, 2] (92 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 92 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_92 node_8_4
    _ = (16 : Int) := by decide

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

theorem node_6_92 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92 = (15 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 92 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (92 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 92 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_7_92 node_7_3
    _ = (15 : Int) := by decide

theorem node_5_2860 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2860 = (431 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2860 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2860 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2860 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2860 (by decide)
    _ = (446 : Int) - (15 : Int) :=
      sub_congr node_6_2860 node_6_92
    _ = (431 : Int) := by decide

theorem node_4_105838 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 = (15760 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (105838 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 (by decide)
    _ = (16191 : Int) - (431 : Int) :=
      sub_congr node_5_105838 node_5_2860
    _ = (15760 : Int) := by decide

theorem node_8_2581 : count [19, 17, 13, 11, 7, 5, 3, 2] 2581 = (438 : Int) := by
  decide

theorem node_8_112 : count [19, 17, 13, 11, 7, 5, 3, 2] 112 = (22 : Int) := by
  decide

theorem node_7_2581 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2581 = (416 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2581 = count [19, 17, 13, 11, 7, 5, 3, 2] 2581 - count [19, 17, 13, 11, 7, 5, 3, 2] (2581 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2581 (by decide)
    _ = (438 : Int) - (22 : Int) :=
      sub_congr node_8_2581 node_8_112
    _ = (416 : Int) := by decide

theorem node_8_89 : count [19, 17, 13, 11, 7, 5, 3, 2] 89 = (17 : Int) := by
  decide

theorem node_7_89 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = count [19, 17, 13, 11, 7, 5, 3, 2] 89 - count [19, 17, 13, 11, 7, 5, 3, 2] (89 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 89 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_89 node_8_3
    _ = (16 : Int) := by decide

theorem node_6_2581 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2581 = (400 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2581 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2581 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2581 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2581 (by decide)
    _ = (416 : Int) - (16 : Int) :=
      sub_congr node_7_2581 node_7_89
    _ = (400 : Int) := by decide

theorem node_8_83 : count [19, 17, 13, 11, 7, 5, 3, 2] 83 = (16 : Int) := by
  decide

theorem node_7_83 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 83 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 83 = count [19, 17, 13, 11, 7, 5, 3, 2] 83 - count [19, 17, 13, 11, 7, 5, 3, 2] (83 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 83 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_83 node_8_3
    _ = (15 : Int) := by decide

theorem node_8_2 : count [19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  decide

theorem node_7_2 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [19, 17, 13, 11, 7, 5, 3, 2] 2 - count [19, 17, 13, 11, 7, 5, 3, 2] (2 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_2 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_83 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83 = (14 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 83 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (83 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 83 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_7_83 node_7_2
    _ = (14 : Int) := by decide

theorem node_5_2581 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2581 = (386 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2581 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2581 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2581 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2581 (by decide)
    _ = (400 : Int) - (14 : Int) :=
      sub_congr node_6_2581 node_6_83
    _ = (386 : Int) := by decide

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

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_2 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_2 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_69 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = (9 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (69 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 69 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_6_69 node_6_2
    _ = (9 : Int) := by decide

theorem node_4_2581 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2581 = (377 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2581 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2581 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2581 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2581 (by decide)
    _ = (386 : Int) - (9 : Int) :=
      sub_congr node_5_2581 node_5_69
    _ = (377 : Int) := by decide

theorem node_3_105838 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 = (15383 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (105838 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 (by decide)
    _ = (15760 : Int) - (377 : Int) :=
      sub_congr node_4_105838 node_4_2581
    _ = (15383 : Int) := by decide

theorem node_8_2461 : count [19, 17, 13, 11, 7, 5, 3, 2] 2461 = (419 : Int) := by
  decide

theorem node_8_107 : count [19, 17, 13, 11, 7, 5, 3, 2] 107 = (21 : Int) := by
  decide

theorem node_7_2461 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2461 = (398 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2461 = count [19, 17, 13, 11, 7, 5, 3, 2] 2461 - count [19, 17, 13, 11, 7, 5, 3, 2] (2461 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2461 (by decide)
    _ = (419 : Int) - (21 : Int) :=
      sub_congr node_8_2461 node_8_107
    _ = (398 : Int) := by decide

theorem node_8_84 : count [19, 17, 13, 11, 7, 5, 3, 2] 84 = (16 : Int) := by
  decide

theorem node_7_84 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 84 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 84 = count [19, 17, 13, 11, 7, 5, 3, 2] 84 - count [19, 17, 13, 11, 7, 5, 3, 2] (84 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 84 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_84 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_2461 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2461 = (383 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2461 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2461 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2461 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2461 (by decide)
    _ = (398 : Int) - (15 : Int) :=
      sub_congr node_7_2461 node_7_84
    _ = (383 : Int) := by decide

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

theorem node_5_2461 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2461 = (370 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2461 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2461 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2461 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2461 (by decide)
    _ = (383 : Int) - (13 : Int) :=
      sub_congr node_6_2461 node_6_79
    _ = (370 : Int) := by decide

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

theorem node_4_2461 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2461 = (362 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2461 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2461 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2461 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2461 (by decide)
    _ = (370 : Int) - (8 : Int) :=
      sub_congr node_5_2461 node_5_66
    _ = (362 : Int) := by decide

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

theorem node_5_60 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = (7 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (60 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_6_60 node_6_1
    _ = (7 : Int) := by decide

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_1 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_1 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_60 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = (6 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (60 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_5_60 node_5_1
    _ = (6 : Int) := by decide

theorem node_3_2461 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2461 = (356 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2461 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2461 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2461 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2461 (by decide)
    _ = (362 : Int) - (6 : Int) :=
      sub_congr node_4_2461 node_4_60
    _ = (356 : Int) := by decide

theorem node_2_105838 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 = (15027 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (105838 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 (by decide)
    _ = (15383 : Int) - (356 : Int) :=
      sub_congr node_3_105838 node_3_2461
    _ = (15027 : Int) := by decide

theorem node_8_2251 : count [19, 17, 13, 11, 7, 5, 3, 2] 2251 = (380 : Int) := by
  decide

theorem node_8_97 : count [19, 17, 13, 11, 7, 5, 3, 2] 97 = (18 : Int) := by
  decide

theorem node_7_2251 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2251 = (362 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2251 = count [19, 17, 13, 11, 7, 5, 3, 2] 2251 - count [19, 17, 13, 11, 7, 5, 3, 2] (2251 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2251 (by decide)
    _ = (380 : Int) - (18 : Int) :=
      sub_congr node_8_2251 node_8_97
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

theorem node_6_2251 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2251 = (349 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2251 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2251 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2251 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2251 (by decide)
    _ = (362 : Int) - (13 : Int) :=
      sub_congr node_7_2251 node_7_77
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

theorem node_5_2251 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2251 = (338 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2251 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2251 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2251 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2251 (by decide)
    _ = (349 : Int) - (11 : Int) :=
      sub_congr node_6_2251 node_6_72
    _ = (338 : Int) := by decide

theorem node_4_2251 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2251 = (331 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2251 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2251 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2251 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2251 (by decide)
    _ = (338 : Int) - (7 : Int) :=
      sub_congr node_5_2251 node_5_60
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

theorem node_3_2251 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2251 = (326 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2251 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2251 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2251 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2251 (by decide)
    _ = (331 : Int) - (5 : Int) :=
      sub_congr node_4_2251 node_4_54
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

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_1 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_1 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_52 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = (3 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (52 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_4_52 node_4_1
    _ = (3 : Int) := by decide

theorem node_2_2251 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2251 = (323 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2251 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2251 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2251 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2251 (by decide)
    _ = (326 : Int) - (3 : Int) :=
      sub_congr node_3_2251 node_3_52
    _ = (323 : Int) := by decide

theorem node_1_105838 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 = (14704 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (105838 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 (by decide)
    _ = (15027 : Int) - (323 : Int) :=
      sub_congr node_2_105838 node_2_2251
    _ = (14704 : Int) := by decide

theorem node_8_1996 : count [19, 17, 13, 11, 7, 5, 3, 2] 1996 = (336 : Int) := by
  decide

theorem node_8_86 : count [19, 17, 13, 11, 7, 5, 3, 2] 86 = (16 : Int) := by
  decide

theorem node_7_1996 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1996 = (320 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1996 = count [19, 17, 13, 11, 7, 5, 3, 2] 1996 - count [19, 17, 13, 11, 7, 5, 3, 2] (1996 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1996 (by decide)
    _ = (336 : Int) - (16 : Int) :=
      sub_congr node_8_1996 node_8_86
    _ = (320 : Int) := by decide

theorem node_8_68 : count [19, 17, 13, 11, 7, 5, 3, 2] 68 = (12 : Int) := by
  decide

theorem node_7_68 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = (11 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = count [19, 17, 13, 11, 7, 5, 3, 2] 68 - count [19, 17, 13, 11, 7, 5, 3, 2] (68 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 68 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_8_68 node_8_2
    _ = (11 : Int) := by decide

theorem node_6_1996 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1996 = (309 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1996 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1996 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1996 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1996 (by decide)
    _ = (320 : Int) - (11 : Int) :=
      sub_congr node_7_1996 node_7_68
    _ = (309 : Int) := by decide

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

theorem node_5_1996 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1996 = (300 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1996 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1996 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1996 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1996 (by decide)
    _ = (309 : Int) - (9 : Int) :=
      sub_congr node_6_1996 node_6_64
    _ = (300 : Int) := by decide

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

theorem node_4_1996 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1996 = (294 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1996 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1996 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1996 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1996 (by decide)
    _ = (300 : Int) - (6 : Int) :=
      sub_congr node_5_1996 node_5_53
    _ = (294 : Int) := by decide

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

theorem node_3_1996 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1996 = (290 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1996 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1996 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1996 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1996 (by decide)
    _ = (294 : Int) - (4 : Int) :=
      sub_congr node_4_1996 node_4_48
    _ = (290 : Int) := by decide

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

theorem node_3_46 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = (2 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (46 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_4_46 node_4_1
    _ = (2 : Int) := by decide

theorem node_2_1996 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1996 = (288 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1996 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1996 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1996 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1996 (by decide)
    _ = (290 : Int) - (2 : Int) :=
      sub_congr node_3_1996 node_3_46
    _ = (288 : Int) := by decide

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

theorem node_3_0 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_2_42 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (42 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_42 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1996 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1996 = (287 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1996 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1996 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1996 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1996 (by decide)
    _ = (288 : Int) - (1 : Int) :=
      sub_congr node_2_1996 node_2_42
    _ = (287 : Int) := by decide

theorem node_0_105838 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 = (14417 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (105838 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 105838 (by decide)
    _ = (14704 : Int) - (287 : Int) :=
      sub_congr node_1_105838 node_1_1996
    _ = (14417 : Int) := by decide

theorem node_8_106920 : count [19, 17, 13, 11, 7, 5, 3, 2] 106920 = (18284 : Int) := by
  decide

theorem node_8_4648 : count [19, 17, 13, 11, 7, 5, 3, 2] 4648 = (792 : Int) := by
  decide

theorem node_7_106920 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 = (17492 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 = count [19, 17, 13, 11, 7, 5, 3, 2] 106920 - count [19, 17, 13, 11, 7, 5, 3, 2] (106920 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 106920 (by decide)
    _ = (18284 : Int) - (792 : Int) :=
      sub_congr node_8_106920 node_8_4648
    _ = (17492 : Int) := by decide

theorem node_8_3686 : count [19, 17, 13, 11, 7, 5, 3, 2] 3686 = (627 : Int) := by
  decide

theorem node_8_160 : count [19, 17, 13, 11, 7, 5, 3, 2] 160 = (30 : Int) := by
  decide

theorem node_7_3686 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3686 = (597 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3686 = count [19, 17, 13, 11, 7, 5, 3, 2] 3686 - count [19, 17, 13, 11, 7, 5, 3, 2] (3686 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3686 (by decide)
    _ = (627 : Int) - (30 : Int) :=
      sub_congr node_8_3686 node_8_160
    _ = (597 : Int) := by decide

theorem node_6_106920 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 = (16895 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (106920 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 (by decide)
    _ = (17492 : Int) - (597 : Int) :=
      sub_congr node_7_106920 node_7_3686
    _ = (16895 : Int) := by decide

theorem node_8_3449 : count [19, 17, 13, 11, 7, 5, 3, 2] 3449 = (585 : Int) := by
  decide

theorem node_8_149 : count [19, 17, 13, 11, 7, 5, 3, 2] 149 = (28 : Int) := by
  decide

theorem node_7_3449 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3449 = (557 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3449 = count [19, 17, 13, 11, 7, 5, 3, 2] 3449 - count [19, 17, 13, 11, 7, 5, 3, 2] (3449 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3449 (by decide)
    _ = (585 : Int) - (28 : Int) :=
      sub_congr node_8_3449 node_8_149
    _ = (557 : Int) := by decide

theorem node_8_118 : count [19, 17, 13, 11, 7, 5, 3, 2] 118 = (23 : Int) := by
  decide

theorem node_7_118 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 118 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 118 = count [19, 17, 13, 11, 7, 5, 3, 2] 118 - count [19, 17, 13, 11, 7, 5, 3, 2] (118 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 118 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_118 node_8_5
    _ = (22 : Int) := by decide

theorem node_6_3449 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3449 = (535 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3449 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3449 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3449 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3449 (by decide)
    _ = (557 : Int) - (22 : Int) :=
      sub_congr node_7_3449 node_7_118
    _ = (535 : Int) := by decide

theorem node_5_106920 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 = (16360 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (106920 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 (by decide)
    _ = (16895 : Int) - (535 : Int) :=
      sub_congr node_6_106920 node_6_3449
    _ = (16360 : Int) := by decide

theorem node_8_2889 : count [19, 17, 13, 11, 7, 5, 3, 2] 2889 = (491 : Int) := by
  decide

theorem node_8_125 : count [19, 17, 13, 11, 7, 5, 3, 2] 125 = (23 : Int) := by
  decide

theorem node_7_2889 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2889 = (468 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2889 = count [19, 17, 13, 11, 7, 5, 3, 2] 2889 - count [19, 17, 13, 11, 7, 5, 3, 2] (2889 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2889 (by decide)
    _ = (491 : Int) - (23 : Int) :=
      sub_congr node_8_2889 node_8_125
    _ = (468 : Int) := by decide

theorem node_8_99 : count [19, 17, 13, 11, 7, 5, 3, 2] 99 = (18 : Int) := by
  decide

theorem node_7_99 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 99 = (17 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 99 = count [19, 17, 13, 11, 7, 5, 3, 2] 99 - count [19, 17, 13, 11, 7, 5, 3, 2] (99 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 99 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_8_99 node_8_4
    _ = (17 : Int) := by decide

theorem node_6_2889 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2889 = (451 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2889 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2889 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2889 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2889 (by decide)
    _ = (468 : Int) - (17 : Int) :=
      sub_congr node_7_2889 node_7_99
    _ = (451 : Int) := by decide

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

theorem node_5_2889 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2889 = (436 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2889 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2889 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2889 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2889 (by decide)
    _ = (451 : Int) - (15 : Int) :=
      sub_congr node_6_2889 node_6_93
    _ = (436 : Int) := by decide

theorem node_4_106920 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 = (15924 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (106920 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 (by decide)
    _ = (16360 : Int) - (436 : Int) :=
      sub_congr node_5_106920 node_5_2889
    _ = (15924 : Int) := by decide

theorem node_8_2607 : count [19, 17, 13, 11, 7, 5, 3, 2] 2607 = (441 : Int) := by
  decide

theorem node_8_113 : count [19, 17, 13, 11, 7, 5, 3, 2] 113 = (23 : Int) := by
  decide

theorem node_7_2607 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2607 = (418 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2607 = count [19, 17, 13, 11, 7, 5, 3, 2] 2607 - count [19, 17, 13, 11, 7, 5, 3, 2] (2607 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2607 (by decide)
    _ = (441 : Int) - (23 : Int) :=
      sub_congr node_8_2607 node_8_113
    _ = (418 : Int) := by decide

theorem node_6_2607 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2607 = (402 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2607 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2607 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2607 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2607 (by decide)
    _ = (418 : Int) - (16 : Int) :=
      sub_congr node_7_2607 node_7_89
    _ = (402 : Int) := by decide

theorem node_6_84 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84 = (14 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 84 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (84 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 84 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_7_84 node_7_2
    _ = (14 : Int) := by decide

theorem node_5_2607 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2607 = (388 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2607 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2607 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2607 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2607 (by decide)
    _ = (402 : Int) - (14 : Int) :=
      sub_congr node_6_2607 node_6_84
    _ = (388 : Int) := by decide

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

theorem node_5_70 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70 = (9 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (70 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_6_70 node_6_2
    _ = (9 : Int) := by decide

theorem node_4_2607 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2607 = (379 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2607 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2607 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2607 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2607 (by decide)
    _ = (388 : Int) - (9 : Int) :=
      sub_congr node_5_2607 node_5_70
    _ = (379 : Int) := by decide

theorem node_3_106920 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 = (15545 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (106920 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 (by decide)
    _ = (15924 : Int) - (379 : Int) :=
      sub_congr node_4_106920 node_4_2607
    _ = (15545 : Int) := by decide

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

theorem node_8_80 : count [19, 17, 13, 11, 7, 5, 3, 2] 80 = (15 : Int) := by
  decide

theorem node_7_80 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = (14 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = count [19, 17, 13, 11, 7, 5, 3, 2] 80 - count [19, 17, 13, 11, 7, 5, 3, 2] (80 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 80 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_8_80 node_8_3
    _ = (14 : Int) := by decide

theorem node_6_80 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = (13 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 80 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (80 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 80 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_7_80 node_7_2
    _ = (13 : Int) := by decide

theorem node_5_2486 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2486 = (374 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2486 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2486 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2486 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2486 (by decide)
    _ = (387 : Int) - (13 : Int) :=
      sub_congr node_6_2486 node_6_80
    _ = (374 : Int) := by decide

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

theorem node_4_2486 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2486 = (365 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2486 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2486 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2486 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2486 (by decide)
    _ = (374 : Int) - (9 : Int) :=
      sub_congr node_5_2486 node_5_67
    _ = (365 : Int) := by decide

theorem node_3_2486 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2486 = (359 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2486 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2486 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2486 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2486 (by decide)
    _ = (365 : Int) - (6 : Int) :=
      sub_congr node_4_2486 node_4_60
    _ = (359 : Int) := by decide

theorem node_2_106920 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 = (15186 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (106920 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 (by decide)
    _ = (15545 : Int) - (359 : Int) :=
      sub_congr node_3_106920 node_3_2486
    _ = (15186 : Int) := by decide

theorem node_8_2274 : count [19, 17, 13, 11, 7, 5, 3, 2] 2274 = (385 : Int) := by
  decide

theorem node_7_2274 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2274 = (367 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2274 = count [19, 17, 13, 11, 7, 5, 3, 2] 2274 - count [19, 17, 13, 11, 7, 5, 3, 2] (2274 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2274 (by decide)
    _ = (385 : Int) - (18 : Int) :=
      sub_congr node_8_2274 node_8_98
    _ = (367 : Int) := by decide

theorem node_8_78 : count [19, 17, 13, 11, 7, 5, 3, 2] 78 = (14 : Int) := by
  decide

theorem node_7_78 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = count [19, 17, 13, 11, 7, 5, 3, 2] 78 - count [19, 17, 13, 11, 7, 5, 3, 2] (78 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 78 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_78 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_2274 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2274 = (354 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2274 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2274 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2274 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2274 (by decide)
    _ = (367 : Int) - (13 : Int) :=
      sub_congr node_7_2274 node_7_78
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

theorem node_5_2274 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2274 = (342 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2274 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2274 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2274 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2274 (by decide)
    _ = (354 : Int) - (12 : Int) :=
      sub_congr node_6_2274 node_6_73
    _ = (342 : Int) := by decide

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

theorem node_4_2274 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2274 = (334 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2274 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2274 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2274 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2274 (by decide)
    _ = (342 : Int) - (8 : Int) :=
      sub_congr node_5_2274 node_5_61
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

theorem node_3_2274 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2274 = (329 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2274 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2274 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2274 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2274 (by decide)
    _ = (334 : Int) - (5 : Int) :=
      sub_congr node_4_2274 node_4_55
    _ = (329 : Int) := by decide

theorem node_2_2274 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2274 = (326 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2274 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2274 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2274 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2274 (by decide)
    _ = (329 : Int) - (3 : Int) :=
      sub_congr node_3_2274 node_3_52
    _ = (326 : Int) := by decide

theorem node_1_106920 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 = (14860 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (106920 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 (by decide)
    _ = (15186 : Int) - (326 : Int) :=
      sub_congr node_2_106920 node_2_2274
    _ = (14860 : Int) := by decide

theorem node_8_2017 : count [19, 17, 13, 11, 7, 5, 3, 2] 2017 = (341 : Int) := by
  decide

theorem node_8_87 : count [19, 17, 13, 11, 7, 5, 3, 2] 87 = (16 : Int) := by
  decide

theorem node_7_2017 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2017 = (325 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2017 = count [19, 17, 13, 11, 7, 5, 3, 2] 2017 - count [19, 17, 13, 11, 7, 5, 3, 2] (2017 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2017 (by decide)
    _ = (341 : Int) - (16 : Int) :=
      sub_congr node_8_2017 node_8_87
    _ = (325 : Int) := by decide

theorem node_6_2017 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2017 = (314 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2017 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2017 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2017 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2017 (by decide)
    _ = (325 : Int) - (11 : Int) :=
      sub_congr node_7_2017 node_7_69
    _ = (314 : Int) := by decide

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

theorem node_5_2017 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2017 = (305 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2017 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2017 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2017 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2017 (by decide)
    _ = (314 : Int) - (9 : Int) :=
      sub_congr node_6_2017 node_6_65
    _ = (305 : Int) := by decide

theorem node_4_2017 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2017 = (299 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2017 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2017 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2017 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2017 (by decide)
    _ = (305 : Int) - (6 : Int) :=
      sub_congr node_5_2017 node_5_54
    _ = (299 : Int) := by decide

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

theorem node_3_2017 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2017 = (295 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2017 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2017 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2017 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2017 (by decide)
    _ = (299 : Int) - (4 : Int) :=
      sub_congr node_4_2017 node_4_49
    _ = (295 : Int) := by decide

theorem node_2_2017 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2017 = (293 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2017 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2017 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2017 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2017 (by decide)
    _ = (295 : Int) - (2 : Int) :=
      sub_congr node_3_2017 node_3_46
    _ = (293 : Int) := by decide

theorem node_1_2017 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2017 = (292 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2017 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2017 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2017 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2017 (by decide)
    _ = (293 : Int) - (1 : Int) :=
      sub_congr node_2_2017 node_2_42
    _ = (292 : Int) := by decide

theorem node_0_106920 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 = (14568 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (106920 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 106920 (by decide)
    _ = (14860 : Int) - (292 : Int) :=
      sub_congr node_1_106920 node_1_2017
    _ = (14568 : Int) := by decide

theorem node_8_108028 : count [19, 17, 13, 11, 7, 5, 3, 2] 108028 = (18474 : Int) := by
  decide

theorem node_8_4696 : count [19, 17, 13, 11, 7, 5, 3, 2] 4696 = (802 : Int) := by
  decide

theorem node_7_108028 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = (17672 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = count [19, 17, 13, 11, 7, 5, 3, 2] 108028 - count [19, 17, 13, 11, 7, 5, 3, 2] (108028 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 108028 (by decide)
    _ = (18474 : Int) - (802 : Int) :=
      sub_congr node_8_108028 node_8_4696
    _ = (17672 : Int) := by decide

theorem node_8_3725 : count [19, 17, 13, 11, 7, 5, 3, 2] 3725 = (634 : Int) := by
  decide

theorem node_8_161 : count [19, 17, 13, 11, 7, 5, 3, 2] 161 = (30 : Int) := by
  decide

theorem node_7_3725 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3725 = (604 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3725 = count [19, 17, 13, 11, 7, 5, 3, 2] 3725 - count [19, 17, 13, 11, 7, 5, 3, 2] (3725 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3725 (by decide)
    _ = (634 : Int) - (30 : Int) :=
      sub_congr node_8_3725 node_8_161
    _ = (604 : Int) := by decide

theorem node_6_108028 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = (17068 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (108028 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 (by decide)
    _ = (17672 : Int) - (604 : Int) :=
      sub_congr node_7_108028 node_7_3725
    _ = (17068 : Int) := by decide

theorem node_8_3484 : count [19, 17, 13, 11, 7, 5, 3, 2] 3484 = (592 : Int) := by
  decide

theorem node_8_151 : count [19, 17, 13, 11, 7, 5, 3, 2] 151 = (29 : Int) := by
  decide

theorem node_7_3484 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3484 = (563 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3484 = count [19, 17, 13, 11, 7, 5, 3, 2] 3484 - count [19, 17, 13, 11, 7, 5, 3, 2] (3484 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3484 (by decide)
    _ = (592 : Int) - (29 : Int) :=
      sub_congr node_8_3484 node_8_151
    _ = (563 : Int) := by decide

theorem node_8_120 : count [19, 17, 13, 11, 7, 5, 3, 2] 120 = (23 : Int) := by
  decide

theorem node_7_120 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 120 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 120 = count [19, 17, 13, 11, 7, 5, 3, 2] 120 - count [19, 17, 13, 11, 7, 5, 3, 2] (120 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 120 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_120 node_8_5
    _ = (22 : Int) := by decide

theorem node_6_3484 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3484 = (541 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3484 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3484 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3484 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3484 (by decide)
    _ = (563 : Int) - (22 : Int) :=
      sub_congr node_7_3484 node_7_120
    _ = (541 : Int) := by decide

theorem node_5_108028 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = (16527 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (108028 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 (by decide)
    _ = (17068 : Int) - (541 : Int) :=
      sub_congr node_6_108028 node_6_3484
    _ = (16527 : Int) := by decide

theorem node_8_2919 : count [19, 17, 13, 11, 7, 5, 3, 2] 2919 = (496 : Int) := by
  decide

theorem node_8_126 : count [19, 17, 13, 11, 7, 5, 3, 2] 126 = (23 : Int) := by
  decide

theorem node_7_2919 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2919 = (473 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2919 = count [19, 17, 13, 11, 7, 5, 3, 2] 2919 - count [19, 17, 13, 11, 7, 5, 3, 2] (2919 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2919 (by decide)
    _ = (496 : Int) - (23 : Int) :=
      sub_congr node_8_2919 node_8_126
    _ = (473 : Int) := by decide

theorem node_8_100 : count [19, 17, 13, 11, 7, 5, 3, 2] 100 = (18 : Int) := by
  decide

theorem node_7_100 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 100 = (17 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 100 = count [19, 17, 13, 11, 7, 5, 3, 2] 100 - count [19, 17, 13, 11, 7, 5, 3, 2] (100 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 100 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_8_100 node_8_4
    _ = (17 : Int) := by decide

theorem node_6_2919 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2919 = (456 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2919 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2919 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2919 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2919 (by decide)
    _ = (473 : Int) - (17 : Int) :=
      sub_congr node_7_2919 node_7_100
    _ = (456 : Int) := by decide

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

theorem node_5_2919 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2919 = (441 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2919 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2919 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2919 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2919 (by decide)
    _ = (456 : Int) - (15 : Int) :=
      sub_congr node_6_2919 node_6_94
    _ = (441 : Int) := by decide

theorem node_4_108028 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = (16086 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (108028 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 (by decide)
    _ = (16527 : Int) - (441 : Int) :=
      sub_congr node_5_108028 node_5_2919
    _ = (16086 : Int) := by decide

theorem node_8_2634 : count [19, 17, 13, 11, 7, 5, 3, 2] 2634 = (447 : Int) := by
  decide

theorem node_8_114 : count [19, 17, 13, 11, 7, 5, 3, 2] 114 = (23 : Int) := by
  decide

theorem node_7_2634 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 = (424 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 = count [19, 17, 13, 11, 7, 5, 3, 2] 2634 - count [19, 17, 13, 11, 7, 5, 3, 2] (2634 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2634 (by decide)
    _ = (447 : Int) - (23 : Int) :=
      sub_congr node_8_2634 node_8_114
    _ = (424 : Int) := by decide

theorem node_8_90 : count [19, 17, 13, 11, 7, 5, 3, 2] 90 = (17 : Int) := by
  decide

theorem node_7_90 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 90 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 90 = count [19, 17, 13, 11, 7, 5, 3, 2] 90 - count [19, 17, 13, 11, 7, 5, 3, 2] (90 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 90 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_90 node_8_3
    _ = (16 : Int) := by decide

theorem node_6_2634 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 = (408 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2634 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 (by decide)
    _ = (424 : Int) - (16 : Int) :=
      sub_congr node_7_2634 node_7_90
    _ = (408 : Int) := by decide

theorem node_5_2634 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 = (394 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2634 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 (by decide)
    _ = (408 : Int) - (14 : Int) :=
      sub_congr node_6_2634 node_6_84
    _ = (394 : Int) := by decide

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

theorem node_5_71 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = (10 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (71 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_6_71 node_6_2
    _ = (10 : Int) := by decide

theorem node_4_2634 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 = (384 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2634 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2634 (by decide)
    _ = (394 : Int) - (10 : Int) :=
      sub_congr node_5_2634 node_5_71
    _ = (384 : Int) := by decide

theorem node_3_108028 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = (15702 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (108028 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 (by decide)
    _ = (16086 : Int) - (384 : Int) :=
      sub_congr node_4_108028 node_4_2634
    _ = (15702 : Int) := by decide

theorem node_8_2512 : count [19, 17, 13, 11, 7, 5, 3, 2] 2512 = (427 : Int) := by
  decide

theorem node_8_109 : count [19, 17, 13, 11, 7, 5, 3, 2] 109 = (22 : Int) := by
  decide

theorem node_7_2512 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 = (405 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 = count [19, 17, 13, 11, 7, 5, 3, 2] 2512 - count [19, 17, 13, 11, 7, 5, 3, 2] (2512 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2512 (by decide)
    _ = (427 : Int) - (22 : Int) :=
      sub_congr node_8_2512 node_8_109
    _ = (405 : Int) := by decide

theorem node_7_86 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = count [19, 17, 13, 11, 7, 5, 3, 2] 86 - count [19, 17, 13, 11, 7, 5, 3, 2] (86 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 86 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_86 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_2512 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 = (390 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2512 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 (by decide)
    _ = (405 : Int) - (15 : Int) :=
      sub_congr node_7_2512 node_7_86
    _ = (390 : Int) := by decide

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

theorem node_5_2512 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 = (377 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2512 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 (by decide)
    _ = (390 : Int) - (13 : Int) :=
      sub_congr node_6_2512 node_6_81
    _ = (377 : Int) := by decide

theorem node_4_2512 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 = (368 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2512 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 (by decide)
    _ = (377 : Int) - (9 : Int) :=
      sub_congr node_5_2512 node_5_67
    _ = (368 : Int) := by decide

theorem node_4_61 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = (7 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (61 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_5_61 node_5_1
    _ = (7 : Int) := by decide

theorem node_3_2512 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 = (361 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2512 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2512 (by decide)
    _ = (368 : Int) - (7 : Int) :=
      sub_congr node_4_2512 node_4_61
    _ = (361 : Int) := by decide

theorem node_2_108028 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = (15341 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (108028 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 (by decide)
    _ = (15702 : Int) - (361 : Int) :=
      sub_congr node_3_108028 node_3_2512
    _ = (15341 : Int) := by decide

theorem node_8_2298 : count [19, 17, 13, 11, 7, 5, 3, 2] 2298 = (391 : Int) := by
  decide

theorem node_7_2298 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = (373 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = count [19, 17, 13, 11, 7, 5, 3, 2] 2298 - count [19, 17, 13, 11, 7, 5, 3, 2] (2298 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2298 (by decide)
    _ = (391 : Int) - (18 : Int) :=
      sub_congr node_8_2298 node_8_99
    _ = (373 : Int) := by decide

theorem node_6_2298 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = (359 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2298 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 (by decide)
    _ = (373 : Int) - (14 : Int) :=
      sub_congr node_7_2298 node_7_79
    _ = (359 : Int) := by decide

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

theorem node_5_2298 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = (347 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2298 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 (by decide)
    _ = (359 : Int) - (12 : Int) :=
      sub_congr node_6_2298 node_6_74
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

theorem node_5_62 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = (8 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (62 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_6_62 node_6_2
    _ = (8 : Int) := by decide

theorem node_4_2298 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = (339 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2298 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 (by decide)
    _ = (347 : Int) - (8 : Int) :=
      sub_congr node_5_2298 node_5_62
    _ = (339 : Int) := by decide

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

theorem node_5_56 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = (6 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (56 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_6_56 node_6_1
    _ = (6 : Int) := by decide

theorem node_4_56 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = (5 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (56 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_5_56 node_5_1
    _ = (5 : Int) := by decide

theorem node_3_2298 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = (334 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2298 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 (by decide)
    _ = (339 : Int) - (5 : Int) :=
      sub_congr node_4_2298 node_4_56
    _ = (334 : Int) := by decide

theorem node_4_53 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = (5 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (53 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_5_53 node_5_1
    _ = (5 : Int) := by decide

theorem node_3_53 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = (4 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (53 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_4_53 node_4_1
    _ = (4 : Int) := by decide

theorem node_2_2298 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = (330 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2298 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2298 (by decide)
    _ = (334 : Int) - (4 : Int) :=
      sub_congr node_3_2298 node_3_53
    _ = (330 : Int) := by decide

theorem node_1_108028 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = (15011 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (108028 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 (by decide)
    _ = (15341 : Int) - (330 : Int) :=
      sub_congr node_2_108028 node_2_2298
    _ = (15011 : Int) := by decide

theorem node_8_2038 : count [19, 17, 13, 11, 7, 5, 3, 2] 2038 = (344 : Int) := by
  decide

theorem node_8_88 : count [19, 17, 13, 11, 7, 5, 3, 2] 88 = (16 : Int) := by
  decide

theorem node_7_2038 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = (328 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = count [19, 17, 13, 11, 7, 5, 3, 2] 2038 - count [19, 17, 13, 11, 7, 5, 3, 2] (2038 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2038 (by decide)
    _ = (344 : Int) - (16 : Int) :=
      sub_congr node_8_2038 node_8_88
    _ = (328 : Int) := by decide

theorem node_6_2038 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = (317 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2038 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 (by decide)
    _ = (328 : Int) - (11 : Int) :=
      sub_congr node_7_2038 node_7_70
    _ = (317 : Int) := by decide

theorem node_5_2038 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = (308 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2038 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 (by decide)
    _ = (317 : Int) - (9 : Int) :=
      sub_congr node_6_2038 node_6_65
    _ = (308 : Int) := by decide

theorem node_4_2038 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = (302 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2038 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 (by decide)
    _ = (308 : Int) - (6 : Int) :=
      sub_congr node_5_2038 node_5_55
    _ = (302 : Int) := by decide

theorem node_3_2038 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = (298 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2038 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 (by decide)
    _ = (302 : Int) - (4 : Int) :=
      sub_congr node_4_2038 node_4_49
    _ = (298 : Int) := by decide

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

theorem node_2_2038 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = (295 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2038 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 (by decide)
    _ = (298 : Int) - (3 : Int) :=
      sub_congr node_3_2038 node_3_47
    _ = (295 : Int) := by decide

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

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_1 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_1 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_43 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (43 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_3_43 node_3_1
    _ = (1 : Int) := by decide

theorem node_1_2038 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = (294 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2038 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 (by decide)
    _ = (295 : Int) - (1 : Int) :=
      sub_congr node_2_2038 node_2_43
    _ = (294 : Int) := by decide

theorem node_0_108028 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = (14717 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (108028 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108028 (by decide)
    _ = (15011 : Int) - (294 : Int) :=
      sub_congr node_1_108028 node_1_2038
    _ = (14717 : Int) := by decide

theorem node_8_109110 : count [19, 17, 13, 11, 7, 5, 3, 2] 109110 = (18658 : Int) := by
  decide

theorem node_8_4743 : count [19, 17, 13, 11, 7, 5, 3, 2] 4743 = (810 : Int) := by
  decide

theorem node_7_109110 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = (17848 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = count [19, 17, 13, 11, 7, 5, 3, 2] 109110 - count [19, 17, 13, 11, 7, 5, 3, 2] (109110 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 109110 (by decide)
    _ = (18658 : Int) - (810 : Int) :=
      sub_congr node_8_109110 node_8_4743
    _ = (17848 : Int) := by decide

theorem node_8_3762 : count [19, 17, 13, 11, 7, 5, 3, 2] 3762 = (640 : Int) := by
  decide

theorem node_8_163 : count [19, 17, 13, 11, 7, 5, 3, 2] 163 = (31 : Int) := by
  decide

theorem node_7_3762 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3762 = (609 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3762 = count [19, 17, 13, 11, 7, 5, 3, 2] 3762 - count [19, 17, 13, 11, 7, 5, 3, 2] (3762 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3762 (by decide)
    _ = (640 : Int) - (31 : Int) :=
      sub_congr node_8_3762 node_8_163
    _ = (609 : Int) := by decide

theorem node_6_109110 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = (17239 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (109110 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 (by decide)
    _ = (17848 : Int) - (609 : Int) :=
      sub_congr node_7_109110 node_7_3762
    _ = (17239 : Int) := by decide

theorem node_8_3519 : count [19, 17, 13, 11, 7, 5, 3, 2] 3519 = (597 : Int) := by
  decide

theorem node_8_153 : count [19, 17, 13, 11, 7, 5, 3, 2] 153 = (29 : Int) := by
  decide

theorem node_7_3519 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3519 = (568 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3519 = count [19, 17, 13, 11, 7, 5, 3, 2] 3519 - count [19, 17, 13, 11, 7, 5, 3, 2] (3519 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3519 (by decide)
    _ = (597 : Int) - (29 : Int) :=
      sub_congr node_8_3519 node_8_153
    _ = (568 : Int) := by decide

theorem node_8_121 : count [19, 17, 13, 11, 7, 5, 3, 2] 121 = (23 : Int) := by
  decide

theorem node_7_121 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 121 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 121 = count [19, 17, 13, 11, 7, 5, 3, 2] 121 - count [19, 17, 13, 11, 7, 5, 3, 2] (121 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 121 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_121 node_8_5
    _ = (22 : Int) := by decide

theorem node_6_3519 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3519 = (546 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3519 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3519 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3519 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3519 (by decide)
    _ = (568 : Int) - (22 : Int) :=
      sub_congr node_7_3519 node_7_121
    _ = (546 : Int) := by decide

theorem node_5_109110 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = (16693 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (109110 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 (by decide)
    _ = (17239 : Int) - (546 : Int) :=
      sub_congr node_6_109110 node_6_3519
    _ = (16693 : Int) := by decide

theorem node_8_2948 : count [19, 17, 13, 11, 7, 5, 3, 2] 2948 = (501 : Int) := by
  decide

theorem node_8_128 : count [19, 17, 13, 11, 7, 5, 3, 2] 128 = (24 : Int) := by
  decide

theorem node_7_2948 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2948 = (477 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2948 = count [19, 17, 13, 11, 7, 5, 3, 2] 2948 - count [19, 17, 13, 11, 7, 5, 3, 2] (2948 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2948 (by decide)
    _ = (501 : Int) - (24 : Int) :=
      sub_congr node_8_2948 node_8_128
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

theorem node_6_2948 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2948 = (459 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2948 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2948 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2948 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2948 (by decide)
    _ = (477 : Int) - (18 : Int) :=
      sub_congr node_7_2948 node_7_101
    _ = (459 : Int) := by decide

theorem node_8_95 : count [19, 17, 13, 11, 7, 5, 3, 2] 95 = (17 : Int) := by
  decide

theorem node_7_95 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 95 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 95 = count [19, 17, 13, 11, 7, 5, 3, 2] 95 - count [19, 17, 13, 11, 7, 5, 3, 2] (95 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 95 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_95 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_95 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95 = (15 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 95 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 95 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (95 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 95 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_7_95 node_7_3
    _ = (15 : Int) := by decide

theorem node_5_2948 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2948 = (444 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2948 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2948 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2948 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2948 (by decide)
    _ = (459 : Int) - (15 : Int) :=
      sub_congr node_6_2948 node_6_95
    _ = (444 : Int) := by decide

theorem node_4_109110 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = (16249 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (109110 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 (by decide)
    _ = (16693 : Int) - (444 : Int) :=
      sub_congr node_5_109110 node_5_2948
    _ = (16249 : Int) := by decide

theorem node_8_2661 : count [19, 17, 13, 11, 7, 5, 3, 2] 2661 = (450 : Int) := by
  decide

theorem node_8_115 : count [19, 17, 13, 11, 7, 5, 3, 2] 115 = (23 : Int) := by
  decide

theorem node_7_2661 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 = (427 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 = count [19, 17, 13, 11, 7, 5, 3, 2] 2661 - count [19, 17, 13, 11, 7, 5, 3, 2] (2661 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2661 (by decide)
    _ = (450 : Int) - (23 : Int) :=
      sub_congr node_8_2661 node_8_115
    _ = (427 : Int) := by decide

theorem node_8_91 : count [19, 17, 13, 11, 7, 5, 3, 2] 91 = (17 : Int) := by
  decide

theorem node_7_91 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 91 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 91 = count [19, 17, 13, 11, 7, 5, 3, 2] 91 - count [19, 17, 13, 11, 7, 5, 3, 2] (91 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 91 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_91 node_8_3
    _ = (16 : Int) := by decide

theorem node_6_2661 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 = (411 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2661 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 (by decide)
    _ = (427 : Int) - (16 : Int) :=
      sub_congr node_7_2661 node_7_91
    _ = (411 : Int) := by decide

theorem node_6_85 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85 = (14 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 85 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (85 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 85 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_7_85 node_7_2
    _ = (14 : Int) := by decide

theorem node_5_2661 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 = (397 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2661 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 (by decide)
    _ = (411 : Int) - (14 : Int) :=
      sub_congr node_6_2661 node_6_85
    _ = (397 : Int) := by decide

theorem node_4_2661 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 = (387 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2661 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2661 (by decide)
    _ = (397 : Int) - (10 : Int) :=
      sub_congr node_5_2661 node_5_71
    _ = (387 : Int) := by decide

theorem node_3_109110 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = (15862 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (109110 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 (by decide)
    _ = (16249 : Int) - (387 : Int) :=
      sub_congr node_4_109110 node_4_2661
    _ = (15862 : Int) := by decide

theorem node_8_2537 : count [19, 17, 13, 11, 7, 5, 3, 2] 2537 = (430 : Int) := by
  decide

theorem node_8_110 : count [19, 17, 13, 11, 7, 5, 3, 2] 110 = (22 : Int) := by
  decide

theorem node_7_2537 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 = (408 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 = count [19, 17, 13, 11, 7, 5, 3, 2] 2537 - count [19, 17, 13, 11, 7, 5, 3, 2] (2537 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2537 (by decide)
    _ = (430 : Int) - (22 : Int) :=
      sub_congr node_8_2537 node_8_110
    _ = (408 : Int) := by decide

theorem node_7_87 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = count [19, 17, 13, 11, 7, 5, 3, 2] 87 - count [19, 17, 13, 11, 7, 5, 3, 2] (87 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 87 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_87 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_2537 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 = (393 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2537 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 (by decide)
    _ = (408 : Int) - (15 : Int) :=
      sub_congr node_7_2537 node_7_87
    _ = (393 : Int) := by decide

theorem node_5_2537 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 = (380 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2537 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 (by decide)
    _ = (393 : Int) - (13 : Int) :=
      sub_congr node_6_2537 node_6_81
    _ = (380 : Int) := by decide

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

theorem node_4_2537 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 = (371 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2537 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 (by decide)
    _ = (380 : Int) - (9 : Int) :=
      sub_congr node_5_2537 node_5_68
    _ = (371 : Int) := by decide

theorem node_3_2537 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 = (364 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2537 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2537 (by decide)
    _ = (371 : Int) - (7 : Int) :=
      sub_congr node_4_2537 node_4_61
    _ = (364 : Int) := by decide

theorem node_2_109110 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = (15498 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (109110 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 (by decide)
    _ = (15862 : Int) - (364 : Int) :=
      sub_congr node_3_109110 node_3_2537
    _ = (15498 : Int) := by decide

theorem node_8_2321 : count [19, 17, 13, 11, 7, 5, 3, 2] 2321 = (393 : Int) := by
  decide

theorem node_7_2321 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = (375 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = count [19, 17, 13, 11, 7, 5, 3, 2] 2321 - count [19, 17, 13, 11, 7, 5, 3, 2] (2321 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2321 (by decide)
    _ = (393 : Int) - (18 : Int) :=
      sub_congr node_8_2321 node_8_100
    _ = (375 : Int) := by decide

theorem node_6_2321 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = (361 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2321 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 (by decide)
    _ = (375 : Int) - (14 : Int) :=
      sub_congr node_7_2321 node_7_80
    _ = (361 : Int) := by decide

theorem node_5_2321 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = (349 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2321 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 (by decide)
    _ = (361 : Int) - (12 : Int) :=
      sub_congr node_6_2321 node_6_74
    _ = (349 : Int) := by decide

theorem node_4_2321 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = (341 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2321 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 (by decide)
    _ = (349 : Int) - (8 : Int) :=
      sub_congr node_5_2321 node_5_62
    _ = (341 : Int) := by decide

theorem node_3_2321 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = (336 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2321 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 (by decide)
    _ = (341 : Int) - (5 : Int) :=
      sub_congr node_4_2321 node_4_56
    _ = (336 : Int) := by decide

theorem node_2_2321 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = (332 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2321 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2321 (by decide)
    _ = (336 : Int) - (4 : Int) :=
      sub_congr node_3_2321 node_3_53
    _ = (332 : Int) := by decide

theorem node_1_109110 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = (15166 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (109110 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 (by decide)
    _ = (15498 : Int) - (332 : Int) :=
      sub_congr node_2_109110 node_2_2321
    _ = (15166 : Int) := by decide

theorem node_8_2058 : count [19, 17, 13, 11, 7, 5, 3, 2] 2058 = (347 : Int) := by
  decide

theorem node_7_2058 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = (330 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = count [19, 17, 13, 11, 7, 5, 3, 2] 2058 - count [19, 17, 13, 11, 7, 5, 3, 2] (2058 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2058 (by decide)
    _ = (347 : Int) - (17 : Int) :=
      sub_congr node_8_2058 node_8_89
    _ = (330 : Int) := by decide

theorem node_6_2058 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = (319 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2058 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 (by decide)
    _ = (330 : Int) - (11 : Int) :=
      sub_congr node_7_2058 node_7_70
    _ = (319 : Int) := by decide

theorem node_5_2058 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = (310 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2058 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 (by decide)
    _ = (319 : Int) - (9 : Int) :=
      sub_congr node_6_2058 node_6_66
    _ = (310 : Int) := by decide

theorem node_4_2058 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = (304 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2058 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 (by decide)
    _ = (310 : Int) - (6 : Int) :=
      sub_congr node_5_2058 node_5_55
    _ = (304 : Int) := by decide

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

theorem node_3_2058 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = (300 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2058 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 (by decide)
    _ = (304 : Int) - (4 : Int) :=
      sub_congr node_4_2058 node_4_50
    _ = (300 : Int) := by decide

theorem node_2_2058 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = (297 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2058 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 (by decide)
    _ = (300 : Int) - (3 : Int) :=
      sub_congr node_3_2058 node_3_47
    _ = (297 : Int) := by decide

theorem node_1_2058 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = (296 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2058 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2058 (by decide)
    _ = (297 : Int) - (1 : Int) :=
      sub_congr node_2_2058 node_2_43
    _ = (296 : Int) := by decide

theorem node_0_109110 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = (14870 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (109110 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109110 (by decide)
    _ = (15166 : Int) - (296 : Int) :=
      sub_congr node_1_109110 node_1_2058
    _ = (14870 : Int) := by decide

theorem row_92 : count primes 105838 ≤ (14432 : Int) - 15 := by
  rw [show count primes 105838 = (14417 : Int) from node_0_105838]
  decide

theorem row_93 : count primes 106920 ≤ (14583 : Int) - 15 := by
  rw [show count primes 106920 = (14568 : Int) from node_0_106920]
  decide

theorem row_94 : count primes 108028 ≤ (14732 : Int) - 15 := by
  rw [show count primes 108028 = (14717 : Int) from node_0_108028]
  decide

theorem row_95 : count primes 109110 ≤ (14885 : Int) - 15 := by
  rw [show count primes 109110 = (14870 : Int) from node_0_109110]
  decide

def pairs : List (Nat × Nat) := [(105838, 14432), (106920, 14583), (108028, 14732), (109110, 14885)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl | rfl | rfl
  · exact row_92
  · exact row_93
  · exact row_94
  · exact row_95
end B699CorePrunedSieve.CoreDagBatch24
#check @B699CorePrunedSieve.CoreDagBatch24.pairs_valid
#print axioms B699CorePrunedSieve.CoreDagBatch24.pairs_valid
