import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk017

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P017
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk017.witnesses
private def intervals : List NatInterval := [(1492, 1499), (1500, 1509), (1510, 1510), (1511, 1521), (1522, 1522), (1523, 1533), (1534, 1541), (1542, 1542), (1543, 1553), (1554, 1563), (1564, 1569), (1570, 1577), (1578, 1581), (1582, 1589), (1590, 1593), (1594, 1594)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk017.witnesses_check

private theorem cover_check : coverCheck 1492 1594 intervals = true := by
  decide

theorem sound : IntervalSound (1492, 1594) := by
  have hc : coverCheck 1492 1594 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 1492) (hi := 1594) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P017
