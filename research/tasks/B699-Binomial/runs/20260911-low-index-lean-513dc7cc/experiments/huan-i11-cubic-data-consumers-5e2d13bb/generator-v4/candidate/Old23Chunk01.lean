/- Candidate-only chunk data.
   data source SHA-256: 86cc733cbafb7a228cf35ef0e0aa1ac6a9ca666680e4ec2becbfc51306f79783
   future integrated module: research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old23Chunk01
   This file uses accepted CubicCover Coverage and defines no checker. -/
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Coverage

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace Math.B699.CubicDataConsumersV4.Old23Chunk01

def old23Chunk01Rows : List Math.B699.CubicBlockCover.BlockDatum :=
  [
    { u := 103, L := 8, b0 := 43, v := 0xd917b6dbafd5d7a26 },
    { u := 112, L := 9, b0 := 47, v := 0x4c6cbeaeb4b92104eae },
    { u := 122, L := 9, b0 := 51, v := 0x12c78e8ec15ba6292ce46 },
    { u := 132, L := 11, b0 := 55, v := 0x4e85c79e19c9c36d2e2ce5 },
    { u := 144, L := 12, b0 := 60, v := 0x19a52fbbfaa9aa28aa8dbc33 },
    { u := 157, L := 13, b0 := 66, v := 0x9352234de3791aa994de0d46e1 },
    { u := 171, L := 15, b0 := 71, v := 0x10e6ba9efa5f2a0968da003c2f1ce },
    { u := 187, L := 17, b0 := 78, v := 0x6cd508924616a976d1e271b6310b5db },
    { u := 205, L := 19, b0 := 86, v := 0x10adbd0405fb27c35adc2f85fc537d2395c },
    { u := 225, L := 18, b0 := 94, v := 0x119def0f4411a38601c094ee3d0c8f537e5751 },
    { u := 244, L := 22, b0 := 102, v := 0x18d4983b1797573f76c8b6bce3d47da1d703f3599 },
    { u := 267, L := 26, b0 := 112, v := 0x1872042a52c640f1a889d7226c9081fa12aca7ae2d067 },
    { u := 294, L := 29, b0 := 123, v := 0x12c0b8631814014af511e4a5a8ed4065a1c693adc303ecc6f },
    { u := 324, L := 32, b0 := 136, v := 0x4728702bd7550f86f4581963556305bb1306ad67415c9876908d69 },
    { u := 357, L := 36, b0 := 150, v := 0x24a1ebfbf0ad12e3fc3de58077499d1ba3cfec76fb41120c71dfbaf0c25f },
    { u := 394, L := 40, b0 := 165, v := 0xa7a4dc4d58a5f3b4a55fbe8f5527c58675287ef4dfe5abbac98c8cf173d7812cb },
  ]

theorem old23Chunk01Coverage :
    Math.B699.CubicBlockCover.coverageCheck
      2 3 10 103 435 old23Chunk01Rows = true := by
  decide

#print axioms Math.B699.CubicDataConsumersV4.Old23Chunk01.old23Chunk01Coverage

end Math.B699.CubicDataConsumersV4.Old23Chunk01
