import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk043

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P043
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk043.witnesses
private def intervals : List NatInterval := [(3163, 3173), (3174, 3179), (3180, 3180), (3181, 3191), (3192, 3201), (3202, 3202), (3203, 3213), (3214, 3219), (3220, 3227), (3228, 3231), (3232, 3239), (3240, 3240), (3241, 3241), (3242, 3242), (3243, 3243), (3244, 3244)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk043.witnesses_check

private theorem cover_check : coverCheck 3163 3244 intervals = true := by
  decide

theorem sound : IntervalSound (3163, 3244) := by
  have hc : coverCheck 3163 3244 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 3163) (hi := 3244) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P043
