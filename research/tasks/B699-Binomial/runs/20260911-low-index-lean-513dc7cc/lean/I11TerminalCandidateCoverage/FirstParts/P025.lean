import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk025

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P025
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk025.witnesses
private def intervals : List NatInterval := [(2038, 2039), (2040, 2049), (2050, 2050), (2051, 2051), (2052, 2052), (2053, 2063), (2064, 2073), (2074, 2079), (2080, 2080), (2081, 2091), (2092, 2099), (2100, 2109), (2110, 2110), (2111, 2121), (2122, 2123), (2124, 2124)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk025.witnesses_check

private theorem cover_check : coverCheck 2038 2124 intervals = true := by
  decide

theorem sound : IntervalSound (2038, 2124) := by
  have hc : coverCheck 2038 2124 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := witnesses)
    (lo := 2038) (hi := 2124) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P025
