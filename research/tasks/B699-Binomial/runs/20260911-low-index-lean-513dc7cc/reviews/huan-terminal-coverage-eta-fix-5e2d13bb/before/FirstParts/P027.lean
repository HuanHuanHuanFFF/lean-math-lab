import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk027

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P027
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk027.witnesses
private def intervals : List NatInterval := [(2179, 2189), (2190, 2190), (2191, 2191), (2192, 2192), (2193, 2193), (2194, 2194), (2195, 2195), (2196, 2196), (2197, 2197), (2198, 2198), (2199, 2199), (2200, 2200), (2201, 2201), (2202, 2202), (2203, 2213), (2214, 2223)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk027.witnesses_check

private theorem cover_check : coverCheck 2179 2223 intervals = true := by
  decide

theorem sound : IntervalSound (2179, 2223) := by
  have hc : coverCheck 2179 2223 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 2179) (hi := 2223) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P027
