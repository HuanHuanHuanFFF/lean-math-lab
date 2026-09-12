import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk040

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P040
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk040.witnesses
private def intervals : List NatInterval := [(3012, 3021), (3022, 3029), (3030, 3033), (3034, 3034), (3035, 3035), (3036, 3036), (3037, 3047), (3048, 3051), (3052, 3059), (3060, 3060), (3061, 3071), (3072, 3077), (3078, 3078), (3079, 3089), (3090, 3099), (3100, 3100)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk040.witnesses_check

private theorem cover_check : coverCheck 3012 3100 intervals = true := by
  decide

theorem sound : IntervalSound (3012, 3100) := by
  have hc : coverCheck 3012 3100 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 3012) (hi := 3100) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P040
