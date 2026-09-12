import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage3Pair27.Chunk002
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA17B1 : CellData where
  inverse := 2
  bounds := fun _ => ⟨0, -1⟩

def cellA17B2 : CellData where
  inverse := 16
  bounds := fun _ => ⟨0, -1⟩

def cellA17B3 : CellData where
  inverse := 261
  bounds := fun _ => ⟨0, -1⟩

def cellA17B4 : CellData where
  inverse := 1976
  bounds := fun _ => ⟨0, -1⟩

def cellA17B5 : CellData where
  inverse := 13981
  bounds := fun _ => ⟨0, -1⟩

def cellA17B6 : CellData where
  inverse := 98016
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA17B7 : CellData where
  inverse := 333314
  bounds := fun _ => ⟨0, -1⟩

def cellA17B8 : CellData where
  inverse := 1156857
  bounds := fun _ => ⟨0, -1⟩

def cellA17B9 : CellData where
  inverse := 35745663
  bounds := fun _ => ⟨0, -1⟩

def cellA18B1 : CellData where
  inverse := 1
  bounds := fun _ => ⟨0, -1⟩

def cellA18B2 : CellData where
  inverse := 8
  bounds := fun _ => ⟨0, -1⟩

def cellA18B3 : CellData where
  inverse := 302
  bounds := fun _ => ⟨0, -1⟩

def cellA18B4 : CellData where
  inverse := 988
  bounds := fun _ => ⟨0, -1⟩

def cellA18B5 : CellData where
  inverse := 15394
  bounds := fun _ => ⟨0, -1⟩

def cellA18B6 : CellData where
  inverse := 49008
  bounds := fun _ => ⟨0, -1⟩

def cellA18B7 : CellData where
  inverse := 166657
  bounds := fun _ => ⟨0, -1⟩

def cellA18B8 : CellData where
  inverse := 3460829
  bounds := fun _ => ⟨0, -1⟩

def cellA18B9 : CellData where
  inverse := 38049635
  bounds := fun _ => ⟨0, -1⟩

def cellA19B1 : CellData where
  inverse := 4
  bounds := fun _ => ⟨0, -1⟩

def cellA19B2 : CellData where
  inverse := 4
  bounds := fun _ => ⟨0, -1⟩

def cellA19B3 : CellData where
  inverse := 151
  bounds := fun _ => ⟨0, -1⟩

def cellA19B4 : CellData where
  inverse := 494
  bounds := fun _ => ⟨0, -1⟩

def cellA19B5 : CellData where
  inverse := 7697
  bounds := fun _ => ⟨0, -1⟩

def cellA19B6 : CellData where
  inverse := 24504
  bounds := fun _ => ⟨0, -1⟩

def cellA19B7 : CellData where
  inverse := 495100
  bounds := fun _ => ⟨0, -1⟩

def cellA19B8 : CellData where
  inverse := 4612815
  bounds := fun _ => ⟨0, -1⟩

def cellA19B9 : CellData where
  inverse := 39201621
  bounds := fun _ => ⟨0, -1⟩

def cellA20B1 : CellData where
  inverse := 2
  bounds := fun _ => ⟨0, -1⟩

def cellA20B2 : CellData where
  inverse := 2
  bounds := fun _ => ⟨0, -1⟩

def cellA20B3 : CellData where
  inverse := 247
  bounds := fun _ => ⟨0, -1⟩

def cellA20B4 : CellData where
  inverse := 247
  bounds := fun _ => ⟨0, -1⟩

def cellA20B5 : CellData where
  inverse := 12252
  bounds := fun _ => ⟨0, -1⟩

def cellA20B6 : CellData where
  inverse := 12252
  bounds := fun _ => ⟨0, -1⟩

def cellA20B7 : CellData where
  inverse := 247550
  bounds := fun _ => ⟨0, -1⟩

def cellA20B8 : CellData where
  inverse := 5188808
  bounds := fun _ => ⟨0, -1⟩

def cellA20B9 : CellData where
  inverse := 39777614
  bounds := fun _ => ⟨0, -1⟩

def cellA21B1 : CellData where
  inverse := 1
  bounds := fun _ => ⟨0, -1⟩

def cellA21B2 : CellData where
  inverse := 1
  bounds := fun _ => ⟨0, -1⟩

def cellA21B3 : CellData where
  inverse := 295
  bounds := fun _ => ⟨0, -1⟩

def cellA21B4 : CellData where
  inverse := 1324
  bounds := fun _ => ⟨0, -1⟩

def cellA21B5 : CellData where
  inverse := 6126
  bounds := fun _ => ⟨0, -1⟩

def cellA21B6 : CellData where
  inverse := 6126
  bounds := fun _ => ⟨0, -1⟩

def cellA21B7 : CellData where
  inverse := 123775
  bounds := fun _ => ⟨0, -1⟩

def cellA21B8 : CellData where
  inverse := 2594404
  bounds := fun _ => ⟨0, -1⟩

def cellA21B9 : CellData where
  inverse := 19888807
  bounds := fun _ => ⟨0, -1⟩

def cellA22B1 : CellData where
  inverse := 4
  bounds := fun _ => ⟨0, -1⟩

def cellA22B2 : CellData where
  inverse := 25
  bounds := fun _ => ⟨0, -1⟩

def cellA22B3 : CellData where
  inverse := 319
  bounds := fun _ => ⟨0, -1⟩

def cellA22B4 : CellData where
  inverse := 662
  bounds := fun _ => ⟨0, -1⟩

def cellA22B5 : CellData where
  inverse := 3063
  bounds := fun _ => ⟨0, -1⟩

def cellA22B6 : CellData where
  inverse := 3063
  bounds := fun _ => ⟨0, -1⟩

def cellA22B7 : CellData where
  inverse := 473659
  bounds := fun _ => ⟨0, -1⟩

def cellA22B8 : CellData where
  inverse := 1297202
  bounds := fun _ => ⟨0, -1⟩

def cellA22B9 : CellData where
  inverse := 30121207
  bounds := fun _ => ⟨0, -1⟩

def cellA23B1 : CellData where
  inverse := 2
  bounds := fun _ => ⟨0, -1⟩

def cellA23B2 : CellData where
  inverse := 37
  bounds := fun _ => ⟨0, -1⟩

def cellA23B3 : CellData where
  inverse := 331
  bounds := fun _ => ⟨0, -1⟩

def cellA23B4 : CellData where
  inverse := 331
  bounds := fun _ => ⟨0, -1⟩

def cellA23B5 : CellData where
  inverse := 9935
  bounds := fun _ => ⟨0, -1⟩

def cellA23B6 : CellData where
  inverse := 60356
  bounds := fun _ => ⟨0, -1⟩

def cellA23B7 : CellData where
  inverse := 648601
  bounds := fun _ => ⟨0, -1⟩

def cellA23B8 : CellData where
  inverse := 648601
  bounds := fun _ => ⟨0, -1⟩

def cellA23B9 : CellData where
  inverse := 35237407
  bounds := fun _ => ⟨0, -1⟩

def cellA24B1 : CellData where
  inverse := 1
  bounds := fun _ => ⟨0, -1⟩

def cellA24B2 : CellData where
  inverse := 43
  bounds := fun _ => ⟨0, -1⟩

def cellA24B3 : CellData where
  inverse := 337
  bounds := fun _ => ⟨0, -1⟩

def cellA24B4 : CellData where
  inverse := 1366
  bounds := fun _ => ⟨0, -1⟩

def cellA24B5 : CellData where
  inverse := 13371
  bounds := fun _ => ⟨0, -1⟩

def cellA24B6 : CellData where
  inverse := 30178
  bounds := fun _ => ⟨0, -1⟩

def cellA24B7 : CellData where
  inverse := 736072
  bounds := fun _ => ⟨0, -1⟩

def cellA24B8 : CellData where
  inverse := 3206701
  bounds := fun _ => ⟨0, -1⟩

def cellA24B9 : CellData where
  inverse := 37795507
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

end Math.B699.CRTStage3Pair27.Chunk002
