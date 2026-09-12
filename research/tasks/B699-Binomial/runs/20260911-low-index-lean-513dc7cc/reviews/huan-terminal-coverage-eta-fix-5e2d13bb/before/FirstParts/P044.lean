import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk044

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P044
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk044.witnesses
private def intervals : List NatInterval := [(3245, 3245), (3246, 3246), (3247, 3247), (3248, 3248), (3249, 3249), (3250, 3250), (3251, 3261), (3262, 3269), (3270, 3270), (3271, 3281), (3282, 3282), (3283, 3283), (3284, 3284), (3285, 3285), (3286, 3286), (3287, 3287)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk044.witnesses_check

private theorem cover_check : coverCheck 3245 3287 intervals = true := by
  decide

theorem sound : IntervalSound (3245, 3287) := by
  have hc : coverCheck 3245 3287 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 3245) (hi := 3287) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P044
