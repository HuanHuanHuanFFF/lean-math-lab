import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk003

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P003
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk003.witnesses
private def intervals : List NatInterval := [(348, 357), (358, 363), (364, 369), (370, 377), (378, 383), (384, 393), (394, 399), (400, 407), (408, 411), (412, 419), (420, 429), (430, 431), (432, 441), (442, 449), (450, 459), (460, 467)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk003.witnesses_check

private theorem cover_check : coverCheck 348 467 intervals = true := by
  decide

theorem sound : IntervalSound (348, 467) := by
  have hc : coverCheck 348 467 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 348) (hi := 467) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P003
