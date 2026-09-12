import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk034

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P034
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk034.witnesses
private def intervals : List NatInterval := [(2579, 2589), (2590, 2590), (2591, 2601), (2602, 2603), (2604, 2604), (2605, 2605), (2606, 2606), (2607, 2607), (2608, 2608), (2609, 2619), (2620, 2627), (2628, 2631), (2632, 2632), (2633, 2643), (2644, 2644), (2645, 2645)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk034.witnesses_check

private theorem cover_check : coverCheck 2579 2645 intervals = true := by
  decide

theorem sound : IntervalSound (2579, 2645) := by
  have hc : coverCheck 2579 2645 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 2579) (hi := 2645) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P034
