import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk051

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P051
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk051.witnesses
private def intervals : List NatInterval := [(3657, 3657), (3658, 3658), (3659, 3669), (3670, 3670), (3671, 3681), (3682, 3687), (3688, 3688), (3689, 3689), (3690, 3690), (3691, 3701), (3702, 3711), (3712, 3719), (3720, 3729), (3730, 3737), (3738, 3743), (3744, 3749)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk051.witnesses_check

private theorem cover_check : coverCheck 3657 3749 intervals = true := by
  decide

theorem sound : IntervalSound (3657, 3749) := by
  have hc : coverCheck 3657 3749 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 3657) (hi := 3749) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P051
