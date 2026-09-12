import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk000

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P000
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk000.witnesses
private def intervals : List NatInterval := [(24, 33), (34, 41), (42, 51), (52, 57), (58, 63), (64, 71), (72, 81), (82, 89), (90, 99), (100, 107), (108, 117), (118, 123), (124, 124), (125, 125), (126, 126), (127, 137)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk000.witnesses_check

private theorem cover_check : coverCheck 24 137 intervals = true := by
  decide

theorem sound : IntervalSound (24, 137) := by
  have hc : coverCheck 24 137 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 24) (hi := 137) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P000
