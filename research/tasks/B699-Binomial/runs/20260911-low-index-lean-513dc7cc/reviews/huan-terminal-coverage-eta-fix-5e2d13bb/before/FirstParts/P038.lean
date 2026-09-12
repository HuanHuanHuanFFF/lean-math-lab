import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk038

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P038
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk038.witnesses
private def intervals : List NatInterval := [(2898, 2907), (2908, 2913), (2914, 2919), (2920, 2927), (2928, 2937), (2938, 2938), (2939, 2949), (2950, 2950), (2951, 2951), (2952, 2952), (2953, 2963), (2964, 2973), (2974, 2981), (2982, 2982), (2983, 2983), (2984, 2984)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk038.witnesses_check

private theorem cover_check : coverCheck 2898 2984 intervals = true := by
  decide

theorem sound : IntervalSound (2898, 2984) := by
  have hc : coverCheck 2898 2984 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 2898) (hi := 2984) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P038
