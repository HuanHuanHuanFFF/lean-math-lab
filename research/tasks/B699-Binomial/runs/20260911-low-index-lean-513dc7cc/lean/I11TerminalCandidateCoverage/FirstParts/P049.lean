import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk049

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P049
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk049.witnesses
private def intervals : List NatInterval := [(3487, 3487), (3488, 3488), (3489, 3489), (3490, 3490), (3491, 3501), (3502, 3509), (3510, 3510), (3511, 3521), (3522, 3527), (3528, 3537), (3538, 3543), (3544, 3551), (3552, 3557), (3558, 3567), (3568, 3569), (3570, 3570)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk049.witnesses_check

private theorem cover_check : coverCheck 3487 3570 intervals = true := by
  decide

theorem sound : IntervalSound (3487, 3570) := by
  have hc : coverCheck 3487 3570 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := witnesses)
    (lo := 3487) (hi := 3570) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P049
