import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk052

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P052
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk052.witnesses
private def intervals : List NatInterval := [(3750, 3750), (3751, 3751), (3752, 3752), (3753, 3753), (3754, 3754), (3755, 3755), (3756, 3756), (3757, 3757), (3758, 3758), (3759, 3759), (3760, 3760), (3761, 3771), (3772, 3779), (3780, 3789), (3790, 3790), (3791, 3791)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk052.witnesses_check

private theorem cover_check : coverCheck 3750 3791 intervals = true := by
  decide

theorem sound : IntervalSound (3750, 3791) := by
  have hc : coverCheck 3750 3791 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 3750) (hi := 3791) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P052
