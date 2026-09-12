import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk046

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P046
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk046.witnesses
private def intervals : List NatInterval := [(3342, 3342), (3343, 3353), (3354, 3357), (3358, 3358), (3359, 3369), (3370, 3371), (3372, 3381), (3382, 3383), (3384, 3384), (3385, 3385), (3386, 3386), (3387, 3387), (3388, 3388), (3389, 3399), (3400, 3401), (3402, 3402)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk046.witnesses_check

private theorem cover_check : coverCheck 3342 3402 intervals = true := by
  decide

theorem sound : IntervalSound (3342, 3402) := by
  have hc : coverCheck 3342 3402 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 3342) (hi := 3402) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P046
