import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreRest08
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_44916 : count [19, 17, 13, 11, 7, 5, 3, 2] 44916 = (7686 : Int) := by
  decide

theorem node_8_1952 : count [19, 17, 13, 11, 7, 5, 3, 2] 1952 = (331 : Int) := by
  decide

theorem node_7_44916 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 = (7355 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 = count [19, 17, 13, 11, 7, 5, 3, 2] 44916 - count [19, 17, 13, 11, 7, 5, 3, 2] (44916 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 44916 (by decide)
    _ = (7686 : Int) - (331 : Int) :=
      sub_congr node_8_44916 node_8_1952
    _ = (7355 : Int) := by decide

theorem node_8_1548 : count [19, 17, 13, 11, 7, 5, 3, 2] 1548 = (261 : Int) := by
  decide

theorem node_8_67 : count [19, 17, 13, 11, 7, 5, 3, 2] 67 = (12 : Int) := by
  decide

theorem node_7_1548 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1548 = (249 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1548 = count [19, 17, 13, 11, 7, 5, 3, 2] 1548 - count [19, 17, 13, 11, 7, 5, 3, 2] (1548 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1548 (by decide)
    _ = (261 : Int) - (12 : Int) :=
      sub_congr node_8_1548 node_8_67
    _ = (249 : Int) := by decide

theorem node_6_44916 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 = (7106 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (44916 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 (by decide)
    _ = (7355 : Int) - (249 : Int) :=
      sub_congr node_7_44916 node_7_1548
    _ = (7106 : Int) := by decide

theorem node_8_1448 : count [19, 17, 13, 11, 7, 5, 3, 2] 1448 = (243 : Int) := by
  decide

theorem node_8_62 : count [19, 17, 13, 11, 7, 5, 3, 2] 62 = (11 : Int) := by
  decide

theorem node_7_1448 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 = (232 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 = count [19, 17, 13, 11, 7, 5, 3, 2] 1448 - count [19, 17, 13, 11, 7, 5, 3, 2] (1448 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1448 (by decide)
    _ = (243 : Int) - (11 : Int) :=
      sub_congr node_8_1448 node_8_62
    _ = (232 : Int) := by decide

theorem node_8_49 : count [19, 17, 13, 11, 7, 5, 3, 2] 49 = (8 : Int) := by
  decide

theorem node_8_2 : count [19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  decide

theorem node_7_49 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = (7 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 49 = count [19, 17, 13, 11, 7, 5, 3, 2] 49 - count [19, 17, 13, 11, 7, 5, 3, 2] (49 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 49 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_8_49 node_8_2
    _ = (7 : Int) := by decide

theorem node_6_1448 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 = (225 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1448 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1448 (by decide)
    _ = (232 : Int) - (7 : Int) :=
      sub_congr node_7_1448 node_7_49
    _ = (225 : Int) := by decide

theorem node_5_44916 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 = (6881 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (44916 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 (by decide)
    _ = (7106 : Int) - (225 : Int) :=
      sub_congr node_6_44916 node_6_1448
    _ = (6881 : Int) := by decide

theorem node_8_1213 : count [19, 17, 13, 11, 7, 5, 3, 2] 1213 = (204 : Int) := by
  decide

theorem node_8_52 : count [19, 17, 13, 11, 7, 5, 3, 2] 52 = (8 : Int) := by
  decide

theorem node_7_1213 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1213 = (196 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1213 = count [19, 17, 13, 11, 7, 5, 3, 2] 1213 - count [19, 17, 13, 11, 7, 5, 3, 2] (1213 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1213 (by decide)
    _ = (204 : Int) - (8 : Int) :=
      sub_congr node_8_1213 node_8_52
    _ = (196 : Int) := by decide

theorem node_8_41 : count [19, 17, 13, 11, 7, 5, 3, 2] 41 = (6 : Int) := by
  decide

theorem node_8_1 : count [19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  decide

theorem node_7_41 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = (5 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = count [19, 17, 13, 11, 7, 5, 3, 2] 41 - count [19, 17, 13, 11, 7, 5, 3, 2] (41 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 41 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_8_41 node_8_1
    _ = (5 : Int) := by decide

theorem node_6_1213 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1213 = (191 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1213 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1213 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1213 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1213 (by decide)
    _ = (196 : Int) - (5 : Int) :=
      sub_congr node_7_1213 node_7_41
    _ = (191 : Int) := by decide

theorem node_8_39 : count [19, 17, 13, 11, 7, 5, 3, 2] 39 = (5 : Int) := by
  decide

theorem node_7_39 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 39 = (4 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 39 = count [19, 17, 13, 11, 7, 5, 3, 2] 39 - count [19, 17, 13, 11, 7, 5, 3, 2] (39 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 39 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_8_39 node_8_1
    _ = (4 : Int) := by decide

theorem node_8_0 : count [19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [19, 17, 13, 11, 7, 5, 3, 2]

theorem node_7_1 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [19, 17, 13, 11, 7, 5, 3, 2] 1 - count [19, 17, 13, 11, 7, 5, 3, 2] (1 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_1 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_39 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 = (3 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 39 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 39 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (39 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 39 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_7_39 node_7_1
    _ = (3 : Int) := by decide

theorem node_5_1213 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1213 = (188 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1213 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1213 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1213 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1213 (by decide)
    _ = (191 : Int) - (3 : Int) :=
      sub_congr node_6_1213 node_6_39
    _ = (188 : Int) := by decide

theorem node_4_44916 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 = (6693 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (44916 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 (by decide)
    _ = (6881 : Int) - (188 : Int) :=
      sub_congr node_5_44916 node_5_1213
    _ = (6693 : Int) := by decide

theorem node_8_1095 : count [19, 17, 13, 11, 7, 5, 3, 2] 1095 = (187 : Int) := by
  decide

theorem node_8_47 : count [19, 17, 13, 11, 7, 5, 3, 2] 47 = (8 : Int) := by
  decide

theorem node_7_1095 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1095 = (179 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1095 = count [19, 17, 13, 11, 7, 5, 3, 2] 1095 - count [19, 17, 13, 11, 7, 5, 3, 2] (1095 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1095 (by decide)
    _ = (187 : Int) - (8 : Int) :=
      sub_congr node_8_1095 node_8_47
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

theorem node_6_1095 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1095 = (175 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1095 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1095 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1095 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1095 (by decide)
    _ = (179 : Int) - (4 : Int) :=
      sub_congr node_7_1095 node_7_37
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

theorem node_6_35 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = (2 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 35 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (35 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 35 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_7_35 node_7_1
    _ = (2 : Int) := by decide

theorem node_5_1095 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1095 = (173 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1095 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1095 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1095 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1095 (by decide)
    _ = (175 : Int) - (2 : Int) :=
      sub_congr node_6_1095 node_6_35
    _ = (173 : Int) := by decide

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

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_29 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (29 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 29 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_29 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_1095 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1095 = (172 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1095 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1095 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1095 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1095 (by decide)
    _ = (173 : Int) - (1 : Int) :=
      sub_congr node_5_1095 node_5_29
    _ = (172 : Int) := by decide

theorem node_3_44916 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 = (6521 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (44916 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 (by decide)
    _ = (6693 : Int) - (172 : Int) :=
      sub_congr node_4_44916 node_4_1095
    _ = (6521 : Int) := by decide

theorem node_8_1044 : count [19, 17, 13, 11, 7, 5, 3, 2] 1044 = (177 : Int) := by
  decide

theorem node_8_45 : count [19, 17, 13, 11, 7, 5, 3, 2] 45 = (7 : Int) := by
  decide

theorem node_7_1044 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1044 = (170 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1044 = count [19, 17, 13, 11, 7, 5, 3, 2] 1044 - count [19, 17, 13, 11, 7, 5, 3, 2] (1044 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1044 (by decide)
    _ = (177 : Int) - (7 : Int) :=
      sub_congr node_8_1044 node_8_45
    _ = (170 : Int) := by decide

theorem node_8_36 : count [19, 17, 13, 11, 7, 5, 3, 2] 36 = (4 : Int) := by
  decide

theorem node_7_36 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = (3 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = count [19, 17, 13, 11, 7, 5, 3, 2] 36 - count [19, 17, 13, 11, 7, 5, 3, 2] (36 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 36 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_8_36 node_8_1
    _ = (3 : Int) := by decide

theorem node_6_1044 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1044 = (167 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1044 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1044 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1044 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1044 (by decide)
    _ = (170 : Int) - (3 : Int) :=
      sub_congr node_7_1044 node_7_36
    _ = (167 : Int) := by decide

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

theorem node_5_1044 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1044 = (165 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1044 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1044 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1044 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1044 (by decide)
    _ = (167 : Int) - (2 : Int) :=
      sub_congr node_6_1044 node_6_33
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

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

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

theorem node_4_1044 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1044 = (164 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1044 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1044 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1044 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1044 (by decide)
    _ = (165 : Int) - (1 : Int) :=
      sub_congr node_5_1044 node_5_28
    _ = (164 : Int) := by decide

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

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_25 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (25 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_25 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_1044 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1044 = (163 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1044 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1044 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1044 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1044 (by decide)
    _ = (164 : Int) - (1 : Int) :=
      sub_congr node_4_1044 node_4_25
    _ = (163 : Int) := by decide

theorem node_2_44916 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 = (6358 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (44916 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 (by decide)
    _ = (6521 : Int) - (163 : Int) :=
      sub_congr node_3_44916 node_3_1044
    _ = (6358 : Int) := by decide

theorem node_8_955 : count [19, 17, 13, 11, 7, 5, 3, 2] 955 = (162 : Int) := by
  decide

theorem node_7_955 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 955 = (156 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 955 = count [19, 17, 13, 11, 7, 5, 3, 2] 955 - count [19, 17, 13, 11, 7, 5, 3, 2] (955 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 955 (by decide)
    _ = (162 : Int) - (6 : Int) :=
      sub_congr node_8_955 node_8_41
    _ = (156 : Int) := by decide

theorem node_8_32 : count [19, 17, 13, 11, 7, 5, 3, 2] 32 = (4 : Int) := by
  decide

theorem node_7_32 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = (3 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = count [19, 17, 13, 11, 7, 5, 3, 2] 32 - count [19, 17, 13, 11, 7, 5, 3, 2] (32 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 32 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_8_32 node_8_1
    _ = (3 : Int) := by decide

theorem node_6_955 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 955 = (153 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 955 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 955 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (955 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 955 (by decide)
    _ = (156 : Int) - (3 : Int) :=
      sub_congr node_7_955 node_7_32
    _ = (153 : Int) := by decide

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

theorem node_5_955 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 955 = (152 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 955 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 955 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (955 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 955 (by decide)
    _ = (153 : Int) - (1 : Int) :=
      sub_congr node_6_955 node_6_30
    _ = (152 : Int) := by decide

theorem node_4_955 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 955 = (151 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 955 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 955 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (955 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 955 (by decide)
    _ = (152 : Int) - (1 : Int) :=
      sub_congr node_5_955 node_5_25
    _ = (151 : Int) := by decide

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

theorem node_4_23 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (23 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_23 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_955 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 955 = (150 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 955 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 955 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (955 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 955 (by decide)
    _ = (151 : Int) - (1 : Int) :=
      sub_congr node_4_955 node_4_23
    _ = (150 : Int) := by decide

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

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_22 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (22 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_22 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_955 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 955 = (149 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 955 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 955 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (955 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 955 (by decide)
    _ = (150 : Int) - (1 : Int) :=
      sub_congr node_3_955 node_3_22
    _ = (149 : Int) := by decide

theorem node_1_44916 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 = (6209 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (44916 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 (by decide)
    _ = (6358 : Int) - (149 : Int) :=
      sub_congr node_2_44916 node_2_955
    _ = (6209 : Int) := by decide

theorem node_8_847 : count [19, 17, 13, 11, 7, 5, 3, 2] 847 = (143 : Int) := by
  decide

theorem node_7_847 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 847 = (139 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 847 = count [19, 17, 13, 11, 7, 5, 3, 2] 847 - count [19, 17, 13, 11, 7, 5, 3, 2] (847 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 847 (by decide)
    _ = (143 : Int) - (4 : Int) :=
      sub_congr node_8_847 node_8_36
    _ = (139 : Int) := by decide

theorem node_6_847 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 847 = (137 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 847 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 847 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (847 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 847 (by decide)
    _ = (139 : Int) - (2 : Int) :=
      sub_congr node_7_847 node_7_29
    _ = (137 : Int) := by decide

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

theorem node_5_847 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 847 = (136 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 847 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 847 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (847 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 847 (by decide)
    _ = (137 : Int) - (1 : Int) :=
      sub_congr node_6_847 node_6_27
    _ = (136 : Int) := by decide

theorem node_4_847 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 847 = (135 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 847 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 847 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (847 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 847 (by decide)
    _ = (136 : Int) - (1 : Int) :=
      sub_congr node_5_847 node_5_22
    _ = (135 : Int) := by decide

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

theorem node_3_847 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 847 = (134 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 847 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 847 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (847 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 847 (by decide)
    _ = (135 : Int) - (1 : Int) :=
      sub_congr node_4_847 node_4_20
    _ = (134 : Int) := by decide

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

theorem node_3_19 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (19 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_19 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_847 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 847 = (133 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 847 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 847 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (847 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 847 (by decide)
    _ = (134 : Int) - (1 : Int) :=
      sub_congr node_3_847 node_3_19
    _ = (133 : Int) := by decide

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

theorem node_3_18 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (18 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_18 node_4_0
    _ = (1 : Int) := by decide

theorem node_3_0 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_2_18 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (18 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_18 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_847 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 847 = (132 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 847 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 847 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (847 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 847 (by decide)
    _ = (133 : Int) - (1 : Int) :=
      sub_congr node_2_847 node_2_18
    _ = (132 : Int) := by decide

theorem node_0_44916 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 = (6077 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (44916 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 44916 (by decide)
    _ = (6209 : Int) - (132 : Int) :=
      sub_congr node_1_44916 node_1_847
    _ = (6077 : Int) := by decide

theorem node_8_47286 : count [19, 17, 13, 11, 7, 5, 3, 2] 47286 = (8087 : Int) := by
  decide

theorem node_8_2055 : count [19, 17, 13, 11, 7, 5, 3, 2] 2055 = (347 : Int) := by
  decide

theorem node_7_47286 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 = (7740 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 = count [19, 17, 13, 11, 7, 5, 3, 2] 47286 - count [19, 17, 13, 11, 7, 5, 3, 2] (47286 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 47286 (by decide)
    _ = (8087 : Int) - (347 : Int) :=
      sub_congr node_8_47286 node_8_2055
    _ = (7740 : Int) := by decide

theorem node_8_1630 : count [19, 17, 13, 11, 7, 5, 3, 2] 1630 = (277 : Int) := by
  decide

theorem node_8_70 : count [19, 17, 13, 11, 7, 5, 3, 2] 70 = (12 : Int) := by
  decide

theorem node_7_1630 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1630 = (265 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1630 = count [19, 17, 13, 11, 7, 5, 3, 2] 1630 - count [19, 17, 13, 11, 7, 5, 3, 2] (1630 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1630 (by decide)
    _ = (277 : Int) - (12 : Int) :=
      sub_congr node_8_1630 node_8_70
    _ = (265 : Int) := by decide

theorem node_6_47286 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 = (7475 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (47286 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 (by decide)
    _ = (7740 : Int) - (265 : Int) :=
      sub_congr node_7_47286 node_7_1630
    _ = (7475 : Int) := by decide

theorem node_8_1525 : count [19, 17, 13, 11, 7, 5, 3, 2] 1525 = (257 : Int) := by
  decide

theorem node_8_66 : count [19, 17, 13, 11, 7, 5, 3, 2] 66 = (11 : Int) := by
  decide

theorem node_7_1525 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1525 = (246 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1525 = count [19, 17, 13, 11, 7, 5, 3, 2] 1525 - count [19, 17, 13, 11, 7, 5, 3, 2] (1525 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1525 (by decide)
    _ = (257 : Int) - (11 : Int) :=
      sub_congr node_8_1525 node_8_66
    _ = (246 : Int) := by decide

theorem node_7_52 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = (7 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = count [19, 17, 13, 11, 7, 5, 3, 2] 52 - count [19, 17, 13, 11, 7, 5, 3, 2] (52 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 52 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_8_52 node_8_2
    _ = (7 : Int) := by decide

theorem node_6_1525 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1525 = (239 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1525 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1525 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1525 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1525 (by decide)
    _ = (246 : Int) - (7 : Int) :=
      sub_congr node_7_1525 node_7_52
    _ = (239 : Int) := by decide

theorem node_5_47286 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 = (7236 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (47286 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 (by decide)
    _ = (7475 : Int) - (239 : Int) :=
      sub_congr node_6_47286 node_6_1525
    _ = (7236 : Int) := by decide

theorem node_8_1278 : count [19, 17, 13, 11, 7, 5, 3, 2] 1278 = (215 : Int) := by
  decide

theorem node_8_55 : count [19, 17, 13, 11, 7, 5, 3, 2] 55 = (9 : Int) := by
  decide

theorem node_7_1278 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1278 = (206 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1278 = count [19, 17, 13, 11, 7, 5, 3, 2] 1278 - count [19, 17, 13, 11, 7, 5, 3, 2] (1278 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1278 (by decide)
    _ = (215 : Int) - (9 : Int) :=
      sub_congr node_8_1278 node_8_55
    _ = (206 : Int) := by decide

theorem node_8_44 : count [19, 17, 13, 11, 7, 5, 3, 2] 44 = (7 : Int) := by
  decide

theorem node_7_44 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 44 = (6 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 44 = count [19, 17, 13, 11, 7, 5, 3, 2] 44 - count [19, 17, 13, 11, 7, 5, 3, 2] (44 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 44 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_8_44 node_8_1
    _ = (6 : Int) := by decide

theorem node_6_1278 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1278 = (200 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1278 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1278 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1278 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1278 (by decide)
    _ = (206 : Int) - (6 : Int) :=
      sub_congr node_7_1278 node_7_44
    _ = (200 : Int) := by decide

theorem node_6_41 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = (4 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 41 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (41 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 41 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_7_41 node_7_1
    _ = (4 : Int) := by decide

theorem node_5_1278 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1278 = (196 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1278 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1278 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1278 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1278 (by decide)
    _ = (200 : Int) - (4 : Int) :=
      sub_congr node_6_1278 node_6_41
    _ = (196 : Int) := by decide

theorem node_4_47286 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 = (7040 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (47286 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 (by decide)
    _ = (7236 : Int) - (196 : Int) :=
      sub_congr node_5_47286 node_5_1278
    _ = (7040 : Int) := by decide

theorem node_8_1153 : count [19, 17, 13, 11, 7, 5, 3, 2] 1153 = (196 : Int) := by
  decide

theorem node_8_50 : count [19, 17, 13, 11, 7, 5, 3, 2] 50 = (8 : Int) := by
  decide

theorem node_7_1153 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1153 = (188 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1153 = count [19, 17, 13, 11, 7, 5, 3, 2] 1153 - count [19, 17, 13, 11, 7, 5, 3, 2] (1153 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1153 (by decide)
    _ = (196 : Int) - (8 : Int) :=
      sub_congr node_8_1153 node_8_50
    _ = (188 : Int) := by decide

theorem node_6_1153 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1153 = (184 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1153 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1153 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1153 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1153 (by decide)
    _ = (188 : Int) - (4 : Int) :=
      sub_congr node_7_1153 node_7_39
    _ = (184 : Int) := by decide

theorem node_6_37 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = (3 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 37 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (37 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 37 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_7_37 node_7_1
    _ = (3 : Int) := by decide

theorem node_5_1153 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1153 = (181 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1153 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1153 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1153 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1153 (by decide)
    _ = (184 : Int) - (3 : Int) :=
      sub_congr node_6_1153 node_6_37
    _ = (181 : Int) := by decide

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

theorem node_6_1 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_1 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_31 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (31 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_6_31 node_6_1
    _ = (1 : Int) := by decide

theorem node_4_1153 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1153 = (180 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1153 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1153 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1153 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1153 (by decide)
    _ = (181 : Int) - (1 : Int) :=
      sub_congr node_5_1153 node_5_31
    _ = (180 : Int) := by decide

theorem node_3_47286 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 = (6860 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (47286 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 (by decide)
    _ = (7040 : Int) - (180 : Int) :=
      sub_congr node_4_47286 node_4_1153
    _ = (6860 : Int) := by decide

theorem node_8_1099 : count [19, 17, 13, 11, 7, 5, 3, 2] 1099 = (188 : Int) := by
  decide

theorem node_7_1099 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1099 = (180 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1099 = count [19, 17, 13, 11, 7, 5, 3, 2] 1099 - count [19, 17, 13, 11, 7, 5, 3, 2] (1099 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1099 (by decide)
    _ = (188 : Int) - (8 : Int) :=
      sub_congr node_8_1099 node_8_47
    _ = (180 : Int) := by decide

theorem node_6_1099 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1099 = (176 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1099 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1099 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1099 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1099 (by decide)
    _ = (180 : Int) - (4 : Int) :=
      sub_congr node_7_1099 node_7_37
    _ = (176 : Int) := by decide

theorem node_5_1099 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1099 = (174 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1099 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1099 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1099 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1099 (by decide)
    _ = (176 : Int) - (2 : Int) :=
      sub_congr node_6_1099 node_6_35
    _ = (174 : Int) := by decide

theorem node_4_1099 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1099 = (173 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1099 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1099 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1099 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1099 (by decide)
    _ = (174 : Int) - (1 : Int) :=
      sub_congr node_5_1099 node_5_29
    _ = (173 : Int) := by decide

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

theorem node_3_1099 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1099 = (172 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1099 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1099 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1099 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1099 (by decide)
    _ = (173 : Int) - (1 : Int) :=
      sub_congr node_4_1099 node_4_26
    _ = (172 : Int) := by decide

theorem node_2_47286 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 = (6688 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (47286 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 (by decide)
    _ = (6860 : Int) - (172 : Int) :=
      sub_congr node_3_47286 node_3_1099
    _ = (6688 : Int) := by decide

theorem node_8_1006 : count [19, 17, 13, 11, 7, 5, 3, 2] 1006 = (170 : Int) := by
  decide

theorem node_8_43 : count [19, 17, 13, 11, 7, 5, 3, 2] 43 = (7 : Int) := by
  decide

theorem node_7_1006 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1006 = (163 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1006 = count [19, 17, 13, 11, 7, 5, 3, 2] 1006 - count [19, 17, 13, 11, 7, 5, 3, 2] (1006 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1006 (by decide)
    _ = (170 : Int) - (7 : Int) :=
      sub_congr node_8_1006 node_8_43
    _ = (163 : Int) := by decide

theorem node_8_34 : count [19, 17, 13, 11, 7, 5, 3, 2] 34 = (4 : Int) := by
  decide

theorem node_7_34 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = (3 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = count [19, 17, 13, 11, 7, 5, 3, 2] 34 - count [19, 17, 13, 11, 7, 5, 3, 2] (34 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 34 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_8_34 node_8_1
    _ = (3 : Int) := by decide

theorem node_6_1006 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1006 = (160 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1006 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1006 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1006 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1006 (by decide)
    _ = (163 : Int) - (3 : Int) :=
      sub_congr node_7_1006 node_7_34
    _ = (160 : Int) := by decide

theorem node_6_32 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = (2 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 32 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (32 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 32 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_7_32 node_7_1
    _ = (2 : Int) := by decide

theorem node_5_1006 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1006 = (158 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1006 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1006 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1006 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1006 (by decide)
    _ = (160 : Int) - (2 : Int) :=
      sub_congr node_6_1006 node_6_32
    _ = (158 : Int) := by decide

theorem node_5_27 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (27 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 27 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_27 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_1006 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1006 = (157 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1006 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1006 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1006 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1006 (by decide)
    _ = (158 : Int) - (1 : Int) :=
      sub_congr node_5_1006 node_5_27
    _ = (157 : Int) := by decide

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

theorem node_3_1006 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1006 = (156 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1006 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1006 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1006 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1006 (by decide)
    _ = (157 : Int) - (1 : Int) :=
      sub_congr node_4_1006 node_4_24
    _ = (156 : Int) := by decide

theorem node_3_23 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (23 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_23 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1006 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1006 = (155 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1006 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1006 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1006 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1006 (by decide)
    _ = (156 : Int) - (1 : Int) :=
      sub_congr node_3_1006 node_3_23
    _ = (155 : Int) := by decide

theorem node_1_47286 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 = (6533 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (47286 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 (by decide)
    _ = (6688 : Int) - (155 : Int) :=
      sub_congr node_2_47286 node_2_1006
    _ = (6533 : Int) := by decide

theorem node_8_892 : count [19, 17, 13, 11, 7, 5, 3, 2] 892 = (152 : Int) := by
  decide

theorem node_8_38 : count [19, 17, 13, 11, 7, 5, 3, 2] 38 = (5 : Int) := by
  decide

theorem node_7_892 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 892 = (147 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 892 = count [19, 17, 13, 11, 7, 5, 3, 2] 892 - count [19, 17, 13, 11, 7, 5, 3, 2] (892 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 892 (by decide)
    _ = (152 : Int) - (5 : Int) :=
      sub_congr node_8_892 node_8_38
    _ = (147 : Int) := by decide

theorem node_6_892 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 892 = (145 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 892 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 892 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (892 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 892 (by decide)
    _ = (147 : Int) - (2 : Int) :=
      sub_congr node_7_892 node_7_30
    _ = (145 : Int) := by decide

theorem node_5_892 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 892 = (144 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 892 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 892 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (892 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 892 (by decide)
    _ = (145 : Int) - (1 : Int) :=
      sub_congr node_6_892 node_6_28
    _ = (144 : Int) := by decide

theorem node_4_892 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 892 = (143 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 892 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 892 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (892 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 892 (by decide)
    _ = (144 : Int) - (1 : Int) :=
      sub_congr node_5_892 node_5_24
    _ = (143 : Int) := by decide

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

theorem node_3_892 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 892 = (142 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 892 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 892 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (892 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 892 (by decide)
    _ = (143 : Int) - (1 : Int) :=
      sub_congr node_4_892 node_4_21
    _ = (142 : Int) := by decide

theorem node_3_20 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (20 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_20 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_892 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 892 = (141 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 892 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 892 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (892 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 892 (by decide)
    _ = (142 : Int) - (1 : Int) :=
      sub_congr node_3_892 node_3_20
    _ = (141 : Int) := by decide

theorem node_1_892 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 892 = (140 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 892 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 892 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (892 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 892 (by decide)
    _ = (141 : Int) - (1 : Int) :=
      sub_congr node_2_892 node_2_18
    _ = (140 : Int) := by decide

theorem node_0_47286 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 = (6393 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (47286 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47286 (by decide)
    _ = (6533 : Int) - (140 : Int) :=
      sub_congr node_1_47286 node_1_892
    _ = (6393 : Int) := by decide

theorem row_42 : count primes 44916 ≤ (6092 : Int) - 15 := by
  rw [show count primes 44916 = (6077 : Int) from node_0_44916]
  decide

theorem row_43 : count primes 47286 ≤ (6408 : Int) - 15 := by
  rw [show count primes 47286 = (6393 : Int) from node_0_47286]
  decide

def pairs : List (Nat × Nat) := [(44916, 6092), (47286, 6408)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl
  · exact row_42
  · exact row_43
end B699CorePrunedSieve.CoreRest08
#check @B699CorePrunedSieve.CoreRest08.pairs_valid
#print axioms B699CorePrunedSieve.CoreRest08.pairs_valid
