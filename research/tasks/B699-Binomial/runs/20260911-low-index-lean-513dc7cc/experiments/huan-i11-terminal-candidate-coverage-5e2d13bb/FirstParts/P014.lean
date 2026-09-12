import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk014

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P014
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk014.witnesses
private def intervals : List NatInterval := [(1338, 1338), (1339, 1339), (1340, 1340), (1341, 1341), (1342, 1342), (1343, 1343), (1344, 1344), (1345, 1345), (1346, 1346), (1347, 1347), (1348, 1348), (1349, 1349), (1350, 1350), (1351, 1351), (1352, 1352), (1353, 1353)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk014.witnesses_check

private theorem cover_check : coverCheck 1338 1353 intervals = true := by
  decide

theorem sound : IntervalSound (1338, 1353) := by
  have hc : coverCheck 1338 1353 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 1338) (hi := 1353) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P014
