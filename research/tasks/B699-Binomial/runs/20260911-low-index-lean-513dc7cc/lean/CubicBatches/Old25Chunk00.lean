/- Candidate-only chunk data.
   data source SHA-256: b1ba92ee2f221784055d55d4697e727a86500bd8f9e03e98df46a1f3897e52ce
   future integrated module: research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old25Chunk00
   This file uses accepted CubicCover Coverage and defines no checker. -/
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Coverage

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace Math.B699.CubicDataConsumersV4.Old25Chunk00

def old25Chunk00Rows : List Math.B699.CubicBlockCover.BlockDatum :=
  [
    { u := 44, L := 1, b0 := 12, v := 0xdbfeadf },
    { u := 46, L := 1, b0 := 13, v := 0x15a0979d },
    { u := 48, L := 1, b0 := 13, v := 0x3bf9fc97 },
    { u := 50, L := 1, b0 := 14, v := 0x14438ea5f },
    { u := 52, L := 1, b0 := 14, v := 0xac014b12 },
    { u := 54, L := 0, b0 := 15, v := 0xe0e673b9 },
    { u := 55, L := 2, b0 := 15, v := 0x3fdf1dea3 },
    { u := 58, L := 2, b0 := 16, v := 0x1dcf130b3a },
    { u := 61, L := 3, b0 := 17, v := 0x88f3ef847b },
    { u := 65, L := 2, b0 := 18, v := 0x228919f4783 },
    { u := 68, L := 3, b0 := 19, v := 0xcd8b7c6b8a3 },
    { u := 72, L := 3, b0 := 20, v := 0x35edc6e42855 },
    { u := 76, L := 4, b0 := 21, v := 0xec79593fe229 },
    { u := 81, L := 3, b0 := 23, v := 0x2a1da61e735da8 },
    { u := 85, L := 4, b0 := 24, v := 0x96dcedd9104298 },
    { u := 90, L := 4, b0 := 25, v := 0x10d698a3148ab1e },
  ]

theorem old25Chunk00Coverage :
    Math.B699.CubicBlockCover.coverageCheck
      2 5 10 44 95 old25Chunk00Rows = true := by
  decide +kernel
#print axioms Math.B699.CubicDataConsumersV4.Old25Chunk00.old25Chunk00Coverage

end Math.B699.CubicDataConsumersV4.Old25Chunk00
