/- Candidate-only chunk data.
   source rows SHA-256: 86cc733cbafb7a228cf35ef0e0aa1ac6a9ca666680e4ec2becbfc51306f79783
   This file consumes CubicCover Coverage and defines no checker. -/
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Coverage

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace Math.B699.CubicDataConsumersV3.Old23Head0016

def old23Head0016Rows : List Math.B699.CubicBlockCover.BlockDatum :=
  [
    { u := 45, L := 1, b0 := 18, v := 0xa65ff23 },
    { u := 47, L := 1, b0 := 19, v := 0x368e86ad },
    { u := 49, L := 1, b0 := 20, v := 0x643c027d },
    { u := 51, L := 1, b0 := 21, v := 0xb4ee154c },
    { u := 53, L := 3, b0 := 22, v := 0x50c342ab9 },
    { u := 57, L := 0, b0 := 23, v := 0x15c73adb75 },
    { u := 58, L := 0, b0 := 24, v := 0x2bc4abca2b },
    { u := 59, L := 0, b0 := 24, v := 0x36c3644186 },
    { u := 60, L := 2, b0 := 25, v := 0x1b61b220c3 },
    { u := 63, L := 3, b0 := 26, v := 0x1755017d40a },
    { u := 67, L := 4, b0 := 28, v := 0x3451724ed21 },
    { u := 72, L := 3, b0 := 30, v := 0x1ea956023239 },
    { u := 76, L := 4, b0 := 31, v := 0xb1783cedf451 },
    { u := 81, L := 6, b0 := 34, v := 0x104628f82219f1 },
    { u := 88, L := 7, b0 := 37, v := 0x63a5b9ee357916 },
    { u := 96, L := 6, b0 := 40, v := 0x188ed3d16352c755 },
  ]

theorem old23Head0016Coverage :
    Math.B699.CubicBlockCover.coverageCheck
      2 3 10 45 103 old23Head0016Rows = true := by
  decide

#print axioms Math.B699.CubicDataConsumersV3.Old23Head0016.old23Head0016Coverage

end Math.B699.CubicDataConsumersV3.Old23Head0016
