import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk050

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P050
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk050.witnesses
private def intervals : List NatInterval := [(3571, 3581), (3582, 3591), (3592, 3593), (3594, 3603), (3604, 3604), (3605, 3605), (3606, 3606), (3607, 3617), (3618, 3627), (3628, 3633), (3634, 3641), (3642, 3647), (3648, 3653), (3654, 3654), (3655, 3655), (3656, 3656)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk050.witnesses_check

private theorem cover_check : coverCheck 3571 3656 intervals = true := by
  decide

theorem sound : IntervalSound (3571, 3656) := by
  have hc : coverCheck 3571 3656 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 3571) (hi := 3656) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P050
