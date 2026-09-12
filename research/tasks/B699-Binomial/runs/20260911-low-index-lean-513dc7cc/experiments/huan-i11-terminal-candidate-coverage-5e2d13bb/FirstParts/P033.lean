import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk033

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P033
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk033.witnesses
private def intervals : List NatInterval := [(2521, 2531), (2532, 2541), (2542, 2549), (2550, 2559), (2560, 2567), (2568, 2568), (2569, 2569), (2570, 2570), (2571, 2571), (2572, 2572), (2573, 2573), (2574, 2574), (2575, 2575), (2576, 2576), (2577, 2577), (2578, 2578)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk033.witnesses_check

private theorem cover_check : coverCheck 2521 2578 intervals = true := by
  decide

theorem sound : IntervalSound (2521, 2578) := by
  have hc : coverCheck 2521 2578 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 2521) (hi := 2578) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P033
