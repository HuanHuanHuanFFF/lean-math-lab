import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk018

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P018
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk018.witnesses
private def intervals : List NatInterval := [(1595, 1595), (1596, 1596), (1597, 1607), (1608, 1617), (1618, 1623), (1624, 1631), (1632, 1637), (1638, 1647), (1648, 1648), (1649, 1649), (1650, 1650), (1651, 1651), (1652, 1652), (1653, 1653), (1654, 1654), (1655, 1655)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk018.witnesses_check

private theorem cover_check : coverCheck 1595 1655 intervals = true := by
  decide

theorem sound : IntervalSound (1595, 1655) := by
  have hc : coverCheck 1595 1655 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := witnesses)
    (lo := 1595) (hi := 1655) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P018
