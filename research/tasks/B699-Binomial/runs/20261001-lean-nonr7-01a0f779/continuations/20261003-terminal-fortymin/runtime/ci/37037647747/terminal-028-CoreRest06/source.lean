import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CorePrunedCount

/-! Generated untrusted goals for fixed rows; acceptance requires actual kernel proofs. -/
set_option maxRecDepth 20000
set_option maxHeartbeats 2000000
namespace B699CorePrunedSieve.CoreRest06
open B699CorePrunedSieve

theorem sub_congr {a b c d : Int} (ha : a = c) (hb : b = d) : a - b = c - d := by
  cases ha
  cases hb
  rfl

theorem node_8_36492 : count [19, 17, 13, 11, 7, 5, 3, 2] 36492 = (6242 : Int) := by
  decide

theorem node_8_1586 : count [19, 17, 13, 11, 7, 5, 3, 2] 1586 = (268 : Int) := by
  decide

theorem node_7_36492 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 = (5974 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 = count [19, 17, 13, 11, 7, 5, 3, 2] 36492 - count [19, 17, 13, 11, 7, 5, 3, 2] (36492 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 36492 (by decide)
    _ = (6242 : Int) - (268 : Int) :=
      sub_congr node_8_36492 node_8_1586
    _ = (5974 : Int) := by decide

theorem node_8_1258 : count [19, 17, 13, 11, 7, 5, 3, 2] 1258 = (212 : Int) := by
  decide

theorem node_8_54 : count [19, 17, 13, 11, 7, 5, 3, 2] 54 = (9 : Int) := by
  decide

theorem node_7_1258 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1258 = (203 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1258 = count [19, 17, 13, 11, 7, 5, 3, 2] 1258 - count [19, 17, 13, 11, 7, 5, 3, 2] (1258 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1258 (by decide)
    _ = (212 : Int) - (9 : Int) :=
      sub_congr node_8_1258 node_8_54
    _ = (203 : Int) := by decide

theorem node_6_36492 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 = (5771 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (36492 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 (by decide)
    _ = (5974 : Int) - (203 : Int) :=
      sub_congr node_7_36492 node_7_1258
    _ = (5771 : Int) := by decide

theorem node_8_1177 : count [19, 17, 13, 11, 7, 5, 3, 2] 1177 = (198 : Int) := by
  decide

theorem node_8_51 : count [19, 17, 13, 11, 7, 5, 3, 2] 51 = (8 : Int) := by
  decide

theorem node_7_1177 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1177 = (190 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1177 = count [19, 17, 13, 11, 7, 5, 3, 2] 1177 - count [19, 17, 13, 11, 7, 5, 3, 2] (1177 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1177 (by decide)
    _ = (198 : Int) - (8 : Int) :=
      sub_congr node_8_1177 node_8_51
    _ = (190 : Int) := by decide

theorem node_8_40 : count [19, 17, 13, 11, 7, 5, 3, 2] 40 = (5 : Int) := by
  decide

theorem node_8_1 : count [19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  decide

theorem node_7_40 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = (4 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 40 = count [19, 17, 13, 11, 7, 5, 3, 2] 40 - count [19, 17, 13, 11, 7, 5, 3, 2] (40 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 40 (by decide)
    _ = (5 : Int) - (1 : Int) :=
      sub_congr node_8_40 node_8_1
    _ = (4 : Int) := by decide

theorem node_6_1177 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1177 = (186 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1177 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1177 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1177 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1177 (by decide)
    _ = (190 : Int) - (4 : Int) :=
      sub_congr node_7_1177 node_7_40
    _ = (186 : Int) := by decide

theorem node_5_36492 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 = (5585 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (36492 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 (by decide)
    _ = (5771 : Int) - (186 : Int) :=
      sub_congr node_6_36492 node_6_1177
    _ = (5585 : Int) := by decide

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

theorem node_8_34 : count [19, 17, 13, 11, 7, 5, 3, 2] 34 = (4 : Int) := by
  decide

theorem node_7_34 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = (3 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 34 = count [19, 17, 13, 11, 7, 5, 3, 2] 34 - count [19, 17, 13, 11, 7, 5, 3, 2] (34 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 34 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_8_34 node_8_1
    _ = (3 : Int) := by decide

theorem node_6_986 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 = (158 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 986 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (986 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 986 (by decide)
    _ = (161 : Int) - (3 : Int) :=
      sub_congr node_7_986 node_7_34
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

theorem node_8_0 : count [19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [19, 17, 13, 11, 7, 5, 3, 2]

theorem node_7_1 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1 = count [19, 17, 13, 11, 7, 5, 3, 2] 1 - count [19, 17, 13, 11, 7, 5, 3, 2] (1 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_8_1 node_8_0
    _ = (1 : Int) := by decide

theorem node_6_31 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = (2 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 31 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 31 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (31 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 31 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_7_31 node_7_1
    _ = (2 : Int) := by decide

theorem node_5_986 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 = (156 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (986 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 986 (by decide)
    _ = (158 : Int) - (2 : Int) :=
      sub_congr node_6_986 node_6_31
    _ = (156 : Int) := by decide

theorem node_4_36492 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 = (5429 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (36492 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 (by decide)
    _ = (5585 : Int) - (156 : Int) :=
      sub_congr node_5_36492 node_5_986
    _ = (5429 : Int) := by decide

theorem node_8_890 : count [19, 17, 13, 11, 7, 5, 3, 2] 890 = (152 : Int) := by
  decide

theorem node_8_38 : count [19, 17, 13, 11, 7, 5, 3, 2] 38 = (5 : Int) := by
  decide

theorem node_7_890 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 890 = (147 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 890 = count [19, 17, 13, 11, 7, 5, 3, 2] 890 - count [19, 17, 13, 11, 7, 5, 3, 2] (890 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 890 (by decide)
    _ = (152 : Int) - (5 : Int) :=
      sub_congr node_8_890 node_8_38
    _ = (147 : Int) := by decide

theorem node_8_30 : count [19, 17, 13, 11, 7, 5, 3, 2] 30 = (3 : Int) := by
  decide

theorem node_7_30 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 30 = (2 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 30 = count [19, 17, 13, 11, 7, 5, 3, 2] 30 - count [19, 17, 13, 11, 7, 5, 3, 2] (30 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 30 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_8_30 node_8_1
    _ = (2 : Int) := by decide

theorem node_6_890 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 890 = (145 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 890 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 890 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (890 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 890 (by decide)
    _ = (147 : Int) - (2 : Int) :=
      sub_congr node_7_890 node_7_30
    _ = (145 : Int) := by decide

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

theorem node_5_890 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 890 = (144 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 890 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 890 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (890 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 890 (by decide)
    _ = (145 : Int) - (1 : Int) :=
      sub_congr node_6_890 node_6_28
    _ = (144 : Int) := by decide

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

theorem node_6_0 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_5_24 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (24 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 24 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_24 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_890 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 890 = (143 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 890 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 890 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (890 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 890 (by decide)
    _ = (144 : Int) - (1 : Int) :=
      sub_congr node_5_890 node_5_24
    _ = (143 : Int) := by decide

theorem node_3_36492 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 = (5286 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (36492 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 (by decide)
    _ = (5429 : Int) - (143 : Int) :=
      sub_congr node_4_36492 node_4_890
    _ = (5286 : Int) := by decide

theorem node_8_848 : count [19, 17, 13, 11, 7, 5, 3, 2] 848 = (143 : Int) := by
  decide

theorem node_8_36 : count [19, 17, 13, 11, 7, 5, 3, 2] 36 = (4 : Int) := by
  decide

theorem node_7_848 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 848 = (139 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 848 = count [19, 17, 13, 11, 7, 5, 3, 2] 848 - count [19, 17, 13, 11, 7, 5, 3, 2] (848 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 848 (by decide)
    _ = (143 : Int) - (4 : Int) :=
      sub_congr node_8_848 node_8_36
    _ = (139 : Int) := by decide

theorem node_8_29 : count [19, 17, 13, 11, 7, 5, 3, 2] 29 = (3 : Int) := by
  decide

theorem node_7_29 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = (2 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 29 = count [19, 17, 13, 11, 7, 5, 3, 2] 29 - count [19, 17, 13, 11, 7, 5, 3, 2] (29 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 29 (by decide)
    _ = (3 : Int) - (1 : Int) :=
      sub_congr node_8_29 node_8_1
    _ = (2 : Int) := by decide

theorem node_6_848 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 848 = (137 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 848 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 848 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (848 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 848 (by decide)
    _ = (139 : Int) - (2 : Int) :=
      sub_congr node_7_848 node_7_29
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

theorem node_5_848 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 848 = (136 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 848 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 848 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (848 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 848 (by decide)
    _ = (137 : Int) - (1 : Int) :=
      sub_congr node_6_848 node_6_27
    _ = (136 : Int) := by decide

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

theorem node_4_848 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 848 = (135 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 848 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 848 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (848 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 848 (by decide)
    _ = (136 : Int) - (1 : Int) :=
      sub_congr node_5_848 node_5_22
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

theorem node_5_0 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_4_20 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 = (1 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (20 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 20 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_5_20 node_5_0
    _ = (1 : Int) := by decide

theorem node_3_848 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 848 = (134 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 848 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 848 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (848 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 848 (by decide)
    _ = (135 : Int) - (1 : Int) :=
      sub_congr node_4_848 node_4_20
    _ = (134 : Int) := by decide

theorem node_2_36492 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 = (5152 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (36492 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 (by decide)
    _ = (5286 : Int) - (134 : Int) :=
      sub_congr node_3_36492 node_3_848
    _ = (5152 : Int) := by decide

theorem node_8_776 : count [19, 17, 13, 11, 7, 5, 3, 2] 776 = (133 : Int) := by
  decide

theorem node_8_33 : count [19, 17, 13, 11, 7, 5, 3, 2] 33 = (4 : Int) := by
  decide

theorem node_7_776 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 776 = (129 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 776 = count [19, 17, 13, 11, 7, 5, 3, 2] 776 - count [19, 17, 13, 11, 7, 5, 3, 2] (776 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 776 (by decide)
    _ = (133 : Int) - (4 : Int) :=
      sub_congr node_8_776 node_8_33
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

theorem node_6_776 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 776 = (128 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 776 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 776 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (776 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 776 (by decide)
    _ = (129 : Int) - (1 : Int) :=
      sub_congr node_7_776 node_7_26
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

theorem node_6_25 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 25 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (25 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 25 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_25 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_776 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 776 = (127 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 776 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 776 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (776 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 776 (by decide)
    _ = (128 : Int) - (1 : Int) :=
      sub_congr node_6_776 node_6_25
    _ = (127 : Int) := by decide

theorem node_4_776 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 776 = (126 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 776 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 776 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (776 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 776 (by decide)
    _ = (127 : Int) - (1 : Int) :=
      sub_congr node_5_776 node_5_20
    _ = (126 : Int) := by decide

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

theorem node_3_776 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 776 = (125 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 776 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 776 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (776 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 776 (by decide)
    _ = (126 : Int) - (1 : Int) :=
      sub_congr node_4_776 node_4_18
    _ = (125 : Int) := by decide

theorem node_4_0 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_3_18 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (18 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 18 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_18 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_776 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 776 = (124 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 776 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 776 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (776 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 776 (by decide)
    _ = (125 : Int) - (1 : Int) :=
      sub_congr node_3_776 node_3_18
    _ = (124 : Int) := by decide

theorem node_1_36492 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 = (5028 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (36492 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 (by decide)
    _ = (5152 : Int) - (124 : Int) :=
      sub_congr node_2_36492 node_2_776
    _ = (5028 : Int) := by decide

theorem node_8_688 : count [19, 17, 13, 11, 7, 5, 3, 2] 688 = (119 : Int) := by
  decide

theorem node_7_688 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 688 = (116 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 688 = count [19, 17, 13, 11, 7, 5, 3, 2] 688 - count [19, 17, 13, 11, 7, 5, 3, 2] (688 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 688 (by decide)
    _ = (119 : Int) - (3 : Int) :=
      sub_congr node_8_688 node_8_29
    _ = (116 : Int) := by decide

theorem node_8_23 : count [19, 17, 13, 11, 7, 5, 3, 2] 23 = (2 : Int) := by
  decide

theorem node_7_23 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = (1 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = count [19, 17, 13, 11, 7, 5, 3, 2] 23 - count [19, 17, 13, 11, 7, 5, 3, 2] (23 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 23 (by decide)
    _ = (2 : Int) - (1 : Int) :=
      sub_congr node_8_23 node_8_1
    _ = (1 : Int) := by decide

theorem node_6_688 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 688 = (115 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 688 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 688 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (688 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 688 (by decide)
    _ = (116 : Int) - (1 : Int) :=
      sub_congr node_7_688 node_7_23
    _ = (115 : Int) := by decide

theorem node_5_688 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 688 = (114 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 688 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 688 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (688 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 688 (by decide)
    _ = (115 : Int) - (1 : Int) :=
      sub_congr node_6_688 node_6_22
    _ = (114 : Int) := by decide

theorem node_4_688 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 688 = (113 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 688 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 688 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (688 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 688 (by decide)
    _ = (114 : Int) - (1 : Int) :=
      sub_congr node_5_688 node_5_18
    _ = (113 : Int) := by decide

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

theorem node_3_688 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 688 = (112 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 688 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 688 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (688 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 688 (by decide)
    _ = (113 : Int) - (1 : Int) :=
      sub_congr node_4_688 node_4_16
    _ = (112 : Int) := by decide

theorem node_3_16 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (16 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 16 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_16 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_688 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 688 = (111 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 688 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 688 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (688 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 688 (by decide)
    _ = (112 : Int) - (1 : Int) :=
      sub_congr node_3_688 node_3_16
    _ = (111 : Int) := by decide

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

theorem node_3_14 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (14 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_14 node_4_0
    _ = (1 : Int) := by decide

theorem node_3_0 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 0 = (0 : Int) := by
  exact count_zero [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]

theorem node_2_14 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (14 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 14 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_14 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_688 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 688 = (110 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 688 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 688 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (688 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 688 (by decide)
    _ = (111 : Int) - (1 : Int) :=
      sub_congr node_2_688 node_2_14
    _ = (110 : Int) := by decide

theorem node_0_36492 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 = (4918 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (36492 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 36492 (by decide)
    _ = (5028 : Int) - (110 : Int) :=
      sub_congr node_1_36492 node_1_688
    _ = (4918 : Int) := by decide

theorem node_8_38472 : count [19, 17, 13, 11, 7, 5, 3, 2] 38472 = (6584 : Int) := by
  decide

theorem node_8_1672 : count [19, 17, 13, 11, 7, 5, 3, 2] 1672 = (284 : Int) := by
  decide

theorem node_7_38472 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 = (6300 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 = count [19, 17, 13, 11, 7, 5, 3, 2] 38472 - count [19, 17, 13, 11, 7, 5, 3, 2] (38472 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 38472 (by decide)
    _ = (6584 : Int) - (284 : Int) :=
      sub_congr node_8_38472 node_8_1672
    _ = (6300 : Int) := by decide

theorem node_8_1326 : count [19, 17, 13, 11, 7, 5, 3, 2] 1326 = (225 : Int) := by
  decide

theorem node_8_57 : count [19, 17, 13, 11, 7, 5, 3, 2] 57 = (9 : Int) := by
  decide

theorem node_7_1326 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1326 = (216 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1326 = count [19, 17, 13, 11, 7, 5, 3, 2] 1326 - count [19, 17, 13, 11, 7, 5, 3, 2] (1326 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1326 (by decide)
    _ = (225 : Int) - (9 : Int) :=
      sub_congr node_8_1326 node_8_57
    _ = (216 : Int) := by decide

theorem node_6_38472 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 = (6084 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (38472 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 (by decide)
    _ = (6300 : Int) - (216 : Int) :=
      sub_congr node_7_38472 node_7_1326
    _ = (6084 : Int) := by decide

theorem node_8_1241 : count [19, 17, 13, 11, 7, 5, 3, 2] 1241 = (210 : Int) := by
  decide

theorem node_8_53 : count [19, 17, 13, 11, 7, 5, 3, 2] 53 = (9 : Int) := by
  decide

theorem node_7_1241 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1241 = (201 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1241 = count [19, 17, 13, 11, 7, 5, 3, 2] 1241 - count [19, 17, 13, 11, 7, 5, 3, 2] (1241 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1241 (by decide)
    _ = (210 : Int) - (9 : Int) :=
      sub_congr node_8_1241 node_8_53
    _ = (201 : Int) := by decide

theorem node_7_42 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = (5 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 42 = count [19, 17, 13, 11, 7, 5, 3, 2] 42 - count [19, 17, 13, 11, 7, 5, 3, 2] (42 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 42 (by decide)
    _ = (6 : Int) - (1 : Int) :=
      sub_congr node_8_42 node_8_1
    _ = (5 : Int) := by decide

theorem node_6_1241 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1241 = (196 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1241 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1241 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1241 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1241 (by decide)
    _ = (201 : Int) - (5 : Int) :=
      sub_congr node_7_1241 node_7_42
    _ = (196 : Int) := by decide

theorem node_5_38472 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 = (5888 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (38472 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 (by decide)
    _ = (6084 : Int) - (196 : Int) :=
      sub_congr node_6_38472 node_6_1241
    _ = (5888 : Int) := by decide

theorem node_8_1039 : count [19, 17, 13, 11, 7, 5, 3, 2] 1039 = (177 : Int) := by
  decide

theorem node_8_45 : count [19, 17, 13, 11, 7, 5, 3, 2] 45 = (7 : Int) := by
  decide

theorem node_7_1039 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1039 = (170 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1039 = count [19, 17, 13, 11, 7, 5, 3, 2] 1039 - count [19, 17, 13, 11, 7, 5, 3, 2] (1039 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 1039 (by decide)
    _ = (177 : Int) - (7 : Int) :=
      sub_congr node_8_1039 node_8_45
    _ = (170 : Int) := by decide

theorem node_8_35 : count [19, 17, 13, 11, 7, 5, 3, 2] 35 = (4 : Int) := by
  decide

theorem node_7_35 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = (3 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 35 = count [19, 17, 13, 11, 7, 5, 3, 2] 35 - count [19, 17, 13, 11, 7, 5, 3, 2] (35 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 35 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_8_35 node_8_1
    _ = (3 : Int) := by decide

theorem node_6_1039 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1039 = (167 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1039 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 1039 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (1039 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 1039 (by decide)
    _ = (170 : Int) - (3 : Int) :=
      sub_congr node_7_1039 node_7_35
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

theorem node_5_1039 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1039 = (165 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1039 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1039 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (1039 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 1039 (by decide)
    _ = (167 : Int) - (2 : Int) :=
      sub_congr node_6_1039 node_6_33
    _ = (165 : Int) := by decide

theorem node_4_38472 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 = (5723 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (38472 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 (by decide)
    _ = (5888 : Int) - (165 : Int) :=
      sub_congr node_5_38472 node_5_1039
    _ = (5723 : Int) := by decide

theorem node_8_938 : count [19, 17, 13, 11, 7, 5, 3, 2] 938 = (158 : Int) := by
  decide

theorem node_7_938 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 938 = (153 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 938 = count [19, 17, 13, 11, 7, 5, 3, 2] 938 - count [19, 17, 13, 11, 7, 5, 3, 2] (938 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 938 (by decide)
    _ = (158 : Int) - (5 : Int) :=
      sub_congr node_8_938 node_8_40
    _ = (153 : Int) := by decide

theorem node_8_32 : count [19, 17, 13, 11, 7, 5, 3, 2] 32 = (4 : Int) := by
  decide

theorem node_7_32 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = (3 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 32 = count [19, 17, 13, 11, 7, 5, 3, 2] 32 - count [19, 17, 13, 11, 7, 5, 3, 2] (32 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 32 (by decide)
    _ = (4 : Int) - (1 : Int) :=
      sub_congr node_8_32 node_8_1
    _ = (3 : Int) := by decide

theorem node_6_938 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 = (150 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 938 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (938 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 938 (by decide)
    _ = (153 : Int) - (3 : Int) :=
      sub_congr node_7_938 node_7_32
    _ = (150 : Int) := by decide

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

theorem node_5_25 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = (1 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (25 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 25 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_6_25 node_6_0
    _ = (1 : Int) := by decide

theorem node_4_938 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 = (148 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (938 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 938 (by decide)
    _ = (149 : Int) - (1 : Int) :=
      sub_congr node_5_938 node_5_25
    _ = (148 : Int) := by decide

theorem node_3_38472 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 = (5575 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (38472 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 (by decide)
    _ = (5723 : Int) - (148 : Int) :=
      sub_congr node_4_38472 node_4_938
    _ = (5575 : Int) := by decide

theorem node_8_894 : count [19, 17, 13, 11, 7, 5, 3, 2] 894 = (152 : Int) := by
  decide

theorem node_7_894 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 894 = (147 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 894 = count [19, 17, 13, 11, 7, 5, 3, 2] 894 - count [19, 17, 13, 11, 7, 5, 3, 2] (894 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 894 (by decide)
    _ = (152 : Int) - (5 : Int) :=
      sub_congr node_8_894 node_8_38
    _ = (147 : Int) := by decide

theorem node_6_894 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 894 = (145 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 894 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 894 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (894 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 894 (by decide)
    _ = (147 : Int) - (2 : Int) :=
      sub_congr node_7_894 node_7_30
    _ = (145 : Int) := by decide

theorem node_5_894 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 894 = (144 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 894 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 894 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (894 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 894 (by decide)
    _ = (145 : Int) - (1 : Int) :=
      sub_congr node_6_894 node_6_28
    _ = (144 : Int) := by decide

theorem node_4_894 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 894 = (143 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 894 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 894 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (894 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 894 (by decide)
    _ = (144 : Int) - (1 : Int) :=
      sub_congr node_5_894 node_5_24
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

theorem node_3_894 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 894 = (142 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 894 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 894 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (894 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 894 (by decide)
    _ = (143 : Int) - (1 : Int) :=
      sub_congr node_4_894 node_4_21
    _ = (142 : Int) := by decide

theorem node_2_38472 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 = (5433 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (38472 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 (by decide)
    _ = (5575 : Int) - (142 : Int) :=
      sub_congr node_3_38472 node_3_894
    _ = (5433 : Int) := by decide

theorem node_8_818 : count [19, 17, 13, 11, 7, 5, 3, 2] 818 = (137 : Int) := by
  decide

theorem node_7_818 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 818 = (133 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 818 = count [19, 17, 13, 11, 7, 5, 3, 2] 818 - count [19, 17, 13, 11, 7, 5, 3, 2] (818 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 818 (by decide)
    _ = (137 : Int) - (4 : Int) :=
      sub_congr node_8_818 node_8_35
    _ = (133 : Int) := by decide

theorem node_6_818 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 818 = (132 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 818 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 818 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (818 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 818 (by decide)
    _ = (133 : Int) - (1 : Int) :=
      sub_congr node_7_818 node_7_28
    _ = (132 : Int) := by decide

theorem node_6_26 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 26 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 26 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (26 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 26 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_26 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_818 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 818 = (131 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 818 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 818 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (818 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 818 (by decide)
    _ = (132 : Int) - (1 : Int) :=
      sub_congr node_6_818 node_6_26
    _ = (131 : Int) := by decide

theorem node_4_818 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 818 = (130 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 818 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 818 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (818 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 818 (by decide)
    _ = (131 : Int) - (1 : Int) :=
      sub_congr node_5_818 node_5_22
    _ = (130 : Int) := by decide

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

theorem node_3_818 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 818 = (129 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 818 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 818 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (818 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 818 (by decide)
    _ = (130 : Int) - (1 : Int) :=
      sub_congr node_4_818 node_4_19
    _ = (129 : Int) := by decide

theorem node_3_19 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 = (1 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (19 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 19 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_4_19 node_4_0
    _ = (1 : Int) := by decide

theorem node_2_818 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 818 = (128 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 818 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 818 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (818 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 818 (by decide)
    _ = (129 : Int) - (1 : Int) :=
      sub_congr node_3_818 node_3_19
    _ = (128 : Int) := by decide

theorem node_1_38472 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 = (5305 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (38472 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 (by decide)
    _ = (5433 : Int) - (128 : Int) :=
      sub_congr node_2_38472 node_2_818
    _ = (5305 : Int) := by decide

theorem node_8_725 : count [19, 17, 13, 11, 7, 5, 3, 2] 725 = (124 : Int) := by
  decide

theorem node_7_725 : count [23, 19, 17, 13, 11, 7, 5, 3, 2] 725 = (120 : Int) := by
  calc
    count [23, 19, 17, 13, 11, 7, 5, 3, 2] 725 = count [19, 17, 13, 11, 7, 5, 3, 2] 725 - count [19, 17, 13, 11, 7, 5, 3, 2] (725 / 23) :=
      count_step 23 [19, 17, 13, 11, 7, 5, 3, 2] 725 (by decide)
    _ = (124 : Int) - (4 : Int) :=
      sub_congr node_8_725 node_8_31
    _ = (120 : Int) := by decide

theorem node_6_725 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 725 = (119 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 725 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 725 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (725 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 725 (by decide)
    _ = (120 : Int) - (1 : Int) :=
      sub_congr node_7_725 node_7_25
    _ = (119 : Int) := by decide

theorem node_6_23 : count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = (1 : Int) := by
  calc
    count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 23 = count [23, 19, 17, 13, 11, 7, 5, 3, 2] 23 - count [23, 19, 17, 13, 11, 7, 5, 3, 2] (23 / 29) :=
      count_step 29 [23, 19, 17, 13, 11, 7, 5, 3, 2] 23 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_7_23 node_7_0
    _ = (1 : Int) := by decide

theorem node_5_725 : count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 725 = (118 : Int) := by
  calc
    count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 725 = count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 725 - count [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (725 / 31) :=
      count_step 31 [29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 725 (by decide)
    _ = (119 : Int) - (1 : Int) :=
      sub_congr node_6_725 node_6_23
    _ = (118 : Int) := by decide

theorem node_4_725 : count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 725 = (117 : Int) := by
  calc
    count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 725 = count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 725 - count [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (725 / 37) :=
      count_step 37 [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 725 (by decide)
    _ = (118 : Int) - (1 : Int) :=
      sub_congr node_5_725 node_5_19
    _ = (117 : Int) := by decide

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

theorem node_3_725 : count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 725 = (116 : Int) := by
  calc
    count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 725 = count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 725 - count [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (725 / 41) :=
      count_step 41 [37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 725 (by decide)
    _ = (117 : Int) - (1 : Int) :=
      sub_congr node_4_725 node_4_17
    _ = (116 : Int) := by decide

theorem node_2_725 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 725 = (115 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 725 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 725 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (725 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 725 (by decide)
    _ = (116 : Int) - (1 : Int) :=
      sub_congr node_3_725 node_3_16
    _ = (115 : Int) := by decide

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

theorem node_2_15 : count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15 = (1 : Int) := by
  calc
    count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15 = count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15 - count [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (15 / 43) :=
      count_step 43 [41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 15 (by decide)
    _ = (1 : Int) - (0 : Int) :=
      sub_congr node_3_15 node_3_0
    _ = (1 : Int) := by decide

theorem node_1_725 : count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 725 = (114 : Int) := by
  calc
    count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 725 = count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 725 - count [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (725 / 47) :=
      count_step 47 [43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 725 (by decide)
    _ = (115 : Int) - (1 : Int) :=
      sub_congr node_2_725 node_2_15
    _ = (114 : Int) := by decide

theorem node_0_38472 : count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 = (5191 : Int) := by
  calc
    count [53, 47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 = count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 - count [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] (38472 / 53) :=
      count_step 53 [47, 43, 41, 37, 31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2] 38472 (by decide)
    _ = (5305 : Int) - (114 : Int) :=
      sub_congr node_1_38472 node_1_725
    _ = (5191 : Int) := by decide

theorem row_38 : count primes 36492 ≤ (4933 : Int) - 15 := by
  rw [show count primes 36492 = (4918 : Int) from node_0_36492]
  decide

theorem row_39 : count primes 38472 ≤ (5206 : Int) - 15 := by
  rw [show count primes 38472 = (5191 : Int) from node_0_38472]
  decide

def pairs : List (Nat × Nat) := [(36492, 4933), (38472, 5206)]
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_cons, List.not_mem_nil, or_false] at hbt
  rcases hbt with rfl | rfl
  · exact row_38
  · exact row_39
end B699CorePrunedSieve.CoreRest06
#check @B699CorePrunedSieve.CoreRest06.pairs_valid
#print axioms B699CorePrunedSieve.CoreRest06.pairs_valid
