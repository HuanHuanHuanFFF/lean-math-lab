import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk031

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P031
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk031.witnesses
private def intervals : List NatInterval := [(2434, 2434), (2435, 2435), (2436, 2436), (2437, 2447), (2448, 2457), (2458, 2458), (2459, 2469), (2470, 2477), (2478, 2487), (2488, 2488), (2489, 2489), (2490, 2490), (2491, 2491), (2492, 2492), (2493, 2493), (2494, 2494)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk031.witnesses_check

private theorem cover_check : coverCheck 2434 2494 intervals = true := by
  decide

theorem sound : IntervalSound (2434, 2494) := by
  have hc : coverCheck 2434 2494 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := witnesses)
    (lo := 2434) (hi := 2494) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P031
