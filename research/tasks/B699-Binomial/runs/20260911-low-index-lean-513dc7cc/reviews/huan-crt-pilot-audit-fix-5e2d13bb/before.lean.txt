import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.PilotStage0_23_A1_B1to8
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.PilotStage0_37_A21to24_B11to14
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.PilotStage0_23_A105to108_B65to68
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtGrid.PilotStage4_57_Rectangle

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 512

namespace Math.B699.CRTGrid.PilotsAudit

theorem all_pilot_blocks :
    Math.B699.CRTGrid.PilotStage0_23_A1_B1to8.block_check ∧
    Math.B699.CRTGrid.PilotStage0_37_A21to24_B11to14.block_check ∧
    Math.B699.CRTGrid.PilotStage0_23_A105to108_B65to68.block_check ∧
    Math.B699.CRTGrid.PilotStage4_57_Rectangle.block_check := by
  exact ⟨
    Math.B699.CRTGrid.PilotStage0_23_A1_B1to8.block_check,
    Math.B699.CRTGrid.PilotStage0_37_A21to24_B11to14.block_check,
    Math.B699.CRTGrid.PilotStage0_23_A105to108_B65to68.block_check,
    Math.B699.CRTGrid.PilotStage4_57_Rectangle.block_check⟩

end Math.B699.CRTGrid.PilotsAudit

#print axioms Math.B699.CRTGrid.PilotsAudit.all_pilot_blocks
