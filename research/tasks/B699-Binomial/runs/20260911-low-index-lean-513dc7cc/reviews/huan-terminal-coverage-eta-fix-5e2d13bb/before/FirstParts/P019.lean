import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk019

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P019
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk019.witnesses
private def intervals : List NatInterval := [(1656, 1656), (1657, 1667), (1668, 1677), (1678, 1679), (1680, 1680), (1681, 1681), (1682, 1682), (1683, 1683), (1684, 1684), (1685, 1685), (1686, 1686), (1687, 1687), (1688, 1688), (1689, 1689), (1690, 1690), (1691, 1691)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk019.witnesses_check

private theorem cover_check : coverCheck 1656 1691 intervals = true := by
  decide

theorem sound : IntervalSound (1656, 1691) := by
  have hc : coverCheck 1656 1691 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 1656) (hi := 1691) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P019
