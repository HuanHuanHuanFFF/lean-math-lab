/- Candidate-only chunk data.
   data source SHA-256: 1779ddfafbaab251415af59e02cb812f87ffe06eaa617858a664a2925c95f32c
   future integrated module: research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old35Chunk00
   This file uses accepted CubicCover Coverage and defines no checker. -/
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Coverage

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace Math.B699.CubicDataConsumersV4.Old35Chunk00

def old35Chunk00Rows : List Math.B699.CubicBlockCover.BlockDatum :=
  [
    { u := 32, L := 0, b0 := 14, v := 0xc9ab3dc6 },
    { u := 33, L := 2, b0 := 15, v := 0x579260643 },
    { u := 36, L := 0, b0 := 16, v := 0xf33fbae78 },
    { u := 37, L := 1, b0 := 16, v := 0x10e8fa0a13 },
    { u := 39, L := 1, b0 := 17, v := 0x8817afa74d },
    { u := 41, L := 2, b0 := 18, v := 0x286b705f1c5 },
    { u := 44, L := 3, b0 := 20, v := 0x7cdaea665f3 },
    { u := 48, L := 2, b0 := 21, v := 0x15f530572ad4b },
    { u := 51, L := 3, b0 := 23, v := 0x1b5817b9c4046e },
    { u := 55, L := 4, b0 := 25, v := 0x307374348921f70 },
    { u := 60, L := 4, b0 := 27, v := 0x11cc6d9132b021e3 },
    { u := 65, L := 4, b0 := 29, v := 0xf45012e0c5efceb3 },
    { u := 70, L := 4, b0 := 31, v := 0x711c94f67c70317acf },
    { u := 75, L := 5, b0 := 34, v := 0x7802ccad4a9de53588af },
    { u := 81, L := 5, b0 := 36, v := 0x6de42e2537dcdc39925e5 },
    { u := 87, L := 7, b0 := 39, v := 0x55d63ec98f303d03ab2a495 },
  ]

theorem old35Chunk00Coverage :
    Math.B699.CubicBlockCover.coverageCheck
      3 5 10 32 95 old35Chunk00Rows = true := by
  decide

#print axioms Math.B699.CubicDataConsumersV4.Old35Chunk00.old35Chunk00Coverage

end Math.B699.CubicDataConsumersV4.Old35Chunk00
