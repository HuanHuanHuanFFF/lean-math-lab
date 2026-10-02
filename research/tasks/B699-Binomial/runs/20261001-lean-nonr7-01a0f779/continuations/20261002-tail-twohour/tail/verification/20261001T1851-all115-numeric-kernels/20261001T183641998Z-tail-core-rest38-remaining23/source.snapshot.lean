import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreRest38
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_117070 : count [19, 17, 13, 11, 7, 5, 3, 2] 117070 = (20022 : Int) := by
  decide

theorem node_8_5090 : count [19, 17, 13, 11, 7, 5, 3, 2] 5090 = (868 : Int) := by
  decide

theorem node_7_117070 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 = (19154 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 = count [19, 17, 13, 11, 7, 5, 3, 2] 117070 - count [19, 17, 13, 11, 7, 5, 3, 2] (117070 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 117070 (by decide)
    _ = (20022 : Int) - (868 : Int) :=
      sub_congr node_8_117070 node_8_5090
    _ = (19154 : Int) := by decide

theorem node_8_4036 : count [19, 17, 13, 11, 7, 5, 3, 2] 4036 = (689 : Int) := by
  decide

theorem node_8_175 : count [19, 17, 13, 11, 7, 5, 3, 2] 175 = (33 : Int) := by
  decide

theorem node_7_4036 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4036 = (656 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4036 = count [19, 17, 13, 11, 7, 5, 3, 2] 4036 - count [19, 17, 13, 11, 7, 5, 3, 2] (4036 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4036 (by decide)
    _ = (689 : Int) - (33 : Int) :=
      sub_congr node_8_4036 node_8_175
    _ = (656 : Int) := by decide

theorem node_6_117070 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 = (18498 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (117070 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 (by decide)
    _ = (19154 : Int) - (656 : Int) :=
      sub_congr node_7_117070 node_7_4036
    _ = (18498 : Int) := by decide

theorem node_8_3776 : count [19, 17, 13, 11, 7, 5, 3, 2] 3776 = (643 : Int) := by
  decide

theorem node_8_164 : count [19, 17, 13, 11, 7, 5, 3, 2] 164 = (31 : Int) := by
  decide

theorem node_7_3776 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3776 = (612 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3776 = count [19, 17, 13, 11, 7, 5, 3, 2] 3776 - count [19, 17, 13, 11, 7, 5, 3, 2] (3776 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3776 (by decide)
    _ = (643 : Int) - (31 : Int) :=
      sub_congr node_8_3776 node_8_164
    _ = (612 : Int) := by decide

theorem node_8_130 : count [19, 17, 13, 11, 7, 5, 3, 2] 130 = (24 : Int) := by
  decide

theorem node_8_5 : count [19, 17, 13, 11, 7, 5, 3, 2] 5 = (1 : Int) := by
  decide

theorem node_7_130 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 130 = (23 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 130 = count [19, 17, 13, 11, 7, 5, 3, 2] 130 - count [19, 17, 13, 11, 7, 5, 3, 2] (130 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 130 (by decide)
    _ = (24 : Int) - (1 : Int) :=
      sub_congr node_8_130 node_8_5
    _ = (23 : Int) := by decide

theorem node_6_3776 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3776 = (589 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3776 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3776 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3776 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3776 (by decide)
    _ = (612 : Int) - (23 : Int) :=
      sub_congr node_7_3776 node_7_130
    _ = (589 : Int) := by decide

theorem node_5_117070 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 = (17909 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (117070 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 (by decide)
    _ = (18498 : Int) - (589 : Int) :=
      sub_congr node_6_117070 node_6_3776
    _ = (17909 : Int) := by decide

theorem node_8_3164 : count [19, 17, 13, 11, 7, 5, 3, 2] 3164 = (537 : Int) := by
  decide

theorem node_8_137 : count [19, 17, 13, 11, 7, 5, 3, 2] 137 = (26 : Int) := by
  decide

theorem node_7_3164 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3164 = (511 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3164 = count [19, 17, 13, 11, 7, 5, 3, 2] 3164 - count [19, 17, 13, 11, 7, 5, 3, 2] (3164 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3164 (by decide)
    _ = (537 : Int) - (26 : Int) :=
      sub_congr node_8_3164 node_8_137
    _ = (511 : Int) := by decide

theorem node_8_109 : count [19, 17, 13, 11, 7, 5, 3, 2] 109 = (22 : Int) := by
  decide

theorem node_8_4 : count [19, 17, 13, 11, 7, 5, 3, 2] 4 = (1 : Int) := by
  decide

theorem node_7_109 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 109 = (21 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 109 = count [19, 17, 13, 11, 7, 5, 3, 2] 109 - count [19, 17, 13, 11, 7, 5, 3, 2] (109 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 109 (by decide)
    _ = (22 : Int) - (1 : Int) :=
      sub_congr node_8_109 node_8_4
    _ = (21 : Int) := by decide

theorem node_6_3164 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3164 = (490 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3164 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3164 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3164 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3164 (by decide)
    _ = (511 : Int) - (21 : Int) :=
      sub_congr node_7_3164 node_7_109
    _ = (490 : Int) := by decide

theorem node_8_102 : count [19, 17, 13, 11, 7, 5, 3, 2] 102 = (19 : Int) := by
  decide

theorem node_7_102 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 102 = (18 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 102 = count [19, 17, 13, 11, 7, 5, 3, 2] 102 - count [19, 17, 13, 11, 7, 5, 3, 2] (102 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 102 (by decide)
    _ = (19 : Int) - (1 : Int) :=
      sub_congr node_8_102 node_8_4
    _ = (18 : Int) := by decide

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

theorem node_6_102 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102 = (17 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 102 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 102 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (102 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 102 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_7_102 node_7_3
    _ = (17 : Int) := by decide

theorem node_5_3164 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3164 = (473 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3164 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3164 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3164 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3164 (by decide)
    _ = (490 : Int) - (17 : Int) :=
      sub_congr node_6_3164 node_6_102
    _ = (473 : Int) := by decide

theorem node_4_117070 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 = (17436 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (117070 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 (by decide)
    _ = (17909 : Int) - (473 : Int) :=
      sub_congr node_5_117070 node_5_3164
    _ = (17436 : Int) := by decide

theorem node_8_2855 : count [19, 17, 13, 11, 7, 5, 3, 2] 2855 = (485 : Int) := by
  decide

theorem node_8_124 : count [19, 17, 13, 11, 7, 5, 3, 2] 124 = (23 : Int) := by
  decide

theorem node_7_2855 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2855 = (462 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2855 = count [19, 17, 13, 11, 7, 5, 3, 2] 2855 - count [19, 17, 13, 11, 7, 5, 3, 2] (2855 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2855 (by decide)
    _ = (485 : Int) - (23 : Int) :=
      sub_congr node_8_2855 node_8_124
    _ = (462 : Int) := by decide

theorem node_8_98 : count [19, 17, 13, 11, 7, 5, 3, 2] 98 = (18 : Int) := by
  decide

theorem node_7_98 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 98 = (17 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 98 = count [19, 17, 13, 11, 7, 5, 3, 2] 98 - count [19, 17, 13, 11, 7, 5, 3, 2] (98 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 98 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_8_98 node_8_4
    _ = (17 : Int) := by decide

theorem node_6_2855 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2855 = (445 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2855 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2855 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2855 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2855 (by decide)
    _ = (462 : Int) - (17 : Int) :=
      sub_congr node_7_2855 node_7_98
    _ = (445 : Int) := by decide

theorem node_8_92 : count [19, 17, 13, 11, 7, 5, 3, 2] 92 = (17 : Int) := by
  decide

theorem node_7_92 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 92 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 92 = count [19, 17, 13, 11, 7, 5, 3, 2] 92 - count [19, 17, 13, 11, 7, 5, 3, 2] (92 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 92 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_92 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_92 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92 = (15 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 92 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 92 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (92 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 92 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_7_92 node_7_3
    _ = (15 : Int) := by decide

theorem node_5_2855 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2855 = (430 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2855 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2855 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2855 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2855 (by decide)
    _ = (445 : Int) - (15 : Int) :=
      sub_congr node_6_2855 node_6_92
    _ = (430 : Int) := by decide

theorem node_8_77 : count [19, 17, 13, 11, 7, 5, 3, 2] 77 = (14 : Int) := by
  decide

theorem node_7_77 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = (13 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = count [19, 17, 13, 11, 7, 5, 3, 2] 77 - count [19, 17, 13, 11, 7, 5, 3, 2] (77 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 77 (by decide)
    _ = (14 : Int) - (1 : Int) :=
      sub_congr node_8_77 node_8_3
    _ = (13 : Int) := by decide

theorem node_8_2 : count [19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  decide

theorem node_7_2 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [19, 17, 13, 11, 7, 5, 3, 2] 2 - count [19, 17, 13, 11, 7, 5, 3, 2] (2 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_2 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_77 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = (12 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 77 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (77 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 77 (by decide)
    _ = (13 : Int) - (1 : Int) :=
      sub_congr node_7_77 node_7_2
    _ = (12 : Int) := by decide

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_2 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_2 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_77 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = (11 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (77 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 77 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_6_77 node_6_2
    _ = (11 : Int) := by decide

theorem node_4_2855 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2855 = (419 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2855 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2855 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2855 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2855 (by decide)
    _ = (430 : Int) - (11 : Int) :=
      sub_congr node_5_2855 node_5_77
    _ = (419 : Int) := by decide

theorem node_3_117070 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 = (17017 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (117070 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 (by decide)
    _ = (17436 : Int) - (419 : Int) :=
      sub_congr node_4_117070 node_4_2855
    _ = (17017 : Int) := by decide

theorem node_8_2722 : count [19, 17, 13, 11, 7, 5, 3, 2] 2722 = (463 : Int) := by
  decide

theorem node_8_118 : count [19, 17, 13, 11, 7, 5, 3, 2] 118 = (23 : Int) := by
  decide

theorem node_7_2722 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2722 = (440 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2722 = count [19, 17, 13, 11, 7, 5, 3, 2] 2722 - count [19, 17, 13, 11, 7, 5, 3, 2] (2722 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2722 (by decide)
    _ = (463 : Int) - (23 : Int) :=
      sub_congr node_8_2722 node_8_118
    _ = (440 : Int) := by decide

theorem node_8_93 : count [19, 17, 13, 11, 7, 5, 3, 2] 93 = (17 : Int) := by
  decide

theorem node_7_93 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 93 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 93 = count [19, 17, 13, 11, 7, 5, 3, 2] 93 - count [19, 17, 13, 11, 7, 5, 3, 2] (93 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 93 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_93 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_2722 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2722 = (424 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2722 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2722 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2722 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2722 (by decide)
    _ = (440 : Int) - (16 : Int) :=
      sub_congr node_7_2722 node_7_93
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

theorem node_5_2722 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2722 = (410 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2722 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2722 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2722 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2722 (by decide)
    _ = (424 : Int) - (14 : Int) :=
      sub_congr node_6_2722 node_6_87
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

theorem node_4_2722 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2722 = (399 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2722 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2722 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2722 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2722 (by decide)
    _ = (410 : Int) - (11 : Int) :=
      sub_congr node_5_2722 node_5_73
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

theorem node_4_66 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = (7 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (66 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 66 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_5_66 node_5_1
    _ = (7 : Int) := by decide

theorem node_3_2722 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2722 = (392 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2722 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2722 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2722 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2722 (by decide)
    _ = (399 : Int) - (7 : Int) :=
      sub_congr node_4_2722 node_4_66
    _ = (392 : Int) := by decide

theorem node_2_117070 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 = (16625 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (117070 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 (by decide)
    _ = (17017 : Int) - (392 : Int) :=
      sub_congr node_3_117070 node_3_2722
    _ = (16625 : Int) := by decide

theorem node_8_2490 : count [19, 17, 13, 11, 7, 5, 3, 2] 2490 = (423 : Int) := by
  decide

theorem node_8_108 : count [19, 17, 13, 11, 7, 5, 3, 2] 108 = (21 : Int) := by
  decide

theorem node_7_2490 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2490 = (402 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2490 = count [19, 17, 13, 11, 7, 5, 3, 2] 2490 - count [19, 17, 13, 11, 7, 5, 3, 2] (2490 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2490 (by decide)
    _ = (423 : Int) - (21 : Int) :=
      sub_congr node_8_2490 node_8_108
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

theorem node_6_2490 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2490 = (387 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2490 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2490 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2490 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2490 (by decide)
    _ = (402 : Int) - (15 : Int) :=
      sub_congr node_7_2490 node_7_85
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

theorem node_5_2490 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2490 = (374 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2490 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2490 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2490 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2490 (by decide)
    _ = (387 : Int) - (13 : Int) :=
      sub_congr node_6_2490 node_6_80
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

theorem node_4_2490 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2490 = (365 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2490 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2490 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2490 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2490 (by decide)
    _ = (374 : Int) - (9 : Int) :=
      sub_congr node_5_2490 node_5_67
    _ = (365 : Int) := by decide

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

theorem node_3_2490 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2490 = (359 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2490 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2490 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2490 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2490 (by decide)
    _ = (365 : Int) - (6 : Int) :=
      sub_congr node_4_2490 node_4_60
    _ = (359 : Int) := by decide

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

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_1 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_1 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_57 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = (4 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (57 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 57 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_4_57 node_4_1
    _ = (4 : Int) := by decide

theorem node_2_2490 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2490 = (355 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2490 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2490 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2490 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2490 (by decide)
    _ = (359 : Int) - (4 : Int) :=
      sub_congr node_3_2490 node_3_57
    _ = (355 : Int) := by decide

theorem node_1_117070 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 = (16270 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (117070 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 (by decide)
    _ = (16625 : Int) - (355 : Int) :=
      sub_congr node_2_117070 node_2_2490
    _ = (16270 : Int) := by decide

theorem node_8_2208 : count [19, 17, 13, 11, 7, 5, 3, 2] 2208 = (372 : Int) := by
  decide

theorem node_8_96 : count [19, 17, 13, 11, 7, 5, 3, 2] 96 = (17 : Int) := by
  decide

theorem node_7_2208 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2208 = (355 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2208 = count [19, 17, 13, 11, 7, 5, 3, 2] 2208 - count [19, 17, 13, 11, 7, 5, 3, 2] (2208 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2208 (by decide)
    _ = (372 : Int) - (17 : Int) :=
      sub_congr node_8_2208 node_8_96
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

theorem node_6_2208 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2208 = (342 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2208 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2208 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2208 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2208 (by decide)
    _ = (355 : Int) - (13 : Int) :=
      sub_congr node_7_2208 node_7_76
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

theorem node_6_71 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = (11 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 71 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (71 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 71 (by decide)
    _ = (12 : Int) - (1 : Int) :=
      sub_congr node_7_71 node_7_2
    _ = (11 : Int) := by decide

theorem node_5_2208 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2208 = (331 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2208 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2208 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2208 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2208 (by decide)
    _ = (342 : Int) - (11 : Int) :=
      sub_congr node_6_2208 node_6_71
    _ = (331 : Int) := by decide

theorem node_8_59 : count [19, 17, 13, 11, 7, 5, 3, 2] 59 = (10 : Int) := by
  decide

theorem node_7_59 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = (9 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = count [19, 17, 13, 11, 7, 5, 3, 2] 59 - count [19, 17, 13, 11, 7, 5, 3, 2] (59 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 59 (by decide)
    _ = (10 : Int) - (1 : Int) :=
      sub_congr node_8_59 node_8_2
    _ = (9 : Int) := by decide

theorem node_6_59 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = (8 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 59 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (59 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 59 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_7_59 node_7_2
    _ = (8 : Int) := by decide

theorem node_5_59 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = (7 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (59 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 59 (by decide)
    _ = (8 : Int) - (1 : Int) :=
      sub_congr node_6_59 node_6_1
    _ = (7 : Int) := by decide

theorem node_4_2208 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2208 = (324 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2208 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2208 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2208 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2208 (by decide)
    _ = (331 : Int) - (7 : Int) :=
      sub_congr node_5_2208 node_5_59
    _ = (324 : Int) := by decide

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

theorem node_4_53 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = (5 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (53 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 53 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_5_53 node_5_1
    _ = (5 : Int) := by decide

theorem node_3_2208 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2208 = (319 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2208 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2208 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2208 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2208 (by decide)
    _ = (324 : Int) - (5 : Int) :=
      sub_congr node_4_2208 node_4_53
    _ = (319 : Int) := by decide

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

theorem node_2_2208 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2208 = (316 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2208 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2208 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2208 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2208 (by decide)
    _ = (319 : Int) - (3 : Int) :=
      sub_congr node_3_2208 node_3_51
    _ = (316 : Int) := by decide

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

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_1 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_1 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_46 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (46 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 46 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_3_46 node_3_1
    _ = (1 : Int) := by decide

theorem node_1_2208 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2208 = (315 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2208 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2208 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2208 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2208 (by decide)
    _ = (316 : Int) - (1 : Int) :=
      sub_congr node_2_2208 node_2_46
    _ = (315 : Int) := by decide

theorem node_0_117070 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 = (15955 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (117070 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 117070 (by decide)
    _ = (16270 : Int) - (315 : Int) :=
      sub_congr node_1_117070 node_1_2208
    _ = (15955 : Int) := by decide

theorem node_8_118230 : count [19, 17, 13, 11, 7, 5, 3, 2] 118230 = (20218 : Int) := by
  decide

theorem node_8_5140 : count [19, 17, 13, 11, 7, 5, 3, 2] 5140 = (875 : Int) := by
  decide

theorem node_7_118230 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 = (19343 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 = count [19, 17, 13, 11, 7, 5, 3, 2] 118230 - count [19, 17, 13, 11, 7, 5, 3, 2] (118230 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 118230 (by decide)
    _ = (20218 : Int) - (875 : Int) :=
      sub_congr node_8_118230 node_8_5140
    _ = (19343 : Int) := by decide

theorem node_8_4076 : count [19, 17, 13, 11, 7, 5, 3, 2] 4076 = (694 : Int) := by
  decide

theorem node_8_177 : count [19, 17, 13, 11, 7, 5, 3, 2] 177 = (33 : Int) := by
  decide

theorem node_7_4076 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4076 = (661 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 4076 = count [19, 17, 13, 11, 7, 5, 3, 2] 4076 - count [19, 17, 13, 11, 7, 5, 3, 2] (4076 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 4076 (by decide)
    _ = (694 : Int) - (33 : Int) :=
      sub_congr node_8_4076 node_8_177
    _ = (661 : Int) := by decide

theorem node_6_118230 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 = (18682 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (118230 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 (by decide)
    _ = (19343 : Int) - (661 : Int) :=
      sub_congr node_7_118230 node_7_4076
    _ = (18682 : Int) := by decide

theorem node_8_3813 : count [19, 17, 13, 11, 7, 5, 3, 2] 3813 = (649 : Int) := by
  decide

theorem node_8_165 : count [19, 17, 13, 11, 7, 5, 3, 2] 165 = (31 : Int) := by
  decide

theorem node_7_3813 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3813 = (618 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3813 = count [19, 17, 13, 11, 7, 5, 3, 2] 3813 - count [19, 17, 13, 11, 7, 5, 3, 2] (3813 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3813 (by decide)
    _ = (649 : Int) - (31 : Int) :=
      sub_congr node_8_3813 node_8_165
    _ = (618 : Int) := by decide

theorem node_8_131 : count [19, 17, 13, 11, 7, 5, 3, 2] 131 = (25 : Int) := by
  decide

theorem node_7_131 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 131 = (24 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 131 = count [19, 17, 13, 11, 7, 5, 3, 2] 131 - count [19, 17, 13, 11, 7, 5, 3, 2] (131 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 131 (by decide)
    _ = (25 : Int) - (1 : Int) :=
      sub_congr node_8_131 node_8_5
    _ = (24 : Int) := by decide

theorem node_6_3813 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3813 = (594 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3813 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3813 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3813 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3813 (by decide)
    _ = (618 : Int) - (24 : Int) :=
      sub_congr node_7_3813 node_7_131
    _ = (594 : Int) := by decide

theorem node_5_118230 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 = (18088 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (118230 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 (by decide)
    _ = (18682 : Int) - (594 : Int) :=
      sub_congr node_6_118230 node_6_3813
    _ = (18088 : Int) := by decide

theorem node_8_3195 : count [19, 17, 13, 11, 7, 5, 3, 2] 3195 = (543 : Int) := by
  decide

theorem node_8_138 : count [19, 17, 13, 11, 7, 5, 3, 2] 138 = (26 : Int) := by
  decide

theorem node_7_3195 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3195 = (517 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3195 = count [19, 17, 13, 11, 7, 5, 3, 2] 3195 - count [19, 17, 13, 11, 7, 5, 3, 2] (3195 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 3195 (by decide)
    _ = (543 : Int) - (26 : Int) :=
      sub_congr node_8_3195 node_8_138
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

theorem node_6_3195 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3195 = (496 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3195 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 3195 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (3195 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 3195 (by decide)
    _ = (517 : Int) - (21 : Int) :=
      sub_congr node_7_3195 node_7_110
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

theorem node_5_3195 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3195 = (478 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3195 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3195 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (3195 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 3195 (by decide)
    _ = (496 : Int) - (18 : Int) :=
      sub_congr node_6_3195 node_6_103
    _ = (478 : Int) := by decide

theorem node_4_118230 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 = (17610 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (118230 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 (by decide)
    _ = (18088 : Int) - (478 : Int) :=
      sub_congr node_5_118230 node_5_3195
    _ = (17610 : Int) := by decide

theorem node_8_2883 : count [19, 17, 13, 11, 7, 5, 3, 2] 2883 = (490 : Int) := by
  decide

theorem node_8_125 : count [19, 17, 13, 11, 7, 5, 3, 2] 125 = (23 : Int) := by
  decide

theorem node_7_2883 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2883 = (467 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2883 = count [19, 17, 13, 11, 7, 5, 3, 2] 2883 - count [19, 17, 13, 11, 7, 5, 3, 2] (2883 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2883 (by decide)
    _ = (490 : Int) - (23 : Int) :=
      sub_congr node_8_2883 node_8_125
    _ = (467 : Int) := by decide

theorem node_8_99 : count [19, 17, 13, 11, 7, 5, 3, 2] 99 = (18 : Int) := by
  decide

theorem node_7_99 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 99 = (17 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 99 = count [19, 17, 13, 11, 7, 5, 3, 2] 99 - count [19, 17, 13, 11, 7, 5, 3, 2] (99 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 99 (by decide)
    _ = (18 : Int) - (1 : Int) :=
      sub_congr node_8_99 node_8_4
    _ = (17 : Int) := by decide

theorem node_6_2883 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2883 = (450 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2883 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2883 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2883 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2883 (by decide)
    _ = (467 : Int) - (17 : Int) :=
      sub_congr node_7_2883 node_7_99
    _ = (450 : Int) := by decide

theorem node_6_93 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93 = (15 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 93 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 93 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (93 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 93 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_7_93 node_7_3
    _ = (15 : Int) := by decide

theorem node_5_2883 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2883 = (435 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2883 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2883 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2883 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2883 (by decide)
    _ = (450 : Int) - (15 : Int) :=
      sub_congr node_6_2883 node_6_93
    _ = (435 : Int) := by decide

theorem node_4_2883 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2883 = (424 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2883 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2883 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2883 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2883 (by decide)
    _ = (435 : Int) - (11 : Int) :=
      sub_congr node_5_2883 node_5_77
    _ = (424 : Int) := by decide

theorem node_3_118230 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 = (17186 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (118230 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 (by decide)
    _ = (17610 : Int) - (424 : Int) :=
      sub_congr node_4_118230 node_4_2883
    _ = (17186 : Int) := by decide

theorem node_8_2749 : count [19, 17, 13, 11, 7, 5, 3, 2] 2749 = (468 : Int) := by
  decide

theorem node_8_119 : count [19, 17, 13, 11, 7, 5, 3, 2] 119 = (23 : Int) := by
  decide

theorem node_7_2749 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2749 = (445 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2749 = count [19, 17, 13, 11, 7, 5, 3, 2] 2749 - count [19, 17, 13, 11, 7, 5, 3, 2] (2749 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2749 (by decide)
    _ = (468 : Int) - (23 : Int) :=
      sub_congr node_8_2749 node_8_119
    _ = (445 : Int) := by decide

theorem node_8_94 : count [19, 17, 13, 11, 7, 5, 3, 2] 94 = (17 : Int) := by
  decide

theorem node_7_94 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 94 = (16 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 94 = count [19, 17, 13, 11, 7, 5, 3, 2] 94 - count [19, 17, 13, 11, 7, 5, 3, 2] (94 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 94 (by decide)
    _ = (17 : Int) - (1 : Int) :=
      sub_congr node_8_94 node_8_4
    _ = (16 : Int) := by decide

theorem node_6_2749 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2749 = (429 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2749 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2749 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2749 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2749 (by decide)
    _ = (445 : Int) - (16 : Int) :=
      sub_congr node_7_2749 node_7_94
    _ = (429 : Int) := by decide

theorem node_8_88 : count [19, 17, 13, 11, 7, 5, 3, 2] 88 = (16 : Int) := by
  decide

theorem node_7_88 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 88 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 88 = count [19, 17, 13, 11, 7, 5, 3, 2] 88 - count [19, 17, 13, 11, 7, 5, 3, 2] (88 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 88 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_88 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_88 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88 = (14 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 88 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 88 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (88 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 88 (by decide)
    _ = (15 : Int) - (1 : Int) :=
      sub_congr node_7_88 node_7_3
    _ = (14 : Int) := by decide

theorem node_5_2749 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2749 = (415 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2749 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2749 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2749 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2749 (by decide)
    _ = (429 : Int) - (14 : Int) :=
      sub_congr node_6_2749 node_6_88
    _ = (415 : Int) := by decide

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

theorem node_4_2749 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2749 = (404 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2749 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2749 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2749 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2749 (by decide)
    _ = (415 : Int) - (11 : Int) :=
      sub_congr node_5_2749 node_5_74
    _ = (404 : Int) := by decide

theorem node_4_67 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67 = (8 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (67 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 67 (by decide)
    _ = (9 : Int) - (1 : Int) :=
      sub_congr node_5_67 node_5_1
    _ = (8 : Int) := by decide

theorem node_3_2749 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2749 = (396 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2749 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2749 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2749 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2749 (by decide)
    _ = (404 : Int) - (8 : Int) :=
      sub_congr node_4_2749 node_4_67
    _ = (396 : Int) := by decide

theorem node_2_118230 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 = (16790 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (118230 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 (by decide)
    _ = (17186 : Int) - (396 : Int) :=
      sub_congr node_3_118230 node_3_2749
    _ = (16790 : Int) := by decide

theorem node_8_2515 : count [19, 17, 13, 11, 7, 5, 3, 2] 2515 = (427 : Int) := by
  decide

theorem node_7_2515 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2515 = (405 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2515 = count [19, 17, 13, 11, 7, 5, 3, 2] 2515 - count [19, 17, 13, 11, 7, 5, 3, 2] (2515 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2515 (by decide)
    _ = (427 : Int) - (22 : Int) :=
      sub_congr node_8_2515 node_8_109
    _ = (405 : Int) := by decide

theorem node_8_86 : count [19, 17, 13, 11, 7, 5, 3, 2] 86 = (16 : Int) := by
  decide

theorem node_7_86 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = (15 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 86 = count [19, 17, 13, 11, 7, 5, 3, 2] 86 - count [19, 17, 13, 11, 7, 5, 3, 2] (86 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 86 (by decide)
    _ = (16 : Int) - (1 : Int) :=
      sub_congr node_8_86 node_8_3
    _ = (15 : Int) := by decide

theorem node_6_2515 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2515 = (390 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2515 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2515 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2515 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2515 (by decide)
    _ = (405 : Int) - (15 : Int) :=
      sub_congr node_7_2515 node_7_86
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

theorem node_5_2515 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2515 = (377 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2515 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2515 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2515 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2515 (by decide)
    _ = (390 : Int) - (13 : Int) :=
      sub_congr node_6_2515 node_6_81
    _ = (377 : Int) := by decide

theorem node_4_2515 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2515 = (368 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2515 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2515 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2515 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2515 (by decide)
    _ = (377 : Int) - (9 : Int) :=
      sub_congr node_5_2515 node_5_67
    _ = (368 : Int) := by decide

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

theorem node_3_2515 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2515 = (361 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2515 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2515 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2515 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2515 (by decide)
    _ = (368 : Int) - (7 : Int) :=
      sub_congr node_4_2515 node_4_61
    _ = (361 : Int) := by decide

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

theorem node_3_58 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = (4 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (58 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 58 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_4_58 node_4_1
    _ = (4 : Int) := by decide

theorem node_2_2515 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2515 = (357 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2515 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2515 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2515 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2515 (by decide)
    _ = (361 : Int) - (4 : Int) :=
      sub_congr node_3_2515 node_3_58
    _ = (357 : Int) := by decide

theorem node_1_118230 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 = (16433 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (118230 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 (by decide)
    _ = (16790 : Int) - (357 : Int) :=
      sub_congr node_2_118230 node_2_2515
    _ = (16433 : Int) := by decide

theorem node_8_2230 : count [19, 17, 13, 11, 7, 5, 3, 2] 2230 = (375 : Int) := by
  decide

theorem node_7_2230 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2230 = (358 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2230 = count [19, 17, 13, 11, 7, 5, 3, 2] 2230 - count [19, 17, 13, 11, 7, 5, 3, 2] (2230 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 2230 (by decide)
    _ = (375 : Int) - (17 : Int) :=
      sub_congr node_8_2230 node_8_96
    _ = (358 : Int) := by decide

theorem node_6_2230 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2230 = (345 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2230 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 2230 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (2230 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 2230 (by decide)
    _ = (358 : Int) - (13 : Int) :=
      sub_congr node_7_2230 node_7_76
    _ = (345 : Int) := by decide

theorem node_5_2230 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2230 = (334 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2230 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2230 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2230 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2230 (by decide)
    _ = (345 : Int) - (11 : Int) :=
      sub_congr node_6_2230 node_6_71
    _ = (334 : Int) := by decide

theorem node_4_2230 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2230 = (327 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2230 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2230 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2230 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2230 (by decide)
    _ = (334 : Int) - (7 : Int) :=
      sub_congr node_5_2230 node_5_60
    _ = (327 : Int) := by decide

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

theorem node_3_2230 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2230 = (322 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2230 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2230 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2230 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2230 (by decide)
    _ = (327 : Int) - (5 : Int) :=
      sub_congr node_4_2230 node_4_54
    _ = (322 : Int) := by decide

theorem node_2_2230 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2230 = (319 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2230 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2230 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2230 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2230 (by decide)
    _ = (322 : Int) - (3 : Int) :=
      sub_congr node_3_2230 node_3_51
    _ = (319 : Int) := by decide

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

theorem node_2_47 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 = (2 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (47 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 47 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_3_47 node_3_1
    _ = (2 : Int) := by decide

theorem node_1_2230 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2230 = (317 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2230 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2230 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (2230 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 2230 (by decide)
    _ = (319 : Int) - (2 : Int) :=
      sub_congr node_2_2230 node_2_47
    _ = (317 : Int) := by decide

theorem node_0_118230 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 = (16116 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (118230 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 118230 (by decide)
    _ = (16433 : Int) - (317 : Int) :=
      sub_congr node_1_118230 node_1_2230
    _ = (16116 : Int) := by decide

theorem row_102 : count primes 117070 ≤ (15970 : Int) - 15 := by
  rw [show count primes 117070 = (15955 : Int) from node_0_117070]
  decide

theorem row_103 : count primes 118230 ≤ (16131 : Int) - 15 := by
  rw [show count primes 118230 = (16116 : Int) from node_0_118230]
  decide

def pairs : List (Nat × Nat) := [(117070, 15970), (118230, 16131)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl
  · exact row_102
  · exact row_103
end B699CorePrunedSieve.CoreRest38
#check @B699CorePrunedSieve.CoreRest38.pairs_valid
#print axioms B699CorePrunedSieve.CoreRest38.pairs_valid
