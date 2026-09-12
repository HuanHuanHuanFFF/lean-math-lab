/- Candidate-only chunk data.
   source rows SHA-256: 86cc733cbafb7a228cf35ef0e0aa1ac6a9ca666680e4ec2becbfc51306f79783
   This file consumes the frozen Coverage API and defines no checker. -/
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-cubic-block-cover-5e2d13bb».Coverage

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 800000

namespace Math.B699.CubicDataConsumersV2.Old23Head0004

def old23Head0004Rows : List Math.B699.CubicBlockCover.BlockDatum :=
  [
    { u := 45, L := 1, b0 := 18, v := 0xa65ff23 },
    { u := 47, L := 1, b0 := 19, v := 0x368e86ad },
    { u := 49, L := 1, b0 := 20, v := 0x643c027d },
    { u := 51, L := 1, b0 := 21, v := 0xb4ee154c },
  ]

theorem old23Head0004Coverage :
    Math.B699.CubicBlockCover.coverageCheck
      2 3 10 45 53 old23Head0004Rows = true := by
  decide

#print axioms Math.B699.CubicDataConsumersV2.Old23Head0004.old23Head0004Coverage

end Math.B699.CubicDataConsumersV2.Old23Head0004
