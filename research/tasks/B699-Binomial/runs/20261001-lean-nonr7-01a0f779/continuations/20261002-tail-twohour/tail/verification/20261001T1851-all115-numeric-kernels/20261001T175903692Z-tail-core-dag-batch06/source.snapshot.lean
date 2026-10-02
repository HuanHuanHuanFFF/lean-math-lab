import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreDagBatch06
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_6556 : count [19, 17, 13, 11, 7, 5, 3, 2] 6556 = (1122 : Int) := by
  decide

theorem node_8_285 : count [19, 17, 13, 11, 7, 5, 3, 2] 285 = (54 : Int) := by
  decide

theorem node_7_6556 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 = (1068 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 = count [19, 17, 13, 11, 7, 5, 3, 2] 6556 - count [19, 17, 13, 11, 7, 5, 3, 2] (6556 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 6556 (by decide)
    _ = (1122 : Int) - (54 : Int) :=
      sub_congr node_8_6556 node_8_285
    _ = (1068 : Int) := by decide

theorem node_8_226 : count [19, 17, 13, 11, 7, 5, 3, 2] 226 = (41 : Int) := by
  decide

theorem node_8_9 : count [19, 17, 13, 11, 7, 5, 3, 2] 9 = (1 : Int) := by
  decide

theorem node_7_226 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 226 = (40 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 226 = count [19, 17, 13, 11, 7, 5, 3, 2] 226 - count [19, 17, 13, 11, 7, 5, 3, 2] (226 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 226 (by decide)
    _ = (41 : Int) - (1 : Int) :=
      sub_congr node_8_226 node_8_9
    _ = (40 : Int) := by decide

theorem node_6_6556 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 = (1028 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (6556 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 (by decide)
    _ = (1068 : Int) - (40 : Int) :=
      sub_congr node_7_6556 node_7_226
    _ = (1028 : Int) := by decide

theorem node_8_211 : count [19, 17, 13, 11, 7, 5, 3, 2] 211 = (40 : Int) := by
  decide

theorem node_7_211 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 211 = (39 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 211 = count [19, 17, 13, 11, 7, 5, 3, 2] 211 - count [19, 17, 13, 11, 7, 5, 3, 2] (211 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 211 (by decide)
    _ = (40 : Int) - (1 : Int) :=
      sub_congr node_8_211 node_8_9
    _ = (39 : Int) := by decide

theorem node_8_7 : count [19, 17, 13, 11, 7, 5, 3, 2] 7 = (1 : Int) := by
  decide

theorem node_8_0 : count [19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [19, 17, 13, 11, 7, 5, 3, 2]

theorem node_7_7 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 7 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 7 = count [19, 17, 13, 11, 7, 5, 3, 2] 7 - count [19, 17, 13, 11, 7, 5, 3, 2] (7 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 7 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_7 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_211 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 211 = (38 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 211 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 211 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (211 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 211 (by decide)
    _ = (39 : Int) - (1 : Int) :=
      sub_congr node_7_211 node_7_7
    _ = (38 : Int) := by decide

theorem node_5_6556 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 = (990 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (6556 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 (by decide)
    _ = (1028 : Int) - (38 : Int) :=
      sub_congr node_6_6556 node_6_211
    _ = (990 : Int) := by decide

theorem node_8_177 : count [19, 17, 13, 11, 7, 5, 3, 2] 177 = (33 : Int) := by
  decide

theorem node_7_177 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 177 = (32 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 177 = count [19, 17, 13, 11, 7, 5, 3, 2] 177 - count [19, 17, 13, 11, 7, 5, 3, 2] (177 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 177 (by decide)
    _ = (33 : Int) - (1 : Int) :=
      sub_congr node_8_177 node_8_7
    _ = (32 : Int) := by decide

theorem node_8_6 : count [19, 17, 13, 11, 7, 5, 3, 2] 6 = (1 : Int) := by
  decide

theorem node_7_6 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 6 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 6 = count [19, 17, 13, 11, 7, 5, 3, 2] 6 - count [19, 17, 13, 11, 7, 5, 3, 2] (6 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 6 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_6 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_177 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 177 = (31 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 177 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 177 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (177 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 177 (by decide)
    _ = (32 : Int) - (1 : Int) :=
      sub_congr node_7_177 node_7_6
    _ = (31 : Int) := by decide

theorem node_8_5 : count [19, 17, 13, 11, 7, 5, 3, 2] 5 = (1 : Int) := by
  decide

theorem node_7_5 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 5 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 5 = count [19, 17, 13, 11, 7, 5, 3, 2] 5 - count [19, 17, 13, 11, 7, 5, 3, 2] (5 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 5 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_5 node_8_0
    _ = (1 : Int) := by decide

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_5 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 5 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (5 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 5 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_5 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_177 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 177 = (30 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 177 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 177 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (177 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 177 (by decide)
    _ = (31 : Int) - (1 : Int) :=
      sub_congr node_6_177 node_6_5
    _ = (30 : Int) := by decide

theorem node_4_6556 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 = (960 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (6556 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 (by decide)
    _ = (990 : Int) - (30 : Int) :=
      sub_congr node_5_6556 node_5_177
    _ = (960 : Int) := by decide

theorem node_8_159 : count [19, 17, 13, 11, 7, 5, 3, 2] 159 = (30 : Int) := by
  decide

theorem node_7_159 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 159 = (29 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 159 = count [19, 17, 13, 11, 7, 5, 3, 2] 159 - count [19, 17, 13, 11, 7, 5, 3, 2] (159 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 159 (by decide)
    _ = (30 : Int) - (1 : Int) :=
      sub_congr node_8_159 node_8_6
    _ = (29 : Int) := by decide

theorem node_6_159 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 159 = (28 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 159 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 159 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (159 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 159 (by decide)
    _ = (29 : Int) - (1 : Int) :=
      sub_congr node_7_159 node_7_5
    _ = (28 : Int) := by decide

theorem node_5_159 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 159 = (27 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 159 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 159 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (159 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 159 (by decide)
    _ = (28 : Int) - (1 : Int) :=
      sub_congr node_6_159 node_6_5
    _ = (27 : Int) := by decide

theorem node_8_4 : count [19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  decide

theorem node_7_4 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4 = count [19, 17, 13, 11, 7, 5, 3, 2] 4 - count [19, 17, 13, 11, 7, 5, 3, 2] (4 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_4 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_4 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (4 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 4 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_4 node_7_0
    _ = (1 : Int) := by decide

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_4 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (4 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_4 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_159 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 159 = (26 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 159 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 159 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (159 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 159 (by decide)
    _ = (27 : Int) - (1 : Int) :=
      sub_congr node_5_159 node_5_4
    _ = (26 : Int) := by decide

theorem node_3_6556 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 = (934 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (6556 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 (by decide)
    _ = (960 : Int) - (26 : Int) :=
      sub_congr node_4_6556 node_4_159
    _ = (934 : Int) := by decide

theorem node_8_152 : count [19, 17, 13, 11, 7, 5, 3, 2] 152 = (29 : Int) := by
  decide

theorem node_7_152 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 152 = (28 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 152 = count [19, 17, 13, 11, 7, 5, 3, 2] 152 - count [19, 17, 13, 11, 7, 5, 3, 2] (152 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 152 (by decide)
    _ = (29 : Int) - (1 : Int) :=
      sub_congr node_8_152 node_8_6
    _ = (28 : Int) := by decide

theorem node_6_152 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 152 = (27 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 152 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 152 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (152 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 152 (by decide)
    _ = (28 : Int) - (1 : Int) :=
      sub_congr node_7_152 node_7_5
    _ = (27 : Int) := by decide

theorem node_5_152 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 152 = (26 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 152 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 152 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (152 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 152 (by decide)
    _ = (27 : Int) - (1 : Int) :=
      sub_congr node_6_152 node_6_4
    _ = (26 : Int) := by decide

theorem node_4_152 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 152 = (25 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 152 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 152 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (152 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 152 (by decide)
    _ = (26 : Int) - (1 : Int) :=
      sub_congr node_5_152 node_5_4
    _ = (25 : Int) := by decide

theorem node_8_3 : count [19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  decide

theorem node_7_3 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = count [19, 17, 13, 11, 7, 5, 3, 2] 3 - count [19, 17, 13, 11, 7, 5, 3, 2] (3 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_3 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_3 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_3 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_3 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_3 node_6_0
    _ = (1 : Int) := by decide

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_3 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_3 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_152 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 152 = (24 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 152 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 152 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (152 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 152 (by decide)
    _ = (25 : Int) - (1 : Int) :=
      sub_congr node_4_152 node_4_3
    _ = (24 : Int) := by decide

theorem node_2_6556 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 = (910 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (6556 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 (by decide)
    _ = (934 : Int) - (24 : Int) :=
      sub_congr node_3_6556 node_3_152
    _ = (910 : Int) := by decide

theorem node_8_139 : count [19, 17, 13, 11, 7, 5, 3, 2] 139 = (27 : Int) := by
  decide

theorem node_7_139 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 139 = (26 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 139 = count [19, 17, 13, 11, 7, 5, 3, 2] 139 - count [19, 17, 13, 11, 7, 5, 3, 2] (139 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 139 (by decide)
    _ = (27 : Int) - (1 : Int) :=
      sub_congr node_8_139 node_8_6
    _ = (26 : Int) := by decide

theorem node_6_139 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 139 = (25 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 139 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 139 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (139 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 139 (by decide)
    _ = (26 : Int) - (1 : Int) :=
      sub_congr node_7_139 node_7_4
    _ = (25 : Int) := by decide

theorem node_5_139 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 139 = (24 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 139 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 139 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (139 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 139 (by decide)
    _ = (25 : Int) - (1 : Int) :=
      sub_congr node_6_139 node_6_4
    _ = (24 : Int) := by decide

theorem node_4_139 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 139 = (23 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 139 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 139 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (139 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 139 (by decide)
    _ = (24 : Int) - (1 : Int) :=
      sub_congr node_5_139 node_5_3
    _ = (23 : Int) := by decide

theorem node_3_139 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 139 = (22 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 139 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 139 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (139 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 139 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_4_139 node_4_3
    _ = (22 : Int) := by decide

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_3 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_3 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_139 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 139 = (21 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 139 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 139 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (139 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 139 (by decide)
    _ = (22 : Int) - (1 : Int) :=
      sub_congr node_3_139 node_3_3
    _ = (21 : Int) := by decide

theorem node_1_6556 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 = (889 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (6556 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 (by decide)
    _ = (910 : Int) - (21 : Int) :=
      sub_congr node_2_6556 node_2_139
    _ = (889 : Int) := by decide

theorem node_8_123 : count [19, 17, 13, 11, 7, 5, 3, 2] 123 = (23 : Int) := by
  decide

theorem node_7_123 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 123 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 123 = count [19, 17, 13, 11, 7, 5, 3, 2] 123 - count [19, 17, 13, 11, 7, 5, 3, 2] (123 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 123 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_123 node_8_5
    _ = (22 : Int) := by decide

theorem node_6_123 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123 = (21 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 123 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (123 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 123 (by decide)
    _ = (22 : Int) - (1 : Int) :=
      sub_congr node_7_123 node_7_4
    _ = (21 : Int) := by decide

theorem node_5_123 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123 = (20 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (123 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123 (by decide)
    _ = (21 : Int) - (1 : Int) :=
      sub_congr node_6_123 node_6_3
    _ = (20 : Int) := by decide

theorem node_4_123 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123 = (19 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (123 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123 (by decide)
    _ = (20 : Int) - (1 : Int) :=
      sub_congr node_5_123 node_5_3
    _ = (19 : Int) := by decide

theorem node_3_123 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123 = (18 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (123 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123 (by decide)
    _ = (19 : Int) - (1 : Int) :=
      sub_congr node_4_123 node_4_3
    _ = (18 : Int) := by decide

theorem node_8_2 : count [19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  decide

theorem node_7_2 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [19, 17, 13, 11, 7, 5, 3, 2] 2 - count [19, 17, 13, 11, 7, 5, 3, 2] (2 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_2 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_2 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_2 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_2 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_2 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_2 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_2 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_2 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_2 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_123 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123 = (17 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (123 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_3_123 node_3_2
    _ = (17 : Int) := by decide

theorem node_3_0 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_2_2 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_2 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_123 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123 = (16 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (123 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 123 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_2_123 node_2_2
    _ = (16 : Int) := by decide

theorem node_0_6556 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 = (873 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (6556 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6556 (by decide)
    _ = (889 : Int) - (16 : Int) :=
      sub_congr node_1_6556 node_1_123
    _ = (873 : Int) := by decide

theorem node_8_7740 : count [19, 17, 13, 11, 7, 5, 3, 2] 7740 = (1323 : Int) := by
  decide

theorem node_8_336 : count [19, 17, 13, 11, 7, 5, 3, 2] 336 = (60 : Int) := by
  decide

theorem node_7_7740 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 = (1263 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 = count [19, 17, 13, 11, 7, 5, 3, 2] 7740 - count [19, 17, 13, 11, 7, 5, 3, 2] (7740 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 7740 (by decide)
    _ = (1323 : Int) - (60 : Int) :=
      sub_congr node_8_7740 node_8_336
    _ = (1263 : Int) := by decide

theorem node_8_266 : count [19, 17, 13, 11, 7, 5, 3, 2] 266 = (49 : Int) := by
  decide

theorem node_8_11 : count [19, 17, 13, 11, 7, 5, 3, 2] 11 = (1 : Int) := by
  decide

theorem node_7_266 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 266 = (48 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 266 = count [19, 17, 13, 11, 7, 5, 3, 2] 266 - count [19, 17, 13, 11, 7, 5, 3, 2] (266 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 266 (by decide)
    _ = (49 : Int) - (1 : Int) :=
      sub_congr node_8_266 node_8_11
    _ = (48 : Int) := by decide

theorem node_6_7740 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 = (1215 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (7740 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 (by decide)
    _ = (1263 : Int) - (48 : Int) :=
      sub_congr node_7_7740 node_7_266
    _ = (1215 : Int) := by decide

theorem node_8_249 : count [19, 17, 13, 11, 7, 5, 3, 2] 249 = (46 : Int) := by
  decide

theorem node_8_10 : count [19, 17, 13, 11, 7, 5, 3, 2] 10 = (1 : Int) := by
  decide

theorem node_7_249 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 249 = (45 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 249 = count [19, 17, 13, 11, 7, 5, 3, 2] 249 - count [19, 17, 13, 11, 7, 5, 3, 2] (249 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 249 (by decide)
    _ = (46 : Int) - (1 : Int) :=
      sub_congr node_8_249 node_8_10
    _ = (45 : Int) := by decide

theorem node_8_8 : count [19, 17, 13, 11, 7, 5, 3, 2] 8 = (1 : Int) := by
  decide

theorem node_7_8 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 8 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 8 = count [19, 17, 13, 11, 7, 5, 3, 2] 8 - count [19, 17, 13, 11, 7, 5, 3, 2] (8 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 8 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_8 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_249 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 249 = (44 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 249 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 249 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (249 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 249 (by decide)
    _ = (45 : Int) - (1 : Int) :=
      sub_congr node_7_249 node_7_8
    _ = (44 : Int) := by decide

theorem node_5_7740 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 = (1171 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (7740 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 (by decide)
    _ = (1215 : Int) - (44 : Int) :=
      sub_congr node_6_7740 node_6_249
    _ = (1171 : Int) := by decide

theorem node_8_209 : count [19, 17, 13, 11, 7, 5, 3, 2] 209 = (39 : Int) := by
  decide

theorem node_7_209 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 209 = (38 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 209 = count [19, 17, 13, 11, 7, 5, 3, 2] 209 - count [19, 17, 13, 11, 7, 5, 3, 2] (209 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 209 (by decide)
    _ = (39 : Int) - (1 : Int) :=
      sub_congr node_8_209 node_8_9
    _ = (38 : Int) := by decide

theorem node_6_209 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 209 = (37 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 209 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 209 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (209 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 209 (by decide)
    _ = (38 : Int) - (1 : Int) :=
      sub_congr node_7_209 node_7_7
    _ = (37 : Int) := by decide

theorem node_6_6 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 6 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (6 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 6 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_6 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_209 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 209 = (36 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 209 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 209 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (209 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 209 (by decide)
    _ = (37 : Int) - (1 : Int) :=
      sub_congr node_6_209 node_6_6
    _ = (36 : Int) := by decide

theorem node_4_7740 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 = (1135 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (7740 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 (by decide)
    _ = (1171 : Int) - (36 : Int) :=
      sub_congr node_5_7740 node_5_209
    _ = (1135 : Int) := by decide

theorem node_8_188 : count [19, 17, 13, 11, 7, 5, 3, 2] 188 = (35 : Int) := by
  decide

theorem node_7_188 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 188 = (34 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 188 = count [19, 17, 13, 11, 7, 5, 3, 2] 188 - count [19, 17, 13, 11, 7, 5, 3, 2] (188 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 188 (by decide)
    _ = (35 : Int) - (1 : Int) :=
      sub_congr node_8_188 node_8_8
    _ = (34 : Int) := by decide

theorem node_6_188 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 188 = (33 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 188 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 188 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (188 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 188 (by decide)
    _ = (34 : Int) - (1 : Int) :=
      sub_congr node_7_188 node_7_6
    _ = (33 : Int) := by decide

theorem node_5_188 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 188 = (32 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 188 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 188 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (188 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 188 (by decide)
    _ = (33 : Int) - (1 : Int) :=
      sub_congr node_6_188 node_6_6
    _ = (32 : Int) := by decide

theorem node_5_5 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (5 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_5 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_188 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 188 = (31 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 188 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 188 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (188 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 188 (by decide)
    _ = (32 : Int) - (1 : Int) :=
      sub_congr node_5_188 node_5_5
    _ = (31 : Int) := by decide

theorem node_3_7740 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 = (1104 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (7740 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 (by decide)
    _ = (1135 : Int) - (31 : Int) :=
      sub_congr node_4_7740 node_4_188
    _ = (1104 : Int) := by decide

theorem node_8_180 : count [19, 17, 13, 11, 7, 5, 3, 2] 180 = (34 : Int) := by
  decide

theorem node_7_180 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 180 = (33 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 180 = count [19, 17, 13, 11, 7, 5, 3, 2] 180 - count [19, 17, 13, 11, 7, 5, 3, 2] (180 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 180 (by decide)
    _ = (34 : Int) - (1 : Int) :=
      sub_congr node_8_180 node_8_7
    _ = (33 : Int) := by decide

theorem node_6_180 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 180 = (32 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 180 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 180 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (180 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 180 (by decide)
    _ = (33 : Int) - (1 : Int) :=
      sub_congr node_7_180 node_7_6
    _ = (32 : Int) := by decide

theorem node_5_180 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 180 = (31 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 180 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 180 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (180 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 180 (by decide)
    _ = (32 : Int) - (1 : Int) :=
      sub_congr node_6_180 node_6_5
    _ = (31 : Int) := by decide

theorem node_4_180 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 180 = (30 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 180 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 180 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (180 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 180 (by decide)
    _ = (31 : Int) - (1 : Int) :=
      sub_congr node_5_180 node_5_4
    _ = (30 : Int) := by decide

theorem node_4_4 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (4 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_4 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_180 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 180 = (29 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 180 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 180 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (180 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 180 (by decide)
    _ = (30 : Int) - (1 : Int) :=
      sub_congr node_4_180 node_4_4
    _ = (29 : Int) := by decide

theorem node_2_7740 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 = (1075 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (7740 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 (by decide)
    _ = (1104 : Int) - (29 : Int) :=
      sub_congr node_3_7740 node_3_180
    _ = (1075 : Int) := by decide

theorem node_8_164 : count [19, 17, 13, 11, 7, 5, 3, 2] 164 = (31 : Int) := by
  decide

theorem node_7_164 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 164 = (30 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 164 = count [19, 17, 13, 11, 7, 5, 3, 2] 164 - count [19, 17, 13, 11, 7, 5, 3, 2] (164 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 164 (by decide)
    _ = (31 : Int) - (1 : Int) :=
      sub_congr node_8_164 node_8_7
    _ = (30 : Int) := by decide

theorem node_6_164 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 164 = (29 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 164 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 164 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (164 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 164 (by decide)
    _ = (30 : Int) - (1 : Int) :=
      sub_congr node_7_164 node_7_5
    _ = (29 : Int) := by decide

theorem node_5_164 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 164 = (28 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 164 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 164 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (164 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 164 (by decide)
    _ = (29 : Int) - (1 : Int) :=
      sub_congr node_6_164 node_6_5
    _ = (28 : Int) := by decide

theorem node_4_164 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 164 = (27 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 164 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 164 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (164 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 164 (by decide)
    _ = (28 : Int) - (1 : Int) :=
      sub_congr node_5_164 node_5_4
    _ = (27 : Int) := by decide

theorem node_3_164 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 164 = (26 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 164 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 164 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (164 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 164 (by decide)
    _ = (27 : Int) - (1 : Int) :=
      sub_congr node_4_164 node_4_4
    _ = (26 : Int) := by decide

theorem node_2_164 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 164 = (25 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 164 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 164 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (164 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 164 (by decide)
    _ = (26 : Int) - (1 : Int) :=
      sub_congr node_3_164 node_3_3
    _ = (25 : Int) := by decide

theorem node_1_7740 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 = (1050 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (7740 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 (by decide)
    _ = (1075 : Int) - (25 : Int) :=
      sub_congr node_2_7740 node_2_164
    _ = (1050 : Int) := by decide

theorem node_8_146 : count [19, 17, 13, 11, 7, 5, 3, 2] 146 = (27 : Int) := by
  decide

theorem node_7_146 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 146 = (26 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 146 = count [19, 17, 13, 11, 7, 5, 3, 2] 146 - count [19, 17, 13, 11, 7, 5, 3, 2] (146 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 146 (by decide)
    _ = (27 : Int) - (1 : Int) :=
      sub_congr node_8_146 node_8_6
    _ = (26 : Int) := by decide

theorem node_6_146 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 146 = (25 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 146 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 146 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (146 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 146 (by decide)
    _ = (26 : Int) - (1 : Int) :=
      sub_congr node_7_146 node_7_5
    _ = (25 : Int) := by decide

theorem node_5_146 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 146 = (24 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 146 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 146 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (146 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 146 (by decide)
    _ = (25 : Int) - (1 : Int) :=
      sub_congr node_6_146 node_6_4
    _ = (24 : Int) := by decide

theorem node_4_146 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 146 = (23 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 146 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 146 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (146 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 146 (by decide)
    _ = (24 : Int) - (1 : Int) :=
      sub_congr node_5_146 node_5_3
    _ = (23 : Int) := by decide

theorem node_3_146 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 146 = (22 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 146 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 146 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (146 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 146 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_4_146 node_4_3
    _ = (22 : Int) := by decide

theorem node_2_146 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 146 = (21 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 146 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 146 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (146 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 146 (by decide)
    _ = (22 : Int) - (1 : Int) :=
      sub_congr node_3_146 node_3_3
    _ = (21 : Int) := by decide

theorem node_2_3 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_3 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_146 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 146 = (20 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 146 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 146 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (146 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 146 (by decide)
    _ = (21 : Int) - (1 : Int) :=
      sub_congr node_2_146 node_2_3
    _ = (20 : Int) := by decide

theorem node_0_7740 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 = (1030 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (7740 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7740 (by decide)
    _ = (1050 : Int) - (20 : Int) :=
      sub_congr node_1_7740 node_1_146
    _ = (1030 : Int) := by decide

theorem node_8_8191 : count [19, 17, 13, 11, 7, 5, 3, 2] 8191 = (1401 : Int) := by
  decide

theorem node_8_356 : count [19, 17, 13, 11, 7, 5, 3, 2] 356 = (64 : Int) := by
  decide

theorem node_7_8191 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 = (1337 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 = count [19, 17, 13, 11, 7, 5, 3, 2] 8191 - count [19, 17, 13, 11, 7, 5, 3, 2] (8191 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 8191 (by decide)
    _ = (1401 : Int) - (64 : Int) :=
      sub_congr node_8_8191 node_8_356
    _ = (1337 : Int) := by decide

theorem node_8_282 : count [19, 17, 13, 11, 7, 5, 3, 2] 282 = (53 : Int) := by
  decide

theorem node_8_12 : count [19, 17, 13, 11, 7, 5, 3, 2] 12 = (1 : Int) := by
  decide

theorem node_7_282 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 282 = (52 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 282 = count [19, 17, 13, 11, 7, 5, 3, 2] 282 - count [19, 17, 13, 11, 7, 5, 3, 2] (282 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 282 (by decide)
    _ = (53 : Int) - (1 : Int) :=
      sub_congr node_8_282 node_8_12
    _ = (52 : Int) := by decide

theorem node_6_8191 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 = (1285 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (8191 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 (by decide)
    _ = (1337 : Int) - (52 : Int) :=
      sub_congr node_7_8191 node_7_282
    _ = (1285 : Int) := by decide

theorem node_8_264 : count [19, 17, 13, 11, 7, 5, 3, 2] 264 = (49 : Int) := by
  decide

theorem node_7_264 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 264 = (48 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 264 = count [19, 17, 13, 11, 7, 5, 3, 2] 264 - count [19, 17, 13, 11, 7, 5, 3, 2] (264 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 264 (by decide)
    _ = (49 : Int) - (1 : Int) :=
      sub_congr node_8_264 node_8_11
    _ = (48 : Int) := by decide

theorem node_7_9 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 9 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 9 = count [19, 17, 13, 11, 7, 5, 3, 2] 9 - count [19, 17, 13, 11, 7, 5, 3, 2] (9 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 9 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_9 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_264 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 264 = (47 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 264 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 264 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (264 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 264 (by decide)
    _ = (48 : Int) - (1 : Int) :=
      sub_congr node_7_264 node_7_9
    _ = (47 : Int) := by decide

theorem node_5_8191 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 = (1238 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (8191 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 (by decide)
    _ = (1285 : Int) - (47 : Int) :=
      sub_congr node_6_8191 node_6_264
    _ = (1238 : Int) := by decide

theorem node_8_221 : count [19, 17, 13, 11, 7, 5, 3, 2] 221 = (40 : Int) := by
  decide

theorem node_7_221 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 221 = (39 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 221 = count [19, 17, 13, 11, 7, 5, 3, 2] 221 - count [19, 17, 13, 11, 7, 5, 3, 2] (221 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 221 (by decide)
    _ = (40 : Int) - (1 : Int) :=
      sub_congr node_8_221 node_8_9
    _ = (39 : Int) := by decide

theorem node_6_221 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 221 = (38 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 221 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 221 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (221 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 221 (by decide)
    _ = (39 : Int) - (1 : Int) :=
      sub_congr node_7_221 node_7_7
    _ = (38 : Int) := by decide

theorem node_6_7 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 7 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 7 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (7 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 7 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_7 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_221 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 221 = (37 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 221 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 221 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (221 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 221 (by decide)
    _ = (38 : Int) - (1 : Int) :=
      sub_congr node_6_221 node_6_7
    _ = (37 : Int) := by decide

theorem node_4_8191 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 = (1201 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (8191 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 (by decide)
    _ = (1238 : Int) - (37 : Int) :=
      sub_congr node_5_8191 node_5_221
    _ = (1201 : Int) := by decide

theorem node_8_199 : count [19, 17, 13, 11, 7, 5, 3, 2] 199 = (39 : Int) := by
  decide

theorem node_7_199 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 199 = (38 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 199 = count [19, 17, 13, 11, 7, 5, 3, 2] 199 - count [19, 17, 13, 11, 7, 5, 3, 2] (199 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 199 (by decide)
    _ = (39 : Int) - (1 : Int) :=
      sub_congr node_8_199 node_8_8
    _ = (38 : Int) := by decide

theorem node_6_199 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 199 = (37 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 199 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 199 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (199 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 199 (by decide)
    _ = (38 : Int) - (1 : Int) :=
      sub_congr node_7_199 node_7_6
    _ = (37 : Int) := by decide

theorem node_5_199 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 199 = (36 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 199 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 199 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (199 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 199 (by decide)
    _ = (37 : Int) - (1 : Int) :=
      sub_congr node_6_199 node_6_6
    _ = (36 : Int) := by decide

theorem node_4_199 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 199 = (35 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 199 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 199 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (199 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 199 (by decide)
    _ = (36 : Int) - (1 : Int) :=
      sub_congr node_5_199 node_5_5
    _ = (35 : Int) := by decide

theorem node_3_8191 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 = (1166 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (8191 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 (by decide)
    _ = (1201 : Int) - (35 : Int) :=
      sub_congr node_4_8191 node_4_199
    _ = (1166 : Int) := by decide

theorem node_8_190 : count [19, 17, 13, 11, 7, 5, 3, 2] 190 = (35 : Int) := by
  decide

theorem node_7_190 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 190 = (34 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 190 = count [19, 17, 13, 11, 7, 5, 3, 2] 190 - count [19, 17, 13, 11, 7, 5, 3, 2] (190 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 190 (by decide)
    _ = (35 : Int) - (1 : Int) :=
      sub_congr node_8_190 node_8_8
    _ = (34 : Int) := by decide

theorem node_6_190 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 190 = (33 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 190 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 190 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (190 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 190 (by decide)
    _ = (34 : Int) - (1 : Int) :=
      sub_congr node_7_190 node_7_6
    _ = (33 : Int) := by decide

theorem node_5_190 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 190 = (32 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 190 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 190 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (190 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 190 (by decide)
    _ = (33 : Int) - (1 : Int) :=
      sub_congr node_6_190 node_6_6
    _ = (32 : Int) := by decide

theorem node_4_190 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 190 = (31 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 190 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 190 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (190 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 190 (by decide)
    _ = (32 : Int) - (1 : Int) :=
      sub_congr node_5_190 node_5_5
    _ = (31 : Int) := by decide

theorem node_3_190 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 190 = (30 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 190 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 190 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (190 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 190 (by decide)
    _ = (31 : Int) - (1 : Int) :=
      sub_congr node_4_190 node_4_4
    _ = (30 : Int) := by decide

theorem node_2_8191 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 = (1136 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (8191 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 (by decide)
    _ = (1166 : Int) - (30 : Int) :=
      sub_congr node_3_8191 node_3_190
    _ = (1136 : Int) := by decide

theorem node_8_174 : count [19, 17, 13, 11, 7, 5, 3, 2] 174 = (33 : Int) := by
  decide

theorem node_7_174 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 174 = (32 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 174 = count [19, 17, 13, 11, 7, 5, 3, 2] 174 - count [19, 17, 13, 11, 7, 5, 3, 2] (174 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 174 (by decide)
    _ = (33 : Int) - (1 : Int) :=
      sub_congr node_8_174 node_8_7
    _ = (32 : Int) := by decide

theorem node_6_174 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 174 = (31 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 174 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 174 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (174 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 174 (by decide)
    _ = (32 : Int) - (1 : Int) :=
      sub_congr node_7_174 node_7_6
    _ = (31 : Int) := by decide

theorem node_5_174 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 174 = (30 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 174 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 174 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (174 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 174 (by decide)
    _ = (31 : Int) - (1 : Int) :=
      sub_congr node_6_174 node_6_5
    _ = (30 : Int) := by decide

theorem node_4_174 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 174 = (29 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 174 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 174 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (174 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 174 (by decide)
    _ = (30 : Int) - (1 : Int) :=
      sub_congr node_5_174 node_5_4
    _ = (29 : Int) := by decide

theorem node_3_174 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 174 = (28 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 174 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 174 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (174 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 174 (by decide)
    _ = (29 : Int) - (1 : Int) :=
      sub_congr node_4_174 node_4_4
    _ = (28 : Int) := by decide

theorem node_3_4 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (4 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_4 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_174 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 174 = (27 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 174 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 174 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (174 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 174 (by decide)
    _ = (28 : Int) - (1 : Int) :=
      sub_congr node_3_174 node_3_4
    _ = (27 : Int) := by decide

theorem node_1_8191 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 = (1109 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (8191 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 (by decide)
    _ = (1136 : Int) - (27 : Int) :=
      sub_congr node_2_8191 node_2_174
    _ = (1109 : Int) := by decide

theorem node_8_154 : count [19, 17, 13, 11, 7, 5, 3, 2] 154 = (29 : Int) := by
  decide

theorem node_7_154 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 154 = (28 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 154 = count [19, 17, 13, 11, 7, 5, 3, 2] 154 - count [19, 17, 13, 11, 7, 5, 3, 2] (154 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 154 (by decide)
    _ = (29 : Int) - (1 : Int) :=
      sub_congr node_8_154 node_8_6
    _ = (28 : Int) := by decide

theorem node_6_154 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 154 = (27 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 154 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 154 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (154 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 154 (by decide)
    _ = (28 : Int) - (1 : Int) :=
      sub_congr node_7_154 node_7_5
    _ = (27 : Int) := by decide

theorem node_5_154 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 154 = (26 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 154 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 154 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (154 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 154 (by decide)
    _ = (27 : Int) - (1 : Int) :=
      sub_congr node_6_154 node_6_4
    _ = (26 : Int) := by decide

theorem node_4_154 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 154 = (25 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 154 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 154 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (154 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 154 (by decide)
    _ = (26 : Int) - (1 : Int) :=
      sub_congr node_5_154 node_5_4
    _ = (25 : Int) := by decide

theorem node_3_154 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 154 = (24 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 154 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 154 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (154 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 154 (by decide)
    _ = (25 : Int) - (1 : Int) :=
      sub_congr node_4_154 node_4_3
    _ = (24 : Int) := by decide

theorem node_2_154 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 154 = (23 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 154 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 154 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (154 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 154 (by decide)
    _ = (24 : Int) - (1 : Int) :=
      sub_congr node_3_154 node_3_3
    _ = (23 : Int) := by decide

theorem node_1_154 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 154 = (22 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 154 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 154 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (154 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 154 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_2_154 node_2_3
    _ = (22 : Int) := by decide

theorem node_0_8191 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 = (1087 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (8191 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8191 (by decide)
    _ = (1109 : Int) - (22 : Int) :=
      sub_congr node_1_8191 node_1_154
    _ = (1087 : Int) := by decide

theorem node_8_9342 : count [19, 17, 13, 11, 7, 5, 3, 2] 9342 = (1599 : Int) := by
  decide

theorem node_8_406 : count [19, 17, 13, 11, 7, 5, 3, 2] 406 = (72 : Int) := by
  decide

theorem node_7_9342 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 = (1527 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 = count [19, 17, 13, 11, 7, 5, 3, 2] 9342 - count [19, 17, 13, 11, 7, 5, 3, 2] (9342 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 9342 (by decide)
    _ = (1599 : Int) - (72 : Int) :=
      sub_congr node_8_9342 node_8_406
    _ = (1527 : Int) := by decide

theorem node_8_322 : count [19, 17, 13, 11, 7, 5, 3, 2] 322 = (59 : Int) := by
  decide

theorem node_8_14 : count [19, 17, 13, 11, 7, 5, 3, 2] 14 = (1 : Int) := by
  decide

theorem node_7_322 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 322 = (58 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 322 = count [19, 17, 13, 11, 7, 5, 3, 2] 322 - count [19, 17, 13, 11, 7, 5, 3, 2] (322 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 322 (by decide)
    _ = (59 : Int) - (1 : Int) :=
      sub_congr node_8_322 node_8_14
    _ = (58 : Int) := by decide

theorem node_6_9342 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 = (1469 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (9342 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 (by decide)
    _ = (1527 : Int) - (58 : Int) :=
      sub_congr node_7_9342 node_7_322
    _ = (1469 : Int) := by decide

theorem node_8_301 : count [19, 17, 13, 11, 7, 5, 3, 2] 301 = (55 : Int) := by
  decide

theorem node_8_13 : count [19, 17, 13, 11, 7, 5, 3, 2] 13 = (1 : Int) := by
  decide

theorem node_7_301 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 301 = (54 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 301 = count [19, 17, 13, 11, 7, 5, 3, 2] 301 - count [19, 17, 13, 11, 7, 5, 3, 2] (301 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 301 (by decide)
    _ = (55 : Int) - (1 : Int) :=
      sub_congr node_8_301 node_8_13
    _ = (54 : Int) := by decide

theorem node_7_10 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 10 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 10 = count [19, 17, 13, 11, 7, 5, 3, 2] 10 - count [19, 17, 13, 11, 7, 5, 3, 2] (10 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 10 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_10 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_301 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 301 = (53 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 301 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 301 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (301 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 301 (by decide)
    _ = (54 : Int) - (1 : Int) :=
      sub_congr node_7_301 node_7_10
    _ = (53 : Int) := by decide

theorem node_5_9342 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 = (1416 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (9342 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 (by decide)
    _ = (1469 : Int) - (53 : Int) :=
      sub_congr node_6_9342 node_6_301
    _ = (1416 : Int) := by decide

theorem node_8_252 : count [19, 17, 13, 11, 7, 5, 3, 2] 252 = (47 : Int) := by
  decide

theorem node_7_252 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 252 = (46 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 252 = count [19, 17, 13, 11, 7, 5, 3, 2] 252 - count [19, 17, 13, 11, 7, 5, 3, 2] (252 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 252 (by decide)
    _ = (47 : Int) - (1 : Int) :=
      sub_congr node_8_252 node_8_10
    _ = (46 : Int) := by decide

theorem node_6_252 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 252 = (45 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 252 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 252 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (252 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 252 (by decide)
    _ = (46 : Int) - (1 : Int) :=
      sub_congr node_7_252 node_7_8
    _ = (45 : Int) := by decide

theorem node_6_8 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 8 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 8 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (8 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 8 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_8 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_252 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 252 = (44 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 252 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 252 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (252 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 252 (by decide)
    _ = (45 : Int) - (1 : Int) :=
      sub_congr node_6_252 node_6_8
    _ = (44 : Int) := by decide

theorem node_4_9342 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 = (1372 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (9342 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 (by decide)
    _ = (1416 : Int) - (44 : Int) :=
      sub_congr node_5_9342 node_5_252
    _ = (1372 : Int) := by decide

theorem node_8_227 : count [19, 17, 13, 11, 7, 5, 3, 2] 227 = (42 : Int) := by
  decide

theorem node_7_227 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 227 = (41 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 227 = count [19, 17, 13, 11, 7, 5, 3, 2] 227 - count [19, 17, 13, 11, 7, 5, 3, 2] (227 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 227 (by decide)
    _ = (42 : Int) - (1 : Int) :=
      sub_congr node_8_227 node_8_9
    _ = (41 : Int) := by decide

theorem node_6_227 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 227 = (40 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 227 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 227 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (227 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 227 (by decide)
    _ = (41 : Int) - (1 : Int) :=
      sub_congr node_7_227 node_7_7
    _ = (40 : Int) := by decide

theorem node_5_227 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 227 = (39 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 227 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 227 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (227 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 227 (by decide)
    _ = (40 : Int) - (1 : Int) :=
      sub_congr node_6_227 node_6_7
    _ = (39 : Int) := by decide

theorem node_5_6 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (6 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 6 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_6 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_227 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 227 = (38 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 227 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 227 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (227 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 227 (by decide)
    _ = (39 : Int) - (1 : Int) :=
      sub_congr node_5_227 node_5_6
    _ = (38 : Int) := by decide

theorem node_3_9342 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 = (1334 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (9342 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 (by decide)
    _ = (1372 : Int) - (38 : Int) :=
      sub_congr node_4_9342 node_4_227
    _ = (1334 : Int) := by decide

theorem node_8_217 : count [19, 17, 13, 11, 7, 5, 3, 2] 217 = (40 : Int) := by
  decide

theorem node_7_217 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 217 = (39 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 217 = count [19, 17, 13, 11, 7, 5, 3, 2] 217 - count [19, 17, 13, 11, 7, 5, 3, 2] (217 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 217 (by decide)
    _ = (40 : Int) - (1 : Int) :=
      sub_congr node_8_217 node_8_9
    _ = (39 : Int) := by decide

theorem node_6_217 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 217 = (38 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 217 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 217 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (217 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 217 (by decide)
    _ = (39 : Int) - (1 : Int) :=
      sub_congr node_7_217 node_7_7
    _ = (38 : Int) := by decide

theorem node_5_217 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 217 = (37 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 217 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 217 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (217 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 217 (by decide)
    _ = (38 : Int) - (1 : Int) :=
      sub_congr node_6_217 node_6_7
    _ = (37 : Int) := by decide

theorem node_4_217 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 217 = (36 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 217 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 217 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (217 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 217 (by decide)
    _ = (37 : Int) - (1 : Int) :=
      sub_congr node_5_217 node_5_5
    _ = (36 : Int) := by decide

theorem node_4_5 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (5 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 5 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_5 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_217 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 217 = (35 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 217 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 217 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (217 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 217 (by decide)
    _ = (36 : Int) - (1 : Int) :=
      sub_congr node_4_217 node_4_5
    _ = (35 : Int) := by decide

theorem node_2_9342 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 = (1299 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (9342 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 (by decide)
    _ = (1334 : Int) - (35 : Int) :=
      sub_congr node_3_9342 node_3_217
    _ = (1299 : Int) := by decide

theorem node_8_198 : count [19, 17, 13, 11, 7, 5, 3, 2] 198 = (38 : Int) := by
  decide

theorem node_7_198 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 198 = (37 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 198 = count [19, 17, 13, 11, 7, 5, 3, 2] 198 - count [19, 17, 13, 11, 7, 5, 3, 2] (198 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 198 (by decide)
    _ = (38 : Int) - (1 : Int) :=
      sub_congr node_8_198 node_8_8
    _ = (37 : Int) := by decide

theorem node_6_198 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 198 = (36 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 198 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 198 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (198 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 198 (by decide)
    _ = (37 : Int) - (1 : Int) :=
      sub_congr node_7_198 node_7_6
    _ = (36 : Int) := by decide

theorem node_5_198 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 198 = (35 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 198 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 198 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (198 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 198 (by decide)
    _ = (36 : Int) - (1 : Int) :=
      sub_congr node_6_198 node_6_6
    _ = (35 : Int) := by decide

theorem node_4_198 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 198 = (34 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 198 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 198 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (198 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 198 (by decide)
    _ = (35 : Int) - (1 : Int) :=
      sub_congr node_5_198 node_5_5
    _ = (34 : Int) := by decide

theorem node_3_198 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 198 = (33 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 198 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 198 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (198 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 198 (by decide)
    _ = (34 : Int) - (1 : Int) :=
      sub_congr node_4_198 node_4_4
    _ = (33 : Int) := by decide

theorem node_2_198 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 198 = (32 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 198 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 198 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (198 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 198 (by decide)
    _ = (33 : Int) - (1 : Int) :=
      sub_congr node_3_198 node_3_4
    _ = (32 : Int) := by decide

theorem node_1_9342 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 = (1267 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (9342 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 (by decide)
    _ = (1299 : Int) - (32 : Int) :=
      sub_congr node_2_9342 node_2_198
    _ = (1267 : Int) := by decide

theorem node_8_176 : count [19, 17, 13, 11, 7, 5, 3, 2] 176 = (33 : Int) := by
  decide

theorem node_7_176 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 176 = (32 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 176 = count [19, 17, 13, 11, 7, 5, 3, 2] 176 - count [19, 17, 13, 11, 7, 5, 3, 2] (176 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 176 (by decide)
    _ = (33 : Int) - (1 : Int) :=
      sub_congr node_8_176 node_8_7
    _ = (32 : Int) := by decide

theorem node_6_176 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 176 = (31 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 176 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 176 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (176 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 176 (by decide)
    _ = (32 : Int) - (1 : Int) :=
      sub_congr node_7_176 node_7_6
    _ = (31 : Int) := by decide

theorem node_5_176 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 176 = (30 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 176 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 176 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (176 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 176 (by decide)
    _ = (31 : Int) - (1 : Int) :=
      sub_congr node_6_176 node_6_5
    _ = (30 : Int) := by decide

theorem node_4_176 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 176 = (29 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 176 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 176 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (176 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 176 (by decide)
    _ = (30 : Int) - (1 : Int) :=
      sub_congr node_5_176 node_5_4
    _ = (29 : Int) := by decide

theorem node_3_176 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 176 = (28 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 176 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 176 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (176 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 176 (by decide)
    _ = (29 : Int) - (1 : Int) :=
      sub_congr node_4_176 node_4_4
    _ = (28 : Int) := by decide

theorem node_2_176 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 176 = (27 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 176 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 176 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (176 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 176 (by decide)
    _ = (28 : Int) - (1 : Int) :=
      sub_congr node_3_176 node_3_4
    _ = (27 : Int) := by decide

theorem node_1_176 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 176 = (26 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 176 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 176 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (176 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 176 (by decide)
    _ = (27 : Int) - (1 : Int) :=
      sub_congr node_2_176 node_2_3
    _ = (26 : Int) := by decide

theorem node_0_9342 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 = (1241 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (9342 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 9342 (by decide)
    _ = (1267 : Int) - (26 : Int) :=
      sub_congr node_1_9342 node_1_176
    _ = (1241 : Int) := by decide

theorem row_20 : count primes 6556 ≤ (888 : Int) - 15 := by
  rw [show count primes 6556 = (873 : Int) from node_0_6556]
  decide

theorem row_21 : count primes 7740 ≤ (1045 : Int) - 15 := by
  rw [show count primes 7740 = (1030 : Int) from node_0_7740]
  decide

theorem row_22 : count primes 8191 ≤ (1102 : Int) - 15 := by
  rw [show count primes 8191 = (1087 : Int) from node_0_8191]
  decide

theorem row_23 : count primes 9342 ≤ (1256 : Int) - 15 := by
  rw [show count primes 9342 = (1241 : Int) from node_0_9342]
  decide

def pairs : List (Nat × Nat) := [(6556, 888), (7740, 1045), (8191, 1102), (9342, 1256)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl | rfl | rfl
  · exact row_20
  · exact row_21
  · exact row_22
  · exact row_23
end B699CorePrunedSieve.CoreDagBatch06
#check @B699CorePrunedSieve.CoreDagBatch06.pairs_valid
#print axioms B699CorePrunedSieve.CoreDagBatch06.pairs_valid
