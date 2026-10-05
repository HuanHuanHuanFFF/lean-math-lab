import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreRest07
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_40566 : count [19, 17, 13, 11, 7, 5, 3, 2] 40566 = (6940 : Int) := by
  decide

theorem node_8_1763 : count [19, 17, 13, 11, 7, 5, 3, 2] 1763 = (300 : Int) := by
  decide

theorem node_7_40566 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 = (6640 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 = count [19, 17, 13, 11, 7, 5, 3, 2] 40566 - count [19, 17, 13, 11, 7, 5, 3, 2] (40566 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 40566 (by decide)
    _ = (6940 : Int) - (300 : Int) :=
      sub_congr node_8_40566 node_8_1763
    _ = (6640 : Int) := by decide

theorem node_8_1398 : count [19, 17, 13, 11, 7, 5, 3, 2] 1398 = (234 : Int) := by
  decide

theorem node_8_60 : count [19, 17, 13, 11, 7, 5, 3, 2] 60 = (10 : Int) := by
  decide

theorem node_7_1398 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1398 = (224 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1398 = count [19, 17, 13, 11, 7, 5, 3, 2] 1398 - count [19, 17, 13, 11, 7, 5, 3, 2] (1398 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1398 (by decide)
    _ = (234 : Int) - (10 : Int) :=
      sub_congr node_8_1398 node_8_60
    _ = (224 : Int) := by decide

theorem node_6_40566 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 = (6416 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (40566 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 (by decide)
    _ = (6640 : Int) - (224 : Int) :=
      sub_congr node_7_40566 node_7_1398
    _ = (6416 : Int) := by decide

theorem node_8_1308 : count [19, 17, 13, 11, 7, 5, 3, 2] 1308 = (223 : Int) := by
  decide

theorem node_8_56 : count [19, 17, 13, 11, 7, 5, 3, 2] 56 = (9 : Int) := by
  decide

theorem node_7_1308 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1308 = (214 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1308 = count [19, 17, 13, 11, 7, 5, 3, 2] 1308 - count [19, 17, 13, 11, 7, 5, 3, 2] (1308 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1308 (by decide)
    _ = (223 : Int) - (9 : Int) :=
      sub_congr node_8_1308 node_8_56
    _ = (214 : Int) := by decide

theorem node_8_45 : count [19, 17, 13, 11, 7, 5, 3, 2] 45 = (7 : Int) := by
  decide

theorem node_8_1 : count [19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  decide

theorem node_7_45 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 45 = (6 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 45 = count [19, 17, 13, 11, 7, 5, 3, 2] 45 - count [19, 17, 13, 11, 7, 5, 3, 2] (45 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 45 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_8_45 node_8_1
    _ = (6 : Int) := by decide

theorem node_6_1308 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1308 = (208 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1308 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1308 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1308 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1308 (by decide)
    _ = (214 : Int) - (6 : Int) :=
      sub_congr node_7_1308 node_7_45
    _ = (208 : Int) := by decide

theorem node_5_40566 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 = (6208 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (40566 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 (by decide)
    _ = (6416 : Int) - (208 : Int) :=
      sub_congr node_6_40566 node_6_1308
    _ = (6208 : Int) := by decide

theorem node_8_1096 : count [19, 17, 13, 11, 7, 5, 3, 2] 1096 = (187 : Int) := by
  decide

theorem node_8_47 : count [19, 17, 13, 11, 7, 5, 3, 2] 47 = (8 : Int) := by
  decide

theorem node_7_1096 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1096 = (179 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1096 = count [19, 17, 13, 11, 7, 5, 3, 2] 1096 - count [19, 17, 13, 11, 7, 5, 3, 2] (1096 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1096 (by decide)
    _ = (187 : Int) - (8 : Int) :=
      sub_congr node_8_1096 node_8_47
    _ = (179 : Int) := by decide

theorem node_8_37 : count [19, 17, 13, 11, 7, 5, 3, 2] 37 = (5 : Int) := by
  decide

theorem node_7_37 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = (4 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = count [19, 17, 13, 11, 7, 5, 3, 2] 37 - count [19, 17, 13, 11, 7, 5, 3, 2] (37 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 37 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_8_37 node_8_1
    _ = (4 : Int) := by decide

theorem node_6_1096 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1096 = (175 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1096 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1096 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1096 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1096 (by decide)
    _ = (179 : Int) - (4 : Int) :=
      sub_congr node_7_1096 node_7_37
    _ = (175 : Int) := by decide

theorem node_8_35 : count [19, 17, 13, 11, 7, 5, 3, 2] 35 = (4 : Int) := by
  decide

theorem node_7_35 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = (3 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = count [19, 17, 13, 11, 7, 5, 3, 2] 35 - count [19, 17, 13, 11, 7, 5, 3, 2] (35 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 35 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_8_35 node_8_1
    _ = (3 : Int) := by decide

theorem node_8_0 : count [19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [19, 17, 13, 11, 7, 5, 3, 2]

theorem node_7_1 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [19, 17, 13, 11, 7, 5, 3, 2] 1 - count [19, 17, 13, 11, 7, 5, 3, 2] (1 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_1 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_35 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = (2 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 35 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (35 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 35 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_7_35 node_7_1
    _ = (2 : Int) := by decide

theorem node_5_1096 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1096 = (173 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1096 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1096 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1096 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1096 (by decide)
    _ = (175 : Int) - (2 : Int) :=
      sub_congr node_6_1096 node_6_35
    _ = (173 : Int) := by decide

theorem node_4_40566 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 = (6035 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (40566 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 (by decide)
    _ = (6208 : Int) - (173 : Int) :=
      sub_congr node_5_40566 node_5_1096
    _ = (6035 : Int) := by decide

theorem node_8_989 : count [19, 17, 13, 11, 7, 5, 3, 2] 989 = (168 : Int) := by
  decide

theorem node_8_43 : count [19, 17, 13, 11, 7, 5, 3, 2] 43 = (7 : Int) := by
  decide

theorem node_7_989 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 989 = (161 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 989 = count [19, 17, 13, 11, 7, 5, 3, 2] 989 - count [19, 17, 13, 11, 7, 5, 3, 2] (989 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 989 (by decide)
    _ = (168 : Int) - (7 : Int) :=
      sub_congr node_8_989 node_8_43
    _ = (161 : Int) := by decide

theorem node_8_34 : count [19, 17, 13, 11, 7, 5, 3, 2] 34 = (4 : Int) := by
  decide

theorem node_7_34 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = (3 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = count [19, 17, 13, 11, 7, 5, 3, 2] 34 - count [19, 17, 13, 11, 7, 5, 3, 2] (34 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 34 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_8_34 node_8_1
    _ = (3 : Int) := by decide

theorem node_6_989 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 989 = (158 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 989 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 989 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (989 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 989 (by decide)
    _ = (161 : Int) - (3 : Int) :=
      sub_congr node_7_989 node_7_34
    _ = (158 : Int) := by decide

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

theorem node_5_989 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 989 = (156 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 989 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 989 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (989 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 989 (by decide)
    _ = (158 : Int) - (2 : Int) :=
      sub_congr node_6_989 node_6_31
    _ = (156 : Int) := by decide

theorem node_8_26 : count [19, 17, 13, 11, 7, 5, 3, 2] 26 = (2 : Int) := by
  decide

theorem node_7_26 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = count [19, 17, 13, 11, 7, 5, 3, 2] 26 - count [19, 17, 13, 11, 7, 5, 3, 2] (26 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 26 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_8_26 node_8_1
    _ = (1 : Int) := by decide

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_26 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 26 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (26 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 26 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_26 node_7_0
    _ = (1 : Int) := by decide

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_26 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (26 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_26 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_989 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 989 = (155 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 989 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 989 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (989 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 989 (by decide)
    _ = (156 : Int) - (1 : Int) :=
      sub_congr node_5_989 node_5_26
    _ = (155 : Int) := by decide

theorem node_3_40566 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 = (5880 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (40566 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 (by decide)
    _ = (6035 : Int) - (155 : Int) :=
      sub_congr node_4_40566 node_4_989
    _ = (5880 : Int) := by decide

theorem node_8_943 : count [19, 17, 13, 11, 7, 5, 3, 2] 943 = (160 : Int) := by
  decide

theorem node_8_41 : count [19, 17, 13, 11, 7, 5, 3, 2] 41 = (6 : Int) := by
  decide

theorem node_7_943 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 943 = (154 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 943 = count [19, 17, 13, 11, 7, 5, 3, 2] 943 - count [19, 17, 13, 11, 7, 5, 3, 2] (943 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 943 (by decide)
    _ = (160 : Int) - (6 : Int) :=
      sub_congr node_8_943 node_8_41
    _ = (154 : Int) := by decide

theorem node_8_32 : count [19, 17, 13, 11, 7, 5, 3, 2] 32 = (4 : Int) := by
  decide

theorem node_7_32 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = (3 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = count [19, 17, 13, 11, 7, 5, 3, 2] 32 - count [19, 17, 13, 11, 7, 5, 3, 2] (32 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 32 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_8_32 node_8_1
    _ = (3 : Int) := by decide

theorem node_6_943 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 943 = (151 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 943 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 943 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (943 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 943 (by decide)
    _ = (154 : Int) - (3 : Int) :=
      sub_congr node_7_943 node_7_32
    _ = (151 : Int) := by decide

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

theorem node_5_943 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 943 = (150 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 943 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 943 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (943 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 943 (by decide)
    _ = (151 : Int) - (1 : Int) :=
      sub_congr node_6_943 node_6_30
    _ = (150 : Int) := by decide

theorem node_8_25 : count [19, 17, 13, 11, 7, 5, 3, 2] 25 = (2 : Int) := by
  decide

theorem node_7_25 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = count [19, 17, 13, 11, 7, 5, 3, 2] 25 - count [19, 17, 13, 11, 7, 5, 3, 2] (25 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 25 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_8_25 node_8_1
    _ = (1 : Int) := by decide

theorem node_6_25 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 25 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (25 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 25 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_25 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_25 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (25 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_25 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_943 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 943 = (149 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 943 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 943 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (943 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 943 (by decide)
    _ = (150 : Int) - (1 : Int) :=
      sub_congr node_5_943 node_5_25
    _ = (149 : Int) := by decide

theorem node_8_23 : count [19, 17, 13, 11, 7, 5, 3, 2] 23 = (2 : Int) := by
  decide

theorem node_7_23 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = count [19, 17, 13, 11, 7, 5, 3, 2] 23 - count [19, 17, 13, 11, 7, 5, 3, 2] (23 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 23 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_8_23 node_8_1
    _ = (1 : Int) := by decide

theorem node_6_23 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 23 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (23 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 23 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_23 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_23 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (23 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_23 node_6_0
    _ = (1 : Int) := by decide

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_23 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (23 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_23 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_943 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 943 = (148 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 943 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 943 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (943 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 943 (by decide)
    _ = (149 : Int) - (1 : Int) :=
      sub_congr node_4_943 node_4_23
    _ = (148 : Int) := by decide

theorem node_2_40566 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 = (5732 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (40566 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 (by decide)
    _ = (5880 : Int) - (148 : Int) :=
      sub_congr node_3_40566 node_3_943
    _ = (5732 : Int) := by decide

theorem node_8_863 : count [19, 17, 13, 11, 7, 5, 3, 2] 863 = (148 : Int) := by
  decide

theorem node_7_863 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 863 = (143 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 863 = count [19, 17, 13, 11, 7, 5, 3, 2] 863 - count [19, 17, 13, 11, 7, 5, 3, 2] (863 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 863 (by decide)
    _ = (148 : Int) - (5 : Int) :=
      sub_congr node_8_863 node_8_37
    _ = (143 : Int) := by decide

theorem node_8_29 : count [19, 17, 13, 11, 7, 5, 3, 2] 29 = (3 : Int) := by
  decide

theorem node_7_29 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = (2 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = count [19, 17, 13, 11, 7, 5, 3, 2] 29 - count [19, 17, 13, 11, 7, 5, 3, 2] (29 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 29 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_8_29 node_8_1
    _ = (2 : Int) := by decide

theorem node_6_863 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 863 = (141 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 863 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 863 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (863 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 863 (by decide)
    _ = (143 : Int) - (2 : Int) :=
      sub_congr node_7_863 node_7_29
    _ = (141 : Int) := by decide

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

theorem node_5_863 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 863 = (140 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 863 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 863 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (863 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 863 (by decide)
    _ = (141 : Int) - (1 : Int) :=
      sub_congr node_6_863 node_6_27
    _ = (140 : Int) := by decide

theorem node_4_863 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 863 = (139 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 863 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 863 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (863 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 863 (by decide)
    _ = (140 : Int) - (1 : Int) :=
      sub_congr node_5_863 node_5_23
    _ = (139 : Int) := by decide

theorem node_8_21 : count [19, 17, 13, 11, 7, 5, 3, 2] 21 = (1 : Int) := by
  decide

theorem node_7_21 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 21 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 21 = count [19, 17, 13, 11, 7, 5, 3, 2] 21 - count [19, 17, 13, 11, 7, 5, 3, 2] (21 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 21 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_21 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_21 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 21 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (21 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 21 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_21 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_21 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (21 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_21 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_21 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (21 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_21 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_863 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 863 = (138 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 863 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 863 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (863 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 863 (by decide)
    _ = (139 : Int) - (1 : Int) :=
      sub_congr node_4_863 node_4_21
    _ = (138 : Int) := by decide

theorem node_8_20 : count [19, 17, 13, 11, 7, 5, 3, 2] 20 = (1 : Int) := by
  decide

theorem node_7_20 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 20 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 20 = count [19, 17, 13, 11, 7, 5, 3, 2] 20 - count [19, 17, 13, 11, 7, 5, 3, 2] (20 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 20 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_20 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_20 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 20 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (20 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 20 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_20 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_20 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (20 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_20 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_20 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (20 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_20 node_5_0
    _ = (1 : Int) := by decide

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_20 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (20 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_20 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_863 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 863 = (137 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 863 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 863 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (863 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 863 (by decide)
    _ = (138 : Int) - (1 : Int) :=
      sub_congr node_3_863 node_3_20
    _ = (137 : Int) := by decide

theorem node_1_40566 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 = (5595 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (40566 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 (by decide)
    _ = (5732 : Int) - (137 : Int) :=
      sub_congr node_2_40566 node_2_863
    _ = (5595 : Int) := by decide

theorem node_8_765 : count [19, 17, 13, 11, 7, 5, 3, 2] 765 = (131 : Int) := by
  decide

theorem node_8_33 : count [19, 17, 13, 11, 7, 5, 3, 2] 33 = (4 : Int) := by
  decide

theorem node_7_765 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 765 = (127 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 765 = count [19, 17, 13, 11, 7, 5, 3, 2] 765 - count [19, 17, 13, 11, 7, 5, 3, 2] (765 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 765 (by decide)
    _ = (131 : Int) - (4 : Int) :=
      sub_congr node_8_765 node_8_33
    _ = (127 : Int) := by decide

theorem node_6_765 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 765 = (126 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 765 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 765 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (765 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 765 (by decide)
    _ = (127 : Int) - (1 : Int) :=
      sub_congr node_7_765 node_7_26
    _ = (126 : Int) := by decide

theorem node_8_24 : count [19, 17, 13, 11, 7, 5, 3, 2] 24 = (2 : Int) := by
  decide

theorem node_7_24 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = count [19, 17, 13, 11, 7, 5, 3, 2] 24 - count [19, 17, 13, 11, 7, 5, 3, 2] (24 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 24 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_8_24 node_8_1
    _ = (1 : Int) := by decide

theorem node_6_24 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 24 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (24 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 24 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_24 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_765 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 765 = (125 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 765 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 765 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (765 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 765 (by decide)
    _ = (126 : Int) - (1 : Int) :=
      sub_congr node_6_765 node_6_24
    _ = (125 : Int) := by decide

theorem node_4_765 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 765 = (124 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 765 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 765 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (765 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 765 (by decide)
    _ = (125 : Int) - (1 : Int) :=
      sub_congr node_5_765 node_5_20
    _ = (124 : Int) := by decide

theorem node_8_18 : count [19, 17, 13, 11, 7, 5, 3, 2] 18 = (1 : Int) := by
  decide

theorem node_7_18 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 18 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 18 = count [19, 17, 13, 11, 7, 5, 3, 2] 18 - count [19, 17, 13, 11, 7, 5, 3, 2] (18 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 18 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_18 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_18 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 18 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (18 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 18 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_18 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_18 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (18 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_18 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_18 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (18 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_18 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_765 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 765 = (123 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 765 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 765 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (765 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 765 (by decide)
    _ = (124 : Int) - (1 : Int) :=
      sub_congr node_4_765 node_4_18
    _ = (123 : Int) := by decide

theorem node_8_17 : count [19, 17, 13, 11, 7, 5, 3, 2] 17 = (1 : Int) := by
  decide

theorem node_7_17 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 17 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 17 = count [19, 17, 13, 11, 7, 5, 3, 2] 17 - count [19, 17, 13, 11, 7, 5, 3, 2] (17 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 17 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_17 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_17 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 17 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 17 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 17 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (17 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 17 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_17 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_17 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 17 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 17 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 17 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (17 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 17 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_17 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_17 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 17 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 17 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 17 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (17 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 17 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_17 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_17 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 17 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 17 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 17 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (17 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 17 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_17 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_765 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 765 = (122 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 765 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 765 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (765 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 765 (by decide)
    _ = (123 : Int) - (1 : Int) :=
      sub_congr node_3_765 node_3_17
    _ = (122 : Int) := by decide

theorem node_8_16 : count [19, 17, 13, 11, 7, 5, 3, 2] 16 = (1 : Int) := by
  decide

theorem node_7_16 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = count [19, 17, 13, 11, 7, 5, 3, 2] 16 - count [19, 17, 13, 11, 7, 5, 3, 2] (16 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 16 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_16 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_16 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 16 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (16 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 16 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_16 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_16 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (16 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_16 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_16 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (16 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_16 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_16 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (16 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_16 node_4_0
    _ = (1 : Int) := by decide

theorem node_3_0 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_2_16 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (16 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_16 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_765 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 765 = (121 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 765 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 765 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (765 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 765 (by decide)
    _ = (122 : Int) - (1 : Int) :=
      sub_congr node_2_765 node_2_16
    _ = (121 : Int) := by decide

theorem node_0_40566 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 = (5474 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (40566 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40566 (by decide)
    _ = (5595 : Int) - (121 : Int) :=
      sub_congr node_1_40566 node_1_765
    _ = (5474 : Int) := by decide

theorem node_8_42700 : count [19, 17, 13, 11, 7, 5, 3, 2] 42700 = (7306 : Int) := by
  decide

theorem node_8_1856 : count [19, 17, 13, 11, 7, 5, 3, 2] 1856 = (313 : Int) := by
  decide

theorem node_7_42700 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 = (6993 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 = count [19, 17, 13, 11, 7, 5, 3, 2] 42700 - count [19, 17, 13, 11, 7, 5, 3, 2] (42700 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 42700 (by decide)
    _ = (7306 : Int) - (313 : Int) :=
      sub_congr node_8_42700 node_8_1856
    _ = (6993 : Int) := by decide

theorem node_8_1472 : count [19, 17, 13, 11, 7, 5, 3, 2] 1472 = (248 : Int) := by
  decide

theorem node_8_64 : count [19, 17, 13, 11, 7, 5, 3, 2] 64 = (11 : Int) := by
  decide

theorem node_7_1472 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1472 = (237 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1472 = count [19, 17, 13, 11, 7, 5, 3, 2] 1472 - count [19, 17, 13, 11, 7, 5, 3, 2] (1472 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1472 (by decide)
    _ = (248 : Int) - (11 : Int) :=
      sub_congr node_8_1472 node_8_64
    _ = (237 : Int) := by decide

theorem node_6_42700 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 = (6756 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (42700 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 (by decide)
    _ = (6993 : Int) - (237 : Int) :=
      sub_congr node_7_42700 node_7_1472
    _ = (6756 : Int) := by decide

theorem node_8_1377 : count [19, 17, 13, 11, 7, 5, 3, 2] 1377 = (233 : Int) := by
  decide

theorem node_8_59 : count [19, 17, 13, 11, 7, 5, 3, 2] 59 = (10 : Int) := by
  decide

theorem node_7_1377 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1377 = (223 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1377 = count [19, 17, 13, 11, 7, 5, 3, 2] 1377 - count [19, 17, 13, 11, 7, 5, 3, 2] (1377 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1377 (by decide)
    _ = (233 : Int) - (10 : Int) :=
      sub_congr node_8_1377 node_8_59
    _ = (223 : Int) := by decide

theorem node_8_2 : count [19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  decide

theorem node_7_47 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 47 = (7 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 47 = count [19, 17, 13, 11, 7, 5, 3, 2] 47 - count [19, 17, 13, 11, 7, 5, 3, 2] (47 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 47 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_8_47 node_8_2
    _ = (7 : Int) := by decide

theorem node_6_1377 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1377 = (216 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1377 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1377 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1377 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1377 (by decide)
    _ = (223 : Int) - (7 : Int) :=
      sub_congr node_7_1377 node_7_47
    _ = (216 : Int) := by decide

theorem node_5_42700 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 = (6540 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (42700 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 (by decide)
    _ = (6756 : Int) - (216 : Int) :=
      sub_congr node_6_42700 node_6_1377
    _ = (6540 : Int) := by decide

theorem node_8_1154 : count [19, 17, 13, 11, 7, 5, 3, 2] 1154 = (196 : Int) := by
  decide

theorem node_8_50 : count [19, 17, 13, 11, 7, 5, 3, 2] 50 = (8 : Int) := by
  decide

theorem node_7_1154 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1154 = (188 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1154 = count [19, 17, 13, 11, 7, 5, 3, 2] 1154 - count [19, 17, 13, 11, 7, 5, 3, 2] (1154 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1154 (by decide)
    _ = (196 : Int) - (8 : Int) :=
      sub_congr node_8_1154 node_8_50
    _ = (188 : Int) := by decide

theorem node_8_39 : count [19, 17, 13, 11, 7, 5, 3, 2] 39 = (5 : Int) := by
  decide

theorem node_7_39 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 39 = (4 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 39 = count [19, 17, 13, 11, 7, 5, 3, 2] 39 - count [19, 17, 13, 11, 7, 5, 3, 2] (39 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 39 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_8_39 node_8_1
    _ = (4 : Int) := by decide

theorem node_6_1154 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1154 = (184 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1154 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1154 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1154 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1154 (by decide)
    _ = (188 : Int) - (4 : Int) :=
      sub_congr node_7_1154 node_7_39
    _ = (184 : Int) := by decide

theorem node_6_37 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = (3 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 37 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (37 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 37 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_7_37 node_7_1
    _ = (3 : Int) := by decide

theorem node_5_1154 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1154 = (181 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1154 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1154 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1154 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1154 (by decide)
    _ = (184 : Int) - (3 : Int) :=
      sub_congr node_6_1154 node_6_37
    _ = (181 : Int) := by decide

theorem node_4_42700 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 = (6359 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (42700 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 (by decide)
    _ = (6540 : Int) - (181 : Int) :=
      sub_congr node_5_42700 node_5_1154
    _ = (6359 : Int) := by decide

theorem node_8_1041 : count [19, 17, 13, 11, 7, 5, 3, 2] 1041 = (177 : Int) := by
  decide

theorem node_7_1041 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1041 = (170 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1041 = count [19, 17, 13, 11, 7, 5, 3, 2] 1041 - count [19, 17, 13, 11, 7, 5, 3, 2] (1041 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1041 (by decide)
    _ = (177 : Int) - (7 : Int) :=
      sub_congr node_8_1041 node_8_45
    _ = (170 : Int) := by decide

theorem node_6_1041 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1041 = (167 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1041 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1041 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1041 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1041 (by decide)
    _ = (170 : Int) - (3 : Int) :=
      sub_congr node_7_1041 node_7_35
    _ = (167 : Int) := by decide

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

theorem node_5_1041 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1041 = (165 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1041 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1041 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1041 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1041 (by decide)
    _ = (167 : Int) - (2 : Int) :=
      sub_congr node_6_1041 node_6_33
    _ = (165 : Int) := by decide

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

theorem node_4_1041 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1041 = (164 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1041 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1041 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1041 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1041 (by decide)
    _ = (165 : Int) - (1 : Int) :=
      sub_congr node_5_1041 node_5_28
    _ = (164 : Int) := by decide

theorem node_3_42700 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 = (6195 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (42700 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 (by decide)
    _ = (6359 : Int) - (164 : Int) :=
      sub_congr node_4_42700 node_4_1041
    _ = (6195 : Int) := by decide

theorem node_8_993 : count [19, 17, 13, 11, 7, 5, 3, 2] 993 = (169 : Int) := by
  decide

theorem node_7_993 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 993 = (162 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 993 = count [19, 17, 13, 11, 7, 5, 3, 2] 993 - count [19, 17, 13, 11, 7, 5, 3, 2] (993 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 993 (by decide)
    _ = (169 : Int) - (7 : Int) :=
      sub_congr node_8_993 node_8_43
    _ = (162 : Int) := by decide

theorem node_6_993 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 993 = (159 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 993 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 993 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (993 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 993 (by decide)
    _ = (162 : Int) - (3 : Int) :=
      sub_congr node_7_993 node_7_34
    _ = (159 : Int) := by decide

theorem node_6_32 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = (2 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 32 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (32 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 32 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_7_32 node_7_1
    _ = (2 : Int) := by decide

theorem node_5_993 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 993 = (157 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 993 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 993 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (993 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 993 (by decide)
    _ = (159 : Int) - (2 : Int) :=
      sub_congr node_6_993 node_6_32
    _ = (157 : Int) := by decide

theorem node_4_993 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 993 = (156 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 993 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 993 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (993 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 993 (by decide)
    _ = (157 : Int) - (1 : Int) :=
      sub_congr node_5_993 node_5_26
    _ = (156 : Int) := by decide

theorem node_5_24 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (24 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_24 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_24 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (24 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_24 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_993 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 993 = (155 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 993 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 993 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (993 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 993 (by decide)
    _ = (156 : Int) - (1 : Int) :=
      sub_congr node_4_993 node_4_24
    _ = (155 : Int) := by decide

theorem node_2_42700 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 = (6040 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (42700 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 (by decide)
    _ = (6195 : Int) - (155 : Int) :=
      sub_congr node_3_42700 node_3_993
    _ = (6040 : Int) := by decide

theorem node_8_908 : count [19, 17, 13, 11, 7, 5, 3, 2] 908 = (154 : Int) := by
  decide

theorem node_7_908 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 908 = (149 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 908 = count [19, 17, 13, 11, 7, 5, 3, 2] 908 - count [19, 17, 13, 11, 7, 5, 3, 2] (908 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 908 (by decide)
    _ = (154 : Int) - (5 : Int) :=
      sub_congr node_8_908 node_8_39
    _ = (149 : Int) := by decide

theorem node_6_908 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 908 = (146 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 908 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 908 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (908 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 908 (by decide)
    _ = (149 : Int) - (3 : Int) :=
      sub_congr node_7_908 node_7_31
    _ = (146 : Int) := by decide

theorem node_6_29 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 29 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (29 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 29 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_7_29 node_7_1
    _ = (1 : Int) := by decide

theorem node_5_908 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 908 = (145 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 908 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 908 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (908 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 908 (by decide)
    _ = (146 : Int) - (1 : Int) :=
      sub_congr node_6_908 node_6_29
    _ = (145 : Int) := by decide

theorem node_4_908 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 908 = (144 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 908 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 908 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (908 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 908 (by decide)
    _ = (145 : Int) - (1 : Int) :=
      sub_congr node_5_908 node_5_24
    _ = (144 : Int) := by decide

theorem node_8_22 : count [19, 17, 13, 11, 7, 5, 3, 2] 22 = (1 : Int) := by
  decide

theorem node_7_22 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = count [19, 17, 13, 11, 7, 5, 3, 2] 22 - count [19, 17, 13, 11, 7, 5, 3, 2] (22 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 22 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_22 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_22 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 22 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (22 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 22 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_22 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_22 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (22 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_22 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_22 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (22 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_22 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_908 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 908 = (143 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 908 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 908 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (908 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 908 (by decide)
    _ = (144 : Int) - (1 : Int) :=
      sub_congr node_4_908 node_4_22
    _ = (143 : Int) := by decide

theorem node_3_21 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (21 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_21 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_908 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 908 = (142 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 908 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 908 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (908 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 908 (by decide)
    _ = (143 : Int) - (1 : Int) :=
      sub_congr node_3_908 node_3_21
    _ = (142 : Int) := by decide

theorem node_1_42700 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 = (5898 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (42700 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 (by decide)
    _ = (6040 : Int) - (142 : Int) :=
      sub_congr node_2_42700 node_2_908
    _ = (5898 : Int) := by decide

theorem node_8_805 : count [19, 17, 13, 11, 7, 5, 3, 2] 805 = (135 : Int) := by
  decide

theorem node_7_805 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 805 = (131 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 805 = count [19, 17, 13, 11, 7, 5, 3, 2] 805 - count [19, 17, 13, 11, 7, 5, 3, 2] (805 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 805 (by decide)
    _ = (135 : Int) - (4 : Int) :=
      sub_congr node_8_805 node_8_35
    _ = (131 : Int) := by decide

theorem node_6_805 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 805 = (130 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 805 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 805 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (805 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 805 (by decide)
    _ = (131 : Int) - (1 : Int) :=
      sub_congr node_7_805 node_7_27
    _ = (130 : Int) := by decide

theorem node_5_805 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 805 = (129 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 805 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 805 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (805 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 805 (by decide)
    _ = (130 : Int) - (1 : Int) :=
      sub_congr node_6_805 node_6_25
    _ = (129 : Int) := by decide

theorem node_4_805 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 805 = (128 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 805 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 805 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (805 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 805 (by decide)
    _ = (129 : Int) - (1 : Int) :=
      sub_congr node_5_805 node_5_21
    _ = (128 : Int) := by decide

theorem node_8_19 : count [19, 17, 13, 11, 7, 5, 3, 2] 19 = (1 : Int) := by
  decide

theorem node_7_19 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 19 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 19 = count [19, 17, 13, 11, 7, 5, 3, 2] 19 - count [19, 17, 13, 11, 7, 5, 3, 2] (19 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 19 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_19 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_19 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 19 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (19 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 19 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_19 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_19 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (19 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_19 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_19 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (19 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_19 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_805 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 805 = (127 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 805 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 805 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (805 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 805 (by decide)
    _ = (128 : Int) - (1 : Int) :=
      sub_congr node_4_805 node_4_19
    _ = (127 : Int) := by decide

theorem node_3_18 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (18 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_18 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_805 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 805 = (126 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 805 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 805 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (805 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 805 (by decide)
    _ = (127 : Int) - (1 : Int) :=
      sub_congr node_3_805 node_3_18
    _ = (126 : Int) := by decide

theorem node_2_17 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 17 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 17 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 17 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (17 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 17 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_17 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_805 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 805 = (125 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 805 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 805 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (805 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 805 (by decide)
    _ = (126 : Int) - (1 : Int) :=
      sub_congr node_2_805 node_2_17
    _ = (125 : Int) := by decide

theorem node_0_42700 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 = (5773 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (42700 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 42700 (by decide)
    _ = (5898 : Int) - (125 : Int) :=
      sub_congr node_1_42700 node_1_805
    _ = (5773 : Int) := by decide

theorem row_40 : count primes 40566 ≤ (5489 : Int) - 15 := by
  rw [show count primes 40566 = (5474 : Int) from node_0_40566]
  decide

theorem row_41 : count primes 42700 ≤ (5788 : Int) - 15 := by
  rw [show count primes 42700 = (5773 : Int) from node_0_42700]
  decide

def pairs : List (Nat × Nat) := [(40566, 5489), (42700, 5788)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl
  · exact row_40
  · exact row_41
end B699CorePrunedSieve.CoreRest07
#check @B699CorePrunedSieve.CoreRest07.pairs_valid
#print axioms B699CorePrunedSieve.CoreRest07.pairs_valid
