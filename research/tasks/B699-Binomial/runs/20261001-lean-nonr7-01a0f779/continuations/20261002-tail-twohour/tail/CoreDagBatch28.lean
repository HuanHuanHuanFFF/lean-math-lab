import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreDagBatch28
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_124230 : count [19, 17, 13, 11, 7, 5, 3, 2] 124230 = (21246 : Int) := by
  decide

theorem node_8_5401 : count [19, 17, 13, 11, 7, 5, 3, 2] 5401 = (919 : Int) := by
  decide

theorem node_7_124230 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 = (20327 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 = count [19, 17, 13, 11, 7, 5, 3, 2] 124230 - count [19, 17, 13, 11, 7, 5, 3, 2] (124230 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 124230 (by decide)
    _ = (21246 : Int) - (919 : Int) :=
      sub_congr node_8_124230 node_8_5401
    _ = (20327 : Int) := by decide

theorem node_8_4283 : count [19, 17, 13, 11, 7, 5, 3, 2] 4283 = (732 : Int) := by
  decide

theorem node_8_186 : count [19, 17, 13, 11, 7, 5, 3, 2] 186 = (35 : Int) := by
  decide

theorem node_7_4283 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4283 = (697 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4283 = count [19, 17, 13, 11, 7, 5, 3, 2] 4283 - count [19, 17, 13, 11, 7, 5, 3, 2] (4283 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4283 (by decide)
    _ = (732 : Int) - (35 : Int) :=
      sub_congr node_8_4283 node_8_186
    _ = (697 : Int) := by decide

theorem node_6_124230 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 = (19630 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (124230 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 (by decide)
    _ = (20327 : Int) - (697 : Int) :=
      sub_congr node_7_124230 node_7_4283
    _ = (19630 : Int) := by decide

theorem node_8_4007 : count [19, 17, 13, 11, 7, 5, 3, 2] 4007 = (683 : Int) := by
  decide

theorem node_8_174 : count [19, 17, 13, 11, 7, 5, 3, 2] 174 = (33 : Int) := by
  decide

theorem node_7_4007 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4007 = (650 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4007 = count [19, 17, 13, 11, 7, 5, 3, 2] 4007 - count [19, 17, 13, 11, 7, 5, 3, 2] (4007 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4007 (by decide)
    _ = (683 : Int) - (33 : Int) :=
      sub_congr node_8_4007 node_8_174
    _ = (650 : Int) := by decide

theorem node_8_138 : count [19, 17, 13, 11, 7, 5, 3, 2] 138 = (26 : Int) := by
  decide

theorem node_8_6 : count [19, 17, 13, 11, 7, 5, 3, 2] 6 = (1 : Int) := by
  decide

theorem node_7_138 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 138 = (25 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 138 = count [19, 17, 13, 11, 7, 5, 3, 2] 138 - count [19, 17, 13, 11, 7, 5, 3, 2] (138 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 138 (by decide)
    _ = (26 : Int) - (1 : Int) :=
      sub_congr node_8_138 node_8_6
    _ = (25 : Int) := by decide

theorem node_6_4007 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4007 = (625 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4007 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4007 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (4007 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 4007 (by decide)
    _ = (650 : Int) - (25 : Int) :=
      sub_congr node_7_4007 node_7_138
    _ = (625 : Int) := by decide

theorem node_5_124230 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 = (19005 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (124230 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 (by decide)
    _ = (19630 : Int) - (625 : Int) :=
      sub_congr node_6_124230 node_6_4007
    _ = (19005 : Int) := by decide

theorem node_8_3357 : count [19, 17, 13, 11, 7, 5, 3, 2] 3357 = (570 : Int) := by
  decide

theorem node_8_145 : count [19, 17, 13, 11, 7, 5, 3, 2] 145 = (27 : Int) := by
  decide

theorem node_7_3357 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3357 = (543 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3357 = count [19, 17, 13, 11, 7, 5, 3, 2] 3357 - count [19, 17, 13, 11, 7, 5, 3, 2] (3357 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3357 (by decide)
    _ = (570 : Int) - (27 : Int) :=
      sub_congr node_8_3357 node_8_145
    _ = (543 : Int) := by decide

theorem node_8_115 : count [19, 17, 13, 11, 7, 5, 3, 2] 115 = (23 : Int) := by
  decide

theorem node_8_5 : count [19, 17, 13, 11, 7, 5, 3, 2] 5 = (1 : Int) := by
  decide

theorem node_7_115 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 115 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 115 = count [19, 17, 13, 11, 7, 5, 3, 2] 115 - count [19, 17, 13, 11, 7, 5, 3, 2] (115 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 115 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_115 node_8_5
    _ = (22 : Int) := by decide

theorem node_6_3357 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3357 = (521 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3357 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3357 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3357 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3357 (by decide)
    _ = (543 : Int) - (22 : Int) :=
      sub_congr node_7_3357 node_7_115
    _ = (521 : Int) := by decide

theorem node_8_108 : count [19, 17, 13, 11, 7, 5, 3, 2] 108 = (21 : Int) := by
  decide

theorem node_8_4 : count [19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  decide

theorem node_7_108 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 108 = (20 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 108 = count [19, 17, 13, 11, 7, 5, 3, 2] 108 - count [19, 17, 13, 11, 7, 5, 3, 2] (108 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 108 (by decide)
    _ = (21 : Int) - (1 : Int) :=
      sub_congr node_8_108 node_8_4
    _ = (20 : Int) := by decide

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

theorem node_6_108 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108 = (19 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 108 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 108 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (108 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 108 (by decide)
    _ = (20 : Int) - (1 : Int) :=
      sub_congr node_7_108 node_7_3
    _ = (19 : Int) := by decide

theorem node_5_3357 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3357 = (502 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3357 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3357 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3357 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3357 (by decide)
    _ = (521 : Int) - (19 : Int) :=
      sub_congr node_6_3357 node_6_108
    _ = (502 : Int) := by decide

theorem node_4_124230 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 = (18503 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (124230 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 (by decide)
    _ = (19005 : Int) - (502 : Int) :=
      sub_congr node_5_124230 node_5_3357
    _ = (18503 : Int) := by decide

theorem node_8_3030 : count [19, 17, 13, 11, 7, 5, 3, 2] 3030 = (515 : Int) := by
  decide

theorem node_8_131 : count [19, 17, 13, 11, 7, 5, 3, 2] 131 = (25 : Int) := by
  decide

theorem node_7_3030 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3030 = (490 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3030 = count [19, 17, 13, 11, 7, 5, 3, 2] 3030 - count [19, 17, 13, 11, 7, 5, 3, 2] (3030 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3030 (by decide)
    _ = (515 : Int) - (25 : Int) :=
      sub_congr node_8_3030 node_8_131
    _ = (490 : Int) := by decide

theorem node_8_104 : count [19, 17, 13, 11, 7, 5, 3, 2] 104 = (20 : Int) := by
  decide

theorem node_7_104 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 104 = (19 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 104 = count [19, 17, 13, 11, 7, 5, 3, 2] 104 - count [19, 17, 13, 11, 7, 5, 3, 2] (104 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 104 (by decide)
    _ = (20 : Int) - (1 : Int) :=
      sub_congr node_8_104 node_8_4
    _ = (19 : Int) := by decide

theorem node_6_3030 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3030 = (471 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3030 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3030 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3030 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3030 (by decide)
    _ = (490 : Int) - (19 : Int) :=
      sub_congr node_7_3030 node_7_104
    _ = (471 : Int) := by decide

theorem node_8_97 : count [19, 17, 13, 11, 7, 5, 3, 2] 97 = (18 : Int) := by
  decide

theorem node_7_97 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 97 = (17 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 97 = count [19, 17, 13, 11, 7, 5, 3, 2] 97 - count [19, 17, 13, 11, 7, 5, 3, 2] (97 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 97 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_8_97 node_8_4
    _ = (17 : Int) := by decide

theorem node_6_97 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97 = (16 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 97 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 97 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (97 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 97 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_7_97 node_7_3
    _ = (16 : Int) := by decide

theorem node_5_3030 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3030 = (455 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3030 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3030 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3030 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3030 (by decide)
    _ = (471 : Int) - (16 : Int) :=
      sub_congr node_6_3030 node_6_97
    _ = (455 : Int) := by decide

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

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_2 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_2 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_81 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = (12 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (81 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_6_81 node_6_2
    _ = (12 : Int) := by decide

theorem node_4_3030 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3030 = (443 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3030 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3030 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3030 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3030 (by decide)
    _ = (455 : Int) - (12 : Int) :=
      sub_congr node_5_3030 node_5_81
    _ = (443 : Int) := by decide

theorem node_3_124230 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 = (18060 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (124230 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 (by decide)
    _ = (18503 : Int) - (443 : Int) :=
      sub_congr node_4_124230 node_4_3030
    _ = (18060 : Int) := by decide

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

theorem node_5_78 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = (11 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 78 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (78 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 78 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_6_78 node_6_2
    _ = (11 : Int) := by decide

theorem node_4_2889 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2889 = (425 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2889 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2889 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2889 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2889 (by decide)
    _ = (436 : Int) - (11 : Int) :=
      sub_congr node_5_2889 node_5_78
    _ = (425 : Int) := by decide

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

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_1 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_1 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_70 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70 = (8 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (70 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 70 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_5_70 node_5_1
    _ = (8 : Int) := by decide

theorem node_3_2889 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2889 = (417 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2889 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2889 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2889 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2889 (by decide)
    _ = (425 : Int) - (8 : Int) :=
      sub_congr node_4_2889 node_4_70
    _ = (417 : Int) := by decide

theorem node_2_124230 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 = (17643 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (124230 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 (by decide)
    _ = (18060 : Int) - (417 : Int) :=
      sub_congr node_3_124230 node_3_2889
    _ = (17643 : Int) := by decide

theorem node_8_2643 : count [19, 17, 13, 11, 7, 5, 3, 2] 2643 = (447 : Int) := by
  decide

theorem node_8_114 : count [19, 17, 13, 11, 7, 5, 3, 2] 114 = (23 : Int) := by
  decide

theorem node_7_2643 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2643 = (424 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2643 = count [19, 17, 13, 11, 7, 5, 3, 2] 2643 - count [19, 17, 13, 11, 7, 5, 3, 2] (2643 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2643 (by decide)
    _ = (447 : Int) - (23 : Int) :=
      sub_congr node_8_2643 node_8_114
    _ = (424 : Int) := by decide

theorem node_8_91 : count [19, 17, 13, 11, 7, 5, 3, 2] 91 = (17 : Int) := by
  decide

theorem node_7_91 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 91 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 91 = count [19, 17, 13, 11, 7, 5, 3, 2] 91 - count [19, 17, 13, 11, 7, 5, 3, 2] (91 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 91 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_91 node_8_3
    _ = (16 : Int) := by decide

theorem node_6_2643 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2643 = (408 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2643 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2643 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2643 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2643 (by decide)
    _ = (424 : Int) - (16 : Int) :=
      sub_congr node_7_2643 node_7_91
    _ = (408 : Int) := by decide

theorem node_8_85 : count [19, 17, 13, 11, 7, 5, 3, 2] 85 = (16 : Int) := by
  decide

theorem node_7_85 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 85 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 85 = count [19, 17, 13, 11, 7, 5, 3, 2] 85 - count [19, 17, 13, 11, 7, 5, 3, 2] (85 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 85 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_85 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_85 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85 = (14 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 85 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 85 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (85 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 85 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_7_85 node_7_2
    _ = (14 : Int) := by decide

theorem node_5_2643 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2643 = (394 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2643 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2643 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2643 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2643 (by decide)
    _ = (408 : Int) - (14 : Int) :=
      sub_congr node_6_2643 node_6_85
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

theorem node_4_2643 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2643 = (384 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2643 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2643 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2643 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2643 (by decide)
    _ = (394 : Int) - (10 : Int) :=
      sub_congr node_5_2643 node_5_71
    _ = (384 : Int) := by decide

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

theorem node_5_64 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = (8 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (64 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_6_64 node_6_2
    _ = (8 : Int) := by decide

theorem node_4_64 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = (7 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (64 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_5_64 node_5_1
    _ = (7 : Int) := by decide

theorem node_3_2643 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2643 = (377 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2643 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2643 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2643 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2643 (by decide)
    _ = (384 : Int) - (7 : Int) :=
      sub_congr node_4_2643 node_4_64
    _ = (377 : Int) := by decide

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

theorem node_4_61 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = (7 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (61 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_5_61 node_5_1
    _ = (7 : Int) := by decide

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_1 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_1 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_61 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = (6 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (61 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 61 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_4_61 node_4_1
    _ = (6 : Int) := by decide

theorem node_2_2643 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2643 = (371 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2643 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2643 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2643 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2643 (by decide)
    _ = (377 : Int) - (6 : Int) :=
      sub_congr node_3_2643 node_3_61
    _ = (371 : Int) := by decide

theorem node_1_124230 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 = (17272 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (124230 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 (by decide)
    _ = (17643 : Int) - (371 : Int) :=
      sub_congr node_2_124230 node_2_2643
    _ = (17272 : Int) := by decide

theorem node_8_2343 : count [19, 17, 13, 11, 7, 5, 3, 2] 2343 = (397 : Int) := by
  decide

theorem node_8_101 : count [19, 17, 13, 11, 7, 5, 3, 2] 101 = (19 : Int) := by
  decide

theorem node_7_2343 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2343 = (378 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2343 = count [19, 17, 13, 11, 7, 5, 3, 2] 2343 - count [19, 17, 13, 11, 7, 5, 3, 2] (2343 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2343 (by decide)
    _ = (397 : Int) - (19 : Int) :=
      sub_congr node_8_2343 node_8_101
    _ = (378 : Int) := by decide

theorem node_8_80 : count [19, 17, 13, 11, 7, 5, 3, 2] 80 = (15 : Int) := by
  decide

theorem node_7_80 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = (14 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = count [19, 17, 13, 11, 7, 5, 3, 2] 80 - count [19, 17, 13, 11, 7, 5, 3, 2] (80 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 80 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_8_80 node_8_3
    _ = (14 : Int) := by decide

theorem node_6_2343 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2343 = (364 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2343 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2343 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2343 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2343 (by decide)
    _ = (378 : Int) - (14 : Int) :=
      sub_congr node_7_2343 node_7_80
    _ = (364 : Int) := by decide

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

theorem node_5_2343 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2343 = (352 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2343 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2343 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2343 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2343 (by decide)
    _ = (364 : Int) - (12 : Int) :=
      sub_congr node_6_2343 node_6_75
    _ = (352 : Int) := by decide

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

theorem node_4_2343 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2343 = (344 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2343 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2343 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2343 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2343 (by decide)
    _ = (352 : Int) - (8 : Int) :=
      sub_congr node_5_2343 node_5_63
    _ = (344 : Int) := by decide

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

theorem node_4_57 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = (5 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (57 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_5_57 node_5_1
    _ = (5 : Int) := by decide

theorem node_3_2343 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2343 = (339 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2343 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2343 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2343 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2343 (by decide)
    _ = (344 : Int) - (5 : Int) :=
      sub_congr node_4_2343 node_4_57
    _ = (339 : Int) := by decide

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

theorem node_3_54 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 = (4 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (54 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 54 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_4_54 node_4_1
    _ = (4 : Int) := by decide

theorem node_2_2343 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2343 = (335 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2343 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2343 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2343 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2343 (by decide)
    _ = (339 : Int) - (4 : Int) :=
      sub_congr node_3_2343 node_3_54
    _ = (335 : Int) := by decide

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

theorem node_3_49 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = (3 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (49 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_4_49 node_4_1
    _ = (3 : Int) := by decide

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_1 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_1 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_49 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = (2 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (49 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_3_49 node_3_1
    _ = (2 : Int) := by decide

theorem node_1_2343 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2343 = (333 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2343 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2343 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2343 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2343 (by decide)
    _ = (335 : Int) - (2 : Int) :=
      sub_congr node_2_2343 node_2_49
    _ = (333 : Int) := by decide

theorem node_0_124230 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 = (16939 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (124230 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 124230 (by decide)
    _ = (17272 : Int) - (333 : Int) :=
      sub_congr node_1_124230 node_1_2343
    _ = (16939 : Int) := by decide

theorem node_8_125440 : count [19, 17, 13, 11, 7, 5, 3, 2] 125440 = (21450 : Int) := by
  decide

theorem node_8_5453 : count [19, 17, 13, 11, 7, 5, 3, 2] 5453 = (929 : Int) := by
  decide

theorem node_7_125440 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = (20521 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = count [19, 17, 13, 11, 7, 5, 3, 2] 125440 - count [19, 17, 13, 11, 7, 5, 3, 2] (125440 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 125440 (by decide)
    _ = (21450 : Int) - (929 : Int) :=
      sub_congr node_8_125440 node_8_5453
    _ = (20521 : Int) := by decide

theorem node_8_4325 : count [19, 17, 13, 11, 7, 5, 3, 2] 4325 = (737 : Int) := by
  decide

theorem node_8_188 : count [19, 17, 13, 11, 7, 5, 3, 2] 188 = (35 : Int) := by
  decide

theorem node_7_4325 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4325 = (702 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4325 = count [19, 17, 13, 11, 7, 5, 3, 2] 4325 - count [19, 17, 13, 11, 7, 5, 3, 2] (4325 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4325 (by decide)
    _ = (737 : Int) - (35 : Int) :=
      sub_congr node_8_4325 node_8_188
    _ = (702 : Int) := by decide

theorem node_6_125440 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = (19819 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (125440 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 (by decide)
    _ = (20521 : Int) - (702 : Int) :=
      sub_congr node_7_125440 node_7_4325
    _ = (19819 : Int) := by decide

theorem node_8_4046 : count [19, 17, 13, 11, 7, 5, 3, 2] 4046 = (689 : Int) := by
  decide

theorem node_8_175 : count [19, 17, 13, 11, 7, 5, 3, 2] 175 = (33 : Int) := by
  decide

theorem node_7_4046 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4046 = (656 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4046 = count [19, 17, 13, 11, 7, 5, 3, 2] 4046 - count [19, 17, 13, 11, 7, 5, 3, 2] (4046 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4046 (by decide)
    _ = (689 : Int) - (33 : Int) :=
      sub_congr node_8_4046 node_8_175
    _ = (656 : Int) := by decide

theorem node_8_139 : count [19, 17, 13, 11, 7, 5, 3, 2] 139 = (27 : Int) := by
  decide

theorem node_7_139 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 139 = (26 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 139 = count [19, 17, 13, 11, 7, 5, 3, 2] 139 - count [19, 17, 13, 11, 7, 5, 3, 2] (139 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 139 (by decide)
    _ = (27 : Int) - (1 : Int) :=
      sub_congr node_8_139 node_8_6
    _ = (26 : Int) := by decide

theorem node_6_4046 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4046 = (630 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4046 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4046 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (4046 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 4046 (by decide)
    _ = (656 : Int) - (26 : Int) :=
      sub_congr node_7_4046 node_7_139
    _ = (630 : Int) := by decide

theorem node_5_125440 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = (19189 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (125440 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 (by decide)
    _ = (19819 : Int) - (630 : Int) :=
      sub_congr node_6_125440 node_6_4046
    _ = (19189 : Int) := by decide

theorem node_8_3390 : count [19, 17, 13, 11, 7, 5, 3, 2] 3390 = (576 : Int) := by
  decide

theorem node_8_147 : count [19, 17, 13, 11, 7, 5, 3, 2] 147 = (27 : Int) := by
  decide

theorem node_7_3390 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3390 = (549 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3390 = count [19, 17, 13, 11, 7, 5, 3, 2] 3390 - count [19, 17, 13, 11, 7, 5, 3, 2] (3390 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3390 (by decide)
    _ = (576 : Int) - (27 : Int) :=
      sub_congr node_8_3390 node_8_147
    _ = (549 : Int) := by decide

theorem node_8_116 : count [19, 17, 13, 11, 7, 5, 3, 2] 116 = (23 : Int) := by
  decide

theorem node_7_116 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 116 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 116 = count [19, 17, 13, 11, 7, 5, 3, 2] 116 - count [19, 17, 13, 11, 7, 5, 3, 2] (116 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 116 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_116 node_8_5
    _ = (22 : Int) := by decide

theorem node_6_3390 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3390 = (527 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3390 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3390 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3390 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3390 (by decide)
    _ = (549 : Int) - (22 : Int) :=
      sub_congr node_7_3390 node_7_116
    _ = (527 : Int) := by decide

theorem node_8_109 : count [19, 17, 13, 11, 7, 5, 3, 2] 109 = (22 : Int) := by
  decide

theorem node_7_109 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 109 = (21 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 109 = count [19, 17, 13, 11, 7, 5, 3, 2] 109 - count [19, 17, 13, 11, 7, 5, 3, 2] (109 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 109 (by decide)
    _ = (22 : Int) - (1 : Int) :=
      sub_congr node_8_109 node_8_4
    _ = (21 : Int) := by decide

theorem node_6_109 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109 = (20 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 109 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 109 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (109 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 109 (by decide)
    _ = (21 : Int) - (1 : Int) :=
      sub_congr node_7_109 node_7_3
    _ = (20 : Int) := by decide

theorem node_5_3390 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3390 = (507 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3390 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3390 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3390 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3390 (by decide)
    _ = (527 : Int) - (20 : Int) :=
      sub_congr node_6_3390 node_6_109
    _ = (507 : Int) := by decide

theorem node_4_125440 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = (18682 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (125440 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 (by decide)
    _ = (19189 : Int) - (507 : Int) :=
      sub_congr node_5_125440 node_5_3390
    _ = (18682 : Int) := by decide

theorem node_8_3059 : count [19, 17, 13, 11, 7, 5, 3, 2] 3059 = (519 : Int) := by
  decide

theorem node_8_133 : count [19, 17, 13, 11, 7, 5, 3, 2] 133 = (25 : Int) := by
  decide

theorem node_7_3059 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 = (494 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 = count [19, 17, 13, 11, 7, 5, 3, 2] 3059 - count [19, 17, 13, 11, 7, 5, 3, 2] (3059 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3059 (by decide)
    _ = (519 : Int) - (25 : Int) :=
      sub_congr node_8_3059 node_8_133
    _ = (494 : Int) := by decide

theorem node_8_105 : count [19, 17, 13, 11, 7, 5, 3, 2] 105 = (20 : Int) := by
  decide

theorem node_7_105 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 105 = (19 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 105 = count [19, 17, 13, 11, 7, 5, 3, 2] 105 - count [19, 17, 13, 11, 7, 5, 3, 2] (105 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 105 (by decide)
    _ = (20 : Int) - (1 : Int) :=
      sub_congr node_8_105 node_8_4
    _ = (19 : Int) := by decide

theorem node_6_3059 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 = (475 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3059 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 (by decide)
    _ = (494 : Int) - (19 : Int) :=
      sub_congr node_7_3059 node_7_105
    _ = (475 : Int) := by decide

theorem node_8_98 : count [19, 17, 13, 11, 7, 5, 3, 2] 98 = (18 : Int) := by
  decide

theorem node_7_98 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 98 = (17 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 98 = count [19, 17, 13, 11, 7, 5, 3, 2] 98 - count [19, 17, 13, 11, 7, 5, 3, 2] (98 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 98 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_8_98 node_8_4
    _ = (17 : Int) := by decide

theorem node_6_98 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98 = (16 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 98 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 98 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (98 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 98 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_7_98 node_7_3
    _ = (16 : Int) := by decide

theorem node_5_3059 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 = (459 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3059 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 (by decide)
    _ = (475 : Int) - (16 : Int) :=
      sub_congr node_6_3059 node_6_98
    _ = (459 : Int) := by decide

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

theorem node_5_82 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = (12 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (82 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_6_82 node_6_2
    _ = (12 : Int) := by decide

theorem node_4_3059 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 = (447 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3059 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3059 (by decide)
    _ = (459 : Int) - (12 : Int) :=
      sub_congr node_5_3059 node_5_82
    _ = (447 : Int) := by decide

theorem node_3_125440 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = (18235 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (125440 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 (by decide)
    _ = (18682 : Int) - (447 : Int) :=
      sub_congr node_4_125440 node_4_3059
    _ = (18235 : Int) := by decide

theorem node_8_2917 : count [19, 17, 13, 11, 7, 5, 3, 2] 2917 = (496 : Int) := by
  decide

theorem node_8_126 : count [19, 17, 13, 11, 7, 5, 3, 2] 126 = (23 : Int) := by
  decide

theorem node_7_2917 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 = (473 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 = count [19, 17, 13, 11, 7, 5, 3, 2] 2917 - count [19, 17, 13, 11, 7, 5, 3, 2] (2917 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2917 (by decide)
    _ = (496 : Int) - (23 : Int) :=
      sub_congr node_8_2917 node_8_126
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

theorem node_6_2917 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 = (456 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2917 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 (by decide)
    _ = (473 : Int) - (17 : Int) :=
      sub_congr node_7_2917 node_7_100
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

theorem node_5_2917 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 = (441 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2917 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 (by decide)
    _ = (456 : Int) - (15 : Int) :=
      sub_congr node_6_2917 node_6_94
    _ = (441 : Int) := by decide

theorem node_4_2917 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 = (430 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2917 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 (by decide)
    _ = (441 : Int) - (11 : Int) :=
      sub_congr node_5_2917 node_5_78
    _ = (430 : Int) := by decide

theorem node_4_71 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = (9 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (71 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_5_71 node_5_1
    _ = (9 : Int) := by decide

theorem node_3_2917 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 = (421 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2917 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2917 (by decide)
    _ = (430 : Int) - (9 : Int) :=
      sub_congr node_4_2917 node_4_71
    _ = (421 : Int) := by decide

theorem node_2_125440 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = (17814 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (125440 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 (by decide)
    _ = (18235 : Int) - (421 : Int) :=
      sub_congr node_3_125440 node_3_2917
    _ = (17814 : Int) := by decide

theorem node_8_2668 : count [19, 17, 13, 11, 7, 5, 3, 2] 2668 = (451 : Int) := by
  decide

theorem node_7_2668 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = (428 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = count [19, 17, 13, 11, 7, 5, 3, 2] 2668 - count [19, 17, 13, 11, 7, 5, 3, 2] (2668 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2668 (by decide)
    _ = (451 : Int) - (23 : Int) :=
      sub_congr node_8_2668 node_8_116
    _ = (428 : Int) := by decide

theorem node_8_92 : count [19, 17, 13, 11, 7, 5, 3, 2] 92 = (17 : Int) := by
  decide

theorem node_7_92 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 92 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 92 = count [19, 17, 13, 11, 7, 5, 3, 2] 92 - count [19, 17, 13, 11, 7, 5, 3, 2] (92 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 92 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_92 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_2668 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = (412 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2668 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 (by decide)
    _ = (428 : Int) - (16 : Int) :=
      sub_congr node_7_2668 node_7_92
    _ = (412 : Int) := by decide

theorem node_8_86 : count [19, 17, 13, 11, 7, 5, 3, 2] 86 = (16 : Int) := by
  decide

theorem node_7_86 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = count [19, 17, 13, 11, 7, 5, 3, 2] 86 - count [19, 17, 13, 11, 7, 5, 3, 2] (86 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 86 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_86 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_86 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = (14 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (86 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_7_86 node_7_2
    _ = (14 : Int) := by decide

theorem node_5_2668 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = (398 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2668 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 (by decide)
    _ = (412 : Int) - (14 : Int) :=
      sub_congr node_6_2668 node_6_86
    _ = (398 : Int) := by decide

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

theorem node_5_72 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = (10 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (72 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_6_72 node_6_2
    _ = (10 : Int) := by decide

theorem node_4_2668 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = (388 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2668 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 (by decide)
    _ = (398 : Int) - (10 : Int) :=
      sub_congr node_5_2668 node_5_72
    _ = (388 : Int) := by decide

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

theorem node_5_65 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = (8 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (65 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_6_65 node_6_2
    _ = (8 : Int) := by decide

theorem node_4_65 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = (7 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (65 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_5_65 node_5_1
    _ = (7 : Int) := by decide

theorem node_3_2668 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = (381 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2668 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 (by decide)
    _ = (388 : Int) - (7 : Int) :=
      sub_congr node_4_2668 node_4_65
    _ = (381 : Int) := by decide

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

theorem node_4_62 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = (7 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (62 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_5_62 node_5_1
    _ = (7 : Int) := by decide

theorem node_3_62 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = (6 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (62 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_4_62 node_4_1
    _ = (6 : Int) := by decide

theorem node_2_2668 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = (375 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2668 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2668 (by decide)
    _ = (381 : Int) - (6 : Int) :=
      sub_congr node_3_2668 node_3_62
    _ = (375 : Int) := by decide

theorem node_1_125440 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = (17439 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (125440 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 (by decide)
    _ = (17814 : Int) - (375 : Int) :=
      sub_congr node_2_125440 node_2_2668
    _ = (17439 : Int) := by decide

theorem node_8_2366 : count [19, 17, 13, 11, 7, 5, 3, 2] 2366 = (400 : Int) := by
  decide

theorem node_8_102 : count [19, 17, 13, 11, 7, 5, 3, 2] 102 = (19 : Int) := by
  decide

theorem node_7_2366 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = (381 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = count [19, 17, 13, 11, 7, 5, 3, 2] 2366 - count [19, 17, 13, 11, 7, 5, 3, 2] (2366 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2366 (by decide)
    _ = (400 : Int) - (19 : Int) :=
      sub_congr node_8_2366 node_8_102
    _ = (381 : Int) := by decide

theorem node_6_2366 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = (367 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2366 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 (by decide)
    _ = (381 : Int) - (14 : Int) :=
      sub_congr node_7_2366 node_7_81
    _ = (367 : Int) := by decide

theorem node_8_76 : count [19, 17, 13, 11, 7, 5, 3, 2] 76 = (14 : Int) := by
  decide

theorem node_7_76 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 76 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 76 = count [19, 17, 13, 11, 7, 5, 3, 2] 76 - count [19, 17, 13, 11, 7, 5, 3, 2] (76 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 76 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_76 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_76 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76 = (12 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 76 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 76 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (76 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 76 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_7_76 node_7_2
    _ = (12 : Int) := by decide

theorem node_5_2366 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = (355 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2366 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 (by decide)
    _ = (367 : Int) - (12 : Int) :=
      sub_congr node_6_2366 node_6_76
    _ = (355 : Int) := by decide

theorem node_4_2366 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = (347 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2366 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 (by decide)
    _ = (355 : Int) - (8 : Int) :=
      sub_congr node_5_2366 node_5_63
    _ = (347 : Int) := by decide

theorem node_3_2366 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = (342 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2366 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 (by decide)
    _ = (347 : Int) - (5 : Int) :=
      sub_congr node_4_2366 node_4_57
    _ = (342 : Int) := by decide

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

theorem node_3_55 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = (4 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (55 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 55 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_4_55 node_4_1
    _ = (4 : Int) := by decide

theorem node_2_2366 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = (338 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2366 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 (by decide)
    _ = (342 : Int) - (4 : Int) :=
      sub_congr node_3_2366 node_3_55
    _ = (338 : Int) := by decide

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

theorem node_3_50 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = (3 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (50 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_4_50 node_4_1
    _ = (3 : Int) := by decide

theorem node_2_50 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = (2 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (50 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_3_50 node_3_1
    _ = (2 : Int) := by decide

theorem node_1_2366 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = (336 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2366 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2366 (by decide)
    _ = (338 : Int) - (2 : Int) :=
      sub_congr node_2_2366 node_2_50
    _ = (336 : Int) := by decide

theorem node_0_125440 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = (17103 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (125440 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 125440 (by decide)
    _ = (17439 : Int) - (336 : Int) :=
      sub_congr node_1_125440 node_1_2366
    _ = (17103 : Int) := by decide

theorem node_8_126652 : count [19, 17, 13, 11, 7, 5, 3, 2] 126652 = (21663 : Int) := by
  decide

theorem node_8_5506 : count [19, 17, 13, 11, 7, 5, 3, 2] 5506 = (938 : Int) := by
  decide

theorem node_7_126652 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 = (20725 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 = count [19, 17, 13, 11, 7, 5, 3, 2] 126652 - count [19, 17, 13, 11, 7, 5, 3, 2] (126652 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 126652 (by decide)
    _ = (21663 : Int) - (938 : Int) :=
      sub_congr node_8_126652 node_8_5506
    _ = (20725 : Int) := by decide

theorem node_8_4367 : count [19, 17, 13, 11, 7, 5, 3, 2] 4367 = (745 : Int) := by
  decide

theorem node_8_189 : count [19, 17, 13, 11, 7, 5, 3, 2] 189 = (35 : Int) := by
  decide

theorem node_7_4367 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4367 = (710 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4367 = count [19, 17, 13, 11, 7, 5, 3, 2] 4367 - count [19, 17, 13, 11, 7, 5, 3, 2] (4367 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4367 (by decide)
    _ = (745 : Int) - (35 : Int) :=
      sub_congr node_8_4367 node_8_189
    _ = (710 : Int) := by decide

theorem node_6_126652 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 = (20015 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (126652 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 (by decide)
    _ = (20725 : Int) - (710 : Int) :=
      sub_congr node_7_126652 node_7_4367
    _ = (20015 : Int) := by decide

theorem node_8_4085 : count [19, 17, 13, 11, 7, 5, 3, 2] 4085 = (695 : Int) := by
  decide

theorem node_8_177 : count [19, 17, 13, 11, 7, 5, 3, 2] 177 = (33 : Int) := by
  decide

theorem node_7_4085 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4085 = (662 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4085 = count [19, 17, 13, 11, 7, 5, 3, 2] 4085 - count [19, 17, 13, 11, 7, 5, 3, 2] (4085 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4085 (by decide)
    _ = (695 : Int) - (33 : Int) :=
      sub_congr node_8_4085 node_8_177
    _ = (662 : Int) := by decide

theorem node_8_140 : count [19, 17, 13, 11, 7, 5, 3, 2] 140 = (27 : Int) := by
  decide

theorem node_7_140 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 140 = (26 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 140 = count [19, 17, 13, 11, 7, 5, 3, 2] 140 - count [19, 17, 13, 11, 7, 5, 3, 2] (140 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 140 (by decide)
    _ = (27 : Int) - (1 : Int) :=
      sub_congr node_8_140 node_8_6
    _ = (26 : Int) := by decide

theorem node_6_4085 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4085 = (636 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4085 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4085 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (4085 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 4085 (by decide)
    _ = (662 : Int) - (26 : Int) :=
      sub_congr node_7_4085 node_7_140
    _ = (636 : Int) := by decide

theorem node_5_126652 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 = (19379 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (126652 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 (by decide)
    _ = (20015 : Int) - (636 : Int) :=
      sub_congr node_6_126652 node_6_4085
    _ = (19379 : Int) := by decide

theorem node_8_3423 : count [19, 17, 13, 11, 7, 5, 3, 2] 3423 = (581 : Int) := by
  decide

theorem node_8_148 : count [19, 17, 13, 11, 7, 5, 3, 2] 148 = (27 : Int) := by
  decide

theorem node_7_3423 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3423 = (554 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3423 = count [19, 17, 13, 11, 7, 5, 3, 2] 3423 - count [19, 17, 13, 11, 7, 5, 3, 2] (3423 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3423 (by decide)
    _ = (581 : Int) - (27 : Int) :=
      sub_congr node_8_3423 node_8_148
    _ = (554 : Int) := by decide

theorem node_8_118 : count [19, 17, 13, 11, 7, 5, 3, 2] 118 = (23 : Int) := by
  decide

theorem node_7_118 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 118 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 118 = count [19, 17, 13, 11, 7, 5, 3, 2] 118 - count [19, 17, 13, 11, 7, 5, 3, 2] (118 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 118 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_118 node_8_5
    _ = (22 : Int) := by decide

theorem node_6_3423 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3423 = (532 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3423 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3423 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3423 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3423 (by decide)
    _ = (554 : Int) - (22 : Int) :=
      sub_congr node_7_3423 node_7_118
    _ = (532 : Int) := by decide

theorem node_8_110 : count [19, 17, 13, 11, 7, 5, 3, 2] 110 = (22 : Int) := by
  decide

theorem node_7_110 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 110 = (21 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 110 = count [19, 17, 13, 11, 7, 5, 3, 2] 110 - count [19, 17, 13, 11, 7, 5, 3, 2] (110 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 110 (by decide)
    _ = (22 : Int) - (1 : Int) :=
      sub_congr node_8_110 node_8_4
    _ = (21 : Int) := by decide

theorem node_6_110 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110 = (20 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 110 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 110 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (110 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 110 (by decide)
    _ = (21 : Int) - (1 : Int) :=
      sub_congr node_7_110 node_7_3
    _ = (20 : Int) := by decide

theorem node_5_3423 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3423 = (512 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3423 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3423 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3423 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3423 (by decide)
    _ = (532 : Int) - (20 : Int) :=
      sub_congr node_6_3423 node_6_110
    _ = (512 : Int) := by decide

theorem node_4_126652 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 = (18867 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (126652 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 (by decide)
    _ = (19379 : Int) - (512 : Int) :=
      sub_congr node_5_126652 node_5_3423
    _ = (18867 : Int) := by decide

theorem node_8_3089 : count [19, 17, 13, 11, 7, 5, 3, 2] 3089 = (525 : Int) := by
  decide

theorem node_8_134 : count [19, 17, 13, 11, 7, 5, 3, 2] 134 = (25 : Int) := by
  decide

theorem node_7_3089 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3089 = (500 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3089 = count [19, 17, 13, 11, 7, 5, 3, 2] 3089 - count [19, 17, 13, 11, 7, 5, 3, 2] (3089 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3089 (by decide)
    _ = (525 : Int) - (25 : Int) :=
      sub_congr node_8_3089 node_8_134
    _ = (500 : Int) := by decide

theorem node_8_106 : count [19, 17, 13, 11, 7, 5, 3, 2] 106 = (20 : Int) := by
  decide

theorem node_7_106 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 106 = (19 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 106 = count [19, 17, 13, 11, 7, 5, 3, 2] 106 - count [19, 17, 13, 11, 7, 5, 3, 2] (106 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 106 (by decide)
    _ = (20 : Int) - (1 : Int) :=
      sub_congr node_8_106 node_8_4
    _ = (19 : Int) := by decide

theorem node_6_3089 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3089 = (481 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3089 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3089 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3089 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3089 (by decide)
    _ = (500 : Int) - (19 : Int) :=
      sub_congr node_7_3089 node_7_106
    _ = (481 : Int) := by decide

theorem node_6_99 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99 = (16 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 99 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 99 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (99 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 99 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_7_99 node_7_3
    _ = (16 : Int) := by decide

theorem node_5_3089 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3089 = (465 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3089 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3089 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3089 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3089 (by decide)
    _ = (481 : Int) - (16 : Int) :=
      sub_congr node_6_3089 node_6_99
    _ = (465 : Int) := by decide

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

theorem node_5_83 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83 = (13 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (83 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_6_83 node_6_2
    _ = (13 : Int) := by decide

theorem node_4_3089 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3089 = (452 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3089 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3089 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3089 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3089 (by decide)
    _ = (465 : Int) - (13 : Int) :=
      sub_congr node_5_3089 node_5_83
    _ = (452 : Int) := by decide

theorem node_3_126652 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 = (18415 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (126652 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 (by decide)
    _ = (18867 : Int) - (452 : Int) :=
      sub_congr node_4_126652 node_4_3089
    _ = (18415 : Int) := by decide

theorem node_8_2945 : count [19, 17, 13, 11, 7, 5, 3, 2] 2945 = (501 : Int) := by
  decide

theorem node_8_128 : count [19, 17, 13, 11, 7, 5, 3, 2] 128 = (24 : Int) := by
  decide

theorem node_7_2945 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2945 = (477 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2945 = count [19, 17, 13, 11, 7, 5, 3, 2] 2945 - count [19, 17, 13, 11, 7, 5, 3, 2] (2945 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2945 (by decide)
    _ = (501 : Int) - (24 : Int) :=
      sub_congr node_8_2945 node_8_128
    _ = (477 : Int) := by decide

theorem node_7_101 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 101 = (18 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 101 = count [19, 17, 13, 11, 7, 5, 3, 2] 101 - count [19, 17, 13, 11, 7, 5, 3, 2] (101 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 101 (by decide)
    _ = (19 : Int) - (1 : Int) :=
      sub_congr node_8_101 node_8_4
    _ = (18 : Int) := by decide

theorem node_6_2945 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2945 = (459 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2945 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2945 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2945 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2945 (by decide)
    _ = (477 : Int) - (18 : Int) :=
      sub_congr node_7_2945 node_7_101
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

theorem node_5_2945 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2945 = (444 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2945 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2945 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2945 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2945 (by decide)
    _ = (459 : Int) - (15 : Int) :=
      sub_congr node_6_2945 node_6_95
    _ = (444 : Int) := by decide

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

theorem node_5_79 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79 = (12 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (79 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 79 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_6_79 node_6_2
    _ = (12 : Int) := by decide

theorem node_4_2945 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2945 = (432 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2945 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2945 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2945 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2945 (by decide)
    _ = (444 : Int) - (12 : Int) :=
      sub_congr node_5_2945 node_5_79
    _ = (432 : Int) := by decide

theorem node_3_2945 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2945 = (423 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2945 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2945 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2945 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2945 (by decide)
    _ = (432 : Int) - (9 : Int) :=
      sub_congr node_4_2945 node_4_71
    _ = (423 : Int) := by decide

theorem node_2_126652 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 = (17992 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (126652 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 (by decide)
    _ = (18415 : Int) - (423 : Int) :=
      sub_congr node_3_126652 node_3_2945
    _ = (17992 : Int) := by decide

theorem node_8_2694 : count [19, 17, 13, 11, 7, 5, 3, 2] 2694 = (457 : Int) := by
  decide

theorem node_8_117 : count [19, 17, 13, 11, 7, 5, 3, 2] 117 = (23 : Int) := by
  decide

theorem node_7_2694 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 = (434 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 = count [19, 17, 13, 11, 7, 5, 3, 2] 2694 - count [19, 17, 13, 11, 7, 5, 3, 2] (2694 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2694 (by decide)
    _ = (457 : Int) - (23 : Int) :=
      sub_congr node_8_2694 node_8_117
    _ = (434 : Int) := by decide

theorem node_6_2694 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 = (418 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2694 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 (by decide)
    _ = (434 : Int) - (16 : Int) :=
      sub_congr node_7_2694 node_7_92
    _ = (418 : Int) := by decide

theorem node_5_2694 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 = (404 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2694 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 (by decide)
    _ = (418 : Int) - (14 : Int) :=
      sub_congr node_6_2694 node_6_86
    _ = (404 : Int) := by decide

theorem node_4_2694 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 = (394 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2694 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 (by decide)
    _ = (404 : Int) - (10 : Int) :=
      sub_congr node_5_2694 node_5_72
    _ = (394 : Int) := by decide

theorem node_3_2694 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 = (387 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2694 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 (by decide)
    _ = (394 : Int) - (7 : Int) :=
      sub_congr node_4_2694 node_4_65
    _ = (387 : Int) := by decide

theorem node_2_2694 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 = (381 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2694 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 (by decide)
    _ = (387 : Int) - (6 : Int) :=
      sub_congr node_3_2694 node_3_62
    _ = (381 : Int) := by decide

theorem node_1_126652 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 = (17611 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (126652 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 (by decide)
    _ = (17992 : Int) - (381 : Int) :=
      sub_congr node_2_126652 node_2_2694
    _ = (17611 : Int) := by decide

theorem node_8_2389 : count [19, 17, 13, 11, 7, 5, 3, 2] 2389 = (406 : Int) := by
  decide

theorem node_8_103 : count [19, 17, 13, 11, 7, 5, 3, 2] 103 = (20 : Int) := by
  decide

theorem node_7_2389 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 = (386 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 = count [19, 17, 13, 11, 7, 5, 3, 2] 2389 - count [19, 17, 13, 11, 7, 5, 3, 2] (2389 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2389 (by decide)
    _ = (406 : Int) - (20 : Int) :=
      sub_congr node_8_2389 node_8_103
    _ = (386 : Int) := by decide

theorem node_6_2389 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 = (372 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2389 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 (by decide)
    _ = (386 : Int) - (14 : Int) :=
      sub_congr node_7_2389 node_7_82
    _ = (372 : Int) := by decide

theorem node_8_77 : count [19, 17, 13, 11, 7, 5, 3, 2] 77 = (14 : Int) := by
  decide

theorem node_7_77 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = count [19, 17, 13, 11, 7, 5, 3, 2] 77 - count [19, 17, 13, 11, 7, 5, 3, 2] (77 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 77 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_77 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_77 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = (12 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 77 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (77 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 77 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_7_77 node_7_2
    _ = (12 : Int) := by decide

theorem node_5_2389 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 = (360 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2389 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 (by decide)
    _ = (372 : Int) - (12 : Int) :=
      sub_congr node_6_2389 node_6_77
    _ = (360 : Int) := by decide

theorem node_4_2389 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 = (352 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2389 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 (by decide)
    _ = (360 : Int) - (8 : Int) :=
      sub_congr node_5_2389 node_5_64
    _ = (352 : Int) := by decide

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

theorem node_4_58 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = (5 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (58 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_5_58 node_5_1
    _ = (5 : Int) := by decide

theorem node_3_2389 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 = (347 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2389 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 (by decide)
    _ = (352 : Int) - (5 : Int) :=
      sub_congr node_4_2389 node_4_58
    _ = (347 : Int) := by decide

theorem node_2_2389 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 = (343 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2389 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 (by decide)
    _ = (347 : Int) - (4 : Int) :=
      sub_congr node_3_2389 node_3_55
    _ = (343 : Int) := by decide

theorem node_1_2389 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 = (341 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2389 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 (by decide)
    _ = (343 : Int) - (2 : Int) :=
      sub_congr node_2_2389 node_2_50
    _ = (341 : Int) := by decide

theorem node_0_126652 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 = (17270 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (126652 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 126652 (by decide)
    _ = (17611 : Int) - (341 : Int) :=
      sub_congr node_1_126652 node_1_2389
    _ = (17270 : Int) := by decide

theorem node_8_127870 : count [19, 17, 13, 11, 7, 5, 3, 2] 127870 = (21869 : Int) := by
  decide

theorem node_8_5559 : count [19, 17, 13, 11, 7, 5, 3, 2] 5559 = (948 : Int) := by
  decide

theorem node_7_127870 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 = (20921 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 = count [19, 17, 13, 11, 7, 5, 3, 2] 127870 - count [19, 17, 13, 11, 7, 5, 3, 2] (127870 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 127870 (by decide)
    _ = (21869 : Int) - (948 : Int) :=
      sub_congr node_8_127870 node_8_5559
    _ = (20921 : Int) := by decide

theorem node_8_4409 : count [19, 17, 13, 11, 7, 5, 3, 2] 4409 = (753 : Int) := by
  decide

theorem node_8_191 : count [19, 17, 13, 11, 7, 5, 3, 2] 191 = (36 : Int) := by
  decide

theorem node_7_4409 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4409 = (717 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4409 = count [19, 17, 13, 11, 7, 5, 3, 2] 4409 - count [19, 17, 13, 11, 7, 5, 3, 2] (4409 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4409 (by decide)
    _ = (753 : Int) - (36 : Int) :=
      sub_congr node_8_4409 node_8_191
    _ = (717 : Int) := by decide

theorem node_6_127870 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 = (20204 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (127870 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 (by decide)
    _ = (20921 : Int) - (717 : Int) :=
      sub_congr node_7_127870 node_7_4409
    _ = (20204 : Int) := by decide

theorem node_8_4124 : count [19, 17, 13, 11, 7, 5, 3, 2] 4124 = (701 : Int) := by
  decide

theorem node_8_179 : count [19, 17, 13, 11, 7, 5, 3, 2] 179 = (34 : Int) := by
  decide

theorem node_7_4124 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4124 = (667 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4124 = count [19, 17, 13, 11, 7, 5, 3, 2] 4124 - count [19, 17, 13, 11, 7, 5, 3, 2] (4124 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4124 (by decide)
    _ = (701 : Int) - (34 : Int) :=
      sub_congr node_8_4124 node_8_179
    _ = (667 : Int) := by decide

theorem node_8_142 : count [19, 17, 13, 11, 7, 5, 3, 2] 142 = (27 : Int) := by
  decide

theorem node_7_142 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 142 = (26 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 142 = count [19, 17, 13, 11, 7, 5, 3, 2] 142 - count [19, 17, 13, 11, 7, 5, 3, 2] (142 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 142 (by decide)
    _ = (27 : Int) - (1 : Int) :=
      sub_congr node_8_142 node_8_6
    _ = (26 : Int) := by decide

theorem node_6_4124 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4124 = (641 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4124 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4124 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (4124 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 4124 (by decide)
    _ = (667 : Int) - (26 : Int) :=
      sub_congr node_7_4124 node_7_142
    _ = (641 : Int) := by decide

theorem node_5_127870 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 = (19563 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (127870 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 (by decide)
    _ = (20204 : Int) - (641 : Int) :=
      sub_congr node_6_127870 node_6_4124
    _ = (19563 : Int) := by decide

theorem node_8_3455 : count [19, 17, 13, 11, 7, 5, 3, 2] 3455 = (585 : Int) := by
  decide

theorem node_8_150 : count [19, 17, 13, 11, 7, 5, 3, 2] 150 = (28 : Int) := by
  decide

theorem node_7_3455 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3455 = (557 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3455 = count [19, 17, 13, 11, 7, 5, 3, 2] 3455 - count [19, 17, 13, 11, 7, 5, 3, 2] (3455 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3455 (by decide)
    _ = (585 : Int) - (28 : Int) :=
      sub_congr node_8_3455 node_8_150
    _ = (557 : Int) := by decide

theorem node_8_119 : count [19, 17, 13, 11, 7, 5, 3, 2] 119 = (23 : Int) := by
  decide

theorem node_7_119 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 119 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 119 = count [19, 17, 13, 11, 7, 5, 3, 2] 119 - count [19, 17, 13, 11, 7, 5, 3, 2] (119 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 119 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_119 node_8_5
    _ = (22 : Int) := by decide

theorem node_6_3455 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3455 = (535 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3455 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3455 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3455 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3455 (by decide)
    _ = (557 : Int) - (22 : Int) :=
      sub_congr node_7_3455 node_7_119
    _ = (535 : Int) := by decide

theorem node_8_111 : count [19, 17, 13, 11, 7, 5, 3, 2] 111 = (22 : Int) := by
  decide

theorem node_7_111 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 111 = (21 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 111 = count [19, 17, 13, 11, 7, 5, 3, 2] 111 - count [19, 17, 13, 11, 7, 5, 3, 2] (111 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 111 (by decide)
    _ = (22 : Int) - (1 : Int) :=
      sub_congr node_8_111 node_8_4
    _ = (21 : Int) := by decide

theorem node_6_111 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111 = (20 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 111 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 111 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (111 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 111 (by decide)
    _ = (21 : Int) - (1 : Int) :=
      sub_congr node_7_111 node_7_3
    _ = (20 : Int) := by decide

theorem node_5_3455 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3455 = (515 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3455 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3455 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3455 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3455 (by decide)
    _ = (535 : Int) - (20 : Int) :=
      sub_congr node_6_3455 node_6_111
    _ = (515 : Int) := by decide

theorem node_4_127870 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 = (19048 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (127870 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 (by decide)
    _ = (19563 : Int) - (515 : Int) :=
      sub_congr node_5_127870 node_5_3455
    _ = (19048 : Int) := by decide

theorem node_8_3118 : count [19, 17, 13, 11, 7, 5, 3, 2] 3118 = (527 : Int) := by
  decide

theorem node_8_135 : count [19, 17, 13, 11, 7, 5, 3, 2] 135 = (25 : Int) := by
  decide

theorem node_7_3118 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3118 = (502 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3118 = count [19, 17, 13, 11, 7, 5, 3, 2] 3118 - count [19, 17, 13, 11, 7, 5, 3, 2] (3118 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3118 (by decide)
    _ = (527 : Int) - (25 : Int) :=
      sub_congr node_8_3118 node_8_135
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

theorem node_6_3118 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3118 = (482 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3118 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3118 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3118 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3118 (by decide)
    _ = (502 : Int) - (20 : Int) :=
      sub_congr node_7_3118 node_7_107
    _ = (482 : Int) := by decide

theorem node_6_100 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100 = (16 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 100 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 100 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (100 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 100 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_7_100 node_7_3
    _ = (16 : Int) := by decide

theorem node_5_3118 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3118 = (466 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3118 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3118 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3118 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3118 (by decide)
    _ = (482 : Int) - (16 : Int) :=
      sub_congr node_6_3118 node_6_100
    _ = (466 : Int) := by decide

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

theorem node_5_84 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84 = (13 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (84 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_6_84 node_6_2
    _ = (13 : Int) := by decide

theorem node_4_3118 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3118 = (453 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3118 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3118 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3118 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3118 (by decide)
    _ = (466 : Int) - (13 : Int) :=
      sub_congr node_5_3118 node_5_84
    _ = (453 : Int) := by decide

theorem node_3_127870 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 = (18595 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (127870 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 (by decide)
    _ = (19048 : Int) - (453 : Int) :=
      sub_congr node_4_127870 node_4_3118
    _ = (18595 : Int) := by decide

theorem node_8_2973 : count [19, 17, 13, 11, 7, 5, 3, 2] 2973 = (506 : Int) := by
  decide

theorem node_8_129 : count [19, 17, 13, 11, 7, 5, 3, 2] 129 = (24 : Int) := by
  decide

theorem node_7_2973 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2973 = (482 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2973 = count [19, 17, 13, 11, 7, 5, 3, 2] 2973 - count [19, 17, 13, 11, 7, 5, 3, 2] (2973 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2973 (by decide)
    _ = (506 : Int) - (24 : Int) :=
      sub_congr node_8_2973 node_8_129
    _ = (482 : Int) := by decide

theorem node_7_102 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 102 = (18 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 102 = count [19, 17, 13, 11, 7, 5, 3, 2] 102 - count [19, 17, 13, 11, 7, 5, 3, 2] (102 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 102 (by decide)
    _ = (19 : Int) - (1 : Int) :=
      sub_congr node_8_102 node_8_4
    _ = (18 : Int) := by decide

theorem node_6_2973 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2973 = (464 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2973 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2973 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2973 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2973 (by decide)
    _ = (482 : Int) - (18 : Int) :=
      sub_congr node_7_2973 node_7_102
    _ = (464 : Int) := by decide

theorem node_5_2973 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2973 = (449 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2973 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2973 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2973 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2973 (by decide)
    _ = (464 : Int) - (15 : Int) :=
      sub_congr node_6_2973 node_6_95
    _ = (449 : Int) := by decide

theorem node_6_80 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = (13 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 80 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (80 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 80 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_7_80 node_7_2
    _ = (13 : Int) := by decide

theorem node_5_80 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = (12 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (80 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 80 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_6_80 node_6_2
    _ = (12 : Int) := by decide

theorem node_4_2973 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2973 = (437 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2973 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2973 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2973 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2973 (by decide)
    _ = (449 : Int) - (12 : Int) :=
      sub_congr node_5_2973 node_5_80
    _ = (437 : Int) := by decide

theorem node_4_72 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = (9 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (72 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 72 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_5_72 node_5_1
    _ = (9 : Int) := by decide

theorem node_3_2973 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2973 = (428 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2973 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2973 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2973 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2973 (by decide)
    _ = (437 : Int) - (9 : Int) :=
      sub_congr node_4_2973 node_4_72
    _ = (428 : Int) := by decide

theorem node_2_127870 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 = (18167 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (127870 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 (by decide)
    _ = (18595 : Int) - (428 : Int) :=
      sub_congr node_3_127870 node_3_2973
    _ = (18167 : Int) := by decide

theorem node_8_2720 : count [19, 17, 13, 11, 7, 5, 3, 2] 2720 = (463 : Int) := by
  decide

theorem node_7_2720 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2720 = (440 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2720 = count [19, 17, 13, 11, 7, 5, 3, 2] 2720 - count [19, 17, 13, 11, 7, 5, 3, 2] (2720 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2720 (by decide)
    _ = (463 : Int) - (23 : Int) :=
      sub_congr node_8_2720 node_8_118
    _ = (440 : Int) := by decide

theorem node_6_2720 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2720 = (424 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2720 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2720 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2720 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2720 (by decide)
    _ = (440 : Int) - (16 : Int) :=
      sub_congr node_7_2720 node_7_93
    _ = (424 : Int) := by decide

theorem node_8_87 : count [19, 17, 13, 11, 7, 5, 3, 2] 87 = (16 : Int) := by
  decide

theorem node_7_87 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = count [19, 17, 13, 11, 7, 5, 3, 2] 87 - count [19, 17, 13, 11, 7, 5, 3, 2] (87 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 87 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_87 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_87 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = (14 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 87 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 87 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (87 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 87 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_7_87 node_7_3
    _ = (14 : Int) := by decide

theorem node_5_2720 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2720 = (410 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2720 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2720 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2720 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2720 (by decide)
    _ = (424 : Int) - (14 : Int) :=
      sub_congr node_6_2720 node_6_87
    _ = (410 : Int) := by decide

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

theorem node_5_73 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73 = (11 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (73 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 73 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_6_73 node_6_2
    _ = (11 : Int) := by decide

theorem node_4_2720 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2720 = (399 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2720 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2720 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2720 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2720 (by decide)
    _ = (410 : Int) - (11 : Int) :=
      sub_congr node_5_2720 node_5_73
    _ = (399 : Int) := by decide

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

theorem node_4_66 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = (7 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (66 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_5_66 node_5_1
    _ = (7 : Int) := by decide

theorem node_3_2720 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2720 = (392 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2720 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2720 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2720 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2720 (by decide)
    _ = (399 : Int) - (7 : Int) :=
      sub_congr node_4_2720 node_4_66
    _ = (392 : Int) := by decide

theorem node_4_63 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 = (7 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (63 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_5_63 node_5_1
    _ = (7 : Int) := by decide

theorem node_3_63 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 = (6 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (63 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 63 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_4_63 node_4_1
    _ = (6 : Int) := by decide

theorem node_2_2720 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2720 = (386 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2720 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2720 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2720 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2720 (by decide)
    _ = (392 : Int) - (6 : Int) :=
      sub_congr node_3_2720 node_3_63
    _ = (386 : Int) := by decide

theorem node_1_127870 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 = (17781 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (127870 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 (by decide)
    _ = (18167 : Int) - (386 : Int) :=
      sub_congr node_2_127870 node_2_2720
    _ = (17781 : Int) := by decide

theorem node_8_2412 : count [19, 17, 13, 11, 7, 5, 3, 2] 2412 = (410 : Int) := by
  decide

theorem node_7_2412 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2412 = (390 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2412 = count [19, 17, 13, 11, 7, 5, 3, 2] 2412 - count [19, 17, 13, 11, 7, 5, 3, 2] (2412 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2412 (by decide)
    _ = (410 : Int) - (20 : Int) :=
      sub_congr node_8_2412 node_8_104
    _ = (390 : Int) := by decide

theorem node_6_2412 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2412 = (375 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2412 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2412 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2412 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2412 (by decide)
    _ = (390 : Int) - (15 : Int) :=
      sub_congr node_7_2412 node_7_83
    _ = (375 : Int) := by decide

theorem node_5_2412 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2412 = (363 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2412 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2412 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2412 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2412 (by decide)
    _ = (375 : Int) - (12 : Int) :=
      sub_congr node_6_2412 node_6_77
    _ = (363 : Int) := by decide

theorem node_4_2412 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2412 = (355 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2412 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2412 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2412 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2412 (by decide)
    _ = (363 : Int) - (8 : Int) :=
      sub_congr node_5_2412 node_5_65
    _ = (355 : Int) := by decide

theorem node_3_2412 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2412 = (350 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2412 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2412 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2412 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2412 (by decide)
    _ = (355 : Int) - (5 : Int) :=
      sub_congr node_4_2412 node_4_58
    _ = (350 : Int) := by decide

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

theorem node_3_56 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = (4 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (56 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 56 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_4_56 node_4_1
    _ = (4 : Int) := by decide

theorem node_2_2412 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2412 = (346 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2412 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2412 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2412 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2412 (by decide)
    _ = (350 : Int) - (4 : Int) :=
      sub_congr node_3_2412 node_3_56
    _ = (346 : Int) := by decide

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

theorem node_3_51 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = (3 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (51 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_4_51 node_4_1
    _ = (3 : Int) := by decide

theorem node_2_51 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = (2 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (51 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 51 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_3_51 node_3_1
    _ = (2 : Int) := by decide

theorem node_1_2412 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2412 = (344 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2412 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2412 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2412 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2412 (by decide)
    _ = (346 : Int) - (2 : Int) :=
      sub_congr node_2_2412 node_2_51
    _ = (344 : Int) := by decide

theorem node_0_127870 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 = (17437 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (127870 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 127870 (by decide)
    _ = (17781 : Int) - (344 : Int) :=
      sub_congr node_1_127870 node_1_2412
    _ = (17437 : Int) := by decide

theorem row_108 : count primes 124230 ≤ (16954 : Int) - 15 := by
  rw [show count primes 124230 = (16939 : Int) from node_0_124230]
  decide

theorem row_109 : count primes 125440 ≤ (17118 : Int) - 15 := by
  rw [show count primes 125440 = (17103 : Int) from node_0_125440]
  decide

theorem row_110 : count primes 126652 ≤ (17285 : Int) - 15 := by
  rw [show count primes 126652 = (17270 : Int) from node_0_126652]
  decide

theorem row_111 : count primes 127870 ≤ (17452 : Int) - 15 := by
  rw [show count primes 127870 = (17437 : Int) from node_0_127870]
  decide

def pairs : List (Nat × Nat) := [(124230, 16954), (125440, 17118), (126652, 17285), (127870, 17452)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl | rfl | rfl
  · exact row_108
  · exact row_109
  · exact row_110
  · exact row_111
end B699CorePrunedSieve.CoreDagBatch28
#check @B699CorePrunedSieve.CoreDagBatch28.pairs_valid
#print axioms B699CorePrunedSieve.CoreDagBatch28.pairs_valid
