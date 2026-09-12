/- Candidate-only chunk data.
   data source SHA-256: bafe9924d2f1c5cb8cbe4e9ca677b3b1fdda305e06e7c39331cf5d955affbd4c
   future integrated module: research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old27Chunk01
   This file uses accepted CubicCover Coverage and defines no checker. -/
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Coverage

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace Math.B699.CubicDataConsumersV4.Old27Chunk01

def old27Chunk01Rows : List Math.B699.CubicBlockCover.BlockDatum :=
  [
    { u := 106, L := 4, b0 := 25, v := 0x33f0a466c1dfa6f815 },
    { u := 111, L := 9, b0 := 26, v := 0x8c34dd37e7a24bd204 },
    { u := 121, L := 8, b0 := 28, v := 0x5f495de708d9ef4131bd },
    { u := 130, L := 10, b0 := 30, v := 0xcd21e8f9b915b44fdbee9 },
    { u := 141, L := 11, b0 := 33, v := 0x28d7cd43a4d8b3460a444ec },
    { u := 153, L := 13, b0 := 36, v := 0x53d9684d7b4e796c5c035d596 },
    { u := 167, L := 13, b0 := 39, v := 0x15f84717eb4a5dd5c4f120b1f9bd },
    { u := 181, L := 15, b0 := 42, v := 0x22bf47a283e6bcc6e7f1dd754ac770 },
    { u := 197, L := 17, b0 := 46, v := 0x547ad18e64764d7d8734be18959c75c9 },
    { u := 215, L := 19, b0 := 51, v := 0x7e2389fb183c947e4909c6b54db1fbd26e0b },
    { u := 235, L := 22, b0 := 55, v := 0x4ed5d0b511ae5b1d3e962227b57109e9f2fb738 },
    { u := 258, L := 25, b0 := 61, v := 0x2a2c0df83bdbdb568c5eb4949bf700ca687db850029 },
    { u := 284, L := 27, b0 := 67, v := 0xff90752ed748c7f0b37336ead56a7cee6e1876c8c96447 },
    { u := 312, L := 28, b0 := 74, v := 0x3d29d9b978f45d22ab2b8b004f1b3f6ac46bfb6d12ac63ae530c },
    { u := 341, L := 32, b0 := 80, v := 0xba0e784dff8365ae353e236ef23b4557fe280d1e8ef74e97c155d504 },
    { u := 374, L := 36, b0 := 88, v := 0x664eb92ed1bd6f8d975c15ec1d09ccf836258fabb090406a1ac72f45d9bf69 },
  ]

theorem old27Chunk01Coverage :
    Math.B699.CubicBlockCover.coverageCheck
      2 7 10 106 411 old27Chunk01Rows = true := by
  decide +kernel
#print axioms Math.B699.CubicDataConsumersV4.Old27Chunk01.old27Chunk01Coverage

end Math.B699.CubicDataConsumersV4.Old27Chunk01
