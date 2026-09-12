import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk029

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P029
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk029.witnesses
private def intervals : List NatInterval := [(2284, 2291), (2292, 2297), (2298, 2307), (2308, 2308), (2309, 2319), (2320, 2321), (2322, 2322), (2323, 2323), (2324, 2324), (2325, 2325), (2326, 2326), (2327, 2327), (2328, 2328), (2329, 2329), (2330, 2330), (2331, 2331)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk029.witnesses_check

private theorem cover_check : coverCheck 2284 2331 intervals = true := by
  decide

theorem sound : IntervalSound (2284, 2331) := by
  have hc : coverCheck 2284 2331 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 2284) (hi := 2331) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P029
