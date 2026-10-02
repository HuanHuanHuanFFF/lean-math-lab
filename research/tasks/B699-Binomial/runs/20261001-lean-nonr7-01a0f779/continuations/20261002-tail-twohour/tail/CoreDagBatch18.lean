import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreDagBatch18
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_81690 : count [19, 17, 13, 11, 7, 5, 3, 2] 81690 = (13969 : Int) := by
  decide

theorem node_8_3551 : count [19, 17, 13, 11, 7, 5, 3, 2] 3551 = (604 : Int) := by
  decide

theorem node_7_81690 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 = (13365 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 = count [19, 17, 13, 11, 7, 5, 3, 2] 81690 - count [19, 17, 13, 11, 7, 5, 3, 2] (81690 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 81690 (by decide)
    _ = (13969 : Int) - (604 : Int) :=
      sub_congr node_8_81690 node_8_3551
    _ = (13365 : Int) := by decide

theorem node_8_2816 : count [19, 17, 13, 11, 7, 5, 3, 2] 2816 = (480 : Int) := by
  decide

theorem node_8_122 : count [19, 17, 13, 11, 7, 5, 3, 2] 122 = (23 : Int) := by
  decide

theorem node_7_2816 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2816 = (457 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2816 = count [19, 17, 13, 11, 7, 5, 3, 2] 2816 - count [19, 17, 13, 11, 7, 5, 3, 2] (2816 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2816 (by decide)
    _ = (480 : Int) - (23 : Int) :=
      sub_congr node_8_2816 node_8_122
    _ = (457 : Int) := by decide

theorem node_6_81690 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 = (12908 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (81690 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 (by decide)
    _ = (13365 : Int) - (457 : Int) :=
      sub_congr node_7_81690 node_7_2816
    _ = (12908 : Int) := by decide

theorem node_8_2635 : count [19, 17, 13, 11, 7, 5, 3, 2] 2635 = (447 : Int) := by
  decide

theorem node_8_114 : count [19, 17, 13, 11, 7, 5, 3, 2] 114 = (23 : Int) := by
  decide

theorem node_7_2635 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2635 = (424 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2635 = count [19, 17, 13, 11, 7, 5, 3, 2] 2635 - count [19, 17, 13, 11, 7, 5, 3, 2] (2635 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2635 (by decide)
    _ = (447 : Int) - (23 : Int) :=
      sub_congr node_8_2635 node_8_114
    _ = (424 : Int) := by decide

theorem node_8_90 : count [19, 17, 13, 11, 7, 5, 3, 2] 90 = (17 : Int) := by
  decide

theorem node_8_3 : count [19, 17, 13, 11, 7, 5, 3, 2] 3 = (1 : Int) := by
  decide

theorem node_7_90 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 90 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 90 = count [19, 17, 13, 11, 7, 5, 3, 2] 90 - count [19, 17, 13, 11, 7, 5, 3, 2] (90 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 90 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_90 node_8_3
    _ = (16 : Int) := by decide

theorem node_6_2635 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2635 = (408 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2635 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2635 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2635 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2635 (by decide)
    _ = (424 : Int) - (16 : Int) :=
      sub_congr node_7_2635 node_7_90
    _ = (408 : Int) := by decide

theorem node_5_81690 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 = (12500 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (81690 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 (by decide)
    _ = (12908 : Int) - (408 : Int) :=
      sub_congr node_6_81690 node_6_2635
    _ = (12500 : Int) := by decide

theorem node_8_2207 : count [19, 17, 13, 11, 7, 5, 3, 2] 2207 = (372 : Int) := by
  decide

theorem node_8_95 : count [19, 17, 13, 11, 7, 5, 3, 2] 95 = (17 : Int) := by
  decide

theorem node_7_2207 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2207 = (355 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2207 = count [19, 17, 13, 11, 7, 5, 3, 2] 2207 - count [19, 17, 13, 11, 7, 5, 3, 2] (2207 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2207 (by decide)
    _ = (372 : Int) - (17 : Int) :=
      sub_congr node_8_2207 node_8_95
    _ = (355 : Int) := by decide

theorem node_8_76 : count [19, 17, 13, 11, 7, 5, 3, 2] 76 = (14 : Int) := by
  decide

theorem node_7_76 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 76 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 76 = count [19, 17, 13, 11, 7, 5, 3, 2] 76 - count [19, 17, 13, 11, 7, 5, 3, 2] (76 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 76 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_76 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_2207 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2207 = (342 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2207 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2207 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2207 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2207 (by decide)
    _ = (355 : Int) - (13 : Int) :=
      sub_congr node_7_2207 node_7_76
    _ = (342 : Int) := by decide

theorem node_8_71 : count [19, 17, 13, 11, 7, 5, 3, 2] 71 = (13 : Int) := by
  decide

theorem node_7_71 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = (12 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = count [19, 17, 13, 11, 7, 5, 3, 2] 71 - count [19, 17, 13, 11, 7, 5, 3, 2] (71 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 71 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_8_71 node_8_3
    _ = (12 : Int) := by decide

theorem node_8_2 : count [19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  decide

theorem node_8_0 : count [19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [19, 17, 13, 11, 7, 5, 3, 2]

theorem node_7_2 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [19, 17, 13, 11, 7, 5, 3, 2] 2 - count [19, 17, 13, 11, 7, 5, 3, 2] (2 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_2 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_71 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = (11 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (71 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_7_71 node_7_2
    _ = (11 : Int) := by decide

theorem node_5_2207 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2207 = (331 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2207 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2207 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2207 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2207 (by decide)
    _ = (342 : Int) - (11 : Int) :=
      sub_congr node_6_2207 node_6_71
    _ = (331 : Int) := by decide

theorem node_4_81690 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 = (12169 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (81690 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 (by decide)
    _ = (12500 : Int) - (331 : Int) :=
      sub_congr node_5_81690 node_5_2207
    _ = (12169 : Int) := by decide

theorem node_8_1992 : count [19, 17, 13, 11, 7, 5, 3, 2] 1992 = (335 : Int) := by
  decide

theorem node_8_86 : count [19, 17, 13, 11, 7, 5, 3, 2] 86 = (16 : Int) := by
  decide

theorem node_7_1992 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1992 = (319 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1992 = count [19, 17, 13, 11, 7, 5, 3, 2] 1992 - count [19, 17, 13, 11, 7, 5, 3, 2] (1992 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1992 (by decide)
    _ = (335 : Int) - (16 : Int) :=
      sub_congr node_8_1992 node_8_86
    _ = (319 : Int) := by decide

theorem node_8_68 : count [19, 17, 13, 11, 7, 5, 3, 2] 68 = (12 : Int) := by
  decide

theorem node_7_68 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = (11 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 68 = count [19, 17, 13, 11, 7, 5, 3, 2] 68 - count [19, 17, 13, 11, 7, 5, 3, 2] (68 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 68 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_8_68 node_8_2
    _ = (11 : Int) := by decide

theorem node_6_1992 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1992 = (308 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1992 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1992 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1992 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1992 (by decide)
    _ = (319 : Int) - (11 : Int) :=
      sub_congr node_7_1992 node_7_68
    _ = (308 : Int) := by decide

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

theorem node_5_1992 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1992 = (299 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1992 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1992 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1992 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1992 (by decide)
    _ = (308 : Int) - (9 : Int) :=
      sub_congr node_6_1992 node_6_64
    _ = (299 : Int) := by decide

theorem node_8_53 : count [19, 17, 13, 11, 7, 5, 3, 2] 53 = (9 : Int) := by
  decide

theorem node_7_53 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = (8 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = count [19, 17, 13, 11, 7, 5, 3, 2] 53 - count [19, 17, 13, 11, 7, 5, 3, 2] (53 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 53 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_8_53 node_8_2
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

theorem node_6_53 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = (7 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 53 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (53 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 53 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_7_53 node_7_1
    _ = (7 : Int) := by decide

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_1 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_1 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_53 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = (6 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (53 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 (by decide)
    _ = (7 : Int) - (1 : Int) :=
      sub_congr node_6_53 node_6_1
    _ = (6 : Int) := by decide

theorem node_4_1992 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1992 = (293 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1992 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1992 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1992 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1992 (by decide)
    _ = (299 : Int) - (6 : Int) :=
      sub_congr node_5_1992 node_5_53
    _ = (293 : Int) := by decide

theorem node_3_81690 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 = (11876 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (81690 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 (by decide)
    _ = (12169 : Int) - (293 : Int) :=
      sub_congr node_4_81690 node_4_1992
    _ = (11876 : Int) := by decide

theorem node_8_1899 : count [19, 17, 13, 11, 7, 5, 3, 2] 1899 = (321 : Int) := by
  decide

theorem node_8_82 : count [19, 17, 13, 11, 7, 5, 3, 2] 82 = (15 : Int) := by
  decide

theorem node_7_1899 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1899 = (306 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1899 = count [19, 17, 13, 11, 7, 5, 3, 2] 1899 - count [19, 17, 13, 11, 7, 5, 3, 2] (1899 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1899 (by decide)
    _ = (321 : Int) - (15 : Int) :=
      sub_congr node_8_1899 node_8_82
    _ = (306 : Int) := by decide

theorem node_8_65 : count [19, 17, 13, 11, 7, 5, 3, 2] 65 = (11 : Int) := by
  decide

theorem node_7_65 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = (10 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = count [19, 17, 13, 11, 7, 5, 3, 2] 65 - count [19, 17, 13, 11, 7, 5, 3, 2] (65 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 65 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_8_65 node_8_2
    _ = (10 : Int) := by decide

theorem node_6_1899 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1899 = (296 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1899 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1899 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1899 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1899 (by decide)
    _ = (306 : Int) - (10 : Int) :=
      sub_congr node_7_1899 node_7_65
    _ = (296 : Int) := by decide

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

theorem node_5_1899 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1899 = (287 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1899 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1899 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1899 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1899 (by decide)
    _ = (296 : Int) - (9 : Int) :=
      sub_congr node_6_1899 node_6_61
    _ = (287 : Int) := by decide

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

theorem node_4_1899 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1899 = (282 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1899 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1899 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1899 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1899 (by decide)
    _ = (287 : Int) - (5 : Int) :=
      sub_congr node_5_1899 node_5_51
    _ = (282 : Int) := by decide

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

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_1 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_1 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_46 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = (3 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (46 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_5_46 node_5_1
    _ = (3 : Int) := by decide

theorem node_3_1899 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1899 = (279 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1899 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1899 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1899 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1899 (by decide)
    _ = (282 : Int) - (3 : Int) :=
      sub_congr node_4_1899 node_4_46
    _ = (279 : Int) := by decide

theorem node_2_81690 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 = (11597 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (81690 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 (by decide)
    _ = (11876 : Int) - (279 : Int) :=
      sub_congr node_3_81690 node_3_1899
    _ = (11597 : Int) := by decide

theorem node_8_1738 : count [19, 17, 13, 11, 7, 5, 3, 2] 1738 = (294 : Int) := by
  decide

theorem node_8_75 : count [19, 17, 13, 11, 7, 5, 3, 2] 75 = (14 : Int) := by
  decide

theorem node_7_1738 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1738 = (280 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1738 = count [19, 17, 13, 11, 7, 5, 3, 2] 1738 - count [19, 17, 13, 11, 7, 5, 3, 2] (1738 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1738 (by decide)
    _ = (294 : Int) - (14 : Int) :=
      sub_congr node_8_1738 node_8_75
    _ = (280 : Int) := by decide

theorem node_8_59 : count [19, 17, 13, 11, 7, 5, 3, 2] 59 = (10 : Int) := by
  decide

theorem node_7_59 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = (9 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = count [19, 17, 13, 11, 7, 5, 3, 2] 59 - count [19, 17, 13, 11, 7, 5, 3, 2] (59 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 59 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_8_59 node_8_2
    _ = (9 : Int) := by decide

theorem node_6_1738 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1738 = (271 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1738 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1738 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1738 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1738 (by decide)
    _ = (280 : Int) - (9 : Int) :=
      sub_congr node_7_1738 node_7_59
    _ = (271 : Int) := by decide

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

theorem node_5_1738 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1738 = (264 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1738 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1738 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1738 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1738 (by decide)
    _ = (271 : Int) - (7 : Int) :=
      sub_congr node_6_1738 node_6_56
    _ = (264 : Int) := by decide

theorem node_4_1738 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1738 = (260 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1738 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1738 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1738 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1738 (by decide)
    _ = (264 : Int) - (4 : Int) :=
      sub_congr node_5_1738 node_5_46
    _ = (260 : Int) := by decide

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

theorem node_3_1738 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1738 = (258 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1738 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1738 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1738 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1738 (by decide)
    _ = (260 : Int) - (2 : Int) :=
      sub_congr node_4_1738 node_4_42
    _ = (258 : Int) := by decide

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

theorem node_5_40 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = (2 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (40 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_6_40 node_6_1
    _ = (2 : Int) := by decide

theorem node_4_40 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (40 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_5_40 node_5_1
    _ = (1 : Int) := by decide

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_40 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (40 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 40 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_40 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1738 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1738 = (257 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1738 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1738 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1738 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1738 (by decide)
    _ = (258 : Int) - (1 : Int) :=
      sub_congr node_3_1738 node_3_40
    _ = (257 : Int) := by decide

theorem node_1_81690 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 = (11340 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (81690 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 (by decide)
    _ = (11597 : Int) - (257 : Int) :=
      sub_congr node_2_81690 node_2_1738
    _ = (11340 : Int) := by decide

theorem node_8_1541 : count [19, 17, 13, 11, 7, 5, 3, 2] 1541 = (260 : Int) := by
  decide

theorem node_8_67 : count [19, 17, 13, 11, 7, 5, 3, 2] 67 = (12 : Int) := by
  decide

theorem node_7_1541 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1541 = (248 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1541 = count [19, 17, 13, 11, 7, 5, 3, 2] 1541 - count [19, 17, 13, 11, 7, 5, 3, 2] (1541 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1541 (by decide)
    _ = (260 : Int) - (12 : Int) :=
      sub_congr node_8_1541 node_8_67
    _ = (248 : Int) := by decide

theorem node_6_1541 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1541 = (240 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1541 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1541 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1541 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1541 (by decide)
    _ = (248 : Int) - (8 : Int) :=
      sub_congr node_7_1541 node_7_53
    _ = (240 : Int) := by decide

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

theorem node_5_1541 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1541 = (234 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1541 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1541 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1541 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1541 (by decide)
    _ = (240 : Int) - (6 : Int) :=
      sub_congr node_6_1541 node_6_49
    _ = (234 : Int) := by decide

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

theorem node_5_41 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = (3 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (41 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_6_41 node_6_1
    _ = (3 : Int) := by decide

theorem node_4_1541 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1541 = (231 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1541 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1541 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1541 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1541 (by decide)
    _ = (234 : Int) - (3 : Int) :=
      sub_congr node_5_1541 node_5_41
    _ = (231 : Int) := by decide

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

theorem node_5_37 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = (2 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (37 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_6_37 node_6_1
    _ = (2 : Int) := by decide

theorem node_4_37 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (37 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_5_37 node_5_1
    _ = (1 : Int) := by decide

theorem node_3_1541 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1541 = (230 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1541 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1541 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1541 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1541 (by decide)
    _ = (231 : Int) - (1 : Int) :=
      sub_congr node_4_1541 node_4_37
    _ = (230 : Int) := by decide

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

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_35 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (35 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_35 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_35 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (35 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 35 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_35 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1541 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1541 = (229 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1541 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1541 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1541 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1541 (by decide)
    _ = (230 : Int) - (1 : Int) :=
      sub_congr node_3_1541 node_3_35
    _ = (229 : Int) := by decide

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

theorem node_5_32 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (32 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_6_32 node_6_1
    _ = (1 : Int) := by decide

theorem node_4_32 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (32 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_32 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_32 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (32 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_32 node_4_0
    _ = (1 : Int) := by decide

theorem node_3_0 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_2_32 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (32 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 32 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_32 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1541 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1541 = (228 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1541 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1541 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1541 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1541 (by decide)
    _ = (229 : Int) - (1 : Int) :=
      sub_congr node_2_1541 node_2_32
    _ = (228 : Int) := by decide

theorem node_0_81690 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 = (11112 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (81690 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 81690 (by decide)
    _ = (11340 : Int) - (228 : Int) :=
      sub_congr node_1_81690 node_1_1541
    _ = (11112 : Int) := by decide

theorem node_8_82618 : count [19, 17, 13, 11, 7, 5, 3, 2] 82618 = (14129 : Int) := by
  decide

theorem node_8_3592 : count [19, 17, 13, 11, 7, 5, 3, 2] 3592 = (611 : Int) := by
  decide

theorem node_7_82618 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 = (13518 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 = count [19, 17, 13, 11, 7, 5, 3, 2] 82618 - count [19, 17, 13, 11, 7, 5, 3, 2] (82618 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 82618 (by decide)
    _ = (14129 : Int) - (611 : Int) :=
      sub_congr node_8_82618 node_8_3592
    _ = (13518 : Int) := by decide

theorem node_8_2848 : count [19, 17, 13, 11, 7, 5, 3, 2] 2848 = (484 : Int) := by
  decide

theorem node_8_123 : count [19, 17, 13, 11, 7, 5, 3, 2] 123 = (23 : Int) := by
  decide

theorem node_7_2848 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2848 = (461 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2848 = count [19, 17, 13, 11, 7, 5, 3, 2] 2848 - count [19, 17, 13, 11, 7, 5, 3, 2] (2848 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2848 (by decide)
    _ = (484 : Int) - (23 : Int) :=
      sub_congr node_8_2848 node_8_123
    _ = (461 : Int) := by decide

theorem node_6_82618 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 = (13057 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (82618 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 (by decide)
    _ = (13518 : Int) - (461 : Int) :=
      sub_congr node_7_82618 node_7_2848
    _ = (13057 : Int) := by decide

theorem node_8_2665 : count [19, 17, 13, 11, 7, 5, 3, 2] 2665 = (451 : Int) := by
  decide

theorem node_8_115 : count [19, 17, 13, 11, 7, 5, 3, 2] 115 = (23 : Int) := by
  decide

theorem node_7_2665 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2665 = (428 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2665 = count [19, 17, 13, 11, 7, 5, 3, 2] 2665 - count [19, 17, 13, 11, 7, 5, 3, 2] (2665 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2665 (by decide)
    _ = (451 : Int) - (23 : Int) :=
      sub_congr node_8_2665 node_8_115
    _ = (428 : Int) := by decide

theorem node_8_91 : count [19, 17, 13, 11, 7, 5, 3, 2] 91 = (17 : Int) := by
  decide

theorem node_7_91 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 91 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 91 = count [19, 17, 13, 11, 7, 5, 3, 2] 91 - count [19, 17, 13, 11, 7, 5, 3, 2] (91 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 91 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_91 node_8_3
    _ = (16 : Int) := by decide

theorem node_6_2665 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2665 = (412 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2665 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2665 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2665 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2665 (by decide)
    _ = (428 : Int) - (16 : Int) :=
      sub_congr node_7_2665 node_7_91
    _ = (412 : Int) := by decide

theorem node_5_82618 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 = (12645 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (82618 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 (by decide)
    _ = (13057 : Int) - (412 : Int) :=
      sub_congr node_6_82618 node_6_2665
    _ = (12645 : Int) := by decide

theorem node_8_2232 : count [19, 17, 13, 11, 7, 5, 3, 2] 2232 = (376 : Int) := by
  decide

theorem node_8_97 : count [19, 17, 13, 11, 7, 5, 3, 2] 97 = (18 : Int) := by
  decide

theorem node_7_2232 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2232 = (358 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2232 = count [19, 17, 13, 11, 7, 5, 3, 2] 2232 - count [19, 17, 13, 11, 7, 5, 3, 2] (2232 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2232 (by decide)
    _ = (376 : Int) - (18 : Int) :=
      sub_congr node_8_2232 node_8_97
    _ = (358 : Int) := by decide

theorem node_6_2232 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2232 = (345 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2232 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2232 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2232 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2232 (by decide)
    _ = (358 : Int) - (13 : Int) :=
      sub_congr node_7_2232 node_7_76
    _ = (345 : Int) := by decide

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

theorem node_5_2232 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2232 = (334 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2232 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2232 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2232 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2232 (by decide)
    _ = (345 : Int) - (11 : Int) :=
      sub_congr node_6_2232 node_6_72
    _ = (334 : Int) := by decide

theorem node_4_82618 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 = (12311 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (82618 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 (by decide)
    _ = (12645 : Int) - (334 : Int) :=
      sub_congr node_5_82618 node_5_2232
    _ = (12311 : Int) := by decide

theorem node_8_2015 : count [19, 17, 13, 11, 7, 5, 3, 2] 2015 = (340 : Int) := by
  decide

theorem node_8_87 : count [19, 17, 13, 11, 7, 5, 3, 2] 87 = (16 : Int) := by
  decide

theorem node_7_2015 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2015 = (324 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2015 = count [19, 17, 13, 11, 7, 5, 3, 2] 2015 - count [19, 17, 13, 11, 7, 5, 3, 2] (2015 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2015 (by decide)
    _ = (340 : Int) - (16 : Int) :=
      sub_congr node_8_2015 node_8_87
    _ = (324 : Int) := by decide

theorem node_8_69 : count [19, 17, 13, 11, 7, 5, 3, 2] 69 = (12 : Int) := by
  decide

theorem node_7_69 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = (11 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 69 = count [19, 17, 13, 11, 7, 5, 3, 2] 69 - count [19, 17, 13, 11, 7, 5, 3, 2] (69 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 69 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_8_69 node_8_3
    _ = (11 : Int) := by decide

theorem node_6_2015 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2015 = (313 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2015 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2015 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2015 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2015 (by decide)
    _ = (324 : Int) - (11 : Int) :=
      sub_congr node_7_2015 node_7_69
    _ = (313 : Int) := by decide

theorem node_6_65 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = (9 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 65 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 65 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (65 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 65 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_7_65 node_7_2
    _ = (9 : Int) := by decide

theorem node_5_2015 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2015 = (304 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2015 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2015 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2015 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2015 (by decide)
    _ = (313 : Int) - (9 : Int) :=
      sub_congr node_6_2015 node_6_65
    _ = (304 : Int) := by decide

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

theorem node_4_2015 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2015 = (298 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2015 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2015 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2015 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2015 (by decide)
    _ = (304 : Int) - (6 : Int) :=
      sub_congr node_5_2015 node_5_54
    _ = (298 : Int) := by decide

theorem node_3_82618 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 = (12013 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (82618 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 (by decide)
    _ = (12311 : Int) - (298 : Int) :=
      sub_congr node_4_82618 node_4_2015
    _ = (12013 : Int) := by decide

theorem node_8_1921 : count [19, 17, 13, 11, 7, 5, 3, 2] 1921 = (325 : Int) := by
  decide

theorem node_8_83 : count [19, 17, 13, 11, 7, 5, 3, 2] 83 = (16 : Int) := by
  decide

theorem node_7_1921 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1921 = (309 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1921 = count [19, 17, 13, 11, 7, 5, 3, 2] 1921 - count [19, 17, 13, 11, 7, 5, 3, 2] (1921 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1921 (by decide)
    _ = (325 : Int) - (16 : Int) :=
      sub_congr node_8_1921 node_8_83
    _ = (309 : Int) := by decide

theorem node_8_66 : count [19, 17, 13, 11, 7, 5, 3, 2] 66 = (11 : Int) := by
  decide

theorem node_7_66 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = (10 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = count [19, 17, 13, 11, 7, 5, 3, 2] 66 - count [19, 17, 13, 11, 7, 5, 3, 2] (66 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 66 (by decide)
    _ = (11 : Int) - (1 : Int) :=
      sub_congr node_8_66 node_8_2
    _ = (10 : Int) := by decide

theorem node_6_1921 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1921 = (299 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1921 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1921 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1921 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1921 (by decide)
    _ = (309 : Int) - (10 : Int) :=
      sub_congr node_7_1921 node_7_66
    _ = (299 : Int) := by decide

theorem node_5_1921 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1921 = (290 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1921 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1921 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1921 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1921 (by decide)
    _ = (299 : Int) - (9 : Int) :=
      sub_congr node_6_1921 node_6_61
    _ = (290 : Int) := by decide

theorem node_4_1921 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1921 = (285 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1921 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1921 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1921 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1921 (by decide)
    _ = (290 : Int) - (5 : Int) :=
      sub_congr node_5_1921 node_5_51
    _ = (285 : Int) := by decide

theorem node_3_1921 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1921 = (282 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1921 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1921 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1921 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1921 (by decide)
    _ = (285 : Int) - (3 : Int) :=
      sub_congr node_4_1921 node_4_46
    _ = (282 : Int) := by decide

theorem node_2_82618 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 = (11731 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (82618 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 (by decide)
    _ = (12013 : Int) - (282 : Int) :=
      sub_congr node_3_82618 node_3_1921
    _ = (11731 : Int) := by decide

theorem node_8_1757 : count [19, 17, 13, 11, 7, 5, 3, 2] 1757 = (298 : Int) := by
  decide

theorem node_7_1757 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1757 = (284 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1757 = count [19, 17, 13, 11, 7, 5, 3, 2] 1757 - count [19, 17, 13, 11, 7, 5, 3, 2] (1757 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1757 (by decide)
    _ = (298 : Int) - (14 : Int) :=
      sub_congr node_8_1757 node_8_76
    _ = (284 : Int) := by decide

theorem node_8_60 : count [19, 17, 13, 11, 7, 5, 3, 2] 60 = (10 : Int) := by
  decide

theorem node_7_60 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = (9 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 60 = count [19, 17, 13, 11, 7, 5, 3, 2] 60 - count [19, 17, 13, 11, 7, 5, 3, 2] (60 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 60 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_8_60 node_8_2
    _ = (9 : Int) := by decide

theorem node_6_1757 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1757 = (275 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1757 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1757 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1757 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1757 (by decide)
    _ = (284 : Int) - (9 : Int) :=
      sub_congr node_7_1757 node_7_60
    _ = (275 : Int) := by decide

theorem node_5_1757 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1757 = (268 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1757 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1757 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1757 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1757 (by decide)
    _ = (275 : Int) - (7 : Int) :=
      sub_congr node_6_1757 node_6_56
    _ = (268 : Int) := by decide

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

theorem node_4_1757 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1757 = (263 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1757 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1757 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1757 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1757 (by decide)
    _ = (268 : Int) - (5 : Int) :=
      sub_congr node_5_1757 node_5_47
    _ = (263 : Int) := by decide

theorem node_3_1757 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1757 = (261 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1757 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1757 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1757 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1757 (by decide)
    _ = (263 : Int) - (2 : Int) :=
      sub_congr node_4_1757 node_4_42
    _ = (261 : Int) := by decide

theorem node_2_1757 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1757 = (260 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1757 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1757 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1757 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1757 (by decide)
    _ = (261 : Int) - (1 : Int) :=
      sub_congr node_3_1757 node_3_40
    _ = (260 : Int) := by decide

theorem node_1_82618 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 = (11471 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (82618 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 (by decide)
    _ = (11731 : Int) - (260 : Int) :=
      sub_congr node_2_82618 node_2_1757
    _ = (11471 : Int) := by decide

theorem node_8_1558 : count [19, 17, 13, 11, 7, 5, 3, 2] 1558 = (263 : Int) := by
  decide

theorem node_7_1558 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1558 = (251 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1558 = count [19, 17, 13, 11, 7, 5, 3, 2] 1558 - count [19, 17, 13, 11, 7, 5, 3, 2] (1558 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1558 (by decide)
    _ = (263 : Int) - (12 : Int) :=
      sub_congr node_8_1558 node_8_67
    _ = (251 : Int) := by decide

theorem node_6_1558 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1558 = (243 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1558 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1558 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1558 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1558 (by decide)
    _ = (251 : Int) - (8 : Int) :=
      sub_congr node_7_1558 node_7_53
    _ = (243 : Int) := by decide

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

theorem node_5_1558 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1558 = (237 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1558 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1558 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1558 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1558 (by decide)
    _ = (243 : Int) - (6 : Int) :=
      sub_congr node_6_1558 node_6_50
    _ = (237 : Int) := by decide

theorem node_4_1558 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1558 = (234 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1558 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1558 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1558 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1558 (by decide)
    _ = (237 : Int) - (3 : Int) :=
      sub_congr node_5_1558 node_5_42
    _ = (234 : Int) := by decide

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

theorem node_4_38 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (38 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_5_38 node_5_1
    _ = (1 : Int) := by decide

theorem node_3_1558 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1558 = (233 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1558 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1558 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1558 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1558 (by decide)
    _ = (234 : Int) - (1 : Int) :=
      sub_congr node_4_1558 node_4_38
    _ = (233 : Int) := by decide

theorem node_8_36 : count [19, 17, 13, 11, 7, 5, 3, 2] 36 = (4 : Int) := by
  decide

theorem node_7_36 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = (3 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = count [19, 17, 13, 11, 7, 5, 3, 2] 36 - count [19, 17, 13, 11, 7, 5, 3, 2] (36 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 36 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_8_36 node_8_1
    _ = (3 : Int) := by decide

theorem node_6_36 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = (2 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 36 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (36 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 36 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_7_36 node_7_1
    _ = (2 : Int) := by decide

theorem node_5_36 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (36 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_6_36 node_6_1
    _ = (1 : Int) := by decide

theorem node_4_36 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (36 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_36 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_36 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (36 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_36 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1558 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1558 = (232 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1558 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1558 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1558 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1558 (by decide)
    _ = (233 : Int) - (1 : Int) :=
      sub_congr node_3_1558 node_3_36
    _ = (232 : Int) := by decide

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

theorem node_3_33 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (33 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_33 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_33 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (33 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 33 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_33 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_1558 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1558 = (231 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1558 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1558 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1558 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1558 (by decide)
    _ = (232 : Int) - (1 : Int) :=
      sub_congr node_2_1558 node_2_33
    _ = (231 : Int) := by decide

theorem node_0_82618 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 = (11240 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (82618 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 82618 (by decide)
    _ = (11471 : Int) - (231 : Int) :=
      sub_congr node_1_82618 node_1_1558
    _ = (11240 : Int) := by decide

theorem node_8_83592 : count [19, 17, 13, 11, 7, 5, 3, 2] 83592 = (14293 : Int) := by
  decide

theorem node_8_3634 : count [19, 17, 13, 11, 7, 5, 3, 2] 3634 = (619 : Int) := by
  decide

theorem node_7_83592 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 = (13674 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 = count [19, 17, 13, 11, 7, 5, 3, 2] 83592 - count [19, 17, 13, 11, 7, 5, 3, 2] (83592 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 83592 (by decide)
    _ = (14293 : Int) - (619 : Int) :=
      sub_congr node_8_83592 node_8_3634
    _ = (13674 : Int) := by decide

theorem node_8_2882 : count [19, 17, 13, 11, 7, 5, 3, 2] 2882 = (490 : Int) := by
  decide

theorem node_8_125 : count [19, 17, 13, 11, 7, 5, 3, 2] 125 = (23 : Int) := by
  decide

theorem node_7_2882 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2882 = (467 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2882 = count [19, 17, 13, 11, 7, 5, 3, 2] 2882 - count [19, 17, 13, 11, 7, 5, 3, 2] (2882 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2882 (by decide)
    _ = (490 : Int) - (23 : Int) :=
      sub_congr node_8_2882 node_8_125
    _ = (467 : Int) := by decide

theorem node_6_83592 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 = (13207 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (83592 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 (by decide)
    _ = (13674 : Int) - (467 : Int) :=
      sub_congr node_7_83592 node_7_2882
    _ = (13207 : Int) := by decide

theorem node_8_2696 : count [19, 17, 13, 11, 7, 5, 3, 2] 2696 = (457 : Int) := by
  decide

theorem node_8_117 : count [19, 17, 13, 11, 7, 5, 3, 2] 117 = (23 : Int) := by
  decide

theorem node_7_2696 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2696 = (434 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2696 = count [19, 17, 13, 11, 7, 5, 3, 2] 2696 - count [19, 17, 13, 11, 7, 5, 3, 2] (2696 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2696 (by decide)
    _ = (457 : Int) - (23 : Int) :=
      sub_congr node_8_2696 node_8_117
    _ = (434 : Int) := by decide

theorem node_8_92 : count [19, 17, 13, 11, 7, 5, 3, 2] 92 = (17 : Int) := by
  decide

theorem node_8_4 : count [19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  decide

theorem node_7_92 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 92 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 92 = count [19, 17, 13, 11, 7, 5, 3, 2] 92 - count [19, 17, 13, 11, 7, 5, 3, 2] (92 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 92 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_92 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_2696 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2696 = (418 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2696 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2696 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2696 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2696 (by decide)
    _ = (434 : Int) - (16 : Int) :=
      sub_congr node_7_2696 node_7_92
    _ = (418 : Int) := by decide

theorem node_5_83592 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 = (12789 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (83592 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 (by decide)
    _ = (13207 : Int) - (418 : Int) :=
      sub_congr node_6_83592 node_6_2696
    _ = (12789 : Int) := by decide

theorem node_8_2259 : count [19, 17, 13, 11, 7, 5, 3, 2] 2259 = (381 : Int) := by
  decide

theorem node_8_98 : count [19, 17, 13, 11, 7, 5, 3, 2] 98 = (18 : Int) := by
  decide

theorem node_7_2259 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2259 = (363 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2259 = count [19, 17, 13, 11, 7, 5, 3, 2] 2259 - count [19, 17, 13, 11, 7, 5, 3, 2] (2259 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2259 (by decide)
    _ = (381 : Int) - (18 : Int) :=
      sub_congr node_8_2259 node_8_98
    _ = (363 : Int) := by decide

theorem node_8_77 : count [19, 17, 13, 11, 7, 5, 3, 2] 77 = (14 : Int) := by
  decide

theorem node_7_77 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = count [19, 17, 13, 11, 7, 5, 3, 2] 77 - count [19, 17, 13, 11, 7, 5, 3, 2] (77 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 77 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_77 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_2259 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2259 = (350 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2259 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2259 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2259 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2259 (by decide)
    _ = (363 : Int) - (13 : Int) :=
      sub_congr node_7_2259 node_7_77
    _ = (350 : Int) := by decide

theorem node_5_2259 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2259 = (339 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2259 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2259 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2259 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2259 (by decide)
    _ = (350 : Int) - (11 : Int) :=
      sub_congr node_6_2259 node_6_72
    _ = (339 : Int) := by decide

theorem node_4_83592 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 = (12450 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (83592 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 (by decide)
    _ = (12789 : Int) - (339 : Int) :=
      sub_congr node_5_83592 node_5_2259
    _ = (12450 : Int) := by decide

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

theorem node_8_70 : count [19, 17, 13, 11, 7, 5, 3, 2] 70 = (12 : Int) := by
  decide

theorem node_7_70 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 70 = (11 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 70 = count [19, 17, 13, 11, 7, 5, 3, 2] 70 - count [19, 17, 13, 11, 7, 5, 3, 2] (70 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 70 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_8_70 node_8_3
    _ = (11 : Int) := by decide

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

theorem node_4_2038 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = (302 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2038 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2038 (by decide)
    _ = (308 : Int) - (6 : Int) :=
      sub_congr node_5_2038 node_5_55
    _ = (302 : Int) := by decide

theorem node_3_83592 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 = (12148 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (83592 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 (by decide)
    _ = (12450 : Int) - (302 : Int) :=
      sub_congr node_4_83592 node_4_2038
    _ = (12148 : Int) := by decide

theorem node_8_1944 : count [19, 17, 13, 11, 7, 5, 3, 2] 1944 = (329 : Int) := by
  decide

theorem node_8_84 : count [19, 17, 13, 11, 7, 5, 3, 2] 84 = (16 : Int) := by
  decide

theorem node_7_1944 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1944 = (313 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1944 = count [19, 17, 13, 11, 7, 5, 3, 2] 1944 - count [19, 17, 13, 11, 7, 5, 3, 2] (1944 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1944 (by decide)
    _ = (329 : Int) - (16 : Int) :=
      sub_congr node_8_1944 node_8_84
    _ = (313 : Int) := by decide

theorem node_7_67 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 67 = (11 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 67 = count [19, 17, 13, 11, 7, 5, 3, 2] 67 - count [19, 17, 13, 11, 7, 5, 3, 2] (67 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 67 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_8_67 node_8_2
    _ = (11 : Int) := by decide

theorem node_6_1944 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1944 = (302 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1944 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1944 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1944 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1944 (by decide)
    _ = (313 : Int) - (11 : Int) :=
      sub_congr node_7_1944 node_7_67
    _ = (302 : Int) := by decide

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

theorem node_5_1944 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1944 = (293 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1944 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1944 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1944 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1944 (by decide)
    _ = (302 : Int) - (9 : Int) :=
      sub_congr node_6_1944 node_6_62
    _ = (293 : Int) := by decide

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

theorem node_4_1944 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1944 = (288 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1944 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1944 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1944 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1944 (by decide)
    _ = (293 : Int) - (5 : Int) :=
      sub_congr node_5_1944 node_5_52
    _ = (288 : Int) := by decide

theorem node_4_47 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 = (4 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (47 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_5_47 node_5_1
    _ = (4 : Int) := by decide

theorem node_3_1944 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1944 = (284 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1944 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1944 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1944 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1944 (by decide)
    _ = (288 : Int) - (4 : Int) :=
      sub_congr node_4_1944 node_4_47
    _ = (284 : Int) := by decide

theorem node_2_83592 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 = (11864 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (83592 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 (by decide)
    _ = (12148 : Int) - (284 : Int) :=
      sub_congr node_3_83592 node_3_1944
    _ = (11864 : Int) := by decide

theorem node_8_1778 : count [19, 17, 13, 11, 7, 5, 3, 2] 1778 = (302 : Int) := by
  decide

theorem node_7_1778 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1778 = (288 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1778 = count [19, 17, 13, 11, 7, 5, 3, 2] 1778 - count [19, 17, 13, 11, 7, 5, 3, 2] (1778 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1778 (by decide)
    _ = (302 : Int) - (14 : Int) :=
      sub_congr node_8_1778 node_8_77
    _ = (288 : Int) := by decide

theorem node_6_1778 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1778 = (278 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1778 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1778 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1778 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1778 (by decide)
    _ = (288 : Int) - (10 : Int) :=
      sub_congr node_7_1778 node_7_61
    _ = (278 : Int) := by decide

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

theorem node_5_1778 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1778 = (271 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1778 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1778 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1778 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1778 (by decide)
    _ = (278 : Int) - (7 : Int) :=
      sub_congr node_6_1778 node_6_57
    _ = (271 : Int) := by decide

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

theorem node_4_1778 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1778 = (266 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1778 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1778 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1778 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1778 (by decide)
    _ = (271 : Int) - (5 : Int) :=
      sub_congr node_5_1778 node_5_48
    _ = (266 : Int) := by decide

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

theorem node_3_1778 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1778 = (263 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1778 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1778 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1778 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1778 (by decide)
    _ = (266 : Int) - (3 : Int) :=
      sub_congr node_4_1778 node_4_43
    _ = (263 : Int) := by decide

theorem node_4_41 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = (2 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (41 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_5_41 node_5_1
    _ = (2 : Int) := by decide

theorem node_4_1 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_1 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_41 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (41 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 41 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_4_41 node_4_1
    _ = (1 : Int) := by decide

theorem node_2_1778 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1778 = (262 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1778 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1778 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1778 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1778 (by decide)
    _ = (263 : Int) - (1 : Int) :=
      sub_congr node_3_1778 node_3_41
    _ = (262 : Int) := by decide

theorem node_1_83592 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 = (11602 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (83592 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 (by decide)
    _ = (11864 : Int) - (262 : Int) :=
      sub_congr node_2_83592 node_2_1778
    _ = (11602 : Int) := by decide

theorem node_8_1577 : count [19, 17, 13, 11, 7, 5, 3, 2] 1577 = (266 : Int) := by
  decide

theorem node_7_1577 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1577 = (254 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1577 = count [19, 17, 13, 11, 7, 5, 3, 2] 1577 - count [19, 17, 13, 11, 7, 5, 3, 2] (1577 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1577 (by decide)
    _ = (266 : Int) - (12 : Int) :=
      sub_congr node_8_1577 node_8_68
    _ = (254 : Int) := by decide

theorem node_6_1577 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1577 = (246 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1577 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1577 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1577 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1577 (by decide)
    _ = (254 : Int) - (8 : Int) :=
      sub_congr node_7_1577 node_7_54
    _ = (246 : Int) := by decide

theorem node_5_1577 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1577 = (240 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1577 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1577 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1577 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1577 (by decide)
    _ = (246 : Int) - (6 : Int) :=
      sub_congr node_6_1577 node_6_50
    _ = (240 : Int) := by decide

theorem node_4_1577 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1577 = (237 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1577 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1577 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1577 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1577 (by decide)
    _ = (240 : Int) - (3 : Int) :=
      sub_congr node_5_1577 node_5_42
    _ = (237 : Int) := by decide

theorem node_3_1577 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1577 = (236 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1577 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1577 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1577 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1577 (by decide)
    _ = (237 : Int) - (1 : Int) :=
      sub_congr node_4_1577 node_4_38
    _ = (236 : Int) := by decide

theorem node_2_1577 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1577 = (235 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1577 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1577 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1577 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1577 (by decide)
    _ = (236 : Int) - (1 : Int) :=
      sub_congr node_3_1577 node_3_36
    _ = (235 : Int) := by decide

theorem node_1_1577 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1577 = (234 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1577 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1577 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1577 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1577 (by decide)
    _ = (235 : Int) - (1 : Int) :=
      sub_congr node_2_1577 node_2_33
    _ = (234 : Int) := by decide

theorem node_0_83592 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 = (11368 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (83592 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 83592 (by decide)
    _ = (11602 : Int) - (234 : Int) :=
      sub_congr node_1_83592 node_1_1577
    _ = (11368 : Int) := by decide

theorem node_8_84550 : count [19, 17, 13, 11, 7, 5, 3, 2] 84550 = (14459 : Int) := by
  decide

theorem node_8_3676 : count [19, 17, 13, 11, 7, 5, 3, 2] 3676 = (625 : Int) := by
  decide

theorem node_7_84550 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 = (13834 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 = count [19, 17, 13, 11, 7, 5, 3, 2] 84550 - count [19, 17, 13, 11, 7, 5, 3, 2] (84550 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 84550 (by decide)
    _ = (14459 : Int) - (625 : Int) :=
      sub_congr node_8_84550 node_8_3676
    _ = (13834 : Int) := by decide

theorem node_8_2915 : count [19, 17, 13, 11, 7, 5, 3, 2] 2915 = (495 : Int) := by
  decide

theorem node_8_126 : count [19, 17, 13, 11, 7, 5, 3, 2] 126 = (23 : Int) := by
  decide

theorem node_7_2915 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2915 = (472 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2915 = count [19, 17, 13, 11, 7, 5, 3, 2] 2915 - count [19, 17, 13, 11, 7, 5, 3, 2] (2915 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2915 (by decide)
    _ = (495 : Int) - (23 : Int) :=
      sub_congr node_8_2915 node_8_126
    _ = (472 : Int) := by decide

theorem node_6_84550 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 = (13362 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (84550 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 (by decide)
    _ = (13834 : Int) - (472 : Int) :=
      sub_congr node_7_84550 node_7_2915
    _ = (13362 : Int) := by decide

theorem node_8_2727 : count [19, 17, 13, 11, 7, 5, 3, 2] 2727 = (463 : Int) := by
  decide

theorem node_8_118 : count [19, 17, 13, 11, 7, 5, 3, 2] 118 = (23 : Int) := by
  decide

theorem node_7_2727 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2727 = (440 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2727 = count [19, 17, 13, 11, 7, 5, 3, 2] 2727 - count [19, 17, 13, 11, 7, 5, 3, 2] (2727 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2727 (by decide)
    _ = (463 : Int) - (23 : Int) :=
      sub_congr node_8_2727 node_8_118
    _ = (440 : Int) := by decide

theorem node_8_94 : count [19, 17, 13, 11, 7, 5, 3, 2] 94 = (17 : Int) := by
  decide

theorem node_7_94 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 94 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 94 = count [19, 17, 13, 11, 7, 5, 3, 2] 94 - count [19, 17, 13, 11, 7, 5, 3, 2] (94 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 94 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_94 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_2727 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2727 = (424 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2727 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2727 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2727 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2727 (by decide)
    _ = (440 : Int) - (16 : Int) :=
      sub_congr node_7_2727 node_7_94
    _ = (424 : Int) := by decide

theorem node_5_84550 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 = (12938 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (84550 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 (by decide)
    _ = (13362 : Int) - (424 : Int) :=
      sub_congr node_6_84550 node_6_2727
    _ = (12938 : Int) := by decide

theorem node_8_2285 : count [19, 17, 13, 11, 7, 5, 3, 2] 2285 = (387 : Int) := by
  decide

theorem node_8_99 : count [19, 17, 13, 11, 7, 5, 3, 2] 99 = (18 : Int) := by
  decide

theorem node_7_2285 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2285 = (369 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2285 = count [19, 17, 13, 11, 7, 5, 3, 2] 2285 - count [19, 17, 13, 11, 7, 5, 3, 2] (2285 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2285 (by decide)
    _ = (387 : Int) - (18 : Int) :=
      sub_congr node_8_2285 node_8_99
    _ = (369 : Int) := by decide

theorem node_8_78 : count [19, 17, 13, 11, 7, 5, 3, 2] 78 = (14 : Int) := by
  decide

theorem node_7_78 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 78 = count [19, 17, 13, 11, 7, 5, 3, 2] 78 - count [19, 17, 13, 11, 7, 5, 3, 2] (78 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 78 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_78 node_8_3
    _ = (13 : Int) := by decide

theorem node_6_2285 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2285 = (356 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2285 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2285 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2285 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2285 (by decide)
    _ = (369 : Int) - (13 : Int) :=
      sub_congr node_7_2285 node_7_78
    _ = (356 : Int) := by decide

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

theorem node_5_2285 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2285 = (344 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2285 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2285 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2285 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2285 (by decide)
    _ = (356 : Int) - (12 : Int) :=
      sub_congr node_6_2285 node_6_73
    _ = (344 : Int) := by decide

theorem node_4_84550 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 = (12594 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (84550 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 (by decide)
    _ = (12938 : Int) - (344 : Int) :=
      sub_congr node_5_84550 node_5_2285
    _ = (12594 : Int) := by decide

theorem node_8_2062 : count [19, 17, 13, 11, 7, 5, 3, 2] 2062 = (348 : Int) := by
  decide

theorem node_8_89 : count [19, 17, 13, 11, 7, 5, 3, 2] 89 = (17 : Int) := by
  decide

theorem node_7_2062 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2062 = (331 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2062 = count [19, 17, 13, 11, 7, 5, 3, 2] 2062 - count [19, 17, 13, 11, 7, 5, 3, 2] (2062 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2062 (by decide)
    _ = (348 : Int) - (17 : Int) :=
      sub_congr node_8_2062 node_8_89
    _ = (331 : Int) := by decide

theorem node_6_2062 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2062 = (319 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2062 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2062 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2062 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2062 (by decide)
    _ = (331 : Int) - (12 : Int) :=
      sub_congr node_7_2062 node_7_71
    _ = (319 : Int) := by decide

theorem node_6_66 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = (9 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 66 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (66 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 66 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_7_66 node_7_2
    _ = (9 : Int) := by decide

theorem node_5_2062 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2062 = (310 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2062 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2062 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2062 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2062 (by decide)
    _ = (319 : Int) - (9 : Int) :=
      sub_congr node_6_2062 node_6_66
    _ = (310 : Int) := by decide

theorem node_4_2062 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2062 = (304 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2062 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2062 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2062 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2062 (by decide)
    _ = (310 : Int) - (6 : Int) :=
      sub_congr node_5_2062 node_5_55
    _ = (304 : Int) := by decide

theorem node_3_84550 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 = (12290 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (84550 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 (by decide)
    _ = (12594 : Int) - (304 : Int) :=
      sub_congr node_4_84550 node_4_2062
    _ = (12290 : Int) := by decide

theorem node_8_1966 : count [19, 17, 13, 11, 7, 5, 3, 2] 1966 = (332 : Int) := by
  decide

theorem node_8_85 : count [19, 17, 13, 11, 7, 5, 3, 2] 85 = (16 : Int) := by
  decide

theorem node_7_1966 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1966 = (316 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1966 = count [19, 17, 13, 11, 7, 5, 3, 2] 1966 - count [19, 17, 13, 11, 7, 5, 3, 2] (1966 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1966 (by decide)
    _ = (332 : Int) - (16 : Int) :=
      sub_congr node_8_1966 node_8_85
    _ = (316 : Int) := by decide

theorem node_6_1966 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1966 = (305 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1966 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1966 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1966 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1966 (by decide)
    _ = (316 : Int) - (11 : Int) :=
      sub_congr node_7_1966 node_7_67
    _ = (305 : Int) := by decide

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

theorem node_5_1966 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1966 = (296 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1966 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1966 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1966 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1966 (by decide)
    _ = (305 : Int) - (9 : Int) :=
      sub_congr node_6_1966 node_6_63
    _ = (296 : Int) := by decide

theorem node_4_1966 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1966 = (290 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1966 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1966 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1966 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1966 (by decide)
    _ = (296 : Int) - (6 : Int) :=
      sub_congr node_5_1966 node_5_53
    _ = (290 : Int) := by decide

theorem node_3_1966 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1966 = (286 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1966 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1966 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1966 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1966 (by decide)
    _ = (290 : Int) - (4 : Int) :=
      sub_congr node_4_1966 node_4_47
    _ = (286 : Int) := by decide

theorem node_2_84550 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 = (12004 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (84550 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 (by decide)
    _ = (12290 : Int) - (286 : Int) :=
      sub_congr node_3_84550 node_3_1966
    _ = (12004 : Int) := by decide

theorem node_8_1798 : count [19, 17, 13, 11, 7, 5, 3, 2] 1798 = (305 : Int) := by
  decide

theorem node_7_1798 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1798 = (291 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1798 = count [19, 17, 13, 11, 7, 5, 3, 2] 1798 - count [19, 17, 13, 11, 7, 5, 3, 2] (1798 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1798 (by decide)
    _ = (305 : Int) - (14 : Int) :=
      sub_congr node_8_1798 node_8_78
    _ = (291 : Int) := by decide

theorem node_6_1798 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1798 = (281 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1798 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1798 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1798 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1798 (by decide)
    _ = (291 : Int) - (10 : Int) :=
      sub_congr node_7_1798 node_7_62
    _ = (281 : Int) := by decide

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

theorem node_5_1798 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1798 = (274 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1798 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1798 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1798 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1798 (by decide)
    _ = (281 : Int) - (7 : Int) :=
      sub_congr node_6_1798 node_6_58
    _ = (274 : Int) := by decide

theorem node_4_1798 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1798 = (269 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1798 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1798 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1798 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1798 (by decide)
    _ = (274 : Int) - (5 : Int) :=
      sub_congr node_5_1798 node_5_48
    _ = (269 : Int) := by decide

theorem node_3_1798 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1798 = (266 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1798 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1798 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1798 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1798 (by decide)
    _ = (269 : Int) - (3 : Int) :=
      sub_congr node_4_1798 node_4_43
    _ = (266 : Int) := by decide

theorem node_2_1798 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1798 = (265 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1798 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1798 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1798 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1798 (by decide)
    _ = (266 : Int) - (1 : Int) :=
      sub_congr node_3_1798 node_3_41
    _ = (265 : Int) := by decide

theorem node_1_84550 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 = (11739 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (84550 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 (by decide)
    _ = (12004 : Int) - (265 : Int) :=
      sub_congr node_2_84550 node_2_1798
    _ = (11739 : Int) := by decide

theorem node_8_1595 : count [19, 17, 13, 11, 7, 5, 3, 2] 1595 = (269 : Int) := by
  decide

theorem node_7_1595 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1595 = (257 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1595 = count [19, 17, 13, 11, 7, 5, 3, 2] 1595 - count [19, 17, 13, 11, 7, 5, 3, 2] (1595 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1595 (by decide)
    _ = (269 : Int) - (12 : Int) :=
      sub_congr node_8_1595 node_8_69
    _ = (257 : Int) := by decide

theorem node_6_1595 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1595 = (249 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1595 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1595 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1595 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1595 (by decide)
    _ = (257 : Int) - (8 : Int) :=
      sub_congr node_7_1595 node_7_55
    _ = (249 : Int) := by decide

theorem node_5_1595 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1595 = (243 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1595 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1595 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1595 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1595 (by decide)
    _ = (249 : Int) - (6 : Int) :=
      sub_congr node_6_1595 node_6_51
    _ = (243 : Int) := by decide

theorem node_4_1595 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1595 = (239 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1595 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1595 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1595 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1595 (by decide)
    _ = (243 : Int) - (4 : Int) :=
      sub_congr node_5_1595 node_5_43
    _ = (239 : Int) := by decide

theorem node_3_1595 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1595 = (238 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1595 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1595 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1595 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1595 (by decide)
    _ = (239 : Int) - (1 : Int) :=
      sub_congr node_4_1595 node_4_38
    _ = (238 : Int) := by decide

theorem node_3_37 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (37 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 37 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_37 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_1595 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1595 = (237 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1595 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1595 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1595 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1595 (by decide)
    _ = (238 : Int) - (1 : Int) :=
      sub_congr node_3_1595 node_3_37
    _ = (237 : Int) := by decide

theorem node_1_1595 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1595 = (236 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1595 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1595 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1595 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1595 (by decide)
    _ = (237 : Int) - (1 : Int) :=
      sub_congr node_2_1595 node_2_33
    _ = (236 : Int) := by decide

theorem node_0_84550 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 = (11503 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (84550 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 84550 (by decide)
    _ = (11739 : Int) - (236 : Int) :=
      sub_congr node_1_84550 node_1_1595
    _ = (11503 : Int) := by decide

theorem row_68 : count primes 81690 ≤ (11127 : Int) - 15 := by
  rw [show count primes 81690 = (11112 : Int) from node_0_81690]
  decide

theorem row_69 : count primes 82618 ≤ (11255 : Int) - 15 := by
  rw [show count primes 82618 = (11240 : Int) from node_0_82618]
  decide

theorem row_70 : count primes 83592 ≤ (11383 : Int) - 15 := by
  rw [show count primes 83592 = (11368 : Int) from node_0_83592]
  decide

theorem row_71 : count primes 84550 ≤ (11518 : Int) - 15 := by
  rw [show count primes 84550 = (11503 : Int) from node_0_84550]
  decide

def pairs : List (Nat × Nat) := [(81690, 11127), (82618, 11255), (83592, 11383), (84550, 11518)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl | rfl | rfl
  · exact row_68
  · exact row_69
  · exact row_70
  · exact row_71
end B699CorePrunedSieve.CoreDagBatch18
#check @B699CorePrunedSieve.CoreDagBatch18.pairs_valid
#print axioms B699CorePrunedSieve.CoreDagBatch18.pairs_valid
