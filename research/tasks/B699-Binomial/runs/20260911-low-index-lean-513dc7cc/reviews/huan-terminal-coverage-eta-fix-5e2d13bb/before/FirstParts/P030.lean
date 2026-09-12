import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk030

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P030
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk030.witnesses
private def intervals : List NatInterval := [(2332, 2332), (2333, 2343), (2344, 2351), (2352, 2361), (2362, 2367), (2368, 2368), (2369, 2369), (2370, 2370), (2371, 2381), (2382, 2391), (2392, 2399), (2400, 2409), (2410, 2410), (2411, 2421), (2422, 2427), (2428, 2433)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk030.witnesses_check

private theorem cover_check : coverCheck 2332 2433 intervals = true := by
  decide

theorem sound : IntervalSound (2332, 2433) := by
  have hc : coverCheck 2332 2433 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 2332) (hi := 2433) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P030
