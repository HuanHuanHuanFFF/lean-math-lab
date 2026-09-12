import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk026

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P026
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk026.witnesses
private def intervals : List NatInterval := [(2125, 2125), (2126, 2126), (2127, 2127), (2128, 2128), (2129, 2139), (2140, 2147), (2148, 2153), (2154, 2163), (2164, 2171), (2172, 2172), (2173, 2173), (2174, 2174), (2175, 2175), (2176, 2176), (2177, 2177), (2178, 2178)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk026.witnesses_check

private theorem cover_check : coverCheck 2125 2178 intervals = true := by
  decide

theorem sound : IntervalSound (2125, 2178) := by
  have hc : coverCheck 2125 2178 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 2125) (hi := 2178) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P026
