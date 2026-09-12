/- Candidate-only chunk data.
   data source SHA-256: 475a5ed2786cb6496054cfad62c6310db49a2558e889336d490b27a71412860a
   future integrated module: research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old37Chunk00
   This file uses accepted CubicCover Coverage and defines no checker. -/
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Coverage

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace Math.B699.CubicDataConsumersV4.Old37Chunk00

def old37Chunk00Rows : List Math.B699.CubicBlockCover.BlockDatum :=
  [
    { u := 32, L := 1, b0 := 12, v := 0x905c62a6 },
    { u := 34, L := 1, b0 := 12, v := 0x17eb5805a },
    { u := 36, L := 1, b0 := 13, v := 0xcb2e04335 },
    { u := 38, L := 2, b0 := 14, v := 0x17f83e55b4 },
    { u := 41, L := 2, b0 := 15, v := 0x18e96ff4d28 },
    { u := 44, L := 1, b0 := 16, v := 0xb285b2e24c },
    { u := 46, L := 2, b0 := 17, v := 0x36f92f80aa5 },
    { u := 49, L := 2, b0 := 18, v := 0x2c937ac813c06 },
    { u := 52, L := 2, b0 := 19, v := 0x83ed541de39a4 },
    { u := 55, L := 3, b0 := 20, v := 0xe749d07c52868e },
    { u := 59, L := 4, b0 := 22, v := 0x212d3a8d97334048 },
    { u := 64, L := 5, b0 := 24, v := 0x4b137c1954b2abc59 },
    { u := 70, L := 5, b0 := 26, v := 0x18d6563313d42c855e7 },
    { u := 76, L := 4, b0 := 28, v := 0x204f5504685ec7afd5c7 },
    { u := 81, L := 6, b0 := 30, v := 0x11162e40e315671b42ebbd },
    { u := 88, L := 7, b0 := 33, v := 0xb00160b63e6297831c1953e },
  ]

theorem old37Chunk00Coverage :
    Math.B699.CubicBlockCover.coverageCheck
      3 7 10 32 96 old37Chunk00Rows = true := by
  decide +kernel
#print axioms Math.B699.CubicDataConsumersV4.Old37Chunk00.old37Chunk00Coverage

end Math.B699.CubicDataConsumersV4.Old37Chunk00
