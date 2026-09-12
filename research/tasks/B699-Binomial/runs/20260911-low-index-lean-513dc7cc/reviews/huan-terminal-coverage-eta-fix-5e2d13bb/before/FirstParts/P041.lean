import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk041

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P041
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk041.witnesses
private def intervals : List NatInterval := [(3101, 3101), (3102, 3102), (3103, 3103), (3104, 3104), (3105, 3105), (3106, 3106), (3107, 3107), (3108, 3108), (3109, 3119), (3120, 3129), (3130, 3131), (3132, 3132), (3133, 3133), (3134, 3134), (3135, 3135), (3136, 3136)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk041.witnesses_check

private theorem cover_check : coverCheck 3101 3136 intervals = true := by
  decide

theorem sound : IntervalSound (3101, 3136) := by
  have hc : coverCheck 3101 3136 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 3101) (hi := 3136) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P041
