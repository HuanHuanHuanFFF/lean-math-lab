import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk036

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P036
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk036.witnesses
private def intervals : List NatInterval := [(2760, 2763), (2764, 2764), (2765, 2765), (2766, 2766), (2767, 2777), (2778, 2787), (2788, 2788), (2789, 2799), (2800, 2807), (2808, 2813), (2814, 2814), (2815, 2815), (2816, 2816), (2817, 2817), (2818, 2818), (2819, 2829)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk036.witnesses_check

private theorem cover_check : coverCheck 2760 2829 intervals = true := by
  decide

theorem sound : IntervalSound (2760, 2829) := by
  have hc : coverCheck 2760 2829 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 2760) (hi := 2829) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P036
