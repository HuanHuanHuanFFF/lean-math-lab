/- Candidate-only chunk data.
   data source SHA-256: bafe9924d2f1c5cb8cbe4e9ca677b3b1fdda305e06e7c39331cf5d955affbd4c
   future integrated module: research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old27Chunk00
   This file uses accepted CubicCover Coverage and defines no checker. -/
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Coverage

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace Math.B699.CubicDataConsumersV4.Old27Chunk00

def old27Chunk00Rows : List Math.B699.CubicBlockCover.BlockDatum :=
  [
    { u := 43, L := 0, b0 := 10, v := 0xdfc78fd },
    { u := 44, L := 1, b0 := 10, v := 0xf6959f7 },
    { u := 46, L := 0, b0 := 10, v := 0x80fe53a },
    { u := 47, L := 1, b0 := 11, v := 0x407f29d },
    { u := 49, L := 1, b0 := 11, v := 0x1e78e3cd },
    { u := 51, L := 2, b0 := 12, v := 0x186a7f5de },
    { u := 54, L := 1, b0 := 12, v := 0xff1550c4 },
    { u := 56, L := 2, b0 := 13, v := 0x6b1c7e473 },
    { u := 59, L := 4, b0 := 14, v := 0x90a6122f4f },
    { u := 64, L := 4, b0 := 15, v := 0x31f02b48f82 },
    { u := 69, L := 3, b0 := 16, v := 0x13cc415b81b7 },
    { u := 73, L := 4, b0 := 17, v := 0x8b23c4fec4b8 },
    { u := 78, L := 4, b0 := 18, v := 0x5987cd36b6035 },
    { u := 83, L := 5, b0 := 19, v := 0x10a07451506331 },
    { u := 89, L := 7, b0 := 21, v := 0xa7f156ae66b283 },
    { u := 97, L := 8, b0 := 23, v := 0x1ceb3990bc630224 },
  ]

theorem old27Chunk00Coverage :
    Math.B699.CubicBlockCover.coverageCheck
      2 7 10 43 106 old27Chunk00Rows = true := by
  decide +kernel
#print axioms Math.B699.CubicDataConsumersV4.Old27Chunk00.old27Chunk00Coverage

end Math.B699.CubicDataConsumersV4.Old27Chunk00
