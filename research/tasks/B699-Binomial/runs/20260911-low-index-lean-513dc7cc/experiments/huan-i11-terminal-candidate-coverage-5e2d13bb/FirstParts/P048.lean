import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk048

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P048
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk048.witnesses
private def intervals : List NatInterval := [(3444, 3444), (3445, 3445), (3446, 3446), (3447, 3447), (3448, 3448), (3449, 3459), (3460, 3467), (3468, 3477), (3478, 3479), (3480, 3480), (3481, 3481), (3482, 3482), (3483, 3483), (3484, 3484), (3485, 3485), (3486, 3486)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk048.witnesses_check

private theorem cover_check : coverCheck 3444 3486 intervals = true := by
  decide

theorem sound : IntervalSound (3444, 3486) := by
  have hc : coverCheck 3444 3486 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 3444) (hi := 3486) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P048
