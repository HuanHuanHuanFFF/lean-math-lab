import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreRest04
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_28816 : count [19, 17, 13, 11, 7, 5, 3, 2] 28816 = (4933 : Int) := by
  decide

theorem node_8_1252 : count [19, 17, 13, 11, 7, 5, 3, 2] 1252 = (212 : Int) := by
  decide

theorem node_7_28816 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 = (4721 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 = count [19, 17, 13, 11, 7, 5, 3, 2] 28816 - count [19, 17, 13, 11, 7, 5, 3, 2] (28816 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 28816 (by decide)
    _ = (4933 : Int) - (212 : Int) :=
      sub_congr node_8_28816 node_8_1252
    _ = (4721 : Int) := by decide

theorem node_8_993 : count [19, 17, 13, 11, 7, 5, 3, 2] 993 = (169 : Int) := by
  decide

theorem node_8_43 : count [19, 17, 13, 11, 7, 5, 3, 2] 43 = (7 : Int) := by
  decide

theorem node_7_993 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 993 = (162 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 993 = count [19, 17, 13, 11, 7, 5, 3, 2] 993 - count [19, 17, 13, 11, 7, 5, 3, 2] (993 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 993 (by decide)
    _ = (169 : Int) - (7 : Int) :=
      sub_congr node_8_993 node_8_43
    _ = (162 : Int) := by decide

theorem node_6_28816 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 = (4559 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (28816 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 (by decide)
    _ = (4721 : Int) - (162 : Int) :=
      sub_congr node_7_28816 node_7_993
    _ = (4559 : Int) := by decide

theorem node_8_929 : count [19, 17, 13, 11, 7, 5, 3, 2] 929 = (157 : Int) := by
  decide

theorem node_8_40 : count [19, 17, 13, 11, 7, 5, 3, 2] 40 = (5 : Int) := by
  decide

theorem node_7_929 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 929 = (152 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 929 = count [19, 17, 13, 11, 7, 5, 3, 2] 929 - count [19, 17, 13, 11, 7, 5, 3, 2] (929 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 929 (by decide)
    _ = (157 : Int) - (5 : Int) :=
      sub_congr node_8_929 node_8_40
    _ = (152 : Int) := by decide

theorem node_8_32 : count [19, 17, 13, 11, 7, 5, 3, 2] 32 = (4 : Int) := by
  decide

theorem node_8_1 : count [19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  decide

theorem node_7_32 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = (3 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = count [19, 17, 13, 11, 7, 5, 3, 2] 32 - count [19, 17, 13, 11, 7, 5, 3, 2] (32 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 32 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_8_32 node_8_1
    _ = (3 : Int) := by decide

theorem node_6_929 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 929 = (149 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 929 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 929 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (929 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 929 (by decide)
    _ = (152 : Int) - (3 : Int) :=
      sub_congr node_7_929 node_7_32
    _ = (149 : Int) := by decide

theorem node_5_28816 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 = (4410 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (28816 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 (by decide)
    _ = (4559 : Int) - (149 : Int) :=
      sub_congr node_6_28816 node_6_929
    _ = (4410 : Int) := by decide

theorem node_8_778 : count [19, 17, 13, 11, 7, 5, 3, 2] 778 = (133 : Int) := by
  decide

theorem node_8_33 : count [19, 17, 13, 11, 7, 5, 3, 2] 33 = (4 : Int) := by
  decide

theorem node_7_778 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 778 = (129 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 778 = count [19, 17, 13, 11, 7, 5, 3, 2] 778 - count [19, 17, 13, 11, 7, 5, 3, 2] (778 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 778 (by decide)
    _ = (133 : Int) - (4 : Int) :=
      sub_congr node_8_778 node_8_33
    _ = (129 : Int) := by decide

theorem node_8_26 : count [19, 17, 13, 11, 7, 5, 3, 2] 26 = (2 : Int) := by
  decide

theorem node_7_26 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = count [19, 17, 13, 11, 7, 5, 3, 2] 26 - count [19, 17, 13, 11, 7, 5, 3, 2] (26 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 26 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_8_26 node_8_1
    _ = (1 : Int) := by decide

theorem node_6_778 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 778 = (128 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 778 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 778 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (778 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 778 (by decide)
    _ = (129 : Int) - (1 : Int) :=
      sub_congr node_7_778 node_7_26
    _ = (128 : Int) := by decide

theorem node_8_25 : count [19, 17, 13, 11, 7, 5, 3, 2] 25 = (2 : Int) := by
  decide

theorem node_7_25 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = count [19, 17, 13, 11, 7, 5, 3, 2] 25 - count [19, 17, 13, 11, 7, 5, 3, 2] (25 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 25 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_8_25 node_8_1
    _ = (1 : Int) := by decide

theorem node_7_0 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_6_25 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 25 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (25 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 25 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_25 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_778 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 778 = (127 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 778 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 778 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (778 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 778 (by decide)
    _ = (128 : Int) - (1 : Int) :=
      sub_congr node_6_778 node_6_25
    _ = (127 : Int) := by decide

theorem node_4_28816 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 = (4283 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (28816 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 (by decide)
    _ = (4410 : Int) - (127 : Int) :=
      sub_congr node_5_28816 node_5_778
    _ = (4283 : Int) := by decide

theorem node_8_702 : count [19, 17, 13, 11, 7, 5, 3, 2] 702 = (121 : Int) := by
  decide

theorem node_8_30 : count [19, 17, 13, 11, 7, 5, 3, 2] 30 = (3 : Int) := by
  decide

theorem node_7_702 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 702 = (118 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 702 = count [19, 17, 13, 11, 7, 5, 3, 2] 702 - count [19, 17, 13, 11, 7, 5, 3, 2] (702 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 702 (by decide)
    _ = (121 : Int) - (3 : Int) :=
      sub_congr node_8_702 node_8_30
    _ = (118 : Int) := by decide

theorem node_8_24 : count [19, 17, 13, 11, 7, 5, 3, 2] 24 = (2 : Int) := by
  decide

theorem node_7_24 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = count [19, 17, 13, 11, 7, 5, 3, 2] 24 - count [19, 17, 13, 11, 7, 5, 3, 2] (24 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 24 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_8_24 node_8_1
    _ = (1 : Int) := by decide

theorem node_6_702 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 702 = (117 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 702 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 702 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (702 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 702 (by decide)
    _ = (118 : Int) - (1 : Int) :=
      sub_congr node_7_702 node_7_24
    _ = (117 : Int) := by decide

theorem node_8_22 : count [19, 17, 13, 11, 7, 5, 3, 2] 22 = (1 : Int) := by
  decide

theorem node_8_0 : count [19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [19, 17, 13, 11, 7, 5, 3, 2]

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

theorem node_5_702 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 702 = (116 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 702 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 702 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (702 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 702 (by decide)
    _ = (117 : Int) - (1 : Int) :=
      sub_congr node_6_702 node_6_22
    _ = (116 : Int) := by decide

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

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_18 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (18 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_18 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_702 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 702 = (115 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 702 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 702 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (702 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 702 (by decide)
    _ = (116 : Int) - (1 : Int) :=
      sub_congr node_5_702 node_5_18
    _ = (115 : Int) := by decide

theorem node_3_28816 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 = (4168 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (28816 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 (by decide)
    _ = (4283 : Int) - (115 : Int) :=
      sub_congr node_4_28816 node_4_702
    _ = (4168 : Int) := by decide

theorem node_8_670 : count [19, 17, 13, 11, 7, 5, 3, 2] 670 = (116 : Int) := by
  decide

theorem node_8_29 : count [19, 17, 13, 11, 7, 5, 3, 2] 29 = (3 : Int) := by
  decide

theorem node_7_670 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 670 = (113 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 670 = count [19, 17, 13, 11, 7, 5, 3, 2] 670 - count [19, 17, 13, 11, 7, 5, 3, 2] (670 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 670 (by decide)
    _ = (116 : Int) - (3 : Int) :=
      sub_congr node_8_670 node_8_29
    _ = (113 : Int) := by decide

theorem node_8_23 : count [19, 17, 13, 11, 7, 5, 3, 2] 23 = (2 : Int) := by
  decide

theorem node_7_23 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = count [19, 17, 13, 11, 7, 5, 3, 2] 23 - count [19, 17, 13, 11, 7, 5, 3, 2] (23 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 23 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_8_23 node_8_1
    _ = (1 : Int) := by decide

theorem node_6_670 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 670 = (112 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 670 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 670 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (670 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 670 (by decide)
    _ = (113 : Int) - (1 : Int) :=
      sub_congr node_7_670 node_7_23
    _ = (112 : Int) := by decide

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

theorem node_5_670 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 670 = (111 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 670 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 670 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (670 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 670 (by decide)
    _ = (112 : Int) - (1 : Int) :=
      sub_congr node_6_670 node_6_21
    _ = (111 : Int) := by decide

theorem node_4_670 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 670 = (110 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 670 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 670 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (670 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 670 (by decide)
    _ = (111 : Int) - (1 : Int) :=
      sub_congr node_5_670 node_5_18
    _ = (110 : Int) := by decide

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

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_16 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (16 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_16 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_670 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 670 = (109 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 670 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 670 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (670 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 670 (by decide)
    _ = (110 : Int) - (1 : Int) :=
      sub_congr node_4_670 node_4_16
    _ = (109 : Int) := by decide

theorem node_2_28816 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 = (4059 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (28816 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 (by decide)
    _ = (4168 : Int) - (109 : Int) :=
      sub_congr node_3_28816 node_3_670
    _ = (4059 : Int) := by decide

theorem node_8_613 : count [19, 17, 13, 11, 7, 5, 3, 2] 613 = (106 : Int) := by
  decide

theorem node_7_613 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 613 = (104 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 613 = count [19, 17, 13, 11, 7, 5, 3, 2] 613 - count [19, 17, 13, 11, 7, 5, 3, 2] (613 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 613 (by decide)
    _ = (106 : Int) - (2 : Int) :=
      sub_congr node_8_613 node_8_26
    _ = (104 : Int) := by decide

theorem node_6_613 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 613 = (103 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 613 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 613 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (613 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 613 (by decide)
    _ = (104 : Int) - (1 : Int) :=
      sub_congr node_7_613 node_7_21
    _ = (103 : Int) := by decide

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

theorem node_5_613 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 613 = (102 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 613 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 613 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (613 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 613 (by decide)
    _ = (103 : Int) - (1 : Int) :=
      sub_congr node_6_613 node_6_19
    _ = (102 : Int) := by decide

theorem node_4_613 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 613 = (101 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 613 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 613 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (613 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 613 (by decide)
    _ = (102 : Int) - (1 : Int) :=
      sub_congr node_5_613 node_5_16
    _ = (101 : Int) := by decide

theorem node_8_14 : count [19, 17, 13, 11, 7, 5, 3, 2] 14 = (1 : Int) := by
  decide

theorem node_7_14 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = count [19, 17, 13, 11, 7, 5, 3, 2] 14 - count [19, 17, 13, 11, 7, 5, 3, 2] (14 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 14 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_14 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_14 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 14 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (14 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 14 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_14 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_14 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (14 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_14 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_14 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (14 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_14 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_613 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 613 = (100 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 613 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 613 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (613 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 613 (by decide)
    _ = (101 : Int) - (1 : Int) :=
      sub_congr node_4_613 node_4_14
    _ = (100 : Int) := by decide

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_14 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (14 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_14 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_613 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 613 = (99 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 613 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 613 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (613 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 613 (by decide)
    _ = (100 : Int) - (1 : Int) :=
      sub_congr node_3_613 node_3_14
    _ = (99 : Int) := by decide

theorem node_1_28816 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 = (3960 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (28816 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 (by decide)
    _ = (4059 : Int) - (99 : Int) :=
      sub_congr node_2_28816 node_2_613
    _ = (3960 : Int) := by decide

theorem node_8_543 : count [19, 17, 13, 11, 7, 5, 3, 2] 543 = (94 : Int) := by
  decide

theorem node_7_543 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 543 = (92 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 543 = count [19, 17, 13, 11, 7, 5, 3, 2] 543 - count [19, 17, 13, 11, 7, 5, 3, 2] (543 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 543 (by decide)
    _ = (94 : Int) - (2 : Int) :=
      sub_congr node_8_543 node_8_23
    _ = (92 : Int) := by decide

theorem node_6_543 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 543 = (91 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 543 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 543 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (543 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 543 (by decide)
    _ = (92 : Int) - (1 : Int) :=
      sub_congr node_7_543 node_7_18
    _ = (91 : Int) := by decide

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

theorem node_5_543 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 543 = (90 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 543 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 543 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (543 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 543 (by decide)
    _ = (91 : Int) - (1 : Int) :=
      sub_congr node_6_543 node_6_17
    _ = (90 : Int) := by decide

theorem node_4_543 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 543 = (89 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 543 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 543 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (543 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 543 (by decide)
    _ = (90 : Int) - (1 : Int) :=
      sub_congr node_5_543 node_5_14
    _ = (89 : Int) := by decide

theorem node_8_13 : count [19, 17, 13, 11, 7, 5, 3, 2] 13 = (1 : Int) := by
  decide

theorem node_7_13 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = count [19, 17, 13, 11, 7, 5, 3, 2] 13 - count [19, 17, 13, 11, 7, 5, 3, 2] (13 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 13 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_13 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_13 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 13 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (13 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 13 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_13 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_13 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (13 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_13 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_13 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (13 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_13 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_543 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 543 = (88 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 543 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 543 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (543 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 543 (by decide)
    _ = (89 : Int) - (1 : Int) :=
      sub_congr node_4_543 node_4_13
    _ = (88 : Int) := by decide

theorem node_8_12 : count [19, 17, 13, 11, 7, 5, 3, 2] 12 = (1 : Int) := by
  decide

theorem node_7_12 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 12 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 12 = count [19, 17, 13, 11, 7, 5, 3, 2] 12 - count [19, 17, 13, 11, 7, 5, 3, 2] (12 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 12 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_12 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_12 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 12 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (12 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 12 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_12 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_12 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (12 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_12 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_12 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (12 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_12 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_12 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (12 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_12 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_543 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 543 = (87 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 543 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 543 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (543 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 543 (by decide)
    _ = (88 : Int) - (1 : Int) :=
      sub_congr node_3_543 node_3_12
    _ = (87 : Int) := by decide

theorem node_8_11 : count [19, 17, 13, 11, 7, 5, 3, 2] 11 = (1 : Int) := by
  decide

theorem node_7_11 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = count [19, 17, 13, 11, 7, 5, 3, 2] 11 - count [19, 17, 13, 11, 7, 5, 3, 2] (11 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 11 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_11 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_11 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 11 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (11 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 11 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_11 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_11 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (11 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_11 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_11 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (11 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_11 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_11 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (11 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_11 node_4_0
    _ = (1 : Int) := by decide

theorem node_3_0 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_2_11 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (11 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 11 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_11 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_543 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 543 = (86 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 543 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 543 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (543 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 543 (by decide)
    _ = (87 : Int) - (1 : Int) :=
      sub_congr node_2_543 node_2_11
    _ = (86 : Int) := by decide

theorem node_0_28816 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 = (3874 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (28816 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 28816 (by decide)
    _ = (3960 : Int) - (86 : Int) :=
      sub_congr node_1_28816 node_1_543
    _ = (3874 : Int) := by decide

theorem node_8_31572 : count [19, 17, 13, 11, 7, 5, 3, 2] 31572 = (5401 : Int) := by
  decide

theorem node_8_1372 : count [19, 17, 13, 11, 7, 5, 3, 2] 1372 = (232 : Int) := by
  decide

theorem node_7_31572 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 = (5169 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 = count [19, 17, 13, 11, 7, 5, 3, 2] 31572 - count [19, 17, 13, 11, 7, 5, 3, 2] (31572 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 31572 (by decide)
    _ = (5401 : Int) - (232 : Int) :=
      sub_congr node_8_31572 node_8_1372
    _ = (5169 : Int) := by decide

theorem node_8_1088 : count [19, 17, 13, 11, 7, 5, 3, 2] 1088 = (185 : Int) := by
  decide

theorem node_8_47 : count [19, 17, 13, 11, 7, 5, 3, 2] 47 = (8 : Int) := by
  decide

theorem node_7_1088 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 = (177 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1088 = count [19, 17, 13, 11, 7, 5, 3, 2] 1088 - count [19, 17, 13, 11, 7, 5, 3, 2] (1088 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1088 (by decide)
    _ = (185 : Int) - (8 : Int) :=
      sub_congr node_8_1088 node_8_47
    _ = (177 : Int) := by decide

theorem node_6_31572 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 = (4992 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (31572 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 (by decide)
    _ = (5169 : Int) - (177 : Int) :=
      sub_congr node_7_31572 node_7_1088
    _ = (4992 : Int) := by decide

theorem node_8_1018 : count [19, 17, 13, 11, 7, 5, 3, 2] 1018 = (172 : Int) := by
  decide

theorem node_8_44 : count [19, 17, 13, 11, 7, 5, 3, 2] 44 = (7 : Int) := by
  decide

theorem node_7_1018 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1018 = (165 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1018 = count [19, 17, 13, 11, 7, 5, 3, 2] 1018 - count [19, 17, 13, 11, 7, 5, 3, 2] (1018 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1018 (by decide)
    _ = (172 : Int) - (7 : Int) :=
      sub_congr node_8_1018 node_8_44
    _ = (165 : Int) := by decide

theorem node_8_35 : count [19, 17, 13, 11, 7, 5, 3, 2] 35 = (4 : Int) := by
  decide

theorem node_7_35 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = (3 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = count [19, 17, 13, 11, 7, 5, 3, 2] 35 - count [19, 17, 13, 11, 7, 5, 3, 2] (35 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 35 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_8_35 node_8_1
    _ = (3 : Int) := by decide

theorem node_6_1018 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1018 = (162 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1018 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1018 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1018 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1018 (by decide)
    _ = (165 : Int) - (3 : Int) :=
      sub_congr node_7_1018 node_7_35
    _ = (162 : Int) := by decide

theorem node_5_31572 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 = (4830 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (31572 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 (by decide)
    _ = (4992 : Int) - (162 : Int) :=
      sub_congr node_6_31572 node_6_1018
    _ = (4830 : Int) := by decide

theorem node_8_853 : count [19, 17, 13, 11, 7, 5, 3, 2] 853 = (145 : Int) := by
  decide

theorem node_8_37 : count [19, 17, 13, 11, 7, 5, 3, 2] 37 = (5 : Int) := by
  decide

theorem node_7_853 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 853 = (140 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 853 = count [19, 17, 13, 11, 7, 5, 3, 2] 853 - count [19, 17, 13, 11, 7, 5, 3, 2] (853 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 853 (by decide)
    _ = (145 : Int) - (5 : Int) :=
      sub_congr node_8_853 node_8_37
    _ = (140 : Int) := by decide

theorem node_7_29 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = (2 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = count [19, 17, 13, 11, 7, 5, 3, 2] 29 - count [19, 17, 13, 11, 7, 5, 3, 2] (29 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 29 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_8_29 node_8_1
    _ = (2 : Int) := by decide

theorem node_6_853 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 853 = (138 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 853 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 853 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (853 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 853 (by decide)
    _ = (140 : Int) - (2 : Int) :=
      sub_congr node_7_853 node_7_29
    _ = (138 : Int) := by decide

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

theorem node_5_853 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 853 = (137 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 853 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 853 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (853 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 853 (by decide)
    _ = (138 : Int) - (1 : Int) :=
      sub_congr node_6_853 node_6_27
    _ = (137 : Int) := by decide

theorem node_4_31572 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 = (4693 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (31572 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 (by decide)
    _ = (4830 : Int) - (137 : Int) :=
      sub_congr node_5_31572 node_5_853
    _ = (4693 : Int) := by decide

theorem node_8_770 : count [19, 17, 13, 11, 7, 5, 3, 2] 770 = (132 : Int) := by
  decide

theorem node_7_770 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 770 = (128 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 770 = count [19, 17, 13, 11, 7, 5, 3, 2] 770 - count [19, 17, 13, 11, 7, 5, 3, 2] (770 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 770 (by decide)
    _ = (132 : Int) - (4 : Int) :=
      sub_congr node_8_770 node_8_33
    _ = (128 : Int) := by decide

theorem node_6_770 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 770 = (127 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 770 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 770 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (770 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 770 (by decide)
    _ = (128 : Int) - (1 : Int) :=
      sub_congr node_7_770 node_7_26
    _ = (127 : Int) := by decide

theorem node_6_24 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 24 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (24 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 24 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_24 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_770 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 770 = (126 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 770 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 770 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (770 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 770 (by decide)
    _ = (127 : Int) - (1 : Int) :=
      sub_congr node_6_770 node_6_24
    _ = (126 : Int) := by decide

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

theorem node_4_770 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 770 = (125 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 770 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 770 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (770 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 770 (by decide)
    _ = (126 : Int) - (1 : Int) :=
      sub_congr node_5_770 node_5_20
    _ = (125 : Int) := by decide

theorem node_3_31572 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 = (4568 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (31572 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 (by decide)
    _ = (4693 : Int) - (125 : Int) :=
      sub_congr node_4_31572 node_4_770
    _ = (4568 : Int) := by decide

theorem node_8_734 : count [19, 17, 13, 11, 7, 5, 3, 2] 734 = (126 : Int) := by
  decide

theorem node_8_31 : count [19, 17, 13, 11, 7, 5, 3, 2] 31 = (4 : Int) := by
  decide

theorem node_7_734 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 734 = (122 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 734 = count [19, 17, 13, 11, 7, 5, 3, 2] 734 - count [19, 17, 13, 11, 7, 5, 3, 2] (734 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 734 (by decide)
    _ = (126 : Int) - (4 : Int) :=
      sub_congr node_8_734 node_8_31
    _ = (122 : Int) := by decide

theorem node_6_734 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 734 = (121 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 734 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 734 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (734 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 734 (by decide)
    _ = (122 : Int) - (1 : Int) :=
      sub_congr node_7_734 node_7_25
    _ = (121 : Int) := by decide

theorem node_6_23 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 23 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (23 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 23 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_23 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_734 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 734 = (120 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 734 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 734 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (734 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 734 (by decide)
    _ = (121 : Int) - (1 : Int) :=
      sub_congr node_6_734 node_6_23
    _ = (120 : Int) := by decide

theorem node_5_19 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (19 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_19 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_734 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 734 = (119 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 734 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 734 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (734 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 734 (by decide)
    _ = (120 : Int) - (1 : Int) :=
      sub_congr node_5_734 node_5_19
    _ = (119 : Int) := by decide

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

theorem node_3_734 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 734 = (118 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 734 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 734 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (734 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 734 (by decide)
    _ = (119 : Int) - (1 : Int) :=
      sub_congr node_4_734 node_4_17
    _ = (118 : Int) := by decide

theorem node_2_31572 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 = (4450 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (31572 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 (by decide)
    _ = (4568 : Int) - (118 : Int) :=
      sub_congr node_3_31572 node_3_734
    _ = (4450 : Int) := by decide

theorem node_8_671 : count [19, 17, 13, 11, 7, 5, 3, 2] 671 = (116 : Int) := by
  decide

theorem node_7_671 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 671 = (113 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 671 = count [19, 17, 13, 11, 7, 5, 3, 2] 671 - count [19, 17, 13, 11, 7, 5, 3, 2] (671 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 671 (by decide)
    _ = (116 : Int) - (3 : Int) :=
      sub_congr node_8_671 node_8_29
    _ = (113 : Int) := by decide

theorem node_6_671 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 671 = (112 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 671 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 671 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (671 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 671 (by decide)
    _ = (113 : Int) - (1 : Int) :=
      sub_congr node_7_671 node_7_23
    _ = (112 : Int) := by decide

theorem node_5_671 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 671 = (111 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 671 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 671 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (671 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 671 (by decide)
    _ = (112 : Int) - (1 : Int) :=
      sub_congr node_6_671 node_6_21
    _ = (111 : Int) := by decide

theorem node_4_671 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 671 = (110 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 671 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 671 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (671 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 671 (by decide)
    _ = (111 : Int) - (1 : Int) :=
      sub_congr node_5_671 node_5_18
    _ = (110 : Int) := by decide

theorem node_3_671 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 671 = (109 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 671 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 671 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (671 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 671 (by decide)
    _ = (110 : Int) - (1 : Int) :=
      sub_congr node_4_671 node_4_16
    _ = (109 : Int) := by decide

theorem node_8_15 : count [19, 17, 13, 11, 7, 5, 3, 2] 15 = (1 : Int) := by
  decide

theorem node_7_15 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 15 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 15 = count [19, 17, 13, 11, 7, 5, 3, 2] 15 - count [19, 17, 13, 11, 7, 5, 3, 2] (15 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 15 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_15 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_15 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 15 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (15 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 15 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_15 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_15 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (15 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_15 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_15 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (15 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_15 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_15 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (15 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_15 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_671 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 671 = (108 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 671 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 671 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (671 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 671 (by decide)
    _ = (109 : Int) - (1 : Int) :=
      sub_congr node_3_671 node_3_15
    _ = (108 : Int) := by decide

theorem node_1_31572 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 = (4342 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (31572 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 (by decide)
    _ = (4450 : Int) - (108 : Int) :=
      sub_congr node_2_31572 node_2_671
    _ = (4342 : Int) := by decide

theorem node_8_595 : count [19, 17, 13, 11, 7, 5, 3, 2] 595 = (102 : Int) := by
  decide

theorem node_7_595 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 595 = (100 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 595 = count [19, 17, 13, 11, 7, 5, 3, 2] 595 - count [19, 17, 13, 11, 7, 5, 3, 2] (595 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 595 (by decide)
    _ = (102 : Int) - (2 : Int) :=
      sub_congr node_8_595 node_8_25
    _ = (100 : Int) := by decide

theorem node_6_595 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 595 = (99 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 595 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 595 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (595 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 595 (by decide)
    _ = (100 : Int) - (1 : Int) :=
      sub_congr node_7_595 node_7_20
    _ = (99 : Int) := by decide

theorem node_5_595 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 595 = (98 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 595 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 595 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (595 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 595 (by decide)
    _ = (99 : Int) - (1 : Int) :=
      sub_congr node_6_595 node_6_19
    _ = (98 : Int) := by decide

theorem node_4_595 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 595 = (97 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 595 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 595 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (595 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 595 (by decide)
    _ = (98 : Int) - (1 : Int) :=
      sub_congr node_5_595 node_5_16
    _ = (97 : Int) := by decide

theorem node_3_595 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 595 = (96 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 595 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 595 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (595 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 595 (by decide)
    _ = (97 : Int) - (1 : Int) :=
      sub_congr node_4_595 node_4_14
    _ = (96 : Int) := by decide

theorem node_3_13 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (13 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 13 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_13 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_595 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 595 = (95 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 595 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 595 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (595 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 595 (by decide)
    _ = (96 : Int) - (1 : Int) :=
      sub_congr node_3_595 node_3_13
    _ = (95 : Int) := by decide

theorem node_2_12 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (12 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 12 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_12 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_595 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 595 = (94 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 595 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 595 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (595 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 595 (by decide)
    _ = (95 : Int) - (1 : Int) :=
      sub_congr node_2_595 node_2_12
    _ = (94 : Int) := by decide

theorem node_0_31572 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 = (4248 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (31572 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31572 (by decide)
    _ = (4342 : Int) - (94 : Int) :=
      sub_congr node_1_31572 node_1_595
    _ = (4248 : Int) := by decide

theorem row_34 : count primes 28816 ≤ (3889 : Int) - 15 := by
  rw [show count primes 28816 = (3874 : Int) from node_0_28816]
  decide

theorem row_35 : count primes 31572 ≤ (4263 : Int) - 15 := by
  rw [show count primes 31572 = (4248 : Int) from node_0_31572]
  decide

def pairs : List (Nat × Nat) := [(28816, 3889), (31572, 4263)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl
  · exact row_34
  · exact row_35
end B699CorePrunedSieve.CoreRest04
#check @B699CorePrunedSieve.CoreRest04.pairs_valid
#print axioms B699CorePrunedSieve.CoreRest04.pairs_valid
