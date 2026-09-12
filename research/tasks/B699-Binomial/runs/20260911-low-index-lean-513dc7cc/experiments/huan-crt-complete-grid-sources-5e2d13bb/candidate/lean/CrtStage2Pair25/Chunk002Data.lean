import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage2Pair25.Chunk002
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA17B1 : CellData where
  inverse := 3
  bounds := fun _ => ⟨0, -1⟩

def cellA17B2 : CellData where
  inverse := 8
  bounds := fun _ => ⟨0, -1⟩

def cellA17B3 : CellData where
  inverse := 33
  bounds := fun _ => ⟨0, -1⟩

def cellA17B4 : CellData where
  inverse := 158
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA17B5 : CellData where
  inverse := 158
  bounds := fun _ => ⟨0, -1⟩

def cellA17B6 : CellData where
  inverse := 12658
  bounds := fun _ => ⟨0, -1⟩

def cellA17B7 : CellData where
  inverse := 28283
  bounds := fun _ => ⟨0, -1⟩

def cellA17B8 : CellData where
  inverse := 184533
  bounds := fun _ => ⟨0, -1⟩

def cellA17B9 : CellData where
  inverse := 1356408
  bounds := fun _ => ⟨0, -1⟩

def cellA17B10 : CellData where
  inverse := 9168908
  bounds := fun _ => ⟨0, -1⟩

def cellA17B11 : CellData where
  inverse := 18934533
  bounds := fun _ => ⟨0, -1⟩

def cellA17B12 : CellData where
  inverse := 214247033
  bounds := fun _ => ⟨0, -1⟩

def cellA17B13 : CellData where
  inverse := 458387658
  bounds := fun _ => ⟨0, -1⟩

def cellA17B14 : CellData where
  inverse := 4120497033
  bounds := fun _ => ⟨0, -1⟩

def cellA17B15 : CellData where
  inverse := 28534559533
  bounds := fun _ => ⟨0, -1⟩

def cellA17B16 : CellData where
  inverse := 28534559533
  bounds := fun _ => ⟨0, -1⟩

def cellA18B1 : CellData where
  inverse := 4
  bounds := fun _ => ⟨0, -1⟩

def cellA18B2 : CellData where
  inverse := 4
  bounds := fun _ => ⟨0, -1⟩

def cellA18B3 : CellData where
  inverse := 79
  bounds := fun _ => ⟨0, -1⟩

def cellA18B4 : CellData where
  inverse := 79
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA18B5 : CellData where
  inverse := 79
  bounds := fun _ => ⟨0, -1⟩

def cellA18B6 : CellData where
  inverse := 6329
  bounds := fun _ => ⟨0, -1⟩

def cellA18B7 : CellData where
  inverse := 53204
  bounds := fun _ => ⟨0, -1⟩

def cellA18B8 : CellData where
  inverse := 287579
  bounds := fun _ => ⟨0, -1⟩

def cellA18B9 : CellData where
  inverse := 678204
  bounds := fun _ => ⟨0, -1⟩

def cellA18B10 : CellData where
  inverse := 4584454
  bounds := fun _ => ⟨0, -1⟩

def cellA18B11 : CellData where
  inverse := 33881329
  bounds := fun _ => ⟨0, -1⟩

def cellA18B12 : CellData where
  inverse := 229193829
  bounds := fun _ => ⟨0, -1⟩

def cellA18B13 : CellData where
  inverse := 229193829
  bounds := fun _ => ⟨0, -1⟩

def cellA18B14 : CellData where
  inverse := 5112006329
  bounds := fun _ => ⟨0, -1⟩

def cellA18B15 : CellData where
  inverse := 29526068829
  bounds := fun _ => ⟨0, -1⟩

def cellA18B16 : CellData where
  inverse := 90561225079
  bounds := fun _ => ⟨0, -1⟩

def cellA19B1 : CellData where
  inverse := 2
  bounds := fun _ => ⟨0, -1⟩

def cellA19B2 : CellData where
  inverse := 2
  bounds := fun _ => ⟨0, -1⟩

def cellA19B3 : CellData where
  inverse := 102
  bounds := fun _ => ⟨0, -1⟩

def cellA19B4 : CellData where
  inverse := 352
  bounds := fun _ => ⟨0, -1⟩

def cellA19B5 : CellData where
  inverse := 1602
  bounds := fun _ => ⟨0, -1⟩

def cellA19B6 : CellData where
  inverse := 10977
  bounds := fun _ => ⟨0, -1⟩

def cellA19B7 : CellData where
  inverse := 26602
  bounds := fun _ => ⟨0, -1⟩

def cellA19B8 : CellData where
  inverse := 339102
  bounds := fun _ => ⟨0, -1⟩

def cellA19B9 : CellData where
  inverse := 339102
  bounds := fun _ => ⟨0, -1⟩

def cellA19B10 : CellData where
  inverse := 2292227
  bounds := fun _ => ⟨0, -1⟩

def cellA19B11 : CellData where
  inverse := 41354727
  bounds := fun _ => ⟨0, -1⟩

def cellA19B12 : CellData where
  inverse := 236667227
  bounds := fun _ => ⟨0, -1⟩

def cellA19B13 : CellData where
  inverse := 724948477
  bounds := fun _ => ⟨0, -1⟩

def cellA19B14 : CellData where
  inverse := 5607760977
  bounds := fun _ => ⟨0, -1⟩

def cellA19B15 : CellData where
  inverse := 30021823477
  bounds := fun _ => ⟨0, -1⟩

def cellA19B16 : CellData where
  inverse := 121574557852
  bounds := fun _ => ⟨0, -1⟩

def cellA20B1 : CellData where
  inverse := 1
  bounds := fun _ => ⟨0, -1⟩

def cellA20B2 : CellData where
  inverse := 1
  bounds := fun _ => ⟨0, -1⟩

def cellA20B3 : CellData where
  inverse := 51
  bounds := fun _ => ⟨0, -1⟩

def cellA20B4 : CellData where
  inverse := 176
  bounds := fun _ => ⟨0, -1⟩

def cellA20B5 : CellData where
  inverse := 801
  bounds := fun _ => ⟨0, -1⟩

def cellA20B6 : CellData where
  inverse := 13301
  bounds := fun _ => ⟨0, -1⟩

def cellA20B7 : CellData where
  inverse := 13301
  bounds := fun _ => ⟨0, -1⟩

def cellA20B8 : CellData where
  inverse := 169551
  bounds := fun _ => ⟨0, -1⟩

def cellA20B9 : CellData where
  inverse := 169551
  bounds := fun _ => ⟨0, -1⟩

def cellA20B10 : CellData where
  inverse := 6028926
  bounds := fun _ => ⟨0, -1⟩

def cellA20B11 : CellData where
  inverse := 45091426
  bounds := fun _ => ⟨0, -1⟩

def cellA20B12 : CellData where
  inverse := 240403926
  bounds := fun _ => ⟨0, -1⟩

def cellA20B13 : CellData where
  inverse := 972825801
  bounds := fun _ => ⟨0, -1⟩

def cellA20B14 : CellData where
  inverse := 5855638301
  bounds := fun _ => ⟨0, -1⟩

def cellA20B15 : CellData where
  inverse := 30269700801
  bounds := fun _ => ⟨0, -1⟩

def cellA20B16 : CellData where
  inverse := 60787278926
  bounds := fun _ => ⟨0, -1⟩

def cellA21B1 : CellData where
  inverse := 3
  bounds := fun _ => ⟨0, -1⟩

def cellA21B2 : CellData where
  inverse := 13
  bounds := fun _ => ⟨0, -1⟩

def cellA21B3 : CellData where
  inverse := 88
  bounds := fun _ => ⟨0, -1⟩

def cellA21B4 : CellData where
  inverse := 88
  bounds := fun _ => ⟨0, -1⟩

def cellA21B5 : CellData where
  inverse := 1963
  bounds := fun _ => ⟨0, -1⟩

def cellA21B6 : CellData where
  inverse := 14463
  bounds := fun _ => ⟨0, -1⟩

def cellA21B7 : CellData where
  inverse := 45713
  bounds := fun _ => ⟨0, -1⟩

def cellA21B8 : CellData where
  inverse := 280088
  bounds := fun _ => ⟨0, -1⟩

def cellA21B9 : CellData where
  inverse := 1061338
  bounds := fun _ => ⟨0, -1⟩

def cellA21B10 : CellData where
  inverse := 3014463
  bounds := fun _ => ⟨0, -1⟩

def cellA21B11 : CellData where
  inverse := 22545713
  bounds := fun _ => ⟨0, -1⟩

def cellA21B12 : CellData where
  inverse := 120201963
  bounds := fun _ => ⟨0, -1⟩

def cellA21B13 : CellData where
  inverse := 1096764463
  bounds := fun _ => ⟨0, -1⟩

def cellA21B14 : CellData where
  inverse := 5979576963
  bounds := fun _ => ⟨0, -1⟩

def cellA21B15 : CellData where
  inverse := 30393639463
  bounds := fun _ => ⟨0, -1⟩

def cellA21B16 : CellData where
  inverse := 30393639463
  bounds := fun _ => ⟨0, -1⟩

def cellA22B1 : CellData where
  inverse := 4
  bounds := fun _ => ⟨0, -1⟩

def cellA22B2 : CellData where
  inverse := 19
  bounds := fun _ => ⟨0, -1⟩

def cellA22B3 : CellData where
  inverse := 44
  bounds := fun _ => ⟨0, -1⟩

def cellA22B4 : CellData where
  inverse := 44
  bounds := fun _ => ⟨0, -1⟩

def cellA22B5 : CellData where
  inverse := 2544
  bounds := fun _ => ⟨0, -1⟩

def cellA22B6 : CellData where
  inverse := 15044
  bounds := fun _ => ⟨0, -1⟩

def cellA22B7 : CellData where
  inverse := 61919
  bounds := fun _ => ⟨0, -1⟩

def cellA22B8 : CellData where
  inverse := 140044
  bounds := fun _ => ⟨0, -1⟩

def cellA22B9 : CellData where
  inverse := 530669
  bounds := fun _ => ⟨0, -1⟩

def cellA22B10 : CellData where
  inverse := 6390044
  bounds := fun _ => ⟨0, -1⟩

def cellA22B11 : CellData where
  inverse := 35686919
  bounds := fun _ => ⟨0, -1⟩

def cellA22B12 : CellData where
  inverse := 182171294
  bounds := fun _ => ⟨0, -1⟩

def cellA22B13 : CellData where
  inverse := 1158733794
  bounds := fun _ => ⟨0, -1⟩

def cellA22B14 : CellData where
  inverse := 6041546294
  bounds := fun _ => ⟨0, -1⟩

def cellA22B15 : CellData where
  inverse := 30455608794
  bounds := fun _ => ⟨0, -1⟩

def cellA22B16 : CellData where
  inverse := 91490765044
  bounds := fun _ => ⟨0, -1⟩

def cellA23B1 : CellData where
  inverse := 2
  bounds := fun _ => ⟨0, -1⟩

def cellA23B2 : CellData where
  inverse := 22
  bounds := fun _ => ⟨0, -1⟩

def cellA23B3 : CellData where
  inverse := 22
  bounds := fun _ => ⟨0, -1⟩

def cellA23B4 : CellData where
  inverse := 22
  bounds := fun _ => ⟨0, -1⟩

def cellA23B5 : CellData where
  inverse := 1272
  bounds := fun _ => ⟨0, -1⟩

def cellA23B6 : CellData where
  inverse := 7522
  bounds := fun _ => ⟨0, -1⟩

def cellA23B7 : CellData where
  inverse := 70022
  bounds := fun _ => ⟨0, -1⟩

def cellA23B8 : CellData where
  inverse := 70022
  bounds := fun _ => ⟨0, -1⟩

def cellA23B9 : CellData where
  inverse := 1241897
  bounds := fun _ => ⟨0, -1⟩

def cellA23B10 : CellData where
  inverse := 3195022
  bounds := fun _ => ⟨0, -1⟩

def cellA23B11 : CellData where
  inverse := 42257522
  bounds := fun _ => ⟨0, -1⟩

def cellA23B12 : CellData where
  inverse := 91085647
  bounds := fun _ => ⟨0, -1⟩

def cellA23B13 : CellData where
  inverse := 579366897
  bounds := fun _ => ⟨0, -1⟩

def cellA23B14 : CellData where
  inverse := 3020773147
  bounds := fun _ => ⟨0, -1⟩

def cellA23B15 : CellData where
  inverse := 15227804397
  bounds := fun _ => ⟨0, -1⟩

def cellA23B16 : CellData where
  inverse := 45745382522
  bounds := fun _ => ⟨0, -1⟩

def cellA24B1 : CellData where
  inverse := 1
  bounds := fun _ => ⟨0, -1⟩

def cellA24B2 : CellData where
  inverse := 11
  bounds := fun _ => ⟨0, -1⟩

def cellA24B3 : CellData where
  inverse := 11
  bounds := fun _ => ⟨0, -1⟩

def cellA24B4 : CellData where
  inverse := 11
  bounds := fun _ => ⟨0, -1⟩

def cellA24B5 : CellData where
  inverse := 636
  bounds := fun _ => ⟨0, -1⟩

def cellA24B6 : CellData where
  inverse := 3761
  bounds := fun _ => ⟨0, -1⟩

def cellA24B7 : CellData where
  inverse := 35011
  bounds := fun _ => ⟨0, -1⟩

def cellA24B8 : CellData where
  inverse := 35011
  bounds := fun _ => ⟨0, -1⟩

def cellA24B9 : CellData where
  inverse := 1597511
  bounds := fun _ => ⟨0, -1⟩

def cellA24B10 : CellData where
  inverse := 1597511
  bounds := fun _ => ⟨0, -1⟩

def cellA24B11 : CellData where
  inverse := 21128761
  bounds := fun _ => ⟨0, -1⟩

def cellA24B12 : CellData where
  inverse := 167613136
  bounds := fun _ => ⟨0, -1⟩

def cellA24B13 : CellData where
  inverse := 900035011
  bounds := fun _ => ⟨0, -1⟩

def cellA24B14 : CellData where
  inverse := 4562144386
  bounds := fun _ => ⟨0, -1⟩

def cellA24B15 : CellData where
  inverse := 22872691261
  bounds := fun _ => ⟨0, -1⟩

def cellA24B16 : CellData where
  inverse := 22872691261
  bounds := fun _ => ⟨0, -1⟩

def rowA17 (b : ℕ) : CellData :=
  if b = 1 then cellA17B1
  else if b = 2 then cellA17B2
  else if b = 3 then cellA17B3
  else if b = 4 then cellA17B4
  else if b = 5 then cellA17B5
  else if b = 6 then cellA17B6
  else if b = 7 then cellA17B7
  else if b = 8 then cellA17B8
  else if b = 9 then cellA17B9
  else if b = 10 then cellA17B10
  else if b = 11 then cellA17B11
  else if b = 12 then cellA17B12
  else if b = 13 then cellA17B13
  else if b = 14 then cellA17B14
  else if b = 15 then cellA17B15
  else if b = 16 then cellA17B16
  else outsideCell

def rowA18 (b : ℕ) : CellData :=
  if b = 1 then cellA18B1
  else if b = 2 then cellA18B2
  else if b = 3 then cellA18B3
  else if b = 4 then cellA18B4
  else if b = 5 then cellA18B5
  else if b = 6 then cellA18B6
  else if b = 7 then cellA18B7
  else if b = 8 then cellA18B8
  else if b = 9 then cellA18B9
  else if b = 10 then cellA18B10
  else if b = 11 then cellA18B11
  else if b = 12 then cellA18B12
  else if b = 13 then cellA18B13
  else if b = 14 then cellA18B14
  else if b = 15 then cellA18B15
  else if b = 16 then cellA18B16
  else outsideCell

def rowA19 (b : ℕ) : CellData :=
  if b = 1 then cellA19B1
  else if b = 2 then cellA19B2
  else if b = 3 then cellA19B3
  else if b = 4 then cellA19B4
  else if b = 5 then cellA19B5
  else if b = 6 then cellA19B6
  else if b = 7 then cellA19B7
  else if b = 8 then cellA19B8
  else if b = 9 then cellA19B9
  else if b = 10 then cellA19B10
  else if b = 11 then cellA19B11
  else if b = 12 then cellA19B12
  else if b = 13 then cellA19B13
  else if b = 14 then cellA19B14
  else if b = 15 then cellA19B15
  else if b = 16 then cellA19B16
  else outsideCell

def rowA20 (b : ℕ) : CellData :=
  if b = 1 then cellA20B1
  else if b = 2 then cellA20B2
  else if b = 3 then cellA20B3
  else if b = 4 then cellA20B4
  else if b = 5 then cellA20B5
  else if b = 6 then cellA20B6
  else if b = 7 then cellA20B7
  else if b = 8 then cellA20B8
  else if b = 9 then cellA20B9
  else if b = 10 then cellA20B10
  else if b = 11 then cellA20B11
  else if b = 12 then cellA20B12
  else if b = 13 then cellA20B13
  else if b = 14 then cellA20B14
  else if b = 15 then cellA20B15
  else if b = 16 then cellA20B16
  else outsideCell

def rowA21 (b : ℕ) : CellData :=
  if b = 1 then cellA21B1
  else if b = 2 then cellA21B2
  else if b = 3 then cellA21B3
  else if b = 4 then cellA21B4
  else if b = 5 then cellA21B5
  else if b = 6 then cellA21B6
  else if b = 7 then cellA21B7
  else if b = 8 then cellA21B8
  else if b = 9 then cellA21B9
  else if b = 10 then cellA21B10
  else if b = 11 then cellA21B11
  else if b = 12 then cellA21B12
  else if b = 13 then cellA21B13
  else if b = 14 then cellA21B14
  else if b = 15 then cellA21B15
  else if b = 16 then cellA21B16
  else outsideCell

def rowA22 (b : ℕ) : CellData :=
  if b = 1 then cellA22B1
  else if b = 2 then cellA22B2
  else if b = 3 then cellA22B3
  else if b = 4 then cellA22B4
  else if b = 5 then cellA22B5
  else if b = 6 then cellA22B6
  else if b = 7 then cellA22B7
  else if b = 8 then cellA22B8
  else if b = 9 then cellA22B9
  else if b = 10 then cellA22B10
  else if b = 11 then cellA22B11
  else if b = 12 then cellA22B12
  else if b = 13 then cellA22B13
  else if b = 14 then cellA22B14
  else if b = 15 then cellA22B15
  else if b = 16 then cellA22B16
  else outsideCell

def rowA23 (b : ℕ) : CellData :=
  if b = 1 then cellA23B1
  else if b = 2 then cellA23B2
  else if b = 3 then cellA23B3
  else if b = 4 then cellA23B4
  else if b = 5 then cellA23B5
  else if b = 6 then cellA23B6
  else if b = 7 then cellA23B7
  else if b = 8 then cellA23B8
  else if b = 9 then cellA23B9
  else if b = 10 then cellA23B10
  else if b = 11 then cellA23B11
  else if b = 12 then cellA23B12
  else if b = 13 then cellA23B13
  else if b = 14 then cellA23B14
  else if b = 15 then cellA23B15
  else if b = 16 then cellA23B16
  else outsideCell

def rowA24 (b : ℕ) : CellData :=
  if b = 1 then cellA24B1
  else if b = 2 then cellA24B2
  else if b = 3 then cellA24B3
  else if b = 4 then cellA24B4
  else if b = 5 then cellA24B5
  else if b = 6 then cellA24B6
  else if b = 7 then cellA24B7
  else if b = 8 then cellA24B8
  else if b = 9 then cellA24B9
  else if b = 10 then cellA24B10
  else if b = 11 then cellA24B11
  else if b = 12 then cellA24B12
  else if b = 13 then cellA24B13
  else if b = 14 then cellA24B14
  else if b = 15 then cellA24B15
  else if b = 16 then cellA24B16
  else outsideCell

def chunkData (a b : ℕ) : CellData :=
  if a = 17 then rowA17 b
  else if a = 18 then rowA18 b
  else if a = 19 then rowA19 b
  else if a = 20 then rowA20 b
  else if a = 21 then rowA21 b
  else if a = 22 then rowA22 b
  else if a = 23 then rowA23 b
  else if a = 24 then rowA24 b
  else outsideCell

end Math.B699.CRTStage2Pair25.Chunk002
