import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk013

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P013
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk013.witnesses
private def intervals : List NatInterval := [(1260, 1269), (1270, 1270), (1271, 1271), (1272, 1272), (1273, 1273), (1274, 1274), (1275, 1275), (1276, 1276), (1277, 1287), (1288, 1293), (1294, 1301), (1302, 1311), (1312, 1317), (1318, 1318), (1319, 1329), (1330, 1337)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk013.witnesses_check

private theorem cover_check : coverCheck 1260 1337 intervals = true := by
  decide

theorem sound : IntervalSound (1260, 1337) := by
  have hc : coverCheck 1260 1337 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := witnesses)
    (lo := 1260) (hi := 1337) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P013
