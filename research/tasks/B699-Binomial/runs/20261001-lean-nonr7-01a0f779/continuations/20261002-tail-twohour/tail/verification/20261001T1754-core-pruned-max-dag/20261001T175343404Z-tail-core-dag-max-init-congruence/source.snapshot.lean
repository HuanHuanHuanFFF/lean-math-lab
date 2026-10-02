import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreDagMax
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_131071 : count [19, 17, 13, 11, 7, 5, 3, 2] 131071 = (22418 : Int) := by
  decide

theorem node_8_5698 : count [19, 17, 13, 11, 7, 5, 3, 2] 5698 = (973 : Int) := by
  decide

theorem node_7_131071 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = (21445 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = count [19, 17, 13, 11, 7, 5, 3, 2] 131071 - count [19, 17, 13, 11, 7, 5, 3, 2] (131071 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 131071 (by decide)
    _ = (22418 : Int) - (973 : Int) :=
      sub_congr node_8_131071 node_8_5698
    _ = (21445 : Int) := by decide

theorem node_8_4519 : count [19, 17, 13, 11, 7, 5, 3, 2] 4519 = (772 : Int) := by
  decide

theorem node_8_196 : count [19, 17, 13, 11, 7, 5, 3, 2] 196 = (37 : Int) := by
  decide

theorem node_7_4519 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4519 = (735 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4519 = count [19, 17, 13, 11, 7, 5, 3, 2] 4519 - count [19, 17, 13, 11, 7, 5, 3, 2] (4519 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4519 (by decide)
    _ = (772 : Int) - (37 : Int) :=
      sub_congr node_8_4519 node_8_196
    _ = (735 : Int) := by decide

theorem node_6_131071 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = (20710 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (131071 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 (by decide)
    _ = (21445 : Int) - (735 : Int) :=
      sub_congr node_7_131071 node_7_4519
    _ = (20710 : Int) := by decide

theorem node_8_4228 : count [19, 17, 13, 11, 7, 5, 3, 2] 4228 = (721 : Int) := by
  decide

theorem node_8_183 : count [19, 17, 13, 11, 7, 5, 3, 2] 183 = (35 : Int) := by
  decide

theorem node_7_4228 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4228 = (686 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4228 = count [19, 17, 13, 11, 7, 5, 3, 2] 4228 - count [19, 17, 13, 11, 7, 5, 3, 2] (4228 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4228 (by decide)
    _ = (721 : Int) - (35 : Int) :=
      sub_congr node_8_4228 node_8_183
    _ = (686 : Int) := by decide

theorem node_8_145 : count [19, 17, 13, 11, 7, 5, 3, 2] 145 = (27 : Int) := by
  decide

theorem node_8_6 : count [19, 17, 13, 11, 7, 5, 3, 2] 6 = (1 : Int) := by
  decide

theorem node_7_145 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 145 = (26 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 145 = count [19, 17, 13, 11, 7, 5, 3, 2] 145 - count [19, 17, 13, 11, 7, 5, 3, 2] (145 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 145 (by decide)
    _ = (27 : Int) - (1 : Int) :=
      sub_congr node_8_145 node_8_6
    _ = (26 : Int) := by decide

theorem node_6_4228 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4228 = (660 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 4228 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4228 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (4228 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 4228 (by decide)
    _ = (686 : Int) - (26 : Int) :=
      sub_congr node_7_4228 node_7_145
    _ = (660 : Int) := by decide

theorem node_5_131071 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = (20050 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (131071 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 (by decide)
    _ = (20710 : Int) - (660 : Int) :=
      sub_congr node_6_131071 node_6_4228
    _ = (20050 : Int) := by decide

theorem node_8_3542 : count [19, 17, 13, 11, 7, 5, 3, 2] 3542 = (602 : Int) := by
  decide

theorem node_8_154 : count [19, 17, 13, 11, 7, 5, 3, 2] 154 = (29 : Int) := by
  decide

theorem node_7_3542 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3542 = (573 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3542 = count [19, 17, 13, 11, 7, 5, 3, 2] 3542 - count [19, 17, 13, 11, 7, 5, 3, 2] (3542 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3542 (by decide)
    _ = (602 : Int) - (29 : Int) :=
      sub_congr node_8_3542 node_8_154
    _ = (573 : Int) := by decide

theorem node_8_122 : count [19, 17, 13, 11, 7, 5, 3, 2] 122 = (23 : Int) := by
  decide

theorem node_8_5 : count [19, 17, 13, 11, 7, 5, 3, 2] 5 = (1 : Int) := by
  decide

theorem node_7_122 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 122 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 122 = count [19, 17, 13, 11, 7, 5, 3, 2] 122 - count [19, 17, 13, 11, 7, 5, 3, 2] (122 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 122 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_122 node_8_5
    _ = (22 : Int) := by decide

theorem node_6_3542 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3542 = (551 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3542 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3542 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3542 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3542 (by decide)
    _ = (573 : Int) - (22 : Int) :=
      sub_congr node_7_3542 node_7_122
    _ = (551 : Int) := by decide

theorem node_8_114 : count [19, 17, 13, 11, 7, 5, 3, 2] 114 = (23 : Int) := by
  decide

theorem node_8_4 : count [19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  decide

theorem node_7_114 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 114 = (22 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 114 = count [19, 17, 13, 11, 7, 5, 3, 2] 114 - count [19, 17, 13, 11, 7, 5, 3, 2] (114 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 114 (by decide)
    _ = (23 : Int) - (1 : Int) :=
      sub_congr node_8_114 node_8_4
    _ = (22 : Int) := by decide

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

theorem node_6_114 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114 = (21 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 114 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 114 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (114 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 114 (by decide)
    _ = (22 : Int) - (1 : Int) :=
      sub_congr node_7_114 node_7_3
    _ = (21 : Int) := by decide

theorem node_5_3542 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3542 = (530 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3542 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3542 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3542 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3542 (by decide)
    _ = (551 : Int) - (21 : Int) :=
      sub_congr node_6_3542 node_6_114
    _ = (530 : Int) := by decide

theorem node_4_131071 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = (19520 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (131071 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 (by decide)
    _ = (20050 : Int) - (530 : Int) :=
      sub_congr node_5_131071 node_5_3542
    _ = (19520 : Int) := by decide

theorem node_8_3196 : count [19, 17, 13, 11, 7, 5, 3, 2] 3196 = (543 : Int) := by
  decide

theorem node_8_138 : count [19, 17, 13, 11, 7, 5, 3, 2] 138 = (26 : Int) := by
  decide

theorem node_7_3196 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 = (517 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 = count [19, 17, 13, 11, 7, 5, 3, 2] 3196 - count [19, 17, 13, 11, 7, 5, 3, 2] (3196 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3196 (by decide)
    _ = (543 : Int) - (26 : Int) :=
      sub_congr node_8_3196 node_8_138
    _ = (517 : Int) := by decide

theorem node_8_110 : count [19, 17, 13, 11, 7, 5, 3, 2] 110 = (22 : Int) := by
  decide

theorem node_7_110 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 110 = (21 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 110 = count [19, 17, 13, 11, 7, 5, 3, 2] 110 - count [19, 17, 13, 11, 7, 5, 3, 2] (110 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 110 (by decide)
    _ = (22 : Int) - (1 : Int) :=
      sub_congr node_8_110 node_8_4
    _ = (21 : Int) := by decide

theorem node_6_3196 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 = (496 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3196 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 (by decide)
    _ = (517 : Int) - (21 : Int) :=
      sub_congr node_7_3196 node_7_110
    _ = (496 : Int) := by decide

theorem node_8_103 : count [19, 17, 13, 11, 7, 5, 3, 2] 103 = (20 : Int) := by
  decide

theorem node_7_103 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 103 = (19 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 103 = count [19, 17, 13, 11, 7, 5, 3, 2] 103 - count [19, 17, 13, 11, 7, 5, 3, 2] (103 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 103 (by decide)
    _ = (20 : Int) - (1 : Int) :=
      sub_congr node_8_103 node_8_4
    _ = (19 : Int) := by decide

theorem node_6_103 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103 = (18 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 103 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 103 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (103 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 103 (by decide)
    _ = (19 : Int) - (1 : Int) :=
      sub_congr node_7_103 node_7_3
    _ = (18 : Int) := by decide

theorem node_5_3196 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 = (478 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3196 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 (by decide)
    _ = (496 : Int) - (18 : Int) :=
      sub_congr node_6_3196 node_6_103
    _ = (478 : Int) := by decide

theorem node_8_86 : count [19, 17, 13, 11, 7, 5, 3, 2] 86 = (16 : Int) := by
  decide

theorem node_7_86 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = count [19, 17, 13, 11, 7, 5, 3, 2] 86 - count [19, 17, 13, 11, 7, 5, 3, 2] (86 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 86 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_86 node_8_3
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

theorem node_6_86 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = (14 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (86 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_7_86 node_7_2
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

theorem node_5_86 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = (13 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (86 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 86 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_6_86 node_6_2
    _ = (13 : Int) := by decide

theorem node_4_3196 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 = (465 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3196 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3196 (by decide)
    _ = (478 : Int) - (13 : Int) :=
      sub_congr node_5_3196 node_5_86
    _ = (465 : Int) := by decide

theorem node_3_131071 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = (19055 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (131071 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 (by decide)
    _ = (19520 : Int) - (465 : Int) :=
      sub_congr node_4_131071 node_4_3196
    _ = (19055 : Int) := by decide

theorem node_8_3048 : count [19, 17, 13, 11, 7, 5, 3, 2] 3048 = (517 : Int) := by
  decide

theorem node_8_132 : count [19, 17, 13, 11, 7, 5, 3, 2] 132 = (25 : Int) := by
  decide

theorem node_7_3048 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 = (492 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 = count [19, 17, 13, 11, 7, 5, 3, 2] 3048 - count [19, 17, 13, 11, 7, 5, 3, 2] (3048 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3048 (by decide)
    _ = (517 : Int) - (25 : Int) :=
      sub_congr node_8_3048 node_8_132
    _ = (492 : Int) := by decide

theorem node_8_105 : count [19, 17, 13, 11, 7, 5, 3, 2] 105 = (20 : Int) := by
  decide

theorem node_7_105 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 105 = (19 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 105 = count [19, 17, 13, 11, 7, 5, 3, 2] 105 - count [19, 17, 13, 11, 7, 5, 3, 2] (105 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 105 (by decide)
    _ = (20 : Int) - (1 : Int) :=
      sub_congr node_8_105 node_8_4
    _ = (19 : Int) := by decide

theorem node_6_3048 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 = (473 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3048 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 (by decide)
    _ = (492 : Int) - (19 : Int) :=
      sub_congr node_7_3048 node_7_105
    _ = (473 : Int) := by decide

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

theorem node_5_3048 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 = (457 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3048 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 (by decide)
    _ = (473 : Int) - (16 : Int) :=
      sub_congr node_6_3048 node_6_98
    _ = (457 : Int) := by decide

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

theorem node_4_3048 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 = (445 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3048 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 (by decide)
    _ = (457 : Int) - (12 : Int) :=
      sub_congr node_5_3048 node_5_82
    _ = (445 : Int) := by decide

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

theorem node_5_74 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = (11 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (74 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_6_74 node_6_2
    _ = (11 : Int) := by decide

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_2 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_2 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_74 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = (10 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (74 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 74 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_5_74 node_5_2
    _ = (10 : Int) := by decide

theorem node_3_3048 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 = (435 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3048 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3048 (by decide)
    _ = (445 : Int) - (10 : Int) :=
      sub_congr node_4_3048 node_4_74
    _ = (435 : Int) := by decide

theorem node_2_131071 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = (18620 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (131071 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 (by decide)
    _ = (19055 : Int) - (435 : Int) :=
      sub_congr node_3_131071 node_3_3048
    _ = (18620 : Int) := by decide

theorem node_8_2788 : count [19, 17, 13, 11, 7, 5, 3, 2] 2788 = (473 : Int) := by
  decide

theorem node_8_121 : count [19, 17, 13, 11, 7, 5, 3, 2] 121 = (23 : Int) := by
  decide

theorem node_7_2788 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 = (450 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 = count [19, 17, 13, 11, 7, 5, 3, 2] 2788 - count [19, 17, 13, 11, 7, 5, 3, 2] (2788 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2788 (by decide)
    _ = (473 : Int) - (23 : Int) :=
      sub_congr node_8_2788 node_8_121
    _ = (450 : Int) := by decide

theorem node_8_96 : count [19, 17, 13, 11, 7, 5, 3, 2] 96 = (17 : Int) := by
  decide

theorem node_7_96 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 96 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 96 = count [19, 17, 13, 11, 7, 5, 3, 2] 96 - count [19, 17, 13, 11, 7, 5, 3, 2] (96 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 96 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_96 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_2788 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 = (434 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2788 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 (by decide)
    _ = (450 : Int) - (16 : Int) :=
      sub_congr node_7_2788 node_7_96
    _ = (434 : Int) := by decide

theorem node_8_89 : count [19, 17, 13, 11, 7, 5, 3, 2] 89 = (17 : Int) := by
  decide

theorem node_7_89 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = count [19, 17, 13, 11, 7, 5, 3, 2] 89 - count [19, 17, 13, 11, 7, 5, 3, 2] (89 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 89 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_89 node_8_3
    _ = (16 : Int) := by decide

theorem node_6_89 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = (15 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 89 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 89 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (89 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 89 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_7_89 node_7_3
    _ = (15 : Int) := by decide

theorem node_5_2788 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 = (419 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2788 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 (by decide)
    _ = (434 : Int) - (15 : Int) :=
      sub_congr node_6_2788 node_6_89
    _ = (419 : Int) := by decide

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

theorem node_5_75 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = (11 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (75 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 75 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_6_75 node_6_2
    _ = (11 : Int) := by decide

theorem node_4_2788 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 = (408 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2788 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 (by decide)
    _ = (419 : Int) - (11 : Int) :=
      sub_congr node_5_2788 node_5_75
    _ = (408 : Int) := by decide

theorem node_8_68 : count [19, 17, 13, 11, 7, 5, 3, 2] 68 = (12 : Int) := by
  decide

theorem node_7_68 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = (11 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = count [19, 17, 13, 11, 7, 5, 3, 2] 68 - count [19, 17, 13, 11, 7, 5, 3, 2] (68 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 68 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_8_68 node_8_2
    _ = (11 : Int) := by decide

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

theorem node_5_1 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_1 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_68 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = (8 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (68 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 68 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_5_68 node_5_1
    _ = (8 : Int) := by decide

theorem node_3_2788 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 = (400 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2788 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 (by decide)
    _ = (408 : Int) - (8 : Int) :=
      sub_congr node_4_2788 node_4_68
    _ = (400 : Int) := by decide

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

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_1 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_1 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_64 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = (6 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (64 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 64 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_4_64 node_4_1
    _ = (6 : Int) := by decide

theorem node_2_2788 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 = (394 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2788 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2788 (by decide)
    _ = (400 : Int) - (6 : Int) :=
      sub_congr node_3_2788 node_3_64
    _ = (394 : Int) := by decide

theorem node_1_131071 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = (18226 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (131071 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 (by decide)
    _ = (18620 : Int) - (394 : Int) :=
      sub_congr node_2_131071 node_2_2788
    _ = (18226 : Int) := by decide

theorem node_8_2473 : count [19, 17, 13, 11, 7, 5, 3, 2] 2473 = (421 : Int) := by
  decide

theorem node_8_107 : count [19, 17, 13, 11, 7, 5, 3, 2] 107 = (21 : Int) := by
  decide

theorem node_7_2473 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = (400 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = count [19, 17, 13, 11, 7, 5, 3, 2] 2473 - count [19, 17, 13, 11, 7, 5, 3, 2] (2473 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2473 (by decide)
    _ = (421 : Int) - (21 : Int) :=
      sub_congr node_8_2473 node_8_107
    _ = (400 : Int) := by decide

theorem node_8_85 : count [19, 17, 13, 11, 7, 5, 3, 2] 85 = (16 : Int) := by
  decide

theorem node_7_85 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 85 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 85 = count [19, 17, 13, 11, 7, 5, 3, 2] 85 - count [19, 17, 13, 11, 7, 5, 3, 2] (85 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 85 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_85 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_2473 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = (385 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2473 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 (by decide)
    _ = (400 : Int) - (15 : Int) :=
      sub_congr node_7_2473 node_7_85
    _ = (385 : Int) := by decide

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

theorem node_5_2473 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = (372 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2473 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 (by decide)
    _ = (385 : Int) - (13 : Int) :=
      sub_congr node_6_2473 node_6_79
    _ = (372 : Int) := by decide

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

theorem node_4_2473 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = (364 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2473 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 (by decide)
    _ = (372 : Int) - (8 : Int) :=
      sub_congr node_5_2473 node_5_66
    _ = (364 : Int) := by decide

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

theorem node_5_60 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = (7 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (60 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_6_60 node_6_1
    _ = (7 : Int) := by decide

theorem node_4_60 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = (6 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (60 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 60 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_5_60 node_5_1
    _ = (6 : Int) := by decide

theorem node_3_2473 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = (358 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2473 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 (by decide)
    _ = (364 : Int) - (6 : Int) :=
      sub_congr node_4_2473 node_4_60
    _ = (358 : Int) := by decide

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

theorem node_3_57 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = (4 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (57 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_4_57 node_4_1
    _ = (4 : Int) := by decide

theorem node_2_2473 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = (354 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2473 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 (by decide)
    _ = (358 : Int) - (4 : Int) :=
      sub_congr node_3_2473 node_3_57
    _ = (354 : Int) := by decide

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

theorem node_3_52 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = (3 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (52 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_4_52 node_4_1
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

theorem node_2_52 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = (2 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (52 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 52 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_3_52 node_3_1
    _ = (2 : Int) := by decide

theorem node_1_2473 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = (352 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2473 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2473 (by decide)
    _ = (354 : Int) - (2 : Int) :=
      sub_congr node_2_2473 node_2_52
    _ = (352 : Int) := by decide

theorem node_0_131071 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = (17874 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (131071 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 131071 (by decide)
    _ = (18226 : Int) - (352 : Int) :=
      sub_congr node_1_131071 node_1_2473
    _ = (17874 : Int) := by decide

theorem row_114 : count primes 131071 ≤ (17889 : Int) - 15 := by
  rw [show count primes 131071 = (17874 : Int) from node_0_131071]
  decide

def pairs : List (Nat × Nat) := [(131071, 17889)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl
  · exact row_114
end B699CorePrunedSieve.CoreDagMax
#check @B699CorePrunedSieve.CoreDagMax.pairs_valid
#print axioms B699CorePrunedSieve.CoreDagMax.pairs_valid


