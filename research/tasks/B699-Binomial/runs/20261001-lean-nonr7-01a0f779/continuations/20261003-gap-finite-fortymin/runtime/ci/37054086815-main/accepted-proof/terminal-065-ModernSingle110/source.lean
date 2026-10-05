module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.ModernPrunedCount
import all research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.ModernPrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
public section
namespace B699ModernPrunedSieve.ModernSingle110
open B699ModernPrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

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

theorem node_8_6 : count [19, 17, 13, 11, 7, 5, 3, 2] 6 = (1 : Int) := by
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

theorem node_8_5 : count [19, 17, 13, 11, 7, 5, 3, 2] 5 = (1 : Int) := by
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

theorem node_8_4 : count [19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  decide

theorem node_7_110 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 110 = (21 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 110 = count [19, 17, 13, 11, 7, 5, 3, 2] 110 - count [19, 17, 13, 11, 7, 5, 3, 2] (110 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 110 (by decide)
    _ = (22 : Int) - (1 : Int) :=
      sub_congr node_8_110 node_8_4
    _ = (21 : Int) := by decide

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

theorem node_8_99 : count [19, 17, 13, 11, 7, 5, 3, 2] 99 = (18 : Int) := by
  decide

theorem node_7_99 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 99 = (17 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 99 = count [19, 17, 13, 11, 7, 5, 3, 2] 99 - count [19, 17, 13, 11, 7, 5, 3, 2] (99 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 99 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_8_99 node_8_4
    _ = (17 : Int) := by decide

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

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_2 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_2 node_7_0
    _ = (1 : Int) := by decide

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

theorem node_8_101 : count [19, 17, 13, 11, 7, 5, 3, 2] 101 = (19 : Int) := by
  decide

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

theorem node_4_71 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = (9 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (71 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_5_71 node_5_1
    _ = (9 : Int) := by decide

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

theorem node_8_92 : count [19, 17, 13, 11, 7, 5, 3, 2] 92 = (17 : Int) := by
  decide

theorem node_7_92 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 92 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 92 = count [19, 17, 13, 11, 7, 5, 3, 2] 92 - count [19, 17, 13, 11, 7, 5, 3, 2] (92 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 92 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_92 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_2694 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 = (418 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2694 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 (by decide)
    _ = (434 : Int) - (16 : Int) :=
      sub_congr node_7_2694 node_7_92
    _ = (418 : Int) := by decide

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

theorem node_5_2694 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 = (404 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2694 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 (by decide)
    _ = (418 : Int) - (14 : Int) :=
      sub_congr node_6_2694 node_6_86
    _ = (404 : Int) := by decide

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

theorem node_4_2694 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 = (394 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2694 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 (by decide)
    _ = (404 : Int) - (10 : Int) :=
      sub_congr node_5_2694 node_5_72
    _ = (394 : Int) := by decide

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

theorem node_3_2694 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 = (387 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2694 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2694 (by decide)
    _ = (394 : Int) - (7 : Int) :=
      sub_congr node_4_2694 node_4_65
    _ = (387 : Int) := by decide

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

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_1 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_1 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_62 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = (6 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (62 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 62 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_4_62 node_4_1
    _ = (6 : Int) := by decide

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

theorem node_8_82 : count [19, 17, 13, 11, 7, 5, 3, 2] 82 = (15 : Int) := by
  decide

theorem node_7_82 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = (14 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 82 = count [19, 17, 13, 11, 7, 5, 3, 2] 82 - count [19, 17, 13, 11, 7, 5, 3, 2] (82 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 82 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_8_82 node_8_3
    _ = (14 : Int) := by decide

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

theorem node_2_2389 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 = (343 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2389 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2389 (by decide)
    _ = (347 : Int) - (4 : Int) :=
      sub_congr node_3_2389 node_3_55
    _ = (343 : Int) := by decide

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

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_1 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_1 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_50 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = (2 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (50 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 50 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_3_50 node_3_1
    _ = (2 : Int) := by decide

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

theorem row_110 : count primes 126652 ≤ (17285 : Int) - 15 := by
  rw [show count primes 126652 = (17270 : Int) from node_0_126652]
  decide

def pairs : List (Nat × Nat) := [(126652, 17285)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl
  · exact row_110
end B699ModernPrunedSieve.ModernSingle110
#check @B699ModernPrunedSieve.ModernSingle110.pairs_valid
#print axioms B699ModernPrunedSieve.ModernSingle110.pairs_valid
