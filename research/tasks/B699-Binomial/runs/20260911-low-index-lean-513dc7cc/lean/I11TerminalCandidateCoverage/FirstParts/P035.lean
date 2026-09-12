import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk035

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P035
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk035.witnesses
private def intervals : List NatInterval := [(2646, 2646), (2647, 2657), (2658, 2667), (2668, 2673), (2674, 2681), (2682, 2687), (2688, 2697), (2698, 2703), (2704, 2709), (2710, 2717), (2718, 2723), (2724, 2729), (2730, 2739), (2740, 2741), (2742, 2751), (2752, 2759)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk035.witnesses_check

private theorem cover_check : coverCheck 2646 2759 intervals = true := by
  decide

theorem sound : IntervalSound (2646, 2759) := by
  have hc : coverCheck 2646 2759 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := witnesses)
    (lo := 2646) (hi := 2759) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P035
