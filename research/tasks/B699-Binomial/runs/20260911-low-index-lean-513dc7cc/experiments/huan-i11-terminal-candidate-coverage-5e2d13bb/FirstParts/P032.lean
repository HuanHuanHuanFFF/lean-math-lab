import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk032

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P032
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk032.witnesses
private def intervals : List NatInterval := [(2495, 2495), (2496, 2496), (2497, 2497), (2498, 2498), (2499, 2499), (2500, 2500), (2501, 2501), (2502, 2502), (2503, 2513), (2514, 2514), (2515, 2515), (2516, 2516), (2517, 2517), (2518, 2518), (2519, 2519), (2520, 2520)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk032.witnesses_check

private theorem cover_check : coverCheck 2495 2520 intervals = true := by
  decide

theorem sound : IntervalSound (2495, 2520) := by
  have hc : coverCheck 2495 2520 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 2495) (hi := 2520) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P032
