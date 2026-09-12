import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk047

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P047
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk047.witnesses
private def intervals : List NatInterval := [(3403, 3403), (3404, 3404), (3405, 3405), (3406, 3406), (3407, 3417), (3418, 3423), (3424, 3424), (3425, 3425), (3426, 3426), (3427, 3427), (3428, 3428), (3429, 3429), (3430, 3430), (3431, 3431), (3432, 3432), (3433, 3443)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk047.witnesses_check

private theorem cover_check : coverCheck 3403 3443 intervals = true := by
  decide

theorem sound : IntervalSound (3403, 3443) := by
  have hc : coverCheck 3403 3443 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 3403) (hi := 3443) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P047
