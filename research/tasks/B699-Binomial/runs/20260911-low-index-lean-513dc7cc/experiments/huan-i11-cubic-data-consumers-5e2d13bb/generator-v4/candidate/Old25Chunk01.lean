/- Candidate-only chunk data.
   data source SHA-256: b1ba92ee2f221784055d55d4697e727a86500bd8f9e03e98df46a1f3897e52ce
   future integrated module: research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old25Chunk01
   This file uses accepted CubicCover Coverage and defines no checker. -/
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Coverage

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace Math.B699.CubicDataConsumersV4.Old25Chunk01

def old25Chunk01Rows : List Math.B699.CubicBlockCover.BlockDatum :=
  [
    { u := 95, L := 4, b0 := 27, v := 0x561c82ba11b79d9b },
    { u := 100, L := 7, b0 := 28, v := 0xee91135f63024e4b },
    { u := 108, L := 9, b0 := 31, v := 0xef19784ed0989e2d29 },
    { u := 118, L := 8, b0 := 33, v := 0x5d7dd4dc7df80ffd38c },
    { u := 127, L := 10, b0 := 36, v := 0x241fba5284686c4132422 },
    { u := 138, L := 9, b0 := 39, v := 0x46514189c5b92c7f969f8ec },
    { u := 148, L := 12, b0 := 42, v := 0x180d1671c99533699bc11fe37 },
    { u := 161, L := 14, b0 := 46, v := 0x10c7eb363ea2752666255ace0ff },
    { u := 176, L := 15, b0 := 50, v := 0x604373c3c4967b15a18de33ac0680 },
    { u := 192, L := 18, b0 := 55, v := 0x26e4f360bf260ef562cc272d530d9fb1 },
    { u := 211, L := 17, b0 := 60, v := 0x9e43b309192331afd02266e804abd34b7ab },
    { u := 229, L := 21, b0 := 65, v := 0x1c860d65031798b295ba145b63250442cdf694 },
    { u := 251, L := 25, b0 := 72, v := 0x5db48f8d157d00c2e41f851eca6d9f5f21f48e249e },
    { u := 277, L := 27, b0 := 79, v := 0x19f01798a1cfd12a7193d8d3573b478fa76d0bc12a6bc1 },
    { u := 305, L := 30, b0 := 87, v := 0x27b10db1bc9acce91004040153797653628f3c86fe3656ce9f4 },
    { u := 336, L := 33, b0 := 96, v := 0x262ec217973d6c2c26dfda62fde44c13454ca5173e54b8c834374c89 },
  ]

theorem old25Chunk01Coverage :
    Math.B699.CubicBlockCover.coverageCheck
      2 5 10 95 370 old25Chunk01Rows = true := by
  decide

#print axioms Math.B699.CubicDataConsumersV4.Old25Chunk01.old25Chunk01Coverage

end Math.B699.CubicDataConsumersV4.Old25Chunk01
