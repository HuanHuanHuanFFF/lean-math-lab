module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.ModernPrunedCount
import all research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.ModernPrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
public section
namespace B699ModernPrunedSieve.ModernSingle108
open B699ModernPrunedSieve

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

theorem row_108 : count primes 124230 ≤ (16954 : Int) - 15 := by
  rw [show count primes 124230 = (16939 : Int) from node_0_124230]
  decide

def pairs : List (Nat × Nat) := [(124230, 16954)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl
  · exact row_108
end B699ModernPrunedSieve.ModernSingle108
#check @B699ModernPrunedSieve.ModernSingle108.pairs_valid
#print axioms B699ModernPrunedSieve.ModernSingle108.pairs_valid
