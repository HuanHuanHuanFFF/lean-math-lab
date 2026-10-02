import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreRest09
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_49746 : count [19, 17, 13, 11, 7, 5, 3, 2] 49746 = (8508 : Int) := by
  decide

theorem node_8_2162 : count [19, 17, 13, 11, 7, 5, 3, 2] 2162 = (366 : Int) := by
  decide

theorem node_7_49746 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 = (8142 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 = count [19, 17, 13, 11, 7, 5, 3, 2] 49746 - count [19, 17, 13, 11, 7, 5, 3, 2] (49746 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 49746 (by decide)
    _ = (8508 : Int) - (366 : Int) :=
      sub_congr node_8_49746 node_8_2162
    _ = (8142 : Int) := by decide

theorem node_8_1715 : count [19, 17, 13, 11, 7, 5, 3, 2] 1715 = (291 : Int) := by
  decide

theorem node_8_74 : count [19, 17, 13, 11, 7, 5, 3, 2] 74 = (14 : Int) := by
  decide

theorem node_7_1715 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1715 = (277 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1715 = count [19, 17, 13, 11, 7, 5, 3, 2] 1715 - count [19, 17, 13, 11, 7, 5, 3, 2] (1715 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1715 (by decide)
    _ = (291 : Int) - (14 : Int) :=
      sub_congr node_8_1715 node_8_74
    _ = (277 : Int) := by decide

theorem node_6_49746 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 = (7865 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (49746 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 (by decide)
    _ = (8142 : Int) - (277 : Int) :=
      sub_congr node_7_49746 node_7_1715
    _ = (7865 : Int) := by decide

theorem node_8_1604 : count [19, 17, 13, 11, 7, 5, 3, 2] 1604 = (271 : Int) := by
  decide

theorem node_8_69 : count [19, 17, 13, 11, 7, 5, 3, 2] 69 = (12 : Int) := by
  decide

theorem node_7_1604 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1604 = (259 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1604 = count [19, 17, 13, 11, 7, 5, 3, 2] 1604 - count [19, 17, 13, 11, 7, 5, 3, 2] (1604 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1604 (by decide)
    _ = (271 : Int) - (12 : Int) :=
      sub_congr node_8_1604 node_8_69
    _ = (259 : Int) := by decide

theorem node_8_55 : count [19, 17, 13, 11, 7, 5, 3, 2] 55 = (9 : Int) := by
  decide

theorem node_8_2 : count [19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  decide

theorem node_7_55 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 55 = count [19, 17, 13, 11, 7, 5, 3, 2] 55 - count [19, 17, 13, 11, 7, 5, 3, 2] (55 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 55 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_55 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_1604 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1604 = (251 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1604 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1604 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1604 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1604 (by decide)
    _ = (259 : Int) - (8 : Int) :=
      sub_congr node_7_1604 node_7_55
    _ = (251 : Int) := by decide

theorem node_5_49746 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 = (7614 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (49746 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 (by decide)
    _ = (7865 : Int) - (251 : Int) :=
      sub_congr node_6_49746 node_6_1604
    _ = (7614 : Int) := by decide

theorem node_8_1344 : count [19, 17, 13, 11, 7, 5, 3, 2] 1344 = (227 : Int) := by
  decide

theorem node_8_58 : count [19, 17, 13, 11, 7, 5, 3, 2] 58 = (9 : Int) := by
  decide

theorem node_7_1344 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1344 = (218 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1344 = count [19, 17, 13, 11, 7, 5, 3, 2] 1344 - count [19, 17, 13, 11, 7, 5, 3, 2] (1344 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1344 (by decide)
    _ = (227 : Int) - (9 : Int) :=
      sub_congr node_8_1344 node_8_58
    _ = (218 : Int) := by decide

theorem node_8_46 : count [19, 17, 13, 11, 7, 5, 3, 2] 46 = (7 : Int) := by
  decide

theorem node_7_46 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = (6 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = count [19, 17, 13, 11, 7, 5, 3, 2] 46 - count [19, 17, 13, 11, 7, 5, 3, 2] (46 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 46 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_8_46 node_8_2
    _ = (6 : Int) := by decide

theorem node_6_1344 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1344 = (212 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1344 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1344 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1344 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1344 (by decide)
    _ = (218 : Int) - (6 : Int) :=
      sub_congr node_7_1344 node_7_46
    _ = (212 : Int) := by decide

theorem node_8_43 : count [19, 17, 13, 11, 7, 5, 3, 2] 43 = (7 : Int) := by
  decide

theorem node_8_1 : count [19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  decide

theorem node_7_43 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 43 = (6 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 43 = count [19, 17, 13, 11, 7, 5, 3, 2] 43 - count [19, 17, 13, 11, 7, 5, 3, 2] (43 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 43 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_8_43 node_8_1
    _ = (6 : Int) := by decide

theorem node_8_0 : count [19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [19, 17, 13, 11, 7, 5, 3, 2]

theorem node_7_1 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [19, 17, 13, 11, 7, 5, 3, 2] 1 - count [19, 17, 13, 11, 7, 5, 3, 2] (1 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_1 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_43 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 = (5 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 43 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 43 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (43 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 43 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_7_43 node_7_1
    _ = (5 : Int) := by decide

theorem node_5_1344 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1344 = (207 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1344 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1344 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1344 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1344 (by decide)
    _ = (212 : Int) - (5 : Int) :=
      sub_congr node_6_1344 node_6_43
    _ = (207 : Int) := by decide

theorem node_4_49746 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 = (7407 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (49746 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 (by decide)
    _ = (7614 : Int) - (207 : Int) :=
      sub_congr node_5_49746 node_5_1344
    _ = (7407 : Int) := by decide

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

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_1 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_1 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_32 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (32 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_6_32 node_6_1
    _ = (1 : Int) := by decide

theorem node_4_1213 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1213 = (187 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1213 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1213 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1213 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1213 (by decide)
    _ = (188 : Int) - (1 : Int) :=
      sub_congr node_5_1213 node_5_32
    _ = (187 : Int) := by decide

theorem node_3_49746 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 = (7220 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (49746 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 (by decide)
    _ = (7407 : Int) - (187 : Int) :=
      sub_congr node_4_49746 node_4_1213
    _ = (7220 : Int) := by decide

theorem node_8_1156 : count [19, 17, 13, 11, 7, 5, 3, 2] 1156 = (196 : Int) := by
  decide

theorem node_8_50 : count [19, 17, 13, 11, 7, 5, 3, 2] 50 = (8 : Int) := by
  decide

theorem node_7_1156 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1156 = (188 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1156 = count [19, 17, 13, 11, 7, 5, 3, 2] 1156 - count [19, 17, 13, 11, 7, 5, 3, 2] (1156 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1156 (by decide)
    _ = (196 : Int) - (8 : Int) :=
      sub_congr node_8_1156 node_8_50
    _ = (188 : Int) := by decide

theorem node_6_1156 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1156 = (184 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1156 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1156 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1156 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1156 (by decide)
    _ = (188 : Int) - (4 : Int) :=
      sub_congr node_7_1156 node_7_39
    _ = (184 : Int) := by decide

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

theorem node_5_1156 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1156 = (181 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1156 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1156 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1156 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1156 (by decide)
    _ = (184 : Int) - (3 : Int) :=
      sub_congr node_6_1156 node_6_37
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

theorem node_5_31 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (31 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_6_31 node_6_1
    _ = (1 : Int) := by decide

theorem node_4_1156 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1156 = (180 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1156 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1156 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1156 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1156 (by decide)
    _ = (181 : Int) - (1 : Int) :=
      sub_congr node_5_1156 node_5_31
    _ = (180 : Int) := by decide

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

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_28 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (28 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_28 node_6_0
    _ = (1 : Int) := by decide

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_28 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (28 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_28 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_1156 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1156 = (179 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1156 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1156 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1156 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1156 (by decide)
    _ = (180 : Int) - (1 : Int) :=
      sub_congr node_4_1156 node_4_28
    _ = (179 : Int) := by decide

theorem node_2_49746 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 = (7041 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (49746 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 (by decide)
    _ = (7220 : Int) - (179 : Int) :=
      sub_congr node_3_49746 node_3_1156
    _ = (7041 : Int) := by decide

theorem node_8_1058 : count [19, 17, 13, 11, 7, 5, 3, 2] 1058 = (179 : Int) := by
  decide

theorem node_7_1058 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1058 = (172 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1058 = count [19, 17, 13, 11, 7, 5, 3, 2] 1058 - count [19, 17, 13, 11, 7, 5, 3, 2] (1058 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1058 (by decide)
    _ = (179 : Int) - (7 : Int) :=
      sub_congr node_8_1058 node_8_46
    _ = (172 : Int) := by decide

theorem node_8_36 : count [19, 17, 13, 11, 7, 5, 3, 2] 36 = (4 : Int) := by
  decide

theorem node_7_36 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = (3 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = count [19, 17, 13, 11, 7, 5, 3, 2] 36 - count [19, 17, 13, 11, 7, 5, 3, 2] (36 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 36 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_8_36 node_8_1
    _ = (3 : Int) := by decide

theorem node_6_1058 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1058 = (169 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1058 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1058 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1058 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1058 (by decide)
    _ = (172 : Int) - (3 : Int) :=
      sub_congr node_7_1058 node_7_36
    _ = (169 : Int) := by decide

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

theorem node_5_1058 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1058 = (167 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1058 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1058 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1058 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1058 (by decide)
    _ = (169 : Int) - (2 : Int) :=
      sub_congr node_6_1058 node_6_34
    _ = (167 : Int) := by decide

theorem node_4_1058 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1058 = (166 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1058 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1058 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1058 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1058 (by decide)
    _ = (167 : Int) - (1 : Int) :=
      sub_congr node_5_1058 node_5_28
    _ = (166 : Int) := by decide

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

theorem node_4_25 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (25 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_25 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_1058 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1058 = (165 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1058 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1058 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1058 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1058 (by decide)
    _ = (166 : Int) - (1 : Int) :=
      sub_congr node_4_1058 node_4_25
    _ = (165 : Int) := by decide

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

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_24 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (24 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_24 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1058 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1058 = (164 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1058 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1058 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1058 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1058 (by decide)
    _ = (165 : Int) - (1 : Int) :=
      sub_congr node_3_1058 node_3_24
    _ = (164 : Int) := by decide

theorem node_1_49746 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 = (6877 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (49746 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 (by decide)
    _ = (7041 : Int) - (164 : Int) :=
      sub_congr node_2_49746 node_2_1058
    _ = (6877 : Int) := by decide

theorem node_8_938 : count [19, 17, 13, 11, 7, 5, 3, 2] 938 = (158 : Int) := by
  decide

theorem node_8_40 : count [19, 17, 13, 11, 7, 5, 3, 2] 40 = (5 : Int) := by
  decide

theorem node_7_938 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 938 = (153 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 938 = count [19, 17, 13, 11, 7, 5, 3, 2] 938 - count [19, 17, 13, 11, 7, 5, 3, 2] (938 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 938 (by decide)
    _ = (158 : Int) - (5 : Int) :=
      sub_congr node_8_938 node_8_40
    _ = (153 : Int) := by decide

theorem node_6_938 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 = (150 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 938 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (938 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 938 (by decide)
    _ = (153 : Int) - (3 : Int) :=
      sub_congr node_7_938 node_7_32
    _ = (150 : Int) := by decide

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

theorem node_5_938 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 = (149 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (938 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 (by decide)
    _ = (150 : Int) - (1 : Int) :=
      sub_congr node_6_938 node_6_30
    _ = (149 : Int) := by decide

theorem node_4_938 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 = (148 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (938 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 (by decide)
    _ = (149 : Int) - (1 : Int) :=
      sub_congr node_5_938 node_5_25
    _ = (148 : Int) := by decide

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

theorem node_3_938 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 = (147 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (938 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 (by decide)
    _ = (148 : Int) - (1 : Int) :=
      sub_congr node_4_938 node_4_22
    _ = (147 : Int) := by decide

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

theorem node_3_21 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (21 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 21 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_21 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_938 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 = (146 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (938 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 (by decide)
    _ = (147 : Int) - (1 : Int) :=
      sub_congr node_3_938 node_3_21
    _ = (146 : Int) := by decide

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

theorem node_3_0 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_2_19 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (19 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_19 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_938 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 = (145 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (938 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 (by decide)
    _ = (146 : Int) - (1 : Int) :=
      sub_congr node_2_938 node_2_19
    _ = (145 : Int) := by decide

theorem node_0_49746 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 = (6732 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (49746 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 49746 (by decide)
    _ = (6877 : Int) - (145 : Int) :=
      sub_congr node_1_49746 node_1_938
    _ = (6732 : Int) := by decide

theorem node_8_52288 : count [19, 17, 13, 11, 7, 5, 3, 2] 52288 = (8943 : Int) := by
  decide

theorem node_8_2273 : count [19, 17, 13, 11, 7, 5, 3, 2] 2273 = (385 : Int) := by
  decide

theorem node_7_52288 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 = (8558 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 = count [19, 17, 13, 11, 7, 5, 3, 2] 52288 - count [19, 17, 13, 11, 7, 5, 3, 2] (52288 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 52288 (by decide)
    _ = (8943 : Int) - (385 : Int) :=
      sub_congr node_8_52288 node_8_2273
    _ = (8558 : Int) := by decide

theorem node_8_1803 : count [19, 17, 13, 11, 7, 5, 3, 2] 1803 = (306 : Int) := by
  decide

theorem node_8_78 : count [19, 17, 13, 11, 7, 5, 3, 2] 78 = (14 : Int) := by
  decide

theorem node_7_1803 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1803 = (292 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1803 = count [19, 17, 13, 11, 7, 5, 3, 2] 1803 - count [19, 17, 13, 11, 7, 5, 3, 2] (1803 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1803 (by decide)
    _ = (306 : Int) - (14 : Int) :=
      sub_congr node_8_1803 node_8_78
    _ = (292 : Int) := by decide

theorem node_6_52288 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 = (8266 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (52288 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 (by decide)
    _ = (8558 : Int) - (292 : Int) :=
      sub_congr node_7_52288 node_7_1803
    _ = (8266 : Int) := by decide

theorem node_8_1686 : count [19, 17, 13, 11, 7, 5, 3, 2] 1686 = (286 : Int) := by
  decide

theorem node_8_73 : count [19, 17, 13, 11, 7, 5, 3, 2] 73 = (14 : Int) := by
  decide

theorem node_7_1686 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1686 = (272 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1686 = count [19, 17, 13, 11, 7, 5, 3, 2] 1686 - count [19, 17, 13, 11, 7, 5, 3, 2] (1686 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1686 (by decide)
    _ = (286 : Int) - (14 : Int) :=
      sub_congr node_8_1686 node_8_73
    _ = (272 : Int) := by decide

theorem node_7_58 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = count [19, 17, 13, 11, 7, 5, 3, 2] 58 - count [19, 17, 13, 11, 7, 5, 3, 2] (58 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 58 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_58 node_8_2
    _ = (8 : Int) := by decide

theorem node_6_1686 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1686 = (264 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1686 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1686 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1686 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1686 (by decide)
    _ = (272 : Int) - (8 : Int) :=
      sub_congr node_7_1686 node_7_58
    _ = (264 : Int) := by decide

theorem node_5_52288 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 = (8002 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (52288 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 (by decide)
    _ = (8266 : Int) - (264 : Int) :=
      sub_congr node_6_52288 node_6_1686
    _ = (8002 : Int) := by decide

theorem node_8_1413 : count [19, 17, 13, 11, 7, 5, 3, 2] 1413 = (237 : Int) := by
  decide

theorem node_8_61 : count [19, 17, 13, 11, 7, 5, 3, 2] 61 = (11 : Int) := by
  decide

theorem node_7_1413 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1413 = (226 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1413 = count [19, 17, 13, 11, 7, 5, 3, 2] 1413 - count [19, 17, 13, 11, 7, 5, 3, 2] (1413 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1413 (by decide)
    _ = (237 : Int) - (11 : Int) :=
      sub_congr node_8_1413 node_8_61
    _ = (226 : Int) := by decide

theorem node_8_48 : count [19, 17, 13, 11, 7, 5, 3, 2] 48 = (8 : Int) := by
  decide

theorem node_7_48 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = (7 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 48 = count [19, 17, 13, 11, 7, 5, 3, 2] 48 - count [19, 17, 13, 11, 7, 5, 3, 2] (48 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 48 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_8_48 node_8_2
    _ = (7 : Int) := by decide

theorem node_6_1413 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1413 = (219 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1413 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1413 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1413 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1413 (by decide)
    _ = (226 : Int) - (7 : Int) :=
      sub_congr node_7_1413 node_7_48
    _ = (219 : Int) := by decide

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

theorem node_5_1413 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1413 = (214 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1413 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1413 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1413 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1413 (by decide)
    _ = (219 : Int) - (5 : Int) :=
      sub_congr node_6_1413 node_6_45
    _ = (214 : Int) := by decide

theorem node_4_52288 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 = (7788 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (52288 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 (by decide)
    _ = (8002 : Int) - (214 : Int) :=
      sub_congr node_5_52288 node_5_1413
    _ = (7788 : Int) := by decide

theorem node_8_1275 : count [19, 17, 13, 11, 7, 5, 3, 2] 1275 = (214 : Int) := by
  decide

theorem node_7_1275 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1275 = (205 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1275 = count [19, 17, 13, 11, 7, 5, 3, 2] 1275 - count [19, 17, 13, 11, 7, 5, 3, 2] (1275 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1275 (by decide)
    _ = (214 : Int) - (9 : Int) :=
      sub_congr node_8_1275 node_8_55
    _ = (205 : Int) := by decide

theorem node_6_1275 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1275 = (199 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1275 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1275 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1275 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1275 (by decide)
    _ = (205 : Int) - (6 : Int) :=
      sub_congr node_7_1275 node_7_43
    _ = (199 : Int) := by decide

theorem node_6_41 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = (4 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 41 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (41 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 41 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_7_41 node_7_1
    _ = (4 : Int) := by decide

theorem node_5_1275 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1275 = (195 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1275 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1275 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1275 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1275 (by decide)
    _ = (199 : Int) - (4 : Int) :=
      sub_congr node_6_1275 node_6_41
    _ = (195 : Int) := by decide

theorem node_5_34 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (34 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 34 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_6_34 node_6_1
    _ = (1 : Int) := by decide

theorem node_4_1275 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1275 = (194 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1275 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1275 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1275 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1275 (by decide)
    _ = (195 : Int) - (1 : Int) :=
      sub_congr node_5_1275 node_5_34
    _ = (194 : Int) := by decide

theorem node_3_52288 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 = (7594 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (52288 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 (by decide)
    _ = (7788 : Int) - (194 : Int) :=
      sub_congr node_4_52288 node_4_1275
    _ = (7594 : Int) := by decide

theorem node_8_1216 : count [19, 17, 13, 11, 7, 5, 3, 2] 1216 = (204 : Int) := by
  decide

theorem node_7_1216 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1216 = (196 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1216 = count [19, 17, 13, 11, 7, 5, 3, 2] 1216 - count [19, 17, 13, 11, 7, 5, 3, 2] (1216 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1216 (by decide)
    _ = (204 : Int) - (8 : Int) :=
      sub_congr node_8_1216 node_8_52
    _ = (196 : Int) := by decide

theorem node_6_1216 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1216 = (191 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1216 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1216 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1216 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1216 (by decide)
    _ = (196 : Int) - (5 : Int) :=
      sub_congr node_7_1216 node_7_41
    _ = (191 : Int) := by decide

theorem node_5_1216 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1216 = (188 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1216 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1216 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1216 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1216 (by decide)
    _ = (191 : Int) - (3 : Int) :=
      sub_congr node_6_1216 node_6_39
    _ = (188 : Int) := by decide

theorem node_4_1216 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1216 = (187 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1216 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1216 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1216 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1216 (by decide)
    _ = (188 : Int) - (1 : Int) :=
      sub_congr node_5_1216 node_5_32
    _ = (187 : Int) := by decide

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

theorem node_3_1216 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1216 = (186 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1216 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1216 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1216 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1216 (by decide)
    _ = (187 : Int) - (1 : Int) :=
      sub_congr node_4_1216 node_4_29
    _ = (186 : Int) := by decide

theorem node_2_52288 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 = (7408 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (52288 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 (by decide)
    _ = (7594 : Int) - (186 : Int) :=
      sub_congr node_3_52288 node_3_1216
    _ = (7408 : Int) := by decide

theorem node_8_1112 : count [19, 17, 13, 11, 7, 5, 3, 2] 1112 = (190 : Int) := by
  decide

theorem node_7_1112 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1112 = (182 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1112 = count [19, 17, 13, 11, 7, 5, 3, 2] 1112 - count [19, 17, 13, 11, 7, 5, 3, 2] (1112 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1112 (by decide)
    _ = (190 : Int) - (8 : Int) :=
      sub_congr node_8_1112 node_8_48
    _ = (182 : Int) := by decide

theorem node_8_38 : count [19, 17, 13, 11, 7, 5, 3, 2] 38 = (5 : Int) := by
  decide

theorem node_7_38 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = (4 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = count [19, 17, 13, 11, 7, 5, 3, 2] 38 - count [19, 17, 13, 11, 7, 5, 3, 2] (38 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 38 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_8_38 node_8_1
    _ = (4 : Int) := by decide

theorem node_6_1112 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1112 = (178 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1112 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1112 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1112 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1112 (by decide)
    _ = (182 : Int) - (4 : Int) :=
      sub_congr node_7_1112 node_7_38
    _ = (178 : Int) := by decide

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

theorem node_5_1112 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1112 = (176 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1112 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1112 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1112 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1112 (by decide)
    _ = (178 : Int) - (2 : Int) :=
      sub_congr node_6_1112 node_6_35
    _ = (176 : Int) := by decide

theorem node_5_30 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 30 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 30 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 30 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (30 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 30 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_30 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_1112 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1112 = (175 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1112 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1112 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1112 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1112 (by decide)
    _ = (176 : Int) - (1 : Int) :=
      sub_congr node_5_1112 node_5_30
    _ = (175 : Int) := by decide

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

theorem node_3_1112 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1112 = (174 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1112 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1112 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1112 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1112 (by decide)
    _ = (175 : Int) - (1 : Int) :=
      sub_congr node_4_1112 node_4_27
    _ = (174 : Int) := by decide

theorem node_3_25 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (25 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_25 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1112 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1112 = (173 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1112 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1112 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1112 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1112 (by decide)
    _ = (174 : Int) - (1 : Int) :=
      sub_congr node_3_1112 node_3_25
    _ = (173 : Int) := by decide

theorem node_1_52288 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 = (7235 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (52288 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 (by decide)
    _ = (7408 : Int) - (173 : Int) :=
      sub_congr node_2_52288 node_2_1112
    _ = (7235 : Int) := by decide

theorem node_8_986 : count [19, 17, 13, 11, 7, 5, 3, 2] 986 = (167 : Int) := by
  decide

theorem node_8_42 : count [19, 17, 13, 11, 7, 5, 3, 2] 42 = (6 : Int) := by
  decide

theorem node_7_986 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 986 = (161 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 986 = count [19, 17, 13, 11, 7, 5, 3, 2] 986 - count [19, 17, 13, 11, 7, 5, 3, 2] (986 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 986 (by decide)
    _ = (167 : Int) - (6 : Int) :=
      sub_congr node_8_986 node_8_42
    _ = (161 : Int) := by decide

theorem node_6_986 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 = (158 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 986 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (986 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 986 (by decide)
    _ = (161 : Int) - (3 : Int) :=
      sub_congr node_7_986 node_7_34
    _ = (158 : Int) := by decide

theorem node_5_986 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 = (156 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (986 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 (by decide)
    _ = (158 : Int) - (2 : Int) :=
      sub_congr node_6_986 node_6_31
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

theorem node_4_986 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 = (155 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (986 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 (by decide)
    _ = (156 : Int) - (1 : Int) :=
      sub_congr node_5_986 node_5_26
    _ = (155 : Int) := by decide

theorem node_3_986 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 = (154 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (986 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 (by decide)
    _ = (155 : Int) - (1 : Int) :=
      sub_congr node_4_986 node_4_24
    _ = (154 : Int) := by decide

theorem node_3_22 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (22 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 22 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_22 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_986 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 = (153 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (986 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 (by decide)
    _ = (154 : Int) - (1 : Int) :=
      sub_congr node_3_986 node_3_22
    _ = (153 : Int) := by decide

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

theorem node_3_20 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (20 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_20 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_20 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (20 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_20 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_986 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 = (152 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (986 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 (by decide)
    _ = (153 : Int) - (1 : Int) :=
      sub_congr node_2_986 node_2_20
    _ = (152 : Int) := by decide

theorem node_0_52288 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 = (7083 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (52288 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52288 (by decide)
    _ = (7235 : Int) - (152 : Int) :=
      sub_congr node_1_52288 node_1_986
    _ = (7083 : Int) := by decide

theorem row_44 : count primes 49746 ≤ (6747 : Int) - 15 := by
  rw [show count primes 49746 = (6732 : Int) from node_0_49746]
  decide

theorem row_45 : count primes 52288 ≤ (7098 : Int) - 15 := by
  rw [show count primes 52288 = (7083 : Int) from node_0_52288]
  decide

def pairs : List (Nat × Nat) := [(49746, 6747), (52288, 7098)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl
  · exact row_44
  · exact row_45
end B699CorePrunedSieve.CoreRest09
#check @B699CorePrunedSieve.CoreRest09.pairs_valid
#print axioms B699CorePrunedSieve.CoreRest09.pairs_valid
