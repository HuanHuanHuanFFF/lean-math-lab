import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair23.Chunk000Data

/-! UNCOMPILED direct-cell granularity candidate; no data values changed. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTStage0Pair23.Chunk000
open Math.B699.CRTGrid
open B699LowIndex.I11CrtStageMetadata

theorem cellA1B68_high_probe :
    cellCheck (2 ^ 1) (3 ^ 68)
      (heightCap Stage00.H Stage00.M (2 ^ 1))
      (heightCap Stage00.H Stage00.M (3 ^ 68)) Stage00.upper cellA1B68 = true := by
  decide +kernel

theorem cellA8B68_high_probe :
    cellCheck (2 ^ 8) (3 ^ 68)
      (heightCap Stage00.H Stage00.M (2 ^ 8))
      (heightCap Stage00.H Stage00.M (3 ^ 68)) Stage00.upper cellA8B68 = true := by
  decide +kernel

end Math.B699.CRTStage0Pair23.Chunk000

#print axioms Math.B699.CRTStage0Pair23.Chunk000.cellA1B68_high_probe
#print axioms Math.B699.CRTStage0Pair23.Chunk000.cellA8B68_high_probe
