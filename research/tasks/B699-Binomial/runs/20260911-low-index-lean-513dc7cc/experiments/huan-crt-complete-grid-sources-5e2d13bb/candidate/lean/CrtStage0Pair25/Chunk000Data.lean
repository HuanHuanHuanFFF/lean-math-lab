import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage0Pair25.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA1B1 : CellData where
  inverse := 3
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 23740605⟩
    else if d = (4 : ℤ) then ⟨1, 23740605⟩
    else if d = (6 : ℤ) then ⟨1, 23740605⟩
    else if d = (7 : ℤ) then ⟨1, 23740605⟩
    else if d = (8 : ℤ) then ⟨1, 23740605⟩
    else if d = (9 : ℤ) then ⟨1, 23740605⟩
    else if d = (10 : ℤ) then ⟨1, 23740605⟩
    else ⟨0, 23740605⟩

def cellA1B2 : CellData where
  inverse := 13
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 4748121⟩
    else if d = (4 : ℤ) then ⟨1, 4748121⟩
    else if d = (6 : ℤ) then ⟨1, 4748121⟩
    else if d = (8 : ℤ) then ⟨1, 4748121⟩
    else if d = (10 : ℤ) then ⟨1, 4748121⟩
    else ⟨0, 4748120⟩

def cellA1B3 : CellData where
  inverse := 63
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 949624⟩
    else if d = (4 : ℤ) then ⟨1, 949624⟩
    else if d = (6 : ℤ) then ⟨1, 949624⟩
    else if d = (8 : ℤ) then ⟨1, 949624⟩
    else if d = (10 : ℤ) then ⟨1, 949624⟩
    else ⟨0, 949623⟩

def cellA1B4 : CellData where
  inverse := 313
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 189923⟩
    else if d = (-8 : ℤ) then ⟨0, 189923⟩
    else if d = (-6 : ℤ) then ⟨0, 189923⟩
    else if d = (-4 : ℤ) then ⟨0, 189923⟩
    else if d = (-2 : ℤ) then ⟨0, 189923⟩
    else if d = (0 : ℤ) then ⟨0, 189923⟩
    else if d = (2 : ℤ) then ⟨1, 189924⟩
    else if d = (4 : ℤ) then ⟨1, 189924⟩
    else if d = (6 : ℤ) then ⟨1, 189924⟩
    else if d = (8 : ℤ) then ⟨1, 189924⟩
    else if d = (10 : ℤ) then ⟨1, 189924⟩
    else ⟨0, 189924⟩

def cellA1B5 : CellData where
  inverse := 1563
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 37983⟩
    else if d = (-8 : ℤ) then ⟨0, 37983⟩
    else if d = (-6 : ℤ) then ⟨0, 37983⟩
    else if d = (-4 : ℤ) then ⟨0, 37983⟩
    else if d = (-2 : ℤ) then ⟨0, 37983⟩
    else if d = (0 : ℤ) then ⟨0, 37983⟩
    else if d = (2 : ℤ) then ⟨1, 37984⟩
    else if d = (4 : ℤ) then ⟨1, 37984⟩
    else if d = (6 : ℤ) then ⟨1, 37984⟩
    else if d = (8 : ℤ) then ⟨1, 37984⟩
    else if d = (10 : ℤ) then ⟨1, 37984⟩
    else ⟨0, 37984⟩

def cellA1B6 : CellData where
  inverse := 7813
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 7595⟩
    else if d = (-8 : ℤ) then ⟨0, 7595⟩
    else if d = (-6 : ℤ) then ⟨0, 7595⟩
    else if d = (-4 : ℤ) then ⟨0, 7595⟩
    else if d = (-2 : ℤ) then ⟨0, 7595⟩
    else if d = (0 : ℤ) then ⟨0, 7595⟩
    else if d = (2 : ℤ) then ⟨1, 7596⟩
    else if d = (4 : ℤ) then ⟨1, 7596⟩
    else if d = (6 : ℤ) then ⟨1, 7596⟩
    else if d = (8 : ℤ) then ⟨1, 7596⟩
    else if d = (10 : ℤ) then ⟨1, 7596⟩
    else ⟨0, 7596⟩

def cellA1B7 : CellData where
  inverse := 39063
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 1519⟩
    else if d = (4 : ℤ) then ⟨1, 1519⟩
    else if d = (6 : ℤ) then ⟨1, 1519⟩
    else if d = (8 : ℤ) then ⟨1, 1519⟩
    else if d = (10 : ℤ) then ⟨1, 1519⟩
    else ⟨0, 1518⟩

def cellA1B8 : CellData where
  inverse := 195313
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 302⟩
    else if d = (-8 : ℤ) then ⟨0, 302⟩
    else if d = (-6 : ℤ) then ⟨0, 302⟩
    else if d = (-4 : ℤ) then ⟨0, 302⟩
    else if d = (-2 : ℤ) then ⟨0, 302⟩
    else if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (2 : ℤ) then ⟨1, 303⟩
    else if d = (4 : ℤ) then ⟨1, 303⟩
    else if d = (6 : ℤ) then ⟨1, 303⟩
    else if d = (8 : ℤ) then ⟨1, 303⟩
    else if d = (10 : ℤ) then ⟨1, 303⟩
    else ⟨0, 303⟩

def cellA1B9 : CellData where
  inverse := 976563
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 59⟩
    else if d = (-8 : ℤ) then ⟨0, 59⟩
    else if d = (-6 : ℤ) then ⟨0, 59⟩
    else if d = (-4 : ℤ) then ⟨0, 59⟩
    else if d = (-2 : ℤ) then ⟨0, 59⟩
    else if d = (0 : ℤ) then ⟨0, 59⟩
    else if d = (2 : ℤ) then ⟨1, 60⟩
    else if d = (4 : ℤ) then ⟨1, 60⟩
    else if d = (6 : ℤ) then ⟨1, 60⟩
    else if d = (8 : ℤ) then ⟨1, 60⟩
    else if d = (10 : ℤ) then ⟨1, 60⟩
    else ⟨0, 60⟩

def cellA1B10 : CellData where
  inverse := 4882813
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 12⟩
    else if d = (4 : ℤ) then ⟨1, 12⟩
    else if d = (6 : ℤ) then ⟨1, 12⟩
    else if d = (8 : ℤ) then ⟨1, 12⟩
    else if d = (10 : ℤ) then ⟨1, 12⟩
    else ⟨0, 11⟩

def cellA1B11 : CellData where
  inverse := 24414063
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 2⟩
    else if d = (4 : ℤ) then ⟨1, 2⟩
    else if d = (6 : ℤ) then ⟨1, 2⟩
    else if d = (8 : ℤ) then ⟨1, 2⟩
    else if d = (10 : ℤ) then ⟨1, 2⟩
    else ⟨0, 1⟩

def cellA1B12 : CellData where
  inverse := 122070313
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B13 : CellData where
  inverse := 610351563
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B14 : CellData where
  inverse := 3051757813
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B15 : CellData where
  inverse := 15258789063
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B16 : CellData where
  inverse := 76293945313
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B17 : CellData where
  inverse := 381469726563
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B18 : CellData where
  inverse := 1907348632813
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B19 : CellData where
  inverse := 9536743164063
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B20 : CellData where
  inverse := 47683715820313
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B21 : CellData where
  inverse := 238418579101563
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B22 : CellData where
  inverse := 1192092895507813
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B23 : CellData where
  inverse := 5960464477539063
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B24 : CellData where
  inverse := 29802322387695313
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B25 : CellData where
  inverse := 149011611938476563
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B26 : CellData where
  inverse := 745058059692382813
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B27 : CellData where
  inverse := 3725290298461914063
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B28 : CellData where
  inverse := 18626451492309570313
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B29 : CellData where
  inverse := 93132257461547851563
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B30 : CellData where
  inverse := 465661287307739257813
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B31 : CellData where
  inverse := 2328306436538696289063
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B32 : CellData where
  inverse := 11641532182693481445313
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B33 : CellData where
  inverse := 58207660913467407226563
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B34 : CellData where
  inverse := 291038304567337036132813
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B35 : CellData where
  inverse := 1455191522836685180664063
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B36 : CellData where
  inverse := 7275957614183425903320313
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B37 : CellData where
  inverse := 36379788070917129516601563
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B38 : CellData where
  inverse := 181898940354585647583007813
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B39 : CellData where
  inverse := 909494701772928237915039063
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B40 : CellData where
  inverse := 4547473508864641189575195313
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B41 : CellData where
  inverse := 22737367544323205947875976563
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B42 : CellData where
  inverse := 113686837721616029739379882813
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B43 : CellData where
  inverse := 568434188608080148696899414063
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B44 : CellData where
  inverse := 2842170943040400743484497070313
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B45 : CellData where
  inverse := 14210854715202003717422485351563
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B46 : CellData where
  inverse := 71054273576010018587112426757813
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨1, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else if d = (10 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 23740605⟩
    else if d = (8 : ℤ) then ⟨1, 23740605⟩
    else if d = (9 : ℤ) then ⟨1, 23740605⟩
    else ⟨0, 23740605⟩

def cellA2B2 : CellData where
  inverse := 19
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 4748121⟩
    else if d = (-5 : ℤ) then ⟨0, 4748121⟩
    else if d = (4 : ℤ) then ⟨1, 4748121⟩
    else if d = (8 : ℤ) then ⟨1, 4748121⟩
    else ⟨0, 4748120⟩

def cellA2B3 : CellData where
  inverse := 94
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 949624⟩
    else if d = (-5 : ℤ) then ⟨0, 949624⟩
    else if d = (4 : ℤ) then ⟨1, 949624⟩
    else if d = (8 : ℤ) then ⟨1, 949624⟩
    else ⟨0, 949623⟩

def cellA2B4 : CellData where
  inverse := 469
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 189923⟩
    else if d = (-4 : ℤ) then ⟨0, 189923⟩
    else if d = (0 : ℤ) then ⟨0, 189923⟩
    else if d = (4 : ℤ) then ⟨1, 189924⟩
    else if d = (8 : ℤ) then ⟨1, 189924⟩
    else ⟨0, 189924⟩

def cellA2B5 : CellData where
  inverse := 2344
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 37983⟩
    else if d = (-4 : ℤ) then ⟨0, 37983⟩
    else if d = (0 : ℤ) then ⟨0, 37983⟩
    else if d = (4 : ℤ) then ⟨1, 37984⟩
    else if d = (8 : ℤ) then ⟨1, 37984⟩
    else ⟨0, 37984⟩

def cellA2B6 : CellData where
  inverse := 11719
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 7595⟩
    else if d = (-4 : ℤ) then ⟨0, 7595⟩
    else if d = (0 : ℤ) then ⟨0, 7595⟩
    else if d = (4 : ℤ) then ⟨1, 7596⟩
    else if d = (8 : ℤ) then ⟨1, 7596⟩
    else ⟨0, 7596⟩

def cellA2B7 : CellData where
  inverse := 58594
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1519⟩
    else if d = (-5 : ℤ) then ⟨0, 1519⟩
    else if d = (-1 : ℤ) then ⟨0, 1519⟩
    else if d = (3 : ℤ) then ⟨0, 1519⟩
    else if d = (4 : ℤ) then ⟨1, 1519⟩
    else if d = (7 : ℤ) then ⟨0, 1519⟩
    else if d = (8 : ℤ) then ⟨1, 1519⟩
    else ⟨0, 1518⟩

def cellA2B8 : CellData where
  inverse := 292969
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 302⟩
    else if d = (-4 : ℤ) then ⟨0, 302⟩
    else if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (4 : ℤ) then ⟨1, 303⟩
    else if d = (8 : ℤ) then ⟨1, 303⟩
    else ⟨0, 303⟩

def cellA2B9 : CellData where
  inverse := 1464844
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 59⟩
    else if d = (-4 : ℤ) then ⟨0, 59⟩
    else if d = (0 : ℤ) then ⟨0, 59⟩
    else if d = (4 : ℤ) then ⟨1, 60⟩
    else if d = (8 : ℤ) then ⟨1, 60⟩
    else ⟨0, 60⟩

def cellA2B10 : CellData where
  inverse := 7324219
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 12⟩
    else if d = (8 : ℤ) then ⟨1, 12⟩
    else ⟨0, 11⟩

def cellA2B11 : CellData where
  inverse := 36621094
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 2⟩
    else if d = (-5 : ℤ) then ⟨0, 2⟩
    else if d = (-1 : ℤ) then ⟨0, 2⟩
    else if d = (3 : ℤ) then ⟨0, 2⟩
    else if d = (4 : ℤ) then ⟨1, 2⟩
    else if d = (7 : ℤ) then ⟨0, 2⟩
    else if d = (8 : ℤ) then ⟨1, 2⟩
    else ⟨0, 1⟩

def cellA2B12 : CellData where
  inverse := 183105469
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B13 : CellData where
  inverse := 915527344
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B14 : CellData where
  inverse := 4577636719
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B15 : CellData where
  inverse := 22888183594
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B16 : CellData where
  inverse := 114440917969
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B17 : CellData where
  inverse := 572204589844
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B18 : CellData where
  inverse := 2861022949219
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B19 : CellData where
  inverse := 14305114746094
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B20 : CellData where
  inverse := 71525573730469
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B21 : CellData where
  inverse := 357627868652344
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B22 : CellData where
  inverse := 1788139343261719
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B23 : CellData where
  inverse := 8940696716308594
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B24 : CellData where
  inverse := 44703483581542969
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B25 : CellData where
  inverse := 223517417907714844
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B26 : CellData where
  inverse := 1117587089538574219
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B27 : CellData where
  inverse := 5587935447692871094
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B28 : CellData where
  inverse := 27939677238464355469
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B29 : CellData where
  inverse := 139698386192321777344
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B30 : CellData where
  inverse := 698491930961608886719
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B31 : CellData where
  inverse := 3492459654808044433594
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B32 : CellData where
  inverse := 17462298274040222167969
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B33 : CellData where
  inverse := 87311491370201110839844
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B34 : CellData where
  inverse := 436557456851005554199219
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B35 : CellData where
  inverse := 2182787284255027770996094
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B36 : CellData where
  inverse := 10913936421275138854980469
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B37 : CellData where
  inverse := 54569682106375694274902344
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B38 : CellData where
  inverse := 272848410531878471374511719
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B39 : CellData where
  inverse := 1364242052659392356872558594
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B40 : CellData where
  inverse := 6821210263296961784362792969
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B41 : CellData where
  inverse := 34106051316484808921813964844
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B42 : CellData where
  inverse := 170530256582424044609069824219
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B43 : CellData where
  inverse := 852651282912120223045349121094
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B44 : CellData where
  inverse := 4263256414560601115226745605469
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B45 : CellData where
  inverse := 21316282072803005576133728027344
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B46 : CellData where
  inverse := 106581410364015027880668640136719
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 14837877⟩
    else if d = (-8 : ℤ) then ⟨0, 14837877⟩
    else if d = (-5 : ℤ) then ⟨0, 14837877⟩
    else if d = (-3 : ℤ) then ⟨0, 14837877⟩
    else if d = (0 : ℤ) then ⟨0, 14837877⟩
    else if d = (5 : ℤ) then ⟨0, 14837877⟩
    else if d = (8 : ℤ) then ⟨1, 14837878⟩
    else ⟨0, 14837878⟩

def cellA3B2 : CellData where
  inverse := 22
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 4748121⟩
    else if d = (-9 : ℤ) then ⟨0, 4748121⟩
    else if d = (-1 : ℤ) then ⟨0, 4748121⟩
    else if d = (7 : ℤ) then ⟨0, 4748121⟩
    else if d = (8 : ℤ) then ⟨1, 4748121⟩
    else ⟨0, 4748120⟩

def cellA3B3 : CellData where
  inverse := 47
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 949624⟩
    else if d = (-5 : ℤ) then ⟨0, 949624⟩
    else if d = (3 : ℤ) then ⟨0, 949624⟩
    else if d = (8 : ℤ) then ⟨1, 949624⟩
    else ⟨0, 949623⟩

def cellA3B4 : CellData where
  inverse := 547
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 189923⟩
    else if d = (-7 : ℤ) then ⟨0, 189923⟩
    else if d = (0 : ℤ) then ⟨0, 189923⟩
    else if d = (1 : ℤ) then ⟨0, 189923⟩
    else if d = (8 : ℤ) then ⟨1, 189924⟩
    else if d = (9 : ℤ) then ⟨0, 189923⟩
    else ⟨0, 189924⟩

def cellA3B5 : CellData where
  inverse := 1172
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 37983⟩
    else if d = (0 : ℤ) then ⟨0, 37983⟩
    else if d = (8 : ℤ) then ⟨1, 37984⟩
    else ⟨0, 37984⟩

def cellA3B6 : CellData where
  inverse := 13672
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 7595⟩
    else if d = (0 : ℤ) then ⟨0, 7595⟩
    else if d = (8 : ℤ) then ⟨1, 7596⟩
    else ⟨0, 7596⟩

def cellA3B7 : CellData where
  inverse := 29297
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1519⟩
    else if d = (-7 : ℤ) then ⟨0, 1519⟩
    else if d = (-5 : ℤ) then ⟨0, 1519⟩
    else if d = (-2 : ℤ) then ⟨0, 1519⟩
    else if d = (1 : ℤ) then ⟨0, 1519⟩
    else if d = (3 : ℤ) then ⟨0, 1519⟩
    else if d = (6 : ℤ) then ⟨0, 1519⟩
    else if d = (8 : ℤ) then ⟨1, 1519⟩
    else if d = (9 : ℤ) then ⟨0, 1519⟩
    else ⟨0, 1518⟩

def cellA3B8 : CellData where
  inverse := 341797
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 302⟩
    else if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (8 : ℤ) then ⟨1, 303⟩
    else ⟨0, 303⟩

def cellA3B9 : CellData where
  inverse := 732422
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 59⟩
    else if d = (-3 : ℤ) then ⟨0, 59⟩
    else if d = (0 : ℤ) then ⟨0, 59⟩
    else if d = (5 : ℤ) then ⟨0, 59⟩
    else if d = (8 : ℤ) then ⟨1, 60⟩
    else ⟨0, 60⟩

def cellA3B10 : CellData where
  inverse := 8544922
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 12⟩
    else if d = (-1 : ℤ) then ⟨0, 12⟩
    else if d = (7 : ℤ) then ⟨0, 12⟩
    else if d = (8 : ℤ) then ⟨1, 12⟩
    else ⟨0, 11⟩

def cellA3B11 : CellData where
  inverse := 18310547
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 2⟩
    else if d = (-7 : ℤ) then ⟨0, 2⟩
    else if d = (-5 : ℤ) then ⟨0, 2⟩
    else if d = (-2 : ℤ) then ⟨0, 2⟩
    else if d = (1 : ℤ) then ⟨0, 2⟩
    else if d = (3 : ℤ) then ⟨0, 2⟩
    else if d = (6 : ℤ) then ⟨0, 2⟩
    else if d = (8 : ℤ) then ⟨1, 2⟩
    else if d = (9 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA3B12 : CellData where
  inverse := 213623047
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B13 : CellData where
  inverse := 457763672
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B14 : CellData where
  inverse := 5340576172
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B15 : CellData where
  inverse := 11444091797
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B16 : CellData where
  inverse := 133514404297
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B17 : CellData where
  inverse := 286102294922
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B18 : CellData where
  inverse := 3337860107422
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B19 : CellData where
  inverse := 7152557373047
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B20 : CellData where
  inverse := 83446502685547
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B21 : CellData where
  inverse := 178813934326172
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B22 : CellData where
  inverse := 2086162567138672
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B23 : CellData where
  inverse := 4470348358154297
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B24 : CellData where
  inverse := 52154064178466797
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B25 : CellData where
  inverse := 111758708953857422
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B26 : CellData where
  inverse := 1303851604461669922
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B27 : CellData where
  inverse := 2793967723846435547
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B28 : CellData where
  inverse := 32596290111541748047
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B29 : CellData where
  inverse := 69849193096160888672
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B30 : CellData where
  inverse := 814907252788543701172
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B31 : CellData where
  inverse := 1746229827404022216797
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B32 : CellData where
  inverse := 20372681319713592529297
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B33 : CellData where
  inverse := 43655745685100555419922
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B34 : CellData where
  inverse := 509317032992839813232422
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B35 : CellData where
  inverse := 1091393642127513885498047
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B36 : CellData where
  inverse := 12732925824820995330810547
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B37 : CellData where
  inverse := 27284841053187847137451172
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B38 : CellData where
  inverse := 318323145620524883270263672
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B39 : CellData where
  inverse := 682121026329696178436279297
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B40 : CellData where
  inverse := 7958078640513122081756591797
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B41 : CellData where
  inverse := 17053025658242404460906982422
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B42 : CellData where
  inverse := 198951966012828052043914794922
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B43 : CellData where
  inverse := 426325641456060111522674560547
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B44 : CellData where
  inverse := 4973799150320701301097869873047
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B45 : CellData where
  inverse := 10658141036401502788066864013672
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B46 : CellData where
  inverse := 124344978758017532527446746826172
  bounds := fun d =>
    if d = (8 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA4B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 7418939⟩
    else if d = (-4 : ℤ) then ⟨0, 7418939⟩
    else if d = (1 : ℤ) then ⟨0, 7418939⟩
    else if d = (2 : ℤ) then ⟨0, 7418939⟩
    else if d = (6 : ℤ) then ⟨0, 7418939⟩
    else if d = (7 : ℤ) then ⟨0, 7418939⟩
    else ⟨0, 7418938⟩

def cellA4B2 : CellData where
  inverse := 11
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 4748121⟩
    else if d = (-2 : ℤ) then ⟨0, 4748121⟩
    else if d = (5 : ℤ) then ⟨0, 4748121⟩
    else if d = (7 : ℤ) then ⟨0, 4748121⟩
    else ⟨0, 4748120⟩

def cellA4B3 : CellData where
  inverse := 86
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 949624⟩
    else if d = (-7 : ℤ) then ⟨0, 949624⟩
    else if d = (3 : ℤ) then ⟨0, 949624⟩
    else if d = (6 : ℤ) then ⟨0, 949624⟩
    else if d = (9 : ℤ) then ⟨0, 949624⟩
    else ⟨0, 949623⟩

def cellA4B4 : CellData where
  inverse := 586
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 189923⟩
    else if d = (1 : ℤ) then ⟨0, 189923⟩
    else if d = (2 : ℤ) then ⟨0, 189923⟩
    else ⟨0, 189924⟩

def cellA4B5 : CellData where
  inverse := 586
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 37983⟩
    else ⟨0, 37984⟩

def cellA4B6 : CellData where
  inverse := 6836
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 7595⟩
    else ⟨0, 7596⟩

def cellA4B7 : CellData where
  inverse := 53711
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1519⟩
    else if d = (-7 : ℤ) then ⟨0, 1519⟩
    else if d = (-4 : ℤ) then ⟨0, 1519⟩
    else if d = (-1 : ℤ) then ⟨0, 1519⟩
    else if d = (2 : ℤ) then ⟨0, 1519⟩
    else if d = (3 : ℤ) then ⟨0, 1519⟩
    else if d = (6 : ℤ) then ⟨0, 1519⟩
    else if d = (9 : ℤ) then ⟨0, 1519⟩
    else ⟨0, 1518⟩

def cellA4B8 : CellData where
  inverse := 366211
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (1 : ℤ) then ⟨0, 302⟩
    else ⟨0, 303⟩

def cellA4B9 : CellData where
  inverse := 366211
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 59⟩
    else if d = (-1 : ℤ) then ⟨0, 59⟩
    else if d = (0 : ℤ) then ⟨0, 59⟩
    else if d = (5 : ℤ) then ⟨0, 59⟩
    else if d = (10 : ℤ) then ⟨0, 59⟩
    else ⟨0, 60⟩

def cellA4B10 : CellData where
  inverse := 4272461
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 12⟩
    else if d = (-2 : ℤ) then ⟨0, 12⟩
    else if d = (7 : ℤ) then ⟨0, 12⟩
    else ⟨0, 11⟩

def cellA4B11 : CellData where
  inverse := 33569336
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 2⟩
    else if d = (-7 : ℤ) then ⟨0, 2⟩
    else if d = (-4 : ℤ) then ⟨0, 2⟩
    else if d = (-1 : ℤ) then ⟨0, 2⟩
    else if d = (2 : ℤ) then ⟨0, 2⟩
    else if d = (3 : ℤ) then ⟨0, 2⟩
    else if d = (6 : ℤ) then ⟨0, 2⟩
    else if d = (9 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA4B12 : CellData where
  inverse := 228881836
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA4B13 : CellData where
  inverse := 228881836
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA4B14 : CellData where
  inverse := 2670288086
  bounds := fun _ => ⟨0, -1⟩

def cellA4B15 : CellData where
  inverse := 20980834961
  bounds := fun _ => ⟨0, -1⟩

def cellA4B16 : CellData where
  inverse := 143051147461
  bounds := fun _ => ⟨0, -1⟩

def cellA4B17 : CellData where
  inverse := 143051147461
  bounds := fun _ => ⟨0, -1⟩

def cellA4B18 : CellData where
  inverse := 1668930053711
  bounds := fun _ => ⟨0, -1⟩

def cellA4B19 : CellData where
  inverse := 13113021850586
  bounds := fun _ => ⟨0, -1⟩

def cellA4B20 : CellData where
  inverse := 89406967163086
  bounds := fun _ => ⟨0, -1⟩

def cellA4B21 : CellData where
  inverse := 89406967163086
  bounds := fun _ => ⟨0, -1⟩

def cellA4B22 : CellData where
  inverse := 1043081283569336
  bounds := fun _ => ⟨0, -1⟩

def cellA4B23 : CellData where
  inverse := 8195638656616211
  bounds := fun _ => ⟨0, -1⟩

def cellA4B24 : CellData where
  inverse := 55879354476928711
  bounds := fun _ => ⟨0, -1⟩

def cellA4B25 : CellData where
  inverse := 55879354476928711
  bounds := fun _ => ⟨0, -1⟩

def cellA4B26 : CellData where
  inverse := 651925802230834961
  bounds := fun _ => ⟨0, -1⟩

def cellA4B27 : CellData where
  inverse := 5122274160385131836
  bounds := fun _ => ⟨0, -1⟩

def cellA4B28 : CellData where
  inverse := 34924596548080444336
  bounds := fun _ => ⟨0, -1⟩

def cellA4B29 : CellData where
  inverse := 34924596548080444336
  bounds := fun _ => ⟨0, -1⟩

def cellA4B30 : CellData where
  inverse := 407453626394271850586
  bounds := fun _ => ⟨0, -1⟩

def cellA4B31 : CellData where
  inverse := 3201421350240707397461
  bounds := fun _ => ⟨0, -1⟩

def cellA4B32 : CellData where
  inverse := 21827872842550277709961
  bounds := fun _ => ⟨0, -1⟩

def cellA4B33 : CellData where
  inverse := 21827872842550277709961
  bounds := fun _ => ⟨0, -1⟩

def cellA4B34 : CellData where
  inverse := 254658516496419906616211
  bounds := fun _ => ⟨0, -1⟩

def cellA4B35 : CellData where
  inverse := 2000888343900442123413086
  bounds := fun _ => ⟨0, -1⟩

def cellA4B36 : CellData where
  inverse := 13642420526593923568725586
  bounds := fun _ => ⟨0, -1⟩

def cellA4B37 : CellData where
  inverse := 13642420526593923568725586
  bounds := fun _ => ⟨0, -1⟩

def cellA4B38 : CellData where
  inverse := 159161572810262441635131836
  bounds := fun _ => ⟨0, -1⟩

def cellA4B39 : CellData where
  inverse := 1250555214937776327133178711
  bounds := fun _ => ⟨0, -1⟩

def cellA4B40 : CellData where
  inverse := 8526512829121202230453491211
  bounds := fun _ => ⟨0, -1⟩

def cellA4B41 : CellData where
  inverse := 8526512829121202230453491211
  bounds := fun _ => ⟨0, -1⟩

def cellA4B42 : CellData where
  inverse := 99475983006414026021957397461
  bounds := fun _ => ⟨0, -1⟩

def cellA4B43 : CellData where
  inverse := 781597009336110204458236694336
  bounds := fun _ => ⟨0, -1⟩

def cellA4B44 : CellData where
  inverse := 5329070518200751394033432006836
  bounds := fun _ => ⟨0, -1⟩

def cellA4B45 : CellData where
  inverse := 5329070518200751394033432006836
  bounds := fun _ => ⟨0, -1⟩

def cellA4B46 : CellData where
  inverse := 62172489379008766263723373413086
  bounds := fun _ => ⟨0, -1⟩

def cellA5B1 : CellData where
  inverse := 3
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 3709468⟩
    else if d = (-7 : ℤ) then ⟨0, 3709468⟩
    else if d = (-5 : ℤ) then ⟨0, 3709468⟩
    else if d = (-2 : ℤ) then ⟨0, 3709468⟩
    else if d = (0 : ℤ) then ⟨0, 3709468⟩
    else if d = (3 : ℤ) then ⟨0, 3709468⟩
    else if d = (5 : ℤ) then ⟨0, 3709468⟩
    else if d = (8 : ℤ) then ⟨0, 3709468⟩
    else if d = (10 : ℤ) then ⟨0, 3709468⟩
    else ⟨0, 3709469⟩

def cellA5B2 : CellData where
  inverse := 18
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 3709468⟩
    else if d = (-7 : ℤ) then ⟨0, 3709468⟩
    else if d = (-3 : ℤ) then ⟨0, 3709468⟩
    else if d = (0 : ℤ) then ⟨0, 3709468⟩
    else if d = (1 : ℤ) then ⟨0, 3709468⟩
    else if d = (4 : ℤ) then ⟨0, 3709468⟩
    else if d = (8 : ℤ) then ⟨0, 3709468⟩
    else ⟨0, 3709469⟩

def cellA5B3 : CellData where
  inverse := 43
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨0, 949624⟩
    else if d = (6 : ℤ) then ⟨0, 949624⟩
    else if d = (9 : ℤ) then ⟨0, 949624⟩
    else ⟨0, 949623⟩

def cellA5B4 : CellData where
  inverse := 293
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 189923⟩
    else if d = (2 : ℤ) then ⟨0, 189923⟩
    else if d = (4 : ℤ) then ⟨0, 189923⟩
    else ⟨0, 189924⟩

def cellA5B5 : CellData where
  inverse := 293
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 37983⟩
    else ⟨0, 37984⟩

def cellA5B6 : CellData where
  inverse := 3418
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 7595⟩
    else ⟨0, 7596⟩

def cellA5B7 : CellData where
  inverse := 65918
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 1519⟩
    else if d = (-7 : ℤ) then ⟨0, 1519⟩
    else if d = (-2 : ℤ) then ⟨0, 1519⟩
    else if d = (-1 : ℤ) then ⟨0, 1519⟩
    else if d = (4 : ℤ) then ⟨0, 1519⟩
    else if d = (5 : ℤ) then ⟨0, 1519⟩
    else if d = (6 : ℤ) then ⟨0, 1519⟩
    else ⟨0, 1518⟩

def cellA5B8 : CellData where
  inverse := 378418
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (1 : ℤ) then ⟨0, 302⟩
    else if d = (2 : ℤ) then ⟨0, 302⟩
    else if d = (3 : ℤ) then ⟨0, 302⟩
    else ⟨0, 303⟩

def cellA5B9 : CellData where
  inverse := 1159668
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 59⟩
    else if d = (-2 : ℤ) then ⟨0, 59⟩
    else if d = (0 : ℤ) then ⟨0, 59⟩
    else if d = (3 : ℤ) then ⟨0, 59⟩
    else if d = (5 : ℤ) then ⟨0, 59⟩
    else if d = (10 : ℤ) then ⟨0, 59⟩
    else ⟨0, 60⟩

def cellA5B10 : CellData where
  inverse := 7019043
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 12⟩
    else if d = (7 : ℤ) then ⟨0, 12⟩
    else ⟨0, 11⟩

def cellA5B11 : CellData where
  inverse := 16784668
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 2⟩
    else if d = (-5 : ℤ) then ⟨0, 2⟩
    else if d = (-2 : ℤ) then ⟨0, 2⟩
    else if d = (1 : ℤ) then ⟨0, 2⟩
    else if d = (3 : ℤ) then ⟨0, 2⟩
    else if d = (4 : ℤ) then ⟨0, 2⟩
    else if d = (6 : ℤ) then ⟨0, 2⟩
    else if d = (7 : ℤ) then ⟨0, 2⟩
    else if d = (9 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA5B12 : CellData where
  inverse := 114440918
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA5B13 : CellData where
  inverse := 114440918
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA5B14 : CellData where
  inverse := 1335144043
  bounds := fun _ => ⟨0, -1⟩

def cellA5B15 : CellData where
  inverse := 25749206543
  bounds := fun _ => ⟨0, -1⟩

def cellA5B16 : CellData where
  inverse := 147819519043
  bounds := fun _ => ⟨0, -1⟩

def cellA5B17 : CellData where
  inverse := 452995300293
  bounds := fun _ => ⟨0, -1⟩

def cellA5B18 : CellData where
  inverse := 2741813659668
  bounds := fun _ => ⟨0, -1⟩

def cellA5B19 : CellData where
  inverse := 6556510925293
  bounds := fun _ => ⟨0, -1⟩

def cellA5B20 : CellData where
  inverse := 44703483581543
  bounds := fun _ => ⟨0, -1⟩

def cellA5B21 : CellData where
  inverse := 44703483581543
  bounds := fun _ => ⟨0, -1⟩

def cellA5B22 : CellData where
  inverse := 521540641784668
  bounds := fun _ => ⟨0, -1⟩

def cellA5B23 : CellData where
  inverse := 10058283805847168
  bounds := fun _ => ⟨0, -1⟩

def cellA5B24 : CellData where
  inverse := 57741999626159668
  bounds := fun _ => ⟨0, -1⟩

def cellA5B25 : CellData where
  inverse := 176951289176940918
  bounds := fun _ => ⟨0, -1⟩

def cellA5B26 : CellData where
  inverse := 1071020960807800293
  bounds := fun _ => ⟨0, -1⟩

def cellA5B27 : CellData where
  inverse := 2561137080192565918
  bounds := fun _ => ⟨0, -1⟩

def cellA5B28 : CellData where
  inverse := 17462298274040222168
  bounds := fun _ => ⟨0, -1⟩

def cellA5B29 : CellData where
  inverse := 17462298274040222168
  bounds := fun _ => ⟨0, -1⟩

def cellA5B30 : CellData where
  inverse := 203726813197135925293
  bounds := fun _ => ⟨0, -1⟩

def cellA5B31 : CellData where
  inverse := 3929017111659049987793
  bounds := fun _ => ⟨0, -1⟩

def cellA5B32 : CellData where
  inverse := 22555468603968620300293
  bounds := fun _ => ⟨0, -1⟩

def cellA5B33 : CellData where
  inverse := 69121597334742546081543
  bounds := fun _ => ⟨0, -1⟩

def cellA5B34 : CellData where
  inverse := 418367562815546989440918
  bounds := fun _ => ⟨0, -1⟩

def cellA5B35 : CellData where
  inverse := 1000444171950221061706543
  bounds := fun _ => ⟨0, -1⟩

def cellA5B36 : CellData where
  inverse := 6821210263296961784362793
  bounds := fun _ => ⟨0, -1⟩

def cellA5B37 : CellData where
  inverse := 6821210263296961784362793
  bounds := fun _ => ⟨0, -1⟩

def cellA5B38 : CellData where
  inverse := 79580786405131220817565918
  bounds := fun _ => ⟨0, -1⟩

def cellA5B39 : CellData where
  inverse := 1534772309241816401481628418
  bounds := fun _ => ⟨0, -1⟩

def cellA5B40 : CellData where
  inverse := 8810729923425242304801940918
  bounds := fun _ => ⟨0, -1⟩

def cellA5B41 : CellData where
  inverse := 27000623958883807063102722168
  bounds := fun _ => ⟨0, -1⟩

def cellA5B42 : CellData where
  inverse := 163424829224823042750358581543
  bounds := fun _ => ⟨0, -1⟩

def cellA5B43 : CellData where
  inverse := 390798504668055102229118347168
  bounds := fun _ => ⟨0, -1⟩

def cellA5B44 : CellData where
  inverse := 2664535259100375697016716003418
  bounds := fun _ => ⟨0, -1⟩

def cellA5B45 : CellData where
  inverse := 2664535259100375697016716003418
  bounds := fun _ => ⟨0, -1⟩

def cellA5B46 : CellData where
  inverse := 31086244689504383131861686706543
  bounds := fun _ => ⟨0, -1⟩

def cellA6B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1854733⟩
    else if d = (-5 : ℤ) then ⟨0, 1854733⟩
    else if d = (0 : ℤ) then ⟨0, 1854733⟩
    else if d = (5 : ℤ) then ⟨0, 1854733⟩
    else if d = (10 : ℤ) then ⟨0, 1854733⟩
    else ⟨0, 1854734⟩

def cellA6B2 : CellData where
  inverse := 9
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 1854733⟩
    else if d = (0 : ℤ) then ⟨0, 1854733⟩
    else if d = (8 : ℤ) then ⟨0, 1854733⟩
    else ⟨0, 1854734⟩

def cellA6B3 : CellData where
  inverse := 84
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨0, 949624⟩
    else if d = (6 : ℤ) then ⟨0, 949624⟩
    else if d = (9 : ℤ) then ⟨0, 949624⟩
    else ⟨0, 949623⟩

def cellA6B4 : CellData where
  inverse := 459
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 189923⟩
    else if d = (0 : ℤ) then ⟨0, 189923⟩
    else if d = (4 : ℤ) then ⟨0, 189923⟩
    else if d = (8 : ℤ) then ⟨0, 189923⟩
    else ⟨0, 189924⟩

def cellA6B5 : CellData where
  inverse := 1709
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 37983⟩
    else ⟨0, 37984⟩

def cellA6B6 : CellData where
  inverse := 1709
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 7595⟩
    else ⟨0, 7596⟩

def cellA6B7 : CellData where
  inverse := 32959
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1519⟩
    else if d = (-7 : ℤ) then ⟨0, 1519⟩
    else if d = (-4 : ℤ) then ⟨0, 1519⟩
    else if d = (-2 : ℤ) then ⟨0, 1519⟩
    else if d = (3 : ℤ) then ⟨0, 1519⟩
    else if d = (5 : ℤ) then ⟨0, 1519⟩
    else if d = (8 : ℤ) then ⟨0, 1519⟩
    else if d = (10 : ℤ) then ⟨0, 1519⟩
    else ⟨0, 1518⟩

def cellA6B8 : CellData where
  inverse := 189209
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (2 : ℤ) then ⟨0, 302⟩
    else if d = (4 : ℤ) then ⟨0, 302⟩
    else if d = (6 : ℤ) then ⟨0, 302⟩
    else ⟨0, 303⟩

def cellA6B9 : CellData where
  inverse := 579834
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 59⟩
    else if d = (-4 : ℤ) then ⟨0, 59⟩
    else if d = (0 : ℤ) then ⟨0, 59⟩
    else if d = (3 : ℤ) then ⟨0, 59⟩
    else if d = (6 : ℤ) then ⟨0, 59⟩
    else if d = (10 : ℤ) then ⟨0, 59⟩
    else ⟨0, 60⟩

def cellA6B10 : CellData where
  inverse := 8392334
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 12⟩
    else if d = (-1 : ℤ) then ⟨0, 12⟩
    else if d = (7 : ℤ) then ⟨0, 12⟩
    else ⟨0, 11⟩

def cellA6B11 : CellData where
  inverse := 8392334
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 2⟩
    else if d = (-5 : ℤ) then ⟨0, 2⟩
    else if d = (-4 : ℤ) then ⟨0, 2⟩
    else if d = (1 : ℤ) then ⟨0, 2⟩
    else if d = (2 : ℤ) then ⟨0, 2⟩
    else if d = (6 : ℤ) then ⟨0, 2⟩
    else if d = (7 : ℤ) then ⟨0, 2⟩
    else if d = (8 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA6B12 : CellData where
  inverse := 57220459
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B13 : CellData where
  inverse := 57220459
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B14 : CellData where
  inverse := 3719329834
  bounds := fun _ => ⟨0, -1⟩

def cellA6B15 : CellData where
  inverse := 28133392334
  bounds := fun _ => ⟨0, -1⟩

def cellA6B16 : CellData where
  inverse := 150203704834
  bounds := fun _ => ⟨0, -1⟩

def cellA6B17 : CellData where
  inverse := 607967376709
  bounds := fun _ => ⟨0, -1⟩

def cellA6B18 : CellData where
  inverse := 1370906829834
  bounds := fun _ => ⟨0, -1⟩

def cellA6B19 : CellData where
  inverse := 12814998626709
  bounds := fun _ => ⟨0, -1⟩

def cellA6B20 : CellData where
  inverse := 70035457611084
  bounds := fun _ => ⟨0, -1⟩

def cellA6B21 : CellData where
  inverse := 260770320892334
  bounds := fun _ => ⟨0, -1⟩

def cellA6B22 : CellData where
  inverse := 260770320892334
  bounds := fun _ => ⟨0, -1⟩

def cellA6B23 : CellData where
  inverse := 5029141902923584
  bounds := fun _ => ⟨0, -1⟩

def cellA6B24 : CellData where
  inverse := 28870999813079834
  bounds := fun _ => ⟨0, -1⟩

def cellA6B25 : CellData where
  inverse := 88475644588470459
  bounds := fun _ => ⟨0, -1⟩

def cellA6B26 : CellData where
  inverse := 1280568540096282959
  bounds := fun _ => ⟨0, -1⟩

def cellA6B27 : CellData where
  inverse := 1280568540096282959
  bounds := fun _ => ⟨0, -1⟩

def cellA6B28 : CellData where
  inverse := 8731149137020111084
  bounds := fun _ => ⟨0, -1⟩

def cellA6B29 : CellData where
  inverse := 8731149137020111084
  bounds := fun _ => ⟨0, -1⟩

def cellA6B30 : CellData where
  inverse := 567524693906307220459
  bounds := fun _ => ⟨0, -1⟩

def cellA6B31 : CellData where
  inverse := 4292814992368221282959
  bounds := fun _ => ⟨0, -1⟩

def cellA6B32 : CellData where
  inverse := 22919266484677791595459
  bounds := fun _ => ⟨0, -1⟩

def cellA6B33 : CellData where
  inverse := 92768459580838680267334
  bounds := fun _ => ⟨0, -1⟩

def cellA6B34 : CellData where
  inverse := 209183781407773494720459
  bounds := fun _ => ⟨0, -1⟩

def cellA6B35 : CellData where
  inverse := 1955413608811795711517334
  bounds := fun _ => ⟨0, -1⟩

def cellA6B36 : CellData where
  inverse := 10686562745831906795501709
  bounds := fun _ => ⟨0, -1⟩

def cellA6B37 : CellData where
  inverse := 39790393202565610408782959
  bounds := fun _ => ⟨0, -1⟩

def cellA6B38 : CellData where
  inverse := 39790393202565610408782959
  bounds := fun _ => ⟨0, -1⟩

def cellA6B39 : CellData where
  inverse := 767386154620908200740814209
  bounds := fun _ => ⟨0, -1⟩

def cellA6B40 : CellData where
  inverse := 4405364961712621152400970459
  bounds := fun _ => ⟨0, -1⟩

def cellA6B41 : CellData where
  inverse := 13500311979441903531551361084
  bounds := fun _ => ⟨0, -1⟩

def cellA6B42 : CellData where
  inverse := 195399252334027551114559173584
  bounds := fun _ => ⟨0, -1⟩

def cellA6B43 : CellData where
  inverse := 195399252334027551114559173584
  bounds := fun _ => ⟨0, -1⟩

def cellA6B44 : CellData where
  inverse := 1332267629550187848508358001709
  bounds := fun _ => ⟨0, -1⟩

def cellA6B45 : CellData where
  inverse := 1332267629550187848508358001709
  bounds := fun _ => ⟨0, -1⟩

def cellA6B46 : CellData where
  inverse := 86597395920762210153043270111084
  bounds := fun _ => ⟨0, -1⟩

def cellA7B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 927367⟩
    else if d = (-7 : ℤ) then ⟨0, 927367⟩
    else if d = (-4 : ℤ) then ⟨0, 927367⟩
    else if d = (-2 : ℤ) then ⟨0, 927367⟩
    else if d = (1 : ℤ) then ⟨0, 927367⟩
    else if d = (3 : ℤ) then ⟨0, 927367⟩
    else if d = (6 : ℤ) then ⟨0, 927367⟩
    else if d = (8 : ℤ) then ⟨0, 927367⟩
    else ⟨0, 927366⟩

def cellA7B2 : CellData where
  inverse := 17
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 927367⟩
    else if d = (-7 : ℤ) then ⟨0, 927367⟩
    else if d = (-4 : ℤ) then ⟨0, 927367⟩
    else if d = (-1 : ℤ) then ⟨0, 927367⟩
    else if d = (2 : ℤ) then ⟨0, 927367⟩
    else if d = (3 : ℤ) then ⟨0, 927367⟩
    else if d = (5 : ℤ) then ⟨0, 927367⟩
    else if d = (6 : ℤ) then ⟨0, 927367⟩
    else if d = (9 : ℤ) then ⟨0, 927367⟩
    else ⟨0, 927366⟩

def cellA7B3 : CellData where
  inverse := 42
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 927367⟩
    else if d = (-5 : ℤ) then ⟨0, 927367⟩
    else if d = (-2 : ℤ) then ⟨0, 927367⟩
    else if d = (1 : ℤ) then ⟨0, 927367⟩
    else if d = (3 : ℤ) then ⟨0, 927367⟩
    else if d = (4 : ℤ) then ⟨0, 927367⟩
    else if d = (6 : ℤ) then ⟨0, 927367⟩
    else if d = (7 : ℤ) then ⟨0, 927367⟩
    else if d = (9 : ℤ) then ⟨0, 927367⟩
    else if d = (10 : ℤ) then ⟨0, 927367⟩
    else ⟨0, 927366⟩

def cellA7B4 : CellData where
  inverse := 542
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 189923⟩
    else if d = (0 : ℤ) then ⟨0, 189923⟩
    else if d = (1 : ℤ) then ⟨0, 189923⟩
    else if d = (8 : ℤ) then ⟨0, 189923⟩
    else ⟨0, 189924⟩

def cellA7B5 : CellData where
  inverse := 2417
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 37983⟩
    else ⟨0, 37984⟩

def cellA7B6 : CellData where
  inverse := 8667
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 7595⟩
    else ⟨0, 7596⟩

def cellA7B7 : CellData where
  inverse := 55542
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 1519⟩
    else if d = (-7 : ℤ) then ⟨0, 1519⟩
    else if d = (-4 : ℤ) then ⟨0, 1519⟩
    else if d = (-1 : ℤ) then ⟨0, 1519⟩
    else if d = (3 : ℤ) then ⟨0, 1519⟩
    else if d = (6 : ℤ) then ⟨0, 1519⟩
    else if d = (9 : ℤ) then ⟨0, 1519⟩
    else if d = (10 : ℤ) then ⟨0, 1519⟩
    else ⟨0, 1518⟩

def cellA7B8 : CellData where
  inverse := 289917
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (4 : ℤ) then ⟨0, 302⟩
    else if d = (8 : ℤ) then ⟨0, 302⟩
    else ⟨0, 303⟩

def cellA7B9 : CellData where
  inverse := 289917
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 59⟩
    else if d = (-7 : ℤ) then ⟨0, 59⟩
    else if d = (-1 : ℤ) then ⟨0, 59⟩
    else if d = (0 : ℤ) then ⟨0, 59⟩
    else if d = (6 : ℤ) then ⟨0, 59⟩
    else ⟨0, 60⟩

def cellA7B10 : CellData where
  inverse := 4196167
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 12⟩
    else if d = (-2 : ℤ) then ⟨0, 12⟩
    else if d = (5 : ℤ) then ⟨0, 12⟩
    else if d = (7 : ℤ) then ⟨0, 12⟩
    else ⟨0, 11⟩

def cellA7B11 : CellData where
  inverse := 4196167
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 2⟩
    else if d = (-9 : ℤ) then ⟨0, 2⟩
    else if d = (-8 : ℤ) then ⟨0, 2⟩
    else if d = (-7 : ℤ) then ⟨0, 2⟩
    else if d = (1 : ℤ) then ⟨0, 2⟩
    else if d = (2 : ℤ) then ⟨0, 2⟩
    else if d = (3 : ℤ) then ⟨0, 2⟩
    else if d = (4 : ℤ) then ⟨0, 2⟩
    else if d = (5 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA7B12 : CellData where
  inverse := 150680542
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA7B13 : CellData where
  inverse := 638961792
  bounds := fun d =>
    if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA7B14 : CellData where
  inverse := 1859664917
  bounds := fun _ => ⟨0, -1⟩

def cellA7B15 : CellData where
  inverse := 14066696167
  bounds := fun _ => ⟨0, -1⟩

def cellA7B16 : CellData where
  inverse := 75101852417
  bounds := fun _ => ⟨0, -1⟩

def cellA7B17 : CellData where
  inverse := 685453414917
  bounds := fun _ => ⟨0, -1⟩

def cellA7B18 : CellData where
  inverse := 685453414917
  bounds := fun _ => ⟨0, -1⟩

def cellA7B19 : CellData where
  inverse := 15944242477417
  bounds := fun _ => ⟨0, -1⟩

def cellA7B20 : CellData where
  inverse := 35017728805542
  bounds := fun _ => ⟨0, -1⟩

def cellA7B21 : CellData where
  inverse := 130385160446167
  bounds := fun _ => ⟨0, -1⟩

def cellA7B22 : CellData where
  inverse := 130385160446167
  bounds := fun _ => ⟨0, -1⟩

def cellA7B23 : CellData where
  inverse := 2514570951461792
  bounds := fun _ => ⟨0, -1⟩

def cellA7B24 : CellData where
  inverse := 14435499906539917
  bounds := fun _ => ⟨0, -1⟩

def cellA7B25 : CellData where
  inverse := 193249434232711792
  bounds := fun _ => ⟨0, -1⟩

def cellA7B26 : CellData where
  inverse := 1385342329740524292
  bounds := fun _ => ⟨0, -1⟩

def cellA7B27 : CellData where
  inverse := 4365574568510055542
  bounds := fun _ => ⟨0, -1⟩

def cellA7B28 : CellData where
  inverse := 4365574568510055542
  bounds := fun _ => ⟨0, -1⟩

def cellA7B29 : CellData where
  inverse := 4365574568510055542
  bounds := fun _ => ⟨0, -1⟩

def cellA7B30 : CellData where
  inverse := 749423634260892868042
  bounds := fun _ => ⟨0, -1⟩

def cellA7B31 : CellData where
  inverse := 4474713932722806930542
  bounds := fun _ => ⟨0, -1⟩

def cellA7B32 : CellData where
  inverse := 23101165425032377243042
  bounds := fun _ => ⟨0, -1⟩

def cellA7B33 : CellData where
  inverse := 46384229790419340133667
  bounds := fun _ => ⟨0, -1⟩

def cellA7B34 : CellData where
  inverse := 395630195271223783493042
  bounds := fun _ => ⟨0, -1⟩

def cellA7B35 : CellData where
  inverse := 977706804405897855758667
  bounds := fun _ => ⟨0, -1⟩

def cellA7B36 : CellData where
  inverse := 12619238987099379301071167
  bounds := fun _ => ⟨0, -1⟩

def cellA7B37 : CellData where
  inverse := 56274984672199934720993042
  bounds := fun _ => ⟨0, -1⟩

def cellA7B38 : CellData where
  inverse := 201794136955868452787399292
  bounds := fun _ => ⟨0, -1⟩

def cellA7B39 : CellData where
  inverse := 1293187779083382338285446167
  bounds := fun _ => ⟨0, -1⟩

def cellA7B40 : CellData where
  inverse := 6750155989720951765775680542
  bounds := fun _ => ⟨0, -1⟩

def cellA7B41 : CellData where
  inverse := 6750155989720951765775680542
  bounds := fun _ => ⟨0, -1⟩

def cellA7B42 : CellData where
  inverse := 97699626167013775557279586792
  bounds := fun _ => ⟨0, -1⟩

def cellA7B43 : CellData where
  inverse := 97699626167013775557279586792
  bounds := fun _ => ⟨0, -1⟩

def cellA7B44 : CellData where
  inverse := 3508304757815494667738676071167
  bounds := fun _ => ⟨0, -1⟩

def cellA7B45 : CellData where
  inverse := 14876988529977097641676664352417
  bounds := fun _ => ⟨0, -1⟩

def cellA7B46 : CellData where
  inverse := 43298697960381105076521635055542
  bounds := fun _ => ⟨0, -1⟩

def cellA8B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 463682⟩
    else if d = (-6 : ℤ) then ⟨0, 463682⟩
    else if d = (-5 : ℤ) then ⟨0, 463682⟩
    else if d = (-1 : ℤ) then ⟨0, 463682⟩
    else if d = (0 : ℤ) then ⟨0, 463682⟩
    else if d = (4 : ℤ) then ⟨0, 463682⟩
    else if d = (5 : ℤ) then ⟨0, 463682⟩
    else if d = (9 : ℤ) then ⟨0, 463682⟩
    else if d = (10 : ℤ) then ⟨0, 463682⟩
    else ⟨0, 463683⟩

def cellA8B2 : CellData where
  inverse := 21
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 463682⟩
    else if d = (-5 : ℤ) then ⟨0, 463682⟩
    else if d = (0 : ℤ) then ⟨0, 463682⟩
    else if d = (1 : ℤ) then ⟨0, 463682⟩
    else if d = (7 : ℤ) then ⟨0, 463682⟩
    else if d = (8 : ℤ) then ⟨0, 463682⟩
    else ⟨0, 463683⟩

def cellA8B3 : CellData where
  inverse := 21
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 463682⟩
    else if d = (-6 : ℤ) then ⟨0, 463682⟩
    else if d = (-1 : ℤ) then ⟨0, 463682⟩
    else if d = (0 : ℤ) then ⟨0, 463682⟩
    else if d = (5 : ℤ) then ⟨0, 463682⟩
    else ⟨0, 463683⟩

def cellA8B4 : CellData where
  inverse := 271
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 189923⟩
    else if d = (0 : ℤ) then ⟨0, 189923⟩
    else if d = (2 : ℤ) then ⟨0, 189923⟩
    else if d = (9 : ℤ) then ⟨0, 189923⟩
    else ⟨0, 189924⟩

def cellA8B5 : CellData where
  inverse := 2771
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 37983⟩
    else if d = (9 : ℤ) then ⟨0, 37983⟩
    else ⟨0, 37984⟩

def cellA8B6 : CellData where
  inverse := 12146
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 7595⟩
    else if d = (9 : ℤ) then ⟨0, 7595⟩
    else ⟨0, 7596⟩

def cellA8B7 : CellData where
  inverse := 27771
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 1519⟩
    else if d = (-5 : ℤ) then ⟨0, 1519⟩
    else if d = (-2 : ℤ) then ⟨0, 1519⟩
    else if d = (1 : ℤ) then ⟨0, 1519⟩
    else if d = (3 : ℤ) then ⟨0, 1519⟩
    else if d = (6 : ℤ) then ⟨0, 1519⟩
    else if d = (9 : ℤ) then ⟨0, 1519⟩
    else ⟨0, 1518⟩

def cellA8B8 : CellData where
  inverse := 340271
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 302⟩
    else if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (8 : ℤ) then ⟨0, 302⟩
    else ⟨0, 303⟩

def cellA8B9 : CellData where
  inverse := 1121521
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 59⟩
    else if d = (-7 : ℤ) then ⟨0, 59⟩
    else if d = (-2 : ℤ) then ⟨0, 59⟩
    else if d = (0 : ℤ) then ⟨0, 59⟩
    else if d = (5 : ℤ) then ⟨0, 59⟩
    else ⟨0, 60⟩

def cellA8B10 : CellData where
  inverse := 6980896
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 12⟩
    else if d = (3 : ℤ) then ⟨0, 12⟩
    else if d = (7 : ℤ) then ⟨0, 12⟩
    else if d = (10 : ℤ) then ⟨0, 12⟩
    else ⟨0, 11⟩

def cellA8B11 : CellData where
  inverse := 26512146
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 2⟩
    else if d = (-7 : ℤ) then ⟨0, 2⟩
    else if d = (-5 : ℤ) then ⟨0, 2⟩
    else if d = (-3 : ℤ) then ⟨0, 2⟩
    else if d = (2 : ℤ) then ⟨0, 2⟩
    else if d = (4 : ℤ) then ⟨0, 2⟩
    else if d = (6 : ℤ) then ⟨0, 2⟩
    else if d = (8 : ℤ) then ⟨0, 2⟩
    else if d = (10 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA8B12 : CellData where
  inverse := 75340271
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B13 : CellData where
  inverse := 319480896
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B14 : CellData where
  inverse := 3981590271
  bounds := fun _ => ⟨0, -1⟩

def cellA8B15 : CellData where
  inverse := 22292137146
  bounds := fun _ => ⟨0, -1⟩

def cellA8B16 : CellData where
  inverse := 113844871521
  bounds := fun _ => ⟨0, -1⟩

def cellA8B17 : CellData where
  inverse := 724196434021
  bounds := fun _ => ⟨0, -1⟩

def cellA8B18 : CellData where
  inverse := 2250075340271
  bounds := fun _ => ⟨0, -1⟩

def cellA8B19 : CellData where
  inverse := 17508864402771
  bounds := fun _ => ⟨0, -1⟩

def cellA8B20 : CellData where
  inverse := 17508864402771
  bounds := fun _ => ⟨0, -1⟩

def cellA8B21 : CellData where
  inverse := 303611159324646
  bounds := fun _ => ⟨0, -1⟩

def cellA8B22 : CellData where
  inverse := 1257285475730896
  bounds := fun _ => ⟨0, -1⟩

def cellA8B23 : CellData where
  inverse := 1257285475730896
  bounds := fun _ => ⟨0, -1⟩

def cellA8B24 : CellData where
  inverse := 37020072340965271
  bounds := fun _ => ⟨0, -1⟩

def cellA8B25 : CellData where
  inverse := 96624717116355896
  bounds := fun _ => ⟨0, -1⟩

def cellA8B26 : CellData where
  inverse := 692671164870262146
  bounds := fun _ => ⟨0, -1⟩

def cellA8B27 : CellData where
  inverse := 2182787284255027771
  bounds := fun _ => ⟨0, -1⟩

def cellA8B28 : CellData where
  inverse := 2182787284255027771
  bounds := fun _ => ⟨0, -1⟩

def cellA8B29 : CellData where
  inverse := 2182787284255027771
  bounds := fun _ => ⟨0, -1⟩

def cellA8B30 : CellData where
  inverse := 374711817130446434021
  bounds := fun _ => ⟨0, -1⟩

def cellA8B31 : CellData where
  inverse := 2237356966361403465271
  bounds := fun _ => ⟨0, -1⟩

def cellA8B32 : CellData where
  inverse := 11550582712516188621521
  bounds := fun _ => ⟨0, -1⟩

def cellA8B33 : CellData where
  inverse := 81399775808677077293396
  bounds := fun _ => ⟨0, -1⟩

def cellA8B34 : CellData where
  inverse := 197815097635611891746521
  bounds := fun _ => ⟨0, -1⟩

def cellA8B35 : CellData where
  inverse := 1944044925039634108543396
  bounds := fun _ => ⟨0, -1⟩

def cellA8B36 : CellData where
  inverse := 13585577107733115553855896
  bounds := fun _ => ⟨0, -1⟩

def cellA8B37 : CellData where
  inverse := 28137492336099967360496521
  bounds := fun _ => ⟨0, -1⟩

def cellA8B38 : CellData where
  inverse := 100897068477934226393699646
  bounds := fun _ => ⟨0, -1⟩

def cellA8B39 : CellData where
  inverse := 1556088591314619407057762146
  bounds := fun _ => ⟨0, -1⟩

def cellA8B40 : CellData where
  inverse := 3375077994860475882887840271
  bounds := fun _ => ⟨0, -1⟩

def cellA8B41 : CellData where
  inverse := 3375077994860475882887840271
  bounds := fun _ => ⟨0, -1⟩

def cellA8B42 : CellData where
  inverse := 48849813083506887778639793396
  bounds := fun _ => ⟨0, -1⟩

def cellA8B43 : CellData where
  inverse := 48849813083506887778639793396
  bounds := fun _ => ⟨0, -1⟩

def cellA8B44 : CellData where
  inverse := 4596323321948148077353835105896
  bounds := fun _ => ⟨0, -1⟩

def cellA8B45 : CellData where
  inverse := 21649348980190552538260817527771
  bounds := fun _ => ⟨0, -1⟩

def cellA8B46 : CellData where
  inverse := 21649348980190552538260817527771
  bounds := fun _ => ⟨0, -1⟩

def rowA1 (b : ℕ) : CellData :=
  if b = 1 then cellA1B1
  else if b = 2 then cellA1B2
  else if b = 3 then cellA1B3
  else if b = 4 then cellA1B4
  else if b = 5 then cellA1B5
  else if b = 6 then cellA1B6
  else if b = 7 then cellA1B7
  else if b = 8 then cellA1B8
  else if b = 9 then cellA1B9
  else if b = 10 then cellA1B10
  else if b = 11 then cellA1B11
  else if b = 12 then cellA1B12
  else if b = 13 then cellA1B13
  else if b = 14 then cellA1B14
  else if b = 15 then cellA1B15
  else if b = 16 then cellA1B16
  else if b = 17 then cellA1B17
  else if b = 18 then cellA1B18
  else if b = 19 then cellA1B19
  else if b = 20 then cellA1B20
  else if b = 21 then cellA1B21
  else if b = 22 then cellA1B22
  else if b = 23 then cellA1B23
  else if b = 24 then cellA1B24
  else if b = 25 then cellA1B25
  else if b = 26 then cellA1B26
  else if b = 27 then cellA1B27
  else if b = 28 then cellA1B28
  else if b = 29 then cellA1B29
  else if b = 30 then cellA1B30
  else if b = 31 then cellA1B31
  else if b = 32 then cellA1B32
  else if b = 33 then cellA1B33
  else if b = 34 then cellA1B34
  else if b = 35 then cellA1B35
  else if b = 36 then cellA1B36
  else if b = 37 then cellA1B37
  else if b = 38 then cellA1B38
  else if b = 39 then cellA1B39
  else if b = 40 then cellA1B40
  else if b = 41 then cellA1B41
  else if b = 42 then cellA1B42
  else if b = 43 then cellA1B43
  else if b = 44 then cellA1B44
  else if b = 45 then cellA1B45
  else if b = 46 then cellA1B46
  else outsideCell

def rowA2 (b : ℕ) : CellData :=
  if b = 1 then cellA2B1
  else if b = 2 then cellA2B2
  else if b = 3 then cellA2B3
  else if b = 4 then cellA2B4
  else if b = 5 then cellA2B5
  else if b = 6 then cellA2B6
  else if b = 7 then cellA2B7
  else if b = 8 then cellA2B8
  else if b = 9 then cellA2B9
  else if b = 10 then cellA2B10
  else if b = 11 then cellA2B11
  else if b = 12 then cellA2B12
  else if b = 13 then cellA2B13
  else if b = 14 then cellA2B14
  else if b = 15 then cellA2B15
  else if b = 16 then cellA2B16
  else if b = 17 then cellA2B17
  else if b = 18 then cellA2B18
  else if b = 19 then cellA2B19
  else if b = 20 then cellA2B20
  else if b = 21 then cellA2B21
  else if b = 22 then cellA2B22
  else if b = 23 then cellA2B23
  else if b = 24 then cellA2B24
  else if b = 25 then cellA2B25
  else if b = 26 then cellA2B26
  else if b = 27 then cellA2B27
  else if b = 28 then cellA2B28
  else if b = 29 then cellA2B29
  else if b = 30 then cellA2B30
  else if b = 31 then cellA2B31
  else if b = 32 then cellA2B32
  else if b = 33 then cellA2B33
  else if b = 34 then cellA2B34
  else if b = 35 then cellA2B35
  else if b = 36 then cellA2B36
  else if b = 37 then cellA2B37
  else if b = 38 then cellA2B38
  else if b = 39 then cellA2B39
  else if b = 40 then cellA2B40
  else if b = 41 then cellA2B41
  else if b = 42 then cellA2B42
  else if b = 43 then cellA2B43
  else if b = 44 then cellA2B44
  else if b = 45 then cellA2B45
  else if b = 46 then cellA2B46
  else outsideCell

def rowA3 (b : ℕ) : CellData :=
  if b = 1 then cellA3B1
  else if b = 2 then cellA3B2
  else if b = 3 then cellA3B3
  else if b = 4 then cellA3B4
  else if b = 5 then cellA3B5
  else if b = 6 then cellA3B6
  else if b = 7 then cellA3B7
  else if b = 8 then cellA3B8
  else if b = 9 then cellA3B9
  else if b = 10 then cellA3B10
  else if b = 11 then cellA3B11
  else if b = 12 then cellA3B12
  else if b = 13 then cellA3B13
  else if b = 14 then cellA3B14
  else if b = 15 then cellA3B15
  else if b = 16 then cellA3B16
  else if b = 17 then cellA3B17
  else if b = 18 then cellA3B18
  else if b = 19 then cellA3B19
  else if b = 20 then cellA3B20
  else if b = 21 then cellA3B21
  else if b = 22 then cellA3B22
  else if b = 23 then cellA3B23
  else if b = 24 then cellA3B24
  else if b = 25 then cellA3B25
  else if b = 26 then cellA3B26
  else if b = 27 then cellA3B27
  else if b = 28 then cellA3B28
  else if b = 29 then cellA3B29
  else if b = 30 then cellA3B30
  else if b = 31 then cellA3B31
  else if b = 32 then cellA3B32
  else if b = 33 then cellA3B33
  else if b = 34 then cellA3B34
  else if b = 35 then cellA3B35
  else if b = 36 then cellA3B36
  else if b = 37 then cellA3B37
  else if b = 38 then cellA3B38
  else if b = 39 then cellA3B39
  else if b = 40 then cellA3B40
  else if b = 41 then cellA3B41
  else if b = 42 then cellA3B42
  else if b = 43 then cellA3B43
  else if b = 44 then cellA3B44
  else if b = 45 then cellA3B45
  else if b = 46 then cellA3B46
  else outsideCell

def rowA4 (b : ℕ) : CellData :=
  if b = 1 then cellA4B1
  else if b = 2 then cellA4B2
  else if b = 3 then cellA4B3
  else if b = 4 then cellA4B4
  else if b = 5 then cellA4B5
  else if b = 6 then cellA4B6
  else if b = 7 then cellA4B7
  else if b = 8 then cellA4B8
  else if b = 9 then cellA4B9
  else if b = 10 then cellA4B10
  else if b = 11 then cellA4B11
  else if b = 12 then cellA4B12
  else if b = 13 then cellA4B13
  else if b = 14 then cellA4B14
  else if b = 15 then cellA4B15
  else if b = 16 then cellA4B16
  else if b = 17 then cellA4B17
  else if b = 18 then cellA4B18
  else if b = 19 then cellA4B19
  else if b = 20 then cellA4B20
  else if b = 21 then cellA4B21
  else if b = 22 then cellA4B22
  else if b = 23 then cellA4B23
  else if b = 24 then cellA4B24
  else if b = 25 then cellA4B25
  else if b = 26 then cellA4B26
  else if b = 27 then cellA4B27
  else if b = 28 then cellA4B28
  else if b = 29 then cellA4B29
  else if b = 30 then cellA4B30
  else if b = 31 then cellA4B31
  else if b = 32 then cellA4B32
  else if b = 33 then cellA4B33
  else if b = 34 then cellA4B34
  else if b = 35 then cellA4B35
  else if b = 36 then cellA4B36
  else if b = 37 then cellA4B37
  else if b = 38 then cellA4B38
  else if b = 39 then cellA4B39
  else if b = 40 then cellA4B40
  else if b = 41 then cellA4B41
  else if b = 42 then cellA4B42
  else if b = 43 then cellA4B43
  else if b = 44 then cellA4B44
  else if b = 45 then cellA4B45
  else if b = 46 then cellA4B46
  else outsideCell

def rowA5 (b : ℕ) : CellData :=
  if b = 1 then cellA5B1
  else if b = 2 then cellA5B2
  else if b = 3 then cellA5B3
  else if b = 4 then cellA5B4
  else if b = 5 then cellA5B5
  else if b = 6 then cellA5B6
  else if b = 7 then cellA5B7
  else if b = 8 then cellA5B8
  else if b = 9 then cellA5B9
  else if b = 10 then cellA5B10
  else if b = 11 then cellA5B11
  else if b = 12 then cellA5B12
  else if b = 13 then cellA5B13
  else if b = 14 then cellA5B14
  else if b = 15 then cellA5B15
  else if b = 16 then cellA5B16
  else if b = 17 then cellA5B17
  else if b = 18 then cellA5B18
  else if b = 19 then cellA5B19
  else if b = 20 then cellA5B20
  else if b = 21 then cellA5B21
  else if b = 22 then cellA5B22
  else if b = 23 then cellA5B23
  else if b = 24 then cellA5B24
  else if b = 25 then cellA5B25
  else if b = 26 then cellA5B26
  else if b = 27 then cellA5B27
  else if b = 28 then cellA5B28
  else if b = 29 then cellA5B29
  else if b = 30 then cellA5B30
  else if b = 31 then cellA5B31
  else if b = 32 then cellA5B32
  else if b = 33 then cellA5B33
  else if b = 34 then cellA5B34
  else if b = 35 then cellA5B35
  else if b = 36 then cellA5B36
  else if b = 37 then cellA5B37
  else if b = 38 then cellA5B38
  else if b = 39 then cellA5B39
  else if b = 40 then cellA5B40
  else if b = 41 then cellA5B41
  else if b = 42 then cellA5B42
  else if b = 43 then cellA5B43
  else if b = 44 then cellA5B44
  else if b = 45 then cellA5B45
  else if b = 46 then cellA5B46
  else outsideCell

def rowA6 (b : ℕ) : CellData :=
  if b = 1 then cellA6B1
  else if b = 2 then cellA6B2
  else if b = 3 then cellA6B3
  else if b = 4 then cellA6B4
  else if b = 5 then cellA6B5
  else if b = 6 then cellA6B6
  else if b = 7 then cellA6B7
  else if b = 8 then cellA6B8
  else if b = 9 then cellA6B9
  else if b = 10 then cellA6B10
  else if b = 11 then cellA6B11
  else if b = 12 then cellA6B12
  else if b = 13 then cellA6B13
  else if b = 14 then cellA6B14
  else if b = 15 then cellA6B15
  else if b = 16 then cellA6B16
  else if b = 17 then cellA6B17
  else if b = 18 then cellA6B18
  else if b = 19 then cellA6B19
  else if b = 20 then cellA6B20
  else if b = 21 then cellA6B21
  else if b = 22 then cellA6B22
  else if b = 23 then cellA6B23
  else if b = 24 then cellA6B24
  else if b = 25 then cellA6B25
  else if b = 26 then cellA6B26
  else if b = 27 then cellA6B27
  else if b = 28 then cellA6B28
  else if b = 29 then cellA6B29
  else if b = 30 then cellA6B30
  else if b = 31 then cellA6B31
  else if b = 32 then cellA6B32
  else if b = 33 then cellA6B33
  else if b = 34 then cellA6B34
  else if b = 35 then cellA6B35
  else if b = 36 then cellA6B36
  else if b = 37 then cellA6B37
  else if b = 38 then cellA6B38
  else if b = 39 then cellA6B39
  else if b = 40 then cellA6B40
  else if b = 41 then cellA6B41
  else if b = 42 then cellA6B42
  else if b = 43 then cellA6B43
  else if b = 44 then cellA6B44
  else if b = 45 then cellA6B45
  else if b = 46 then cellA6B46
  else outsideCell

def rowA7 (b : ℕ) : CellData :=
  if b = 1 then cellA7B1
  else if b = 2 then cellA7B2
  else if b = 3 then cellA7B3
  else if b = 4 then cellA7B4
  else if b = 5 then cellA7B5
  else if b = 6 then cellA7B6
  else if b = 7 then cellA7B7
  else if b = 8 then cellA7B8
  else if b = 9 then cellA7B9
  else if b = 10 then cellA7B10
  else if b = 11 then cellA7B11
  else if b = 12 then cellA7B12
  else if b = 13 then cellA7B13
  else if b = 14 then cellA7B14
  else if b = 15 then cellA7B15
  else if b = 16 then cellA7B16
  else if b = 17 then cellA7B17
  else if b = 18 then cellA7B18
  else if b = 19 then cellA7B19
  else if b = 20 then cellA7B20
  else if b = 21 then cellA7B21
  else if b = 22 then cellA7B22
  else if b = 23 then cellA7B23
  else if b = 24 then cellA7B24
  else if b = 25 then cellA7B25
  else if b = 26 then cellA7B26
  else if b = 27 then cellA7B27
  else if b = 28 then cellA7B28
  else if b = 29 then cellA7B29
  else if b = 30 then cellA7B30
  else if b = 31 then cellA7B31
  else if b = 32 then cellA7B32
  else if b = 33 then cellA7B33
  else if b = 34 then cellA7B34
  else if b = 35 then cellA7B35
  else if b = 36 then cellA7B36
  else if b = 37 then cellA7B37
  else if b = 38 then cellA7B38
  else if b = 39 then cellA7B39
  else if b = 40 then cellA7B40
  else if b = 41 then cellA7B41
  else if b = 42 then cellA7B42
  else if b = 43 then cellA7B43
  else if b = 44 then cellA7B44
  else if b = 45 then cellA7B45
  else if b = 46 then cellA7B46
  else outsideCell

def rowA8 (b : ℕ) : CellData :=
  if b = 1 then cellA8B1
  else if b = 2 then cellA8B2
  else if b = 3 then cellA8B3
  else if b = 4 then cellA8B4
  else if b = 5 then cellA8B5
  else if b = 6 then cellA8B6
  else if b = 7 then cellA8B7
  else if b = 8 then cellA8B8
  else if b = 9 then cellA8B9
  else if b = 10 then cellA8B10
  else if b = 11 then cellA8B11
  else if b = 12 then cellA8B12
  else if b = 13 then cellA8B13
  else if b = 14 then cellA8B14
  else if b = 15 then cellA8B15
  else if b = 16 then cellA8B16
  else if b = 17 then cellA8B17
  else if b = 18 then cellA8B18
  else if b = 19 then cellA8B19
  else if b = 20 then cellA8B20
  else if b = 21 then cellA8B21
  else if b = 22 then cellA8B22
  else if b = 23 then cellA8B23
  else if b = 24 then cellA8B24
  else if b = 25 then cellA8B25
  else if b = 26 then cellA8B26
  else if b = 27 then cellA8B27
  else if b = 28 then cellA8B28
  else if b = 29 then cellA8B29
  else if b = 30 then cellA8B30
  else if b = 31 then cellA8B31
  else if b = 32 then cellA8B32
  else if b = 33 then cellA8B33
  else if b = 34 then cellA8B34
  else if b = 35 then cellA8B35
  else if b = 36 then cellA8B36
  else if b = 37 then cellA8B37
  else if b = 38 then cellA8B38
  else if b = 39 then cellA8B39
  else if b = 40 then cellA8B40
  else if b = 41 then cellA8B41
  else if b = 42 then cellA8B42
  else if b = 43 then cellA8B43
  else if b = 44 then cellA8B44
  else if b = 45 then cellA8B45
  else if b = 46 then cellA8B46
  else outsideCell

def chunkData (a b : ℕ) : CellData :=
  if a = 1 then rowA1 b
  else if a = 2 then rowA2 b
  else if a = 3 then rowA3 b
  else if a = 4 then rowA4 b
  else if a = 5 then rowA5 b
  else if a = 6 then rowA6 b
  else if a = 7 then rowA7 b
  else if a = 8 then rowA8 b
  else outsideCell

end Math.B699.CRTStage0Pair25.Chunk000
