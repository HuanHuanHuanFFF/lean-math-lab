/- Candidate-only chunk data.
   data source SHA-256: d5c1ba9dbe6309facdf45af8ad56fe1ad6c074144eaac2e71fe10388a21b3d79
   future integrated module: research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Old57Chunk00
   This file uses accepted CubicCover Coverage and defines no checker. -/
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicCover.Coverage

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace Math.B699.CubicDataConsumersV4.Old57Chunk00

def old57Chunk00Rows : List Math.B699.CubicBlockCover.BlockDatum :=
  [
    { u := 32, L := 1, b0 := 17, v := 0x59befac87bb7 },
    { u := 34, L := 0, b0 := 18, v := 0x396ffca944f },
    { u := 35, L := 2, b0 := 19, v := 0xde332ce7af81f },
    { u := 38, L := 0, b0 := 20, v := 0x5e635d38dd62d4 },
    { u := 39, L := 2, b0 := 21, v := 0x19fbf92da7666ff },
    { u := 42, L := 3, b0 := 23, v := 0x45c681fd43e9db8a },
    { u := 46, L := 2, b0 := 25, v := 0x4862f5bb41f6096dd5 },
    { u := 49, L := 4, b0 := 27, v := 0x2adb2ee639af7642aa7 },
    { u := 54, L := 4, b0 := 29, v := 0x277f8781786cc2a935912 },
    { u := 59, L := 5, b0 := 32, v := 0x4a6e04f1f752ed44e44ebf },
    { u := 65, L := 5, b0 := 35, v := 0x1669a3b20272aff407913cec9 },
    { u := 71, L := 5, b0 := 39, v := 0x79001df2427df1972c9643a6f73 },
    { u := 77, L := 6, b0 := 42, v := 0x35cb97a6c9607497e78f92ad3386b2 },
    { u := 84, L := 6, b0 := 46, v := 0x13943fcd87980291c38417f10e3392c4f },
    { u := 91, L := 8, b0 := 50, v := 0x1344feb51ec2bbd9af0ec512f2d4a8d8d0e6 },
    { u := 100, L := 9, b0 := 55, v := 0x28a22338dd42040e885f79ac8ceca8fbc61c855 },
  ]

theorem old57Chunk00Coverage :
    Math.B699.CubicBlockCover.coverageCheck
      5 7 10 32 110 old57Chunk00Rows = true := by
  decide

#print axioms Math.B699.CubicDataConsumersV4.Old57Chunk00.old57Chunk00Coverage

end Math.B699.CubicDataConsumersV4.Old57Chunk00
