import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk015

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P015
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk015.witnesses
private def intervals : List NatInterval := [(1354, 1354), (1355, 1355), (1356, 1356), (1357, 1357), (1358, 1358), (1359, 1359), (1360, 1360), (1361, 1371), (1372, 1377), (1378, 1383), (1384, 1391), (1392, 1392), (1393, 1393), (1394, 1394), (1395, 1395), (1396, 1396)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk015.witnesses_check

private theorem cover_check : coverCheck 1354 1396 intervals = true := by
  decide

theorem sound : IntervalSound (1354, 1396) := by
  have hc : coverCheck 1354 1396 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := witnesses)
    (lo := 1354) (hi := 1396) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P015
