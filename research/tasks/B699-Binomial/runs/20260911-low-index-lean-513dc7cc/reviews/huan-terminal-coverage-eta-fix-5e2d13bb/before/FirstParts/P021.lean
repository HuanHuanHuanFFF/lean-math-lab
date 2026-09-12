import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk021

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P021
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk021.witnesses
private def intervals : List NatInterval := [(1774, 1774), (1775, 1775), (1776, 1776), (1777, 1787), (1788, 1797), (1798, 1799), (1800, 1800), (1801, 1811), (1812, 1821), (1822, 1822), (1823, 1833), (1834, 1841), (1842, 1842), (1843, 1843), (1844, 1844), (1845, 1845)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk021.witnesses_check

private theorem cover_check : coverCheck 1774 1845 intervals = true := by
  decide

theorem sound : IntervalSound (1774, 1845) := by
  have hc : coverCheck 1774 1845 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 1774) (hi := 1845) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P021
