import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk016

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P016
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk016.witnesses
private def intervals : List NatInterval := [(1397, 1397), (1398, 1398), (1399, 1409), (1410, 1419), (1420, 1420), (1421, 1421), (1422, 1422), (1423, 1433), (1434, 1443), (1444, 1449), (1450, 1457), (1458, 1463), (1464, 1469), (1470, 1470), (1471, 1481), (1482, 1491)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk016.witnesses_check

private theorem cover_check : coverCheck 1397 1491 intervals = true := by
  decide

theorem sound : IntervalSound (1397, 1491) := by
  have hc : coverCheck 1397 1491 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 1397) (hi := 1491) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P016
