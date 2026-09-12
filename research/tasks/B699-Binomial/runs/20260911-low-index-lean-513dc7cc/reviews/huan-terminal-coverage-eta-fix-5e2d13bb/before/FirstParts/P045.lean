import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk045

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P045
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk045.witnesses
private def intervals : List NatInterval := [(3288, 3288), (3289, 3289), (3290, 3290), (3291, 3291), (3292, 3292), (3293, 3293), (3294, 3294), (3295, 3295), (3296, 3296), (3297, 3297), (3298, 3298), (3299, 3309), (3310, 3317), (3318, 3323), (3324, 3333), (3334, 3341)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk045.witnesses_check

private theorem cover_check : coverCheck 3288 3341 intervals = true := by
  decide

theorem sound : IntervalSound (3288, 3341) := by
  have hc : coverCheck 3288 3341 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 3288) (hi := 3341) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P045
