import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk053

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P053
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk053.witnesses
private def intervals : List NatInterval := [(3792, 3792), (3793, 3803), (3804, 3813), (3814, 3814), (3815, 3815), (3816, 3816), (3817, 3817), (3818, 3818), (3819, 3819), (3820, 3820), (3821, 3831), (3832, 3833), (3834, 3843), (3844, 3844), (3845, 3845), (3846, 3846)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk053.witnesses_check

private theorem cover_check : coverCheck 3792 3846 intervals = true := by
  decide

theorem sound : IntervalSound (3792, 3846) := by
  have hc : coverCheck 3792 3846 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 3792) (hi := 3846) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P053
