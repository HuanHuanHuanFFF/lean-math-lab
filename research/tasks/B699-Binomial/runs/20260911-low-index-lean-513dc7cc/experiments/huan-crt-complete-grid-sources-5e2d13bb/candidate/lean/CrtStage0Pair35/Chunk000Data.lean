import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.Grid
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only candidate. Cell data is copied from the frozen exact JSON; only the later cell lemmas compute it. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage0Pair35.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata


def outsideCell : CellData where
  inverse := 0
  bounds := fun _ => ⟨0, -1⟩

def cellA1B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 23740605⟩
    else if d = (6 : ℤ) then ⟨1, 23740605⟩
    else if d = (8 : ℤ) then ⟨1, 23740605⟩
    else if d = (9 : ℤ) then ⟨1, 23740605⟩
    else ⟨0, 23740605⟩

def cellA1B2 : CellData where
  inverse := 17
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 4748121⟩
    else if d = (3 : ℤ) then ⟨1, 4748121⟩
    else if d = (6 : ℤ) then ⟨1, 4748121⟩
    else if d = (9 : ℤ) then ⟨1, 4748121⟩
    else ⟨0, 4748120⟩

def cellA1B3 : CellData where
  inverse := 42
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 949624⟩
    else if d = (6 : ℤ) then ⟨1, 949624⟩
    else if d = (9 : ℤ) then ⟨1, 949624⟩
    else ⟨0, 949623⟩

def cellA1B4 : CellData where
  inverse := 417
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 189923⟩
    else if d = (-6 : ℤ) then ⟨0, 189923⟩
    else if d = (-3 : ℤ) then ⟨0, 189923⟩
    else if d = (0 : ℤ) then ⟨0, 189923⟩
    else if d = (3 : ℤ) then ⟨1, 189924⟩
    else if d = (6 : ℤ) then ⟨1, 189924⟩
    else if d = (9 : ℤ) then ⟨1, 189924⟩
    else ⟨0, 189924⟩

def cellA1B5 : CellData where
  inverse := 1042
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 37983⟩
    else if d = (-6 : ℤ) then ⟨0, 37983⟩
    else if d = (-3 : ℤ) then ⟨0, 37983⟩
    else if d = (0 : ℤ) then ⟨0, 37983⟩
    else if d = (3 : ℤ) then ⟨1, 37984⟩
    else if d = (6 : ℤ) then ⟨1, 37984⟩
    else if d = (9 : ℤ) then ⟨1, 37984⟩
    else ⟨0, 37984⟩

def cellA1B6 : CellData where
  inverse := 10417
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 7595⟩
    else if d = (-6 : ℤ) then ⟨0, 7595⟩
    else if d = (-3 : ℤ) then ⟨0, 7595⟩
    else if d = (0 : ℤ) then ⟨0, 7595⟩
    else if d = (3 : ℤ) then ⟨1, 7596⟩
    else if d = (6 : ℤ) then ⟨1, 7596⟩
    else if d = (9 : ℤ) then ⟨1, 7596⟩
    else ⟨0, 7596⟩

def cellA1B7 : CellData where
  inverse := 26042
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 1519⟩
    else if d = (-5 : ℤ) then ⟨0, 1519⟩
    else if d = (-2 : ℤ) then ⟨0, 1519⟩
    else if d = (1 : ℤ) then ⟨0, 1519⟩
    else if d = (3 : ℤ) then ⟨1, 1519⟩
    else if d = (4 : ℤ) then ⟨0, 1519⟩
    else if d = (6 : ℤ) then ⟨1, 1519⟩
    else if d = (7 : ℤ) then ⟨0, 1519⟩
    else if d = (9 : ℤ) then ⟨1, 1519⟩
    else if d = (10 : ℤ) then ⟨0, 1519⟩
    else ⟨0, 1518⟩

def cellA1B8 : CellData where
  inverse := 260417
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 302⟩
    else if d = (-6 : ℤ) then ⟨0, 302⟩
    else if d = (-3 : ℤ) then ⟨0, 302⟩
    else if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (3 : ℤ) then ⟨1, 303⟩
    else if d = (6 : ℤ) then ⟨1, 303⟩
    else if d = (9 : ℤ) then ⟨1, 303⟩
    else ⟨0, 303⟩

def cellA1B9 : CellData where
  inverse := 651042
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 59⟩
    else if d = (-6 : ℤ) then ⟨0, 59⟩
    else if d = (-3 : ℤ) then ⟨0, 59⟩
    else if d = (0 : ℤ) then ⟨0, 59⟩
    else if d = (3 : ℤ) then ⟨1, 60⟩
    else if d = (6 : ℤ) then ⟨1, 60⟩
    else if d = (9 : ℤ) then ⟨1, 60⟩
    else ⟨0, 60⟩

def cellA1B10 : CellData where
  inverse := 6510417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 12⟩
    else if d = (6 : ℤ) then ⟨1, 12⟩
    else if d = (9 : ℤ) then ⟨1, 12⟩
    else ⟨0, 11⟩

def cellA1B11 : CellData where
  inverse := 16276042
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 2⟩
    else if d = (-5 : ℤ) then ⟨0, 2⟩
    else if d = (-2 : ℤ) then ⟨0, 2⟩
    else if d = (1 : ℤ) then ⟨0, 2⟩
    else if d = (3 : ℤ) then ⟨1, 2⟩
    else if d = (4 : ℤ) then ⟨0, 2⟩
    else if d = (6 : ℤ) then ⟨1, 2⟩
    else if d = (7 : ℤ) then ⟨0, 2⟩
    else if d = (9 : ℤ) then ⟨1, 2⟩
    else if d = (10 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA1B12 : CellData where
  inverse := 162760417
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B13 : CellData where
  inverse := 406901042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B14 : CellData where
  inverse := 4069010417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B15 : CellData where
  inverse := 10172526042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B16 : CellData where
  inverse := 101725260417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B17 : CellData where
  inverse := 254313151042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B18 : CellData where
  inverse := 2543131510417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B19 : CellData where
  inverse := 6357828776042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B20 : CellData where
  inverse := 63578287760417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B21 : CellData where
  inverse := 158945719401042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B22 : CellData where
  inverse := 1589457194010417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B23 : CellData where
  inverse := 3973642985026042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B24 : CellData where
  inverse := 39736429850260417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B25 : CellData where
  inverse := 99341074625651042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B26 : CellData where
  inverse := 993410746256510417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B27 : CellData where
  inverse := 2483526865641276042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B28 : CellData where
  inverse := 24835268656412760417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B29 : CellData where
  inverse := 62088171641031901042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B30 : CellData where
  inverse := 620881716410319010417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B31 : CellData where
  inverse := 1552204291025797526042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B32 : CellData where
  inverse := 15522042910257975260417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B33 : CellData where
  inverse := 38805107275644938151042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B34 : CellData where
  inverse := 388051072756449381510417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B35 : CellData where
  inverse := 970127681891123453776042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B36 : CellData where
  inverse := 9701276818911234537760417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B37 : CellData where
  inverse := 24253192047278086344401042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B38 : CellData where
  inverse := 242531920472780863444010417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B39 : CellData where
  inverse := 606329801181952158610026042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B40 : CellData where
  inverse := 6063298011819521586100260417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B41 : CellData where
  inverse := 15158245029548803965250651042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B42 : CellData where
  inverse := 151582450295488039652506510417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B43 : CellData where
  inverse := 378956125738720099131266276042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B44 : CellData where
  inverse := 3789561257387200991312662760417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B45 : CellData where
  inverse := 9473903143468002478281656901042
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA1B46 : CellData where
  inverse := 94739031434680024782816569010417
  bounds := fun d =>
    if d = (3 : ℤ) then ⟨1, 0⟩
    else if d = (6 : ℤ) then ⟨1, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 13189225⟩
    else if d = (-6 : ℤ) then ⟨0, 13189225⟩
    else if d = (-2 : ℤ) then ⟨0, 13189225⟩
    else if d = (-1 : ℤ) then ⟨0, 13189225⟩
    else if d = (2 : ℤ) then ⟨0, 13189225⟩
    else if d = (3 : ℤ) then ⟨0, 13189225⟩
    else if d = (4 : ℤ) then ⟨0, 13189225⟩
    else if d = (7 : ℤ) then ⟨0, 13189225⟩
    else if d = (8 : ℤ) then ⟨0, 13189225⟩
    else if d = (9 : ℤ) then ⟨1, 13189225⟩
    else ⟨0, 13189224⟩

def cellA2B2 : CellData where
  inverse := 14
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 4748121⟩
    else if d = (-5 : ℤ) then ⟨0, 4748121⟩
    else if d = (2 : ℤ) then ⟨0, 4748121⟩
    else if d = (9 : ℤ) then ⟨1, 4748121⟩
    else ⟨0, 4748120⟩

def cellA2B3 : CellData where
  inverse := 14
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 949624⟩
    else if d = (-7 : ℤ) then ⟨0, 949624⟩
    else if d = (1 : ℤ) then ⟨0, 949624⟩
    else if d = (2 : ℤ) then ⟨0, 949624⟩
    else if d = (9 : ℤ) then ⟨1, 949624⟩
    else if d = (10 : ℤ) then ⟨0, 949624⟩
    else ⟨0, 949623⟩

def cellA2B4 : CellData where
  inverse := 139
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 189923⟩
    else if d = (-5 : ℤ) then ⟨0, 189923⟩
    else if d = (0 : ℤ) then ⟨0, 189923⟩
    else if d = (4 : ℤ) then ⟨0, 189923⟩
    else if d = (9 : ℤ) then ⟨1, 189924⟩
    else ⟨0, 189924⟩

def cellA2B5 : CellData where
  inverse := 1389
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 37983⟩
    else if d = (0 : ℤ) then ⟨0, 37983⟩
    else if d = (9 : ℤ) then ⟨1, 37984⟩
    else ⟨0, 37984⟩

def cellA2B6 : CellData where
  inverse := 13889
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 7595⟩
    else if d = (0 : ℤ) then ⟨0, 7595⟩
    else if d = (9 : ℤ) then ⟨1, 7596⟩
    else ⟨0, 7596⟩

def cellA2B7 : CellData where
  inverse := 60764
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1519⟩
    else if d = (-6 : ℤ) then ⟨0, 1519⟩
    else if d = (-5 : ℤ) then ⟨0, 1519⟩
    else if d = (-1 : ℤ) then ⟨0, 1519⟩
    else if d = (3 : ℤ) then ⟨0, 1519⟩
    else if d = (4 : ℤ) then ⟨0, 1519⟩
    else if d = (8 : ℤ) then ⟨0, 1519⟩
    else if d = (9 : ℤ) then ⟨1, 1519⟩
    else ⟨0, 1518⟩

def cellA2B8 : CellData where
  inverse := 217014
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 302⟩
    else if d = (-2 : ℤ) then ⟨0, 302⟩
    else if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (7 : ℤ) then ⟨0, 302⟩
    else if d = (9 : ℤ) then ⟨1, 303⟩
    else ⟨0, 303⟩

def cellA2B9 : CellData where
  inverse := 217014
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 59⟩
    else if d = (-9 : ℤ) then ⟨0, 59⟩
    else if d = (-2 : ℤ) then ⟨0, 59⟩
    else if d = (-1 : ℤ) then ⟨0, 59⟩
    else if d = (0 : ℤ) then ⟨0, 59⟩
    else if d = (7 : ℤ) then ⟨0, 59⟩
    else if d = (8 : ℤ) then ⟨0, 59⟩
    else if d = (9 : ℤ) then ⟨1, 60⟩
    else ⟨0, 60⟩

def cellA2B10 : CellData where
  inverse := 2170139
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 12⟩
    else if d = (5 : ℤ) then ⟨0, 12⟩
    else if d = (9 : ℤ) then ⟨1, 12⟩
    else ⟨0, 11⟩

def cellA2B11 : CellData where
  inverse := 21701389
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 2⟩
    else if d = (-4 : ℤ) then ⟨0, 2⟩
    else if d = (-2 : ℤ) then ⟨0, 2⟩
    else if d = (3 : ℤ) then ⟨0, 2⟩
    else if d = (5 : ℤ) then ⟨0, 2⟩
    else if d = (7 : ℤ) then ⟨0, 2⟩
    else if d = (9 : ℤ) then ⟨1, 2⟩
    else ⟨0, 1⟩

def cellA2B12 : CellData where
  inverse := 217013889
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B13 : CellData where
  inverse := 949435764
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B14 : CellData where
  inverse := 3390842014
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B15 : CellData where
  inverse := 3390842014
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B16 : CellData where
  inverse := 33908420139
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B17 : CellData where
  inverse := 339084201389
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B18 : CellData where
  inverse := 3390842013889
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B19 : CellData where
  inverse := 14834933810764
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B20 : CellData where
  inverse := 52981906467014
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B21 : CellData where
  inverse := 52981906467014
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B22 : CellData where
  inverse := 529819064670139
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B23 : CellData where
  inverse := 5298190646701389
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B24 : CellData where
  inverse := 52981906467013889
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B25 : CellData where
  inverse := 231795840793185764
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B26 : CellData where
  inverse := 827842288547092014
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B27 : CellData where
  inverse := 827842288547092014
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B28 : CellData where
  inverse := 8278422885470920139
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B29 : CellData where
  inverse := 82784228854709201389
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B30 : CellData where
  inverse := 827842288547092013889
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B31 : CellData where
  inverse := 3621810012393527560764
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B32 : CellData where
  inverse := 12935035758548312717014
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B33 : CellData where
  inverse := 12935035758548312717014
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B34 : CellData where
  inverse := 129350357585483127170139
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B35 : CellData where
  inverse := 1293503575854831271701389
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B36 : CellData where
  inverse := 12935035758548312717013889
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B37 : CellData where
  inverse := 56590781443648868136935764
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B38 : CellData where
  inverse := 202109933727317386203342014
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B39 : CellData where
  inverse := 202109933727317386203342014
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B40 : CellData where
  inverse := 2021099337273173862033420139
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B41 : CellData where
  inverse := 20210993372731738620334201389
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B42 : CellData where
  inverse := 202109933727317386203342013889
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B43 : CellData where
  inverse := 884230960057013564639621310764
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B44 : CellData where
  inverse := 3157967714489334159427218967014
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B45 : CellData where
  inverse := 3157967714489334159427218967014
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA2B46 : CellData where
  inverse := 31579677144893341594272189670139
  bounds := fun d =>
    if d = (9 : ℤ) then ⟨1, 0⟩
    else ⟨0, -1⟩

def cellA3B1 : CellData where
  inverse := 3
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 4396408⟩
    else if d = (-6 : ℤ) then ⟨0, 4396408⟩
    else if d = (-3 : ℤ) then ⟨0, 4396408⟩
    else if d = (-1 : ℤ) then ⟨0, 4396408⟩
    else if d = (2 : ℤ) then ⟨0, 4396408⟩
    else if d = (4 : ℤ) then ⟨0, 4396408⟩
    else if d = (7 : ℤ) then ⟨0, 4396408⟩
    else if d = (9 : ℤ) then ⟨0, 4396408⟩
    else ⟨0, 4396407⟩

def cellA3B2 : CellData where
  inverse := 13
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 4396407⟩
    else if d = (-8 : ℤ) then ⟨0, 4396407⟩
    else if d = (-6 : ℤ) then ⟨0, 4396407⟩
    else if d = (-4 : ℤ) then ⟨0, 4396407⟩
    else if d = (-2 : ℤ) then ⟨0, 4396407⟩
    else if d = (0 : ℤ) then ⟨0, 4396407⟩
    else if d = (3 : ℤ) then ⟨0, 4396407⟩
    else if d = (5 : ℤ) then ⟨0, 4396407⟩
    else if d = (7 : ℤ) then ⟨0, 4396407⟩
    else if d = (9 : ℤ) then ⟨0, 4396407⟩
    else ⟨0, 4396408⟩

def cellA3B3 : CellData where
  inverse := 88
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 949624⟩
    else if d = (-4 : ℤ) then ⟨0, 949624⟩
    else if d = (3 : ℤ) then ⟨0, 949624⟩
    else if d = (6 : ℤ) then ⟨0, 949624⟩
    else if d = (10 : ℤ) then ⟨0, 949624⟩
    else ⟨0, 949623⟩

def cellA3B4 : CellData where
  inverse := 463
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 189923⟩
    else if d = (4 : ℤ) then ⟨0, 189923⟩
    else if d = (8 : ℤ) then ⟨0, 189923⟩
    else ⟨0, 189924⟩

def cellA3B5 : CellData where
  inverse := 463
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 37983⟩
    else ⟨0, 37984⟩

def cellA3B6 : CellData where
  inverse := 9838
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 7595⟩
    else ⟨0, 7596⟩

def cellA3B7 : CellData where
  inverse := 72338
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 1519⟩
    else if d = (-4 : ℤ) then ⟨0, 1519⟩
    else if d = (-3 : ℤ) then ⟨0, 1519⟩
    else if d = (-2 : ℤ) then ⟨0, 1519⟩
    else if d = (-1 : ℤ) then ⟨0, 1519⟩
    else if d = (9 : ℤ) then ⟨0, 1519⟩
    else if d = (10 : ℤ) then ⟨0, 1519⟩
    else ⟨0, 1518⟩

def cellA3B8 : CellData where
  inverse := 72338
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 302⟩
    else if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (5 : ℤ) then ⟨0, 302⟩
    else ⟨0, 303⟩

def cellA3B9 : CellData where
  inverse := 72338
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 59⟩
    else if d = (-5 : ℤ) then ⟨0, 59⟩
    else if d = (-4 : ℤ) then ⟨0, 59⟩
    else if d = (-3 : ℤ) then ⟨0, 59⟩
    else if d = (-2 : ℤ) then ⟨0, 59⟩
    else if d = (-1 : ℤ) then ⟨0, 59⟩
    else if d = (0 : ℤ) then ⟨0, 59⟩
    else ⟨0, 60⟩

def cellA3B10 : CellData where
  inverse := 3978588
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 12⟩
    else if d = (5 : ℤ) then ⟨0, 12⟩
    else if d = (10 : ℤ) then ⟨0, 12⟩
    else ⟨0, 11⟩

def cellA3B11 : CellData where
  inverse := 23509838
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 2⟩
    else if d = (-8 : ℤ) then ⟨0, 2⟩
    else if d = (-6 : ℤ) then ⟨0, 2⟩
    else if d = (-4 : ℤ) then ⟨0, 2⟩
    else if d = (-2 : ℤ) then ⟨0, 2⟩
    else if d = (5 : ℤ) then ⟨0, 2⟩
    else if d = (7 : ℤ) then ⟨0, 2⟩
    else if d = (9 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA3B12 : CellData where
  inverse := 72337963
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (1 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA3B13 : CellData where
  inverse := 316478588
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA3B14 : CellData where
  inverse := 5199291088
  bounds := fun _ => ⟨0, -1⟩

def cellA3B15 : CellData where
  inverse := 11302806713
  bounds := fun _ => ⟨0, -1⟩

def cellA3B16 : CellData where
  inverse := 11302806713
  bounds := fun _ => ⟨0, -1⟩

def cellA3B17 : CellData where
  inverse := 621654369213
  bounds := fun _ => ⟨0, -1⟩

def cellA3B18 : CellData where
  inverse := 3673412181713
  bounds := fun _ => ⟨0, -1⟩

def cellA3B19 : CellData where
  inverse := 11302806712963
  bounds := fun _ => ⟨0, -1⟩

def cellA3B20 : CellData where
  inverse := 49449779369213
  bounds := fun _ => ⟨0, -1⟩

def cellA3B21 : CellData where
  inverse := 335552074291088
  bounds := fun _ => ⟨0, -1⟩

def cellA3B22 : CellData where
  inverse := 1766063548900463
  bounds := fun _ => ⟨0, -1⟩

def cellA3B23 : CellData where
  inverse := 1766063548900463
  bounds := fun _ => ⟨0, -1⟩

def cellA3B24 : CellData where
  inverse := 37528850414134838
  bounds := fun _ => ⟨0, -1⟩

def cellA3B25 : CellData where
  inverse := 275947429515697338
  bounds := fun _ => ⟨0, -1⟩

def cellA3B26 : CellData where
  inverse := 275947429515697338
  bounds := fun _ => ⟨0, -1⟩

def cellA3B27 : CellData where
  inverse := 275947429515697338
  bounds := fun _ => ⟨0, -1⟩

def cellA3B28 : CellData where
  inverse := 15177108623363353588
  bounds := fun _ => ⟨0, -1⟩

def cellA3B29 : CellData where
  inverse := 89682914592601634838
  bounds := fun _ => ⟨0, -1⟩

def cellA3B30 : CellData where
  inverse := 275947429515697337963
  bounds := fun _ => ⟨0, -1⟩

def cellA3B31 : CellData where
  inverse := 1207270004131175853588
  bounds := fun _ => ⟨0, -1⟩

def cellA3B32 : CellData where
  inverse := 19833721496440746166088
  bounds := fun _ => ⟨0, -1⟩

def cellA3B33 : CellData where
  inverse := 43116785861827709056713
  bounds := fun _ => ⟨0, -1⟩

def cellA3B34 : CellData where
  inverse := 43116785861827709056713
  bounds := fun _ => ⟨0, -1⟩

def cellA3B35 : CellData where
  inverse := 2371423222400523998119213
  bounds := fun _ => ⟨0, -1⟩

def cellA3B36 : CellData where
  inverse := 14012955405094005443431713
  bounds := fun _ => ⟨0, -1⟩

def cellA3B37 : CellData where
  inverse := 43116785861827709056712963
  bounds := fun _ => ⟨0, -1⟩

def cellA3B38 : CellData where
  inverse := 188635938145496227123119213
  bounds := fun _ => ⟨0, -1⟩

def cellA3B39 : CellData where
  inverse := 1280029580273010112621166088
  bounds := fun _ => ⟨0, -1⟩

def cellA3B40 : CellData where
  inverse := 6736997790910579540111400463
  bounds := fun _ => ⟨0, -1⟩

def cellA3B41 : CellData where
  inverse := 6736997790910579540111400463
  bounds := fun _ => ⟨0, -1⟩

def cellA3B42 : CellData where
  inverse := 143161203056849815227367259838
  bounds := fun _ => ⟨0, -1⟩

def cellA3B43 : CellData where
  inverse := 1052655904829778053142406322338
  bounds := fun _ => ⟨0, -1⟩

def cellA3B44 : CellData where
  inverse := 1052655904829778053142406322338
  bounds := fun _ => ⟨0, -1⟩

def cellA3B45 : CellData where
  inverse := 1052655904829778053142406322338
  bounds := fun _ => ⟨0, -1⟩

def cellA3B46 : CellData where
  inverse := 57896074765637792922832347728588
  bounds := fun _ => ⟨0, -1⟩

def cellA4B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1465469⟩
    else if d = (-8 : ℤ) then ⟨0, 1465469⟩
    else if d = (-4 : ℤ) then ⟨0, 1465469⟩
    else if d = (-3 : ℤ) then ⟨0, 1465469⟩
    else if d = (1 : ℤ) then ⟨0, 1465469⟩
    else if d = (2 : ℤ) then ⟨0, 1465469⟩
    else if d = (6 : ℤ) then ⟨0, 1465469⟩
    else if d = (7 : ℤ) then ⟨0, 1465469⟩
    else ⟨0, 1465468⟩

def cellA4B2 : CellData where
  inverse := 21
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1465469⟩
    else if d = (-8 : ℤ) then ⟨0, 1465469⟩
    else if d = (-7 : ℤ) then ⟨0, 1465469⟩
    else if d = (-3 : ℤ) then ⟨0, 1465469⟩
    else if d = (-2 : ℤ) then ⟨0, 1465469⟩
    else if d = (-1 : ℤ) then ⟨0, 1465469⟩
    else if d = (4 : ℤ) then ⟨0, 1465469⟩
    else if d = (5 : ℤ) then ⟨0, 1465469⟩
    else if d = (6 : ℤ) then ⟨0, 1465469⟩
    else if d = (10 : ℤ) then ⟨0, 1465469⟩
    else ⟨0, 1465468⟩

def cellA4B3 : CellData where
  inverse := 71
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 949624⟩
    else if d = (-5 : ℤ) then ⟨0, 949624⟩
    else if d = (2 : ℤ) then ⟨0, 949624⟩
    else if d = (9 : ℤ) then ⟨0, 949624⟩
    else ⟨0, 949623⟩

def cellA4B4 : CellData where
  inverse := 571
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 189923⟩
    else if d = (0 : ℤ) then ⟨0, 189923⟩
    else if d = (1 : ℤ) then ⟨0, 189923⟩
    else ⟨0, 189924⟩

def cellA4B5 : CellData where
  inverse := 1196
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 37983⟩
    else ⟨0, 37984⟩

def cellA4B6 : CellData where
  inverse := 13696
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 7595⟩
    else ⟨0, 7596⟩

def cellA4B7 : CellData where
  inverse := 76196
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1519⟩
    else if d = (-9 : ℤ) then ⟨0, 1519⟩
    else if d = (-8 : ℤ) then ⟨0, 1519⟩
    else if d = (-7 : ℤ) then ⟨0, 1519⟩
    else if d = (-6 : ℤ) then ⟨0, 1519⟩
    else if d = (-5 : ℤ) then ⟨0, 1519⟩
    else if d = (-4 : ℤ) then ⟨0, 1519⟩
    else if d = (-3 : ℤ) then ⟨0, 1519⟩
    else if d = (-2 : ℤ) then ⟨0, 1519⟩
    else if d = (-1 : ℤ) then ⟨0, 1519⟩
    else ⟨0, 1518⟩

def cellA4B8 : CellData where
  inverse := 154321
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (5 : ℤ) then ⟨0, 302⟩
    else if d = (10 : ℤ) then ⟨0, 302⟩
    else ⟨0, 303⟩

def cellA4B9 : CellData where
  inverse := 1326196
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 59⟩
    else if d = (-6 : ℤ) then ⟨0, 59⟩
    else if d = (-3 : ℤ) then ⟨0, 59⟩
    else if d = (0 : ℤ) then ⟨0, 59⟩
    else if d = (10 : ℤ) then ⟨0, 59⟩
    else ⟨0, 60⟩

def cellA4B10 : CellData where
  inverse := 1326196
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 12⟩
    else if d = (1 : ℤ) then ⟨0, 12⟩
    else if d = (8 : ℤ) then ⟨0, 12⟩
    else ⟨0, 11⟩

def cellA4B11 : CellData where
  inverse := 40388696
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 2⟩
    else if d = (-7 : ℤ) then ⟨0, 2⟩
    else if d = (-6 : ℤ) then ⟨0, 2⟩
    else if d = (-2 : ℤ) then ⟨0, 2⟩
    else if d = (-1 : ℤ) then ⟨0, 2⟩
    else if d = (4 : ℤ) then ⟨0, 2⟩
    else if d = (5 : ℤ) then ⟨0, 2⟩
    else if d = (10 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA4B12 : CellData where
  inverse := 186873071
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (3 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA4B13 : CellData where
  inverse := 919294946
  bounds := fun d =>
    if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA4B14 : CellData where
  inverse := 5802107446
  bounds := fun _ => ⟨0, -1⟩

def cellA4B15 : CellData where
  inverse := 24112654321
  bounds := fun _ => ⟨0, -1⟩

def cellA4B16 : CellData where
  inverse := 54630232446
  bounds := fun _ => ⟨0, -1⟩

def cellA4B17 : CellData where
  inverse := 207218123071
  bounds := fun _ => ⟨0, -1⟩

def cellA4B18 : CellData where
  inverse := 2496036482446
  bounds := fun _ => ⟨0, -1⟩

def cellA4B19 : CellData where
  inverse := 10125431013696
  bounds := fun _ => ⟨0, -1⟩

def cellA4B20 : CellData where
  inverse := 48272403669946
  bounds := fun _ => ⟨0, -1⟩

def cellA4B21 : CellData where
  inverse := 429742130232446
  bounds := fun _ => ⟨0, -1⟩

def cellA4B22 : CellData where
  inverse := 1383416446638696
  bounds := fun _ => ⟨0, -1⟩

def cellA4B23 : CellData where
  inverse := 8535973819685571
  bounds := fun _ => ⟨0, -1⟩

def cellA4B24 : CellData where
  inverse := 32377831729841821
  bounds := fun _ => ⟨0, -1⟩

def cellA4B25 : CellData where
  inverse := 91982476505232446
  bounds := fun _ => ⟨0, -1⟩

def cellA4B26 : CellData where
  inverse := 91982476505232446
  bounds := fun _ => ⟨0, -1⟩

def cellA4B27 : CellData where
  inverse := 91982476505232446
  bounds := fun _ => ⟨0, -1⟩

def cellA4B28 : CellData where
  inverse := 29894304864200544946
  bounds := fun _ => ⟨0, -1⟩

def cellA4B29 : CellData where
  inverse := 29894304864200544946
  bounds := fun _ => ⟨0, -1⟩

def cellA4B30 : CellData where
  inverse := 402423334710391951196
  bounds := fun _ => ⟨0, -1⟩

def cellA4B31 : CellData where
  inverse := 402423334710391951196
  bounds := fun _ => ⟨0, -1⟩

def cellA4B32 : CellData where
  inverse := 14372261953942569685571
  bounds := fun _ => ⟨0, -1⟩

def cellA4B33 : CellData where
  inverse := 14372261953942569685571
  bounds := fun _ => ⟨0, -1⟩

def cellA4B34 : CellData where
  inverse := 14372261953942569685571
  bounds := fun _ => ⟨0, -1⟩

def cellA4B35 : CellData where
  inverse := 1760602089357964786482446
  bounds := fun _ => ⟨0, -1⟩

def cellA4B36 : CellData where
  inverse := 4670985135031335147810571
  bounds := fun _ => ⟨0, -1⟩

def cellA4B37 : CellData where
  inverse := 62878646048498742374373071
  bounds := fun _ => ⟨0, -1⟩

def cellA4B38 : CellData where
  inverse := 62878646048498742374373071
  bounds := fun _ => ⟨0, -1⟩

def cellA4B39 : CellData where
  inverse := 426676526757670037540388696
  bounds := fun _ => ⟨0, -1⟩

def cellA4B40 : CellData where
  inverse := 2245665930303526513370466821
  bounds := fun _ => ⟨0, -1⟩

def cellA4B41 : CellData where
  inverse := 2245665930303526513370466821
  bounds := fun _ => ⟨0, -1⟩

def cellA4B42 : CellData where
  inverse := 47720401018949938409122419946
  bounds := fun _ => ⟨0, -1⟩

def cellA4B43 : CellData where
  inverse := 729841427348646116845401716821
  bounds := fun _ => ⟨0, -1⟩

def cellA4B44 : CellData where
  inverse := 4140446558997127009026798201196
  bounds := fun _ => ⟨0, -1⟩

def cellA4B45 : CellData where
  inverse := 9824788445077928495995792341821
  bounds := fun _ => ⟨0, -1⟩

def cellA4B46 : CellData where
  inverse := 66668207305885943365685733748071
  bounds := fun _ => ⟨0, -1⟩

def cellA5B1 : CellData where
  inverse := 2
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 488488⟩
    else if d = (-5 : ℤ) then ⟨0, 488488⟩
    else if d = (0 : ℤ) then ⟨0, 488488⟩
    else if d = (5 : ℤ) then ⟨0, 488488⟩
    else if d = (10 : ℤ) then ⟨0, 488488⟩
    else ⟨0, 488489⟩

def cellA5B2 : CellData where
  inverse := 7
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 488488⟩
    else if d = (0 : ℤ) then ⟨0, 488488⟩
    else if d = (3 : ℤ) then ⟨0, 488488⟩
    else if d = (7 : ℤ) then ⟨0, 488488⟩
    else ⟨0, 488489⟩

def cellA5B3 : CellData where
  inverse := 107
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 488488⟩
    else if d = (0 : ℤ) then ⟨0, 488488⟩
    else if d = (1 : ℤ) then ⟨0, 488488⟩
    else if d = (7 : ℤ) then ⟨0, 488488⟩
    else if d = (8 : ℤ) then ⟨0, 488488⟩
    else ⟨0, 488489⟩

def cellA5B4 : CellData where
  inverse := 607
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 189923⟩
    else if d = (1 : ℤ) then ⟨0, 189923⟩
    else if d = (2 : ℤ) then ⟨0, 189923⟩
    else if d = (3 : ℤ) then ⟨0, 189923⟩
    else if d = (4 : ℤ) then ⟨0, 189923⟩
    else if d = (5 : ℤ) then ⟨0, 189923⟩
    else ⟨0, 189924⟩

def cellA5B5 : CellData where
  inverse := 2482
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 37983⟩
    else if d = (5 : ℤ) then ⟨0, 37983⟩
    else ⟨0, 37984⟩

def cellA5B6 : CellData where
  inverse := 14982
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 7595⟩
    else ⟨0, 7596⟩

def cellA5B7 : CellData where
  inverse := 77482
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1519⟩
    else if d = (-9 : ℤ) then ⟨0, 1519⟩
    else if d = (-8 : ℤ) then ⟨0, 1519⟩
    else if d = (-7 : ℤ) then ⟨0, 1519⟩
    else if d = (-6 : ℤ) then ⟨0, 1519⟩
    else if d = (-5 : ℤ) then ⟨0, 1519⟩
    else if d = (-4 : ℤ) then ⟨0, 1519⟩
    else if d = (-3 : ℤ) then ⟨0, 1519⟩
    else if d = (-2 : ℤ) then ⟨0, 1519⟩
    else if d = (-1 : ℤ) then ⟨0, 1519⟩
    else ⟨0, 1518⟩

def cellA5B8 : CellData where
  inverse := 311857
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (5 : ℤ) then ⟨0, 302⟩
    else if d = (10 : ℤ) then ⟨0, 302⟩
    else ⟨0, 303⟩

def cellA5B9 : CellData where
  inverse := 1093107
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 59⟩
    else if d = (-2 : ℤ) then ⟨0, 59⟩
    else if d = (0 : ℤ) then ⟨0, 59⟩
    else if d = (5 : ℤ) then ⟨0, 59⟩
    else if d = (7 : ℤ) then ⟨0, 59⟩
    else ⟨0, 60⟩

def cellA5B10 : CellData where
  inverse := 6952482
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 12⟩
    else if d = (-4 : ℤ) then ⟨0, 12⟩
    else if d = (3 : ℤ) then ⟨0, 12⟩
    else if d = (10 : ℤ) then ⟨0, 12⟩
    else ⟨0, 11⟩

def cellA5B11 : CellData where
  inverse := 46014982
  bounds := fun d =>
    if d = (-7 : ℤ) then ⟨0, 2⟩
    else if d = (-6 : ℤ) then ⟨0, 2⟩
    else if d = (-5 : ℤ) then ⟨0, 2⟩
    else if d = (-4 : ℤ) then ⟨0, 2⟩
    else if d = (-3 : ℤ) then ⟨0, 2⟩
    else if d = (-2 : ℤ) then ⟨0, 2⟩
    else if d = (-1 : ℤ) then ⟨0, 2⟩
    else if d = (10 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA5B12 : CellData where
  inverse := 143671232
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (7 : ℤ) then ⟨0, 0⟩
    else if d = (9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA5B13 : CellData where
  inverse := 1120233732
  bounds := fun d =>
    if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA5B14 : CellData where
  inverse := 6003046232
  bounds := fun d =>
    if d = (-1 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA5B15 : CellData where
  inverse := 18210077482
  bounds := fun _ => ⟨0, -1⟩

def cellA5B16 : CellData where
  inverse := 18210077482
  bounds := fun _ => ⟨0, -1⟩

def cellA5B17 : CellData where
  inverse := 323385858732
  bounds := fun _ => ⟨0, -1⟩

def cellA5B18 : CellData where
  inverse := 3375143671232
  bounds := fun _ => ⟨0, -1⟩

def cellA5B19 : CellData where
  inverse := 3375143671232
  bounds := fun _ => ⟨0, -1⟩

def cellA5B20 : CellData where
  inverse := 79669088983732
  bounds := fun _ => ⟨0, -1⟩

def cellA5B21 : CellData where
  inverse := 461138815546232
  bounds := fun _ => ⟨0, -1⟩

def cellA5B22 : CellData where
  inverse := 461138815546232
  bounds := fun _ => ⟨0, -1⟩

def cellA5B23 : CellData where
  inverse := 2845324606561857
  bounds := fun _ => ⟨0, -1⟩

def cellA5B24 : CellData where
  inverse := 50529040426874357
  bounds := fun _ => ⟨0, -1⟩

def cellA5B25 : CellData where
  inverse := 229342974753046232
  bounds := fun _ => ⟨0, -1⟩

def cellA5B26 : CellData where
  inverse := 527366198629999357
  bounds := fun _ => ⟨0, -1⟩

def cellA5B27 : CellData where
  inverse := 4997714556784296232
  bounds := fun _ => ⟨0, -1⟩

def cellA5B28 : CellData where
  inverse := 34800036944479608732
  bounds := fun _ => ⟨0, -1⟩

def cellA5B29 : CellData where
  inverse := 72052939929098749357
  bounds := fun _ => ⟨0, -1⟩

def cellA5B30 : CellData where
  inverse := 444581969775290155607
  bounds := fun _ => ⟨0, -1⟩

def cellA5B31 : CellData where
  inverse := 3238549693621725702482
  bounds := fun _ => ⟨0, -1⟩

def cellA5B32 : CellData where
  inverse := 12551775439776510858732
  bounds := fun _ => ⟨0, -1⟩

def cellA5B33 : CellData where
  inverse := 82400968535937399530607
  bounds := fun _ => ⟨0, -1⟩

def cellA5B34 : CellData where
  inverse := 198816290362872213983732
  bounds := fun _ => ⟨0, -1⟩

def cellA5B35 : CellData where
  inverse := 2527122726901568503046232
  bounds := fun _ => ⟨0, -1⟩

def cellA5B36 : CellData where
  inverse := 11258271863921679587030607
  bounds := fun _ => ⟨0, -1⟩

def cellA5B37 : CellData where
  inverse := 69465932777389086813593107
  bounds := fun _ => ⟨0, -1⟩

def cellA5B38 : CellData where
  inverse := 142225508919223345846796232
  bounds := fun _ => ⟨0, -1⟩

def cellA5B39 : CellData where
  inverse := 142225508919223345846796232
  bounds := fun _ => ⟨0, -1⟩

def cellA5B40 : CellData where
  inverse := 3780204316010936297506952482
  bounds := fun _ => ⟨0, -1⟩

def cellA5B41 : CellData where
  inverse := 31065045369198783434958124357
  bounds := fun _ => ⟨0, -1⟩

def cellA5B42 : CellData where
  inverse := 167489250635138019122213983732
  bounds := fun _ => ⟨0, -1⟩

def cellA5B43 : CellData where
  inverse := 622236601521602138079733514982
  bounds := fun _ => ⟨0, -1⟩

def cellA5B44 : CellData where
  inverse := 5169710110386243327654928827482
  bounds := fun _ => ⟨0, -1⟩

def cellA5B45 : CellData where
  inverse := 22222735768628647788561911249357
  bounds := fun _ => ⟨0, -1⟩

def cellA5B46 : CellData where
  inverse := 22222735768628647788561911249357
  bounds := fun _ => ⟨0, -1⟩

def cellA6B1 : CellData where
  inverse := 4
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 162828⟩
    else if d = (-5 : ℤ) then ⟨0, 162828⟩
    else if d = (0 : ℤ) then ⟨0, 162828⟩
    else if d = (5 : ℤ) then ⟨0, 162828⟩
    else if d = (10 : ℤ) then ⟨0, 162828⟩
    else ⟨0, 162829⟩

def cellA6B2 : CellData where
  inverse := 19
  bounds := fun d =>
    if d = (-4 : ℤ) then ⟨0, 162828⟩
    else if d = (0 : ℤ) then ⟨0, 162828⟩
    else ⟨0, 162829⟩

def cellA6B3 : CellData where
  inverse := 119
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 162828⟩
    else if d = (1 : ℤ) then ⟨0, 162828⟩
    else ⟨0, 162829⟩

def cellA6B4 : CellData where
  inverse := 619
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 162828⟩
    else if d = (1 : ℤ) then ⟨0, 162828⟩
    else if d = (2 : ℤ) then ⟨0, 162828⟩
    else if d = (3 : ℤ) then ⟨0, 162828⟩
    else if d = (4 : ℤ) then ⟨0, 162828⟩
    else if d = (5 : ℤ) then ⟨0, 162828⟩
    else ⟨0, 162829⟩

def cellA6B5 : CellData where
  inverse := 1869
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 37983⟩
    else if d = (5 : ℤ) then ⟨0, 37983⟩
    else if d = (10 : ℤ) then ⟨0, 37983⟩
    else ⟨0, 37984⟩

def cellA6B6 : CellData where
  inverse := 4994
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 7595⟩
    else ⟨0, 7596⟩

def cellA6B7 : CellData where
  inverse := 51869
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1519⟩
    else if d = (-9 : ℤ) then ⟨0, 1519⟩
    else if d = (-7 : ℤ) then ⟨0, 1519⟩
    else if d = (-6 : ℤ) then ⟨0, 1519⟩
    else if d = (-4 : ℤ) then ⟨0, 1519⟩
    else if d = (-3 : ℤ) then ⟨0, 1519⟩
    else if d = (-1 : ℤ) then ⟨0, 1519⟩
    else if d = (2 : ℤ) then ⟨0, 1519⟩
    else if d = (5 : ℤ) then ⟨0, 1519⟩
    else if d = (8 : ℤ) then ⟨0, 1519⟩
    else ⟨0, 1518⟩

def cellA6B8 : CellData where
  inverse := 364369
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (1 : ℤ) then ⟨0, 302⟩
    else ⟨0, 303⟩

def cellA6B9 : CellData where
  inverse := 364369
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 59⟩
    else if d = (-1 : ℤ) then ⟨0, 59⟩
    else if d = (0 : ℤ) then ⟨0, 59⟩
    else if d = (5 : ℤ) then ⟨0, 59⟩
    else if d = (10 : ℤ) then ⟨0, 59⟩
    else ⟨0, 60⟩

def cellA6B10 : CellData where
  inverse := 2317494
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 12⟩
    else if d = (-4 : ℤ) then ⟨0, 12⟩
    else if d = (9 : ℤ) then ⟨0, 12⟩
    else ⟨0, 11⟩

def cellA6B11 : CellData where
  inverse := 31614369
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 2⟩
    else if d = (-6 : ℤ) then ⟨0, 2⟩
    else if d = (-4 : ℤ) then ⟨0, 2⟩
    else if d = (-3 : ℤ) then ⟨0, 2⟩
    else if d = (-1 : ℤ) then ⟨0, 2⟩
    else if d = (2 : ℤ) then ⟨0, 2⟩
    else if d = (5 : ℤ) then ⟨0, 2⟩
    else if d = (8 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA6B12 : CellData where
  inverse := 129270619
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (2 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (8 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B13 : CellData where
  inverse := 373411244
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B14 : CellData where
  inverse := 4035520619
  bounds := fun d =>
    if d = (-3 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA6B15 : CellData where
  inverse := 16242551869
  bounds := fun _ => ⟨0, -1⟩

def cellA6B16 : CellData where
  inverse := 107795286244
  bounds := fun _ => ⟨0, -1⟩

def cellA6B17 : CellData where
  inverse := 107795286244
  bounds := fun _ => ⟨0, -1⟩

def cellA6B18 : CellData where
  inverse := 2396613645619
  bounds := fun _ => ⟨0, -1⟩

def cellA6B19 : CellData where
  inverse := 13840705442494
  bounds := fun _ => ⟨0, -1⟩

def cellA6B20 : CellData where
  inverse := 90134650754994
  bounds := fun _ => ⟨0, -1⟩

def cellA6B21 : CellData where
  inverse := 471604377317494
  bounds := fun _ => ⟨0, -1⟩

def cellA6B22 : CellData where
  inverse := 948441535520619
  bounds := fun _ => ⟨0, -1⟩

def cellA6B23 : CellData where
  inverse := 948441535520619
  bounds := fun _ => ⟨0, -1⟩

def cellA6B24 : CellData where
  inverse := 36711228400754994
  bounds := fun _ => ⟨0, -1⟩

def cellA6B25 : CellData where
  inverse := 275129807502317494
  bounds := fun _ => ⟨0, -1⟩

def cellA6B26 : CellData where
  inverse := 1169199479133176869
  bounds := fun _ => ⟨0, -1⟩

def cellA6B27 : CellData where
  inverse := 4149431717902708119
  bounds := fun _ => ⟨0, -1⟩

def cellA6B28 : CellData where
  inverse := 11600012314826536244
  bounds := fun _ => ⟨0, -1⟩

def cellA6B29 : CellData where
  inverse := 86105818284064817494
  bounds := fun _ => ⟨0, -1⟩

def cellA6B30 : CellData where
  inverse := 458634848130256223744
  bounds := fun _ => ⟨0, -1⟩

def cellA6B31 : CellData where
  inverse := 4183925146592170286244
  bounds := fun _ => ⟨0, -1⟩

def cellA6B32 : CellData where
  inverse := 4183925146592170286244
  bounds := fun _ => ⟨0, -1⟩

def cellA6B33 : CellData where
  inverse := 27466989511979133176869
  bounds := fun _ => ⟨0, -1⟩

def cellA6B34 : CellData where
  inverse := 260297633165848762083119
  bounds := fun _ => ⟨0, -1⟩

def cellA6B35 : CellData where
  inverse := 842374242300522834348744
  bounds := fun _ => ⟨0, -1⟩

def cellA6B36 : CellData where
  inverse := 3752757287973893195676869
  bounds := fun _ => ⟨0, -1⟩

def cellA6B37 : CellData where
  inverse := 47408502973074448615598744
  bounds := fun _ => ⟨0, -1⟩

def cellA6B38 : CellData where
  inverse := 47408502973074448615598744
  bounds := fun _ => ⟨0, -1⟩

def cellA6B39 : CellData where
  inverse := 47408502973074448615598744
  bounds := fun _ => ⟨0, -1⟩

def cellA6B40 : CellData where
  inverse := 7323366117156500351935911244
  bounds := fun _ => ⟨0, -1⟩

def cellA6B41 : CellData where
  inverse := 25513260152615065110236692494
  bounds := fun _ => ⟨0, -1⟩

def cellA6B42 : CellData where
  inverse := 207412200507200712693244504994
  bounds := fun _ => ⟨0, -1⟩

def cellA6B43 : CellData where
  inverse := 207412200507200712693244504994
  bounds := fun _ => ⟨0, -1⟩

def cellA6B44 : CellData where
  inverse := 3618017332155681604874640989369
  bounds := fun _ => ⟨0, -1⟩

def cellA6B45 : CellData where
  inverse := 26355384876478887552750617551869
  bounds := fun _ => ⟨0, -1⟩

def cellA6B46 : CellData where
  inverse := 54777094306882894987595588254994
  bounds := fun _ => ⟨0, -1⟩

def cellA7B1 : CellData where
  inverse := 3
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 54275⟩
    else if d = (-7 : ℤ) then ⟨0, 54275⟩
    else if d = (-5 : ℤ) then ⟨0, 54275⟩
    else if d = (-2 : ℤ) then ⟨0, 54275⟩
    else if d = (0 : ℤ) then ⟨0, 54275⟩
    else if d = (3 : ℤ) then ⟨0, 54275⟩
    else if d = (5 : ℤ) then ⟨0, 54275⟩
    else if d = (8 : ℤ) then ⟨0, 54275⟩
    else if d = (10 : ℤ) then ⟨0, 54275⟩
    else ⟨0, 54276⟩

def cellA7B2 : CellData where
  inverse := 23
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 54275⟩
    else if d = (-9 : ℤ) then ⟨0, 54275⟩
    else if d = (0 : ℤ) then ⟨0, 54275⟩
    else if d = (1 : ℤ) then ⟨0, 54275⟩
    else if d = (2 : ℤ) then ⟨0, 54275⟩
    else if d = (3 : ℤ) then ⟨0, 54275⟩
    else if d = (4 : ℤ) then ⟨0, 54275⟩
    else ⟨0, 54276⟩

def cellA7B3 : CellData where
  inverse := 123
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 54276⟩
    else if d = (-9 : ℤ) then ⟨0, 54276⟩
    else if d = (-8 : ℤ) then ⟨0, 54276⟩
    else if d = (-7 : ℤ) then ⟨0, 54276⟩
    else if d = (-6 : ℤ) then ⟨0, 54276⟩
    else if d = (-5 : ℤ) then ⟨0, 54276⟩
    else if d = (-4 : ℤ) then ⟨0, 54276⟩
    else if d = (-3 : ℤ) then ⟨0, 54276⟩
    else if d = (-2 : ℤ) then ⟨0, 54276⟩
    else if d = (-1 : ℤ) then ⟨0, 54276⟩
    else ⟨0, 54275⟩

def cellA7B4 : CellData where
  inverse := 623
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 54276⟩
    else if d = (-9 : ℤ) then ⟨0, 54276⟩
    else if d = (-8 : ℤ) then ⟨0, 54276⟩
    else if d = (-7 : ℤ) then ⟨0, 54276⟩
    else if d = (-6 : ℤ) then ⟨0, 54276⟩
    else if d = (-5 : ℤ) then ⟨0, 54276⟩
    else if d = (-4 : ℤ) then ⟨0, 54276⟩
    else if d = (-3 : ℤ) then ⟨0, 54276⟩
    else if d = (-2 : ℤ) then ⟨0, 54276⟩
    else if d = (-1 : ℤ) then ⟨0, 54276⟩
    else ⟨0, 54275⟩

def cellA7B5 : CellData where
  inverse := 623
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 37983⟩
    else if d = (5 : ℤ) then ⟨0, 37983⟩
    else if d = (10 : ℤ) then ⟨0, 37983⟩
    else ⟨0, 37984⟩

def cellA7B6 : CellData where
  inverse := 6873
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 7595⟩
    else ⟨0, 7596⟩

def cellA7B7 : CellData where
  inverse := 69373
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 1519⟩
    else if d = (-9 : ℤ) then ⟨0, 1519⟩
    else if d = (-3 : ℤ) then ⟨0, 1519⟩
    else if d = (-2 : ℤ) then ⟨0, 1519⟩
    else if d = (-1 : ℤ) then ⟨0, 1519⟩
    else if d = (6 : ℤ) then ⟨0, 1519⟩
    else if d = (7 : ℤ) then ⟨0, 1519⟩
    else if d = (8 : ℤ) then ⟨0, 1519⟩
    else ⟨0, 1518⟩

def cellA7B8 : CellData where
  inverse := 381873
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (1 : ℤ) then ⟨0, 302⟩
    else if d = (2 : ℤ) then ⟨0, 302⟩
    else if d = (3 : ℤ) then ⟨0, 302⟩
    else if d = (4 : ℤ) then ⟨0, 302⟩
    else if d = (5 : ℤ) then ⟨0, 302⟩
    else ⟨0, 303⟩

def cellA7B9 : CellData where
  inverse := 772498
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 59⟩
    else if d = (-3 : ℤ) then ⟨0, 59⟩
    else if d = (0 : ℤ) then ⟨0, 59⟩
    else if d = (2 : ℤ) then ⟨0, 59⟩
    else if d = (5 : ℤ) then ⟨0, 59⟩
    else if d = (10 : ℤ) then ⟨0, 59⟩
    else ⟨0, 60⟩

def cellA7B10 : CellData where
  inverse := 772498
  bounds := fun d =>
    if d = (1 : ℤ) then ⟨0, 12⟩
    else ⟨0, 11⟩

def cellA7B11 : CellData where
  inverse := 10538123
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 2⟩
    else if d = (-8 : ℤ) then ⟨0, 2⟩
    else if d = (-4 : ℤ) then ⟨0, 2⟩
    else if d = (-3 : ℤ) then ⟨0, 2⟩
    else if d = (1 : ℤ) then ⟨0, 2⟩
    else if d = (5 : ℤ) then ⟨0, 2⟩
    else if d = (6 : ℤ) then ⟨0, 2⟩
    else if d = (10 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA7B12 : CellData where
  inverse := 205850623
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else if d = (5 : ℤ) then ⟨0, 0⟩
    else if d = (6 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA7B13 : CellData where
  inverse := 938272498
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (4 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA7B14 : CellData where
  inverse := 3379678748
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA7B15 : CellData where
  inverse := 15586709998
  bounds := fun _ => ⟨0, -1⟩

def cellA7B16 : CellData where
  inverse := 137657022498
  bounds := fun _ => ⟨0, -1⟩

def cellA7B17 : CellData where
  inverse := 290244913123
  bounds := fun _ => ⟨0, -1⟩

def cellA7B18 : CellData where
  inverse := 3342002725623
  bounds := fun _ => ⟨0, -1⟩

def cellA7B19 : CellData where
  inverse := 10971397256873
  bounds := fun _ => ⟨0, -1⟩

def cellA7B20 : CellData where
  inverse := 30044883584998
  bounds := fun _ => ⟨0, -1⟩

def cellA7B21 : CellData where
  inverse := 316147178506873
  bounds := fun _ => ⟨0, -1⟩

def cellA7B22 : CellData where
  inverse := 316147178506873
  bounds := fun _ => ⟨0, -1⟩

def cellA7B23 : CellData where
  inverse := 316147178506873
  bounds := fun _ => ⟨0, -1⟩

def cellA7B24 : CellData where
  inverse := 12237076133584998
  bounds := fun _ => ⟨0, -1⟩

def cellA7B25 : CellData where
  inverse := 191051010459756873
  bounds := fun _ => ⟨0, -1⟩

def cellA7B26 : CellData where
  inverse := 1383143905967569373
  bounds := fun _ => ⟨0, -1⟩

def cellA7B27 : CellData where
  inverse := 1383143905967569373
  bounds := fun _ => ⟨0, -1⟩

def cellA7B28 : CellData where
  inverse := 16284305099815225623
  bounds := fun _ => ⟨0, -1⟩

def cellA7B29 : CellData where
  inverse := 90790111069053506873
  bounds := fun _ => ⟨0, -1⟩

def cellA7B30 : CellData where
  inverse := 463319140915244913123
  bounds := fun _ => ⟨0, -1⟩

def cellA7B31 : CellData where
  inverse := 1394641715530723428748
  bounds := fun _ => ⟨0, -1⟩

def cellA7B32 : CellData where
  inverse := 1394641715530723428748
  bounds := fun _ => ⟨0, -1⟩

def cellA7B33 : CellData where
  inverse := 47960770446304649209998
  bounds := fun _ => ⟨0, -1⟩

def cellA7B34 : CellData where
  inverse := 280791414100174278116248
  bounds := fun _ => ⟨0, -1⟩

def cellA7B35 : CellData where
  inverse := 280791414100174278116248
  bounds := fun _ => ⟨0, -1⟩

def cellA7B36 : CellData where
  inverse := 6101557505446915000772498
  bounds := fun _ => ⟨0, -1⟩

def cellA7B37 : CellData where
  inverse := 64309218418914322227334998
  bounds := fun _ => ⟨0, -1⟩

def cellA7B38 : CellData where
  inverse := 137068794560748581260538123
  bounds := fun _ => ⟨0, -1⟩

def cellA7B39 : CellData where
  inverse := 1228462436688262466758584998
  bounds := fun _ => ⟨0, -1⟩

def cellA7B40 : CellData where
  inverse := 8504420050871688370078897498
  bounds := fun _ => ⟨0, -1⟩

def cellA7B41 : CellData where
  inverse := 8504420050871688370078897498
  bounds := fun _ => ⟨0, -1⟩

def cellA7B42 : CellData where
  inverse := 144928625316810924057334756873
  bounds := fun _ => ⟨0, -1⟩

def cellA7B43 : CellData where
  inverse := 827049651646507102493614053748
  bounds := fun _ => ⟨0, -1⟩

def cellA7B44 : CellData where
  inverse := 3100786406078827697281211709998
  bounds := fun _ => ⟨0, -1⟩

def cellA7B45 : CellData where
  inverse := 8785128292159629184250205850623
  bounds := fun _ => ⟨0, -1⟩

def cellA7B46 : CellData where
  inverse := 65628547152967644053940147256873
  bounds := fun _ => ⟨0, -1⟩

def cellA8B1 : CellData where
  inverse := 1
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 18092⟩
    else if d = (-4 : ℤ) then ⟨0, 18092⟩
    else if d = (1 : ℤ) then ⟨0, 18092⟩
    else if d = (6 : ℤ) then ⟨0, 18092⟩
    else ⟨0, 18091⟩

def cellA8B2 : CellData where
  inverse := 16
  bounds := fun d =>
    if d = (-6 : ℤ) then ⟨0, 18092⟩
    else if d = (-3 : ℤ) then ⟨0, 18092⟩
    else if d = (5 : ℤ) then ⟨0, 18092⟩
    else if d = (8 : ℤ) then ⟨0, 18092⟩
    else ⟨0, 18091⟩

def cellA8B3 : CellData where
  inverse := 41
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 18092⟩
    else if d = (-6 : ℤ) then ⟨0, 18092⟩
    else if d = (-3 : ℤ) then ⟨0, 18092⟩
    else ⟨0, 18091⟩

def cellA8B4 : CellData where
  inverse := 416
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 18092⟩
    else if d = (-6 : ℤ) then ⟨0, 18092⟩
    else if d = (-3 : ℤ) then ⟨0, 18092⟩
    else ⟨0, 18091⟩

def cellA8B5 : CellData where
  inverse := 2291
  bounds := fun d =>
    if d = (-8 : ℤ) then ⟨0, 18092⟩
    else if d = (-4 : ℤ) then ⟨0, 18092⟩
    else if d = (3 : ℤ) then ⟨0, 18092⟩
    else if d = (7 : ℤ) then ⟨0, 18092⟩
    else ⟨0, 18091⟩

def cellA8B6 : CellData where
  inverse := 2291
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 7595⟩
    else ⟨0, 7596⟩

def cellA8B7 : CellData where
  inverse := 49166
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 1519⟩
    else if d = (-6 : ℤ) then ⟨0, 1519⟩
    else if d = (-3 : ℤ) then ⟨0, 1519⟩
    else if d = (-1 : ℤ) then ⟨0, 1519⟩
    else if d = (2 : ℤ) then ⟨0, 1519⟩
    else if d = (5 : ℤ) then ⟨0, 1519⟩
    else if d = (8 : ℤ) then ⟨0, 1519⟩
    else if d = (10 : ℤ) then ⟨0, 1519⟩
    else ⟨0, 1518⟩

def cellA8B8 : CellData where
  inverse := 127291
  bounds := fun d =>
    if d = (0 : ℤ) then ⟨0, 302⟩
    else if d = (3 : ℤ) then ⟨0, 302⟩
    else if d = (6 : ℤ) then ⟨0, 302⟩
    else if d = (9 : ℤ) then ⟨0, 302⟩
    else ⟨0, 303⟩

def cellA8B9 : CellData where
  inverse := 908541
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 59⟩
    else if d = (0 : ℤ) then ⟨0, 59⟩
    else if d = (2 : ℤ) then ⟨0, 59⟩
    else if d = (4 : ℤ) then ⟨0, 59⟩
    else if d = (6 : ℤ) then ⟨0, 59⟩
    else ⟨0, 60⟩

def cellA8B10 : CellData where
  inverse := 6767916
  bounds := fun d =>
    if d = (-10 : ℤ) then ⟨0, 12⟩
    else if d = (-7 : ℤ) then ⟨0, 12⟩
    else if d = (3 : ℤ) then ⟨0, 12⟩
    else ⟨0, 11⟩

def cellA8B11 : CellData where
  inverse := 36064791
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 2⟩
    else if d = (-8 : ℤ) then ⟨0, 2⟩
    else if d = (-5 : ℤ) then ⟨0, 2⟩
    else if d = (-4 : ℤ) then ⟨0, 2⟩
    else if d = (-1 : ℤ) then ⟨0, 2⟩
    else if d = (3 : ℤ) then ⟨0, 2⟩
    else if d = (7 : ℤ) then ⟨0, 2⟩
    else if d = (10 : ℤ) then ⟨0, 2⟩
    else ⟨0, 1⟩

def cellA8B12 : CellData where
  inverse := 231377291
  bounds := fun d =>
    if d = (-9 : ℤ) then ⟨0, 0⟩
    else if d = (-8 : ℤ) then ⟨0, 0⟩
    else if d = (-7 : ℤ) then ⟨0, 0⟩
    else if d = (-6 : ℤ) then ⟨0, 0⟩
    else if d = (-5 : ℤ) then ⟨0, 0⟩
    else if d = (-4 : ℤ) then ⟨0, 0⟩
    else if d = (-3 : ℤ) then ⟨0, 0⟩
    else if d = (-2 : ℤ) then ⟨0, 0⟩
    else if d = (-1 : ℤ) then ⟨0, 0⟩
    else if d = (10 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B13 : CellData where
  inverse := 719658541
  bounds := fun d =>
    if d = (-5 : ℤ) then ⟨0, 0⟩
    else ⟨0, -1⟩

def cellA8B14 : CellData where
  inverse := 3161064791
  bounds := fun _ => ⟨0, -1⟩

def cellA8B15 : CellData where
  inverse := 15368096041
  bounds := fun _ => ⟨0, -1⟩

def cellA8B16 : CellData where
  inverse := 45885674166
  bounds := fun _ => ⟨0, -1⟩

def cellA8B17 : CellData where
  inverse := 351061455416
  bounds := fun _ => ⟨0, -1⟩

def cellA8B18 : CellData where
  inverse := 1114000908541
  bounds := fun _ => ⟨0, -1⟩

def cellA8B19 : CellData where
  inverse := 16372789971041
  bounds := fun _ => ⟨0, -1⟩

def cellA8B20 : CellData where
  inverse := 73593248955416
  bounds := fun _ => ⟨0, -1⟩

def cellA8B21 : CellData where
  inverse := 264328112236666
  bounds := fun _ => ⟨0, -1⟩

def cellA8B22 : CellData where
  inverse := 1694839586846041
  bounds := fun _ => ⟨0, -1⟩

def cellA8B23 : CellData where
  inverse := 4079025377861666
  bounds := fun _ => ⟨0, -1⟩

def cellA8B24 : CellData where
  inverse := 4079025377861666
  bounds := fun _ => ⟨0, -1⟩

def cellA8B25 : CellData where
  inverse := 63683670153252291
  bounds := fun _ => ⟨0, -1⟩

def cellA8B26 : CellData where
  inverse := 957753341784111666
  bounds := fun _ => ⟨0, -1⟩

def cellA8B27 : CellData where
  inverse := 5428101699938408541
  bounds := fun _ => ⟨0, -1⟩

def cellA8B28 : CellData where
  inverse := 5428101699938408541
  bounds := fun _ => ⟨0, -1⟩

def cellA8B29 : CellData where
  inverse := 154439713638414971041
  bounds := fun _ => ⟨0, -1⟩

def cellA8B30 : CellData where
  inverse := 154439713638414971041
  bounds := fun _ => ⟨0, -1⟩

def cellA8B31 : CellData where
  inverse := 2017084862869372002291
  bounds := fun _ => ⟨0, -1⟩

def cellA8B32 : CellData where
  inverse := 15986923482101549736666
  bounds := fun _ => ⟨0, -1⟩

def cellA8B33 : CellData where
  inverse := 15986923482101549736666
  bounds := fun _ => ⟨0, -1⟩

def cellA8B34 : CellData where
  inverse := 481648210789840807549166
  bounds := fun _ => ⟨0, -1⟩

def cellA8B35 : CellData where
  inverse := 1063724819924514879814791
  bounds := fun _ => ⟨0, -1⟩

def cellA8B36 : CellData where
  inverse := 6884490911271255602471041
  bounds := fun _ => ⟨0, -1⟩

def cellA8B37 : CellData where
  inverse := 21436406139638107409111666
  bounds := fun _ => ⟨0, -1⟩

def cellA8B38 : CellData where
  inverse := 166955558423306625475517916
  bounds := fun _ => ⟨0, -1⟩

def cellA8B39 : CellData where
  inverse := 1622147081259991806139580416
  bounds := fun _ => ⟨0, -1⟩

def cellA8B40 : CellData where
  inverse := 8898104695443417709459892916
  bounds := fun _ => ⟨0, -1⟩

def cellA8B41 : CellData where
  inverse := 17993051713172700088610283541
  bounds := fun _ => ⟨0, -1⟩

def cellA8B42 : CellData where
  inverse := 199891992067758347671618096041
  bounds := fun _ => ⟨0, -1⟩

def cellA8B43 : CellData where
  inverse := 654639342954222466629137627291
  bounds := fun _ => ⟨0, -1⟩

def cellA8B44 : CellData where
  inverse := 2928376097386543061416735283541
  bounds := fun _ => ⟨0, -1⟩

def cellA8B45 : CellData where
  inverse := 2928376097386543061416735283541
  bounds := fun _ => ⟨0, -1⟩

def cellA8B46 : CellData where
  inverse := 116615213819002572800796618096041
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

end Math.B699.CRTStage0Pair35.Chunk000
