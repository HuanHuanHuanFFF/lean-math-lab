import research.tasks.«B686-Four».round5.main.NoncentralSupport
import research.tasks.«B686-Four».round5.worker.NoncentralSupport
import research.tasks.«B686-Four».round5.worker.ResidualPositionBound
import research.tasks.«B686-Four».round5.worker.LocalContact

/-! Integration import for round-five research. These remain partial results
for B686/Four; this file also ensures all new modules coexist in one environment. -/

/-- info: 'B686Round5Support.original_necessary_conditions' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B686Round5Support.original_necessary_conditions
/-- info: 'B686Round5FourPositions.not_four_four_positions_ratio' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B686Round5FourPositions.not_four_four_positions_ratio
/-- info: 'B686Round5Residual.residual_position_bound' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B686Round5Residual.residual_position_bound
