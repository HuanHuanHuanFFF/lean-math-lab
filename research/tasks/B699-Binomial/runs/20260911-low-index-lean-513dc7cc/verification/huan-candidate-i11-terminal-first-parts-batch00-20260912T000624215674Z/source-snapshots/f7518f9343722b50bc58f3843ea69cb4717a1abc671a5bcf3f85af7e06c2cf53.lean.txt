import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk006

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P006
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk006.witnesses
private def intervals : List NatInterval := [(652, 657), (658, 663), (664, 671), (672, 672), (673, 683), (684, 693), (694, 701), (702, 711), (712, 719), (720, 729), (730, 737), (738, 743), (744, 753), (754, 761), (762, 771), (772, 779)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk006.witnesses_check

private theorem cover_check : coverCheck 652 779 intervals = true := by
  decide

theorem sound : IntervalSound (652, 779) := by
  have hc : coverCheck 652 779 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := witnesses)
    (lo := 652) (hi := 779) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P006
