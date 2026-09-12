import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk055

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P055
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk055.witnesses
private def intervals : List NatInterval := [(3907, 3917), (3918, 3927), (3928, 3933), (3934, 3941), (3942, 3942), (3943, 3953), (3954, 3957), (3958, 3958), (3959, 3959), (3960, 3960), (3961, 3961), (3962, 3962), (3963, 3963), (3964, 3964), (3965, 3965), (3966, 3966)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk055.witnesses_check

private theorem cover_check : coverCheck 3907 3966 intervals = true := by
  decide

theorem sound : IntervalSound (3907, 3966) := by
  have hc : coverCheck 3907 3966 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := witnesses)
    (lo := 3907) (hi := 3966) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P055
