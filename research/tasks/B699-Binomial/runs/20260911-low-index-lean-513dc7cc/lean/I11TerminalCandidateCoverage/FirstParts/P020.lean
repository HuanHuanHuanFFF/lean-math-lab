import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk020

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P020
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk020.witnesses
private def intervals : List NatInterval := [(1692, 1692), (1693, 1703), (1704, 1709), (1710, 1719), (1720, 1720), (1721, 1731), (1732, 1733), (1734, 1743), (1744, 1751), (1752, 1757), (1758, 1763), (1764, 1769), (1770, 1770), (1771, 1771), (1772, 1772), (1773, 1773)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk020.witnesses_check

private theorem cover_check : coverCheck 1692 1773 intervals = true := by
  decide

theorem sound : IntervalSound (1692, 1773) := by
  have hc : coverCheck 1692 1773 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := witnesses)
    (lo := 1692) (hi := 1773) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P020
