import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk028

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P028
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk028.witnesses
private def intervals : List NatInterval := [(2224, 2231), (2232, 2232), (2233, 2233), (2234, 2234), (2235, 2235), (2236, 2236), (2237, 2247), (2248, 2253), (2254, 2261), (2262, 2262), (2263, 2263), (2264, 2264), (2265, 2265), (2266, 2266), (2267, 2277), (2278, 2283)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk028.witnesses_check

private theorem cover_check : coverCheck 2224 2283 intervals = true := by
  decide

theorem sound : IntervalSound (2224, 2283) := by
  have hc : coverCheck 2224 2283 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 2224) (hi := 2283) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P028
