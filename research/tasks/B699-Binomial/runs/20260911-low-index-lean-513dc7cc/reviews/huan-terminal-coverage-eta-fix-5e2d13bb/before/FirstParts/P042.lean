import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk042

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P042
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk042.witnesses
private def intervals : List NatInterval := [(3137, 3147), (3148, 3148), (3149, 3149), (3150, 3150), (3151, 3151), (3152, 3152), (3153, 3153), (3154, 3154), (3155, 3155), (3156, 3156), (3157, 3157), (3158, 3158), (3159, 3159), (3160, 3160), (3161, 3161), (3162, 3162)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk042.witnesses_check

private theorem cover_check : coverCheck 3137 3162 intervals = true := by
  decide

theorem sound : IntervalSound (3137, 3162) := by
  have hc : coverCheck 3137 3162 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 3137) (hi := 3162) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P042
