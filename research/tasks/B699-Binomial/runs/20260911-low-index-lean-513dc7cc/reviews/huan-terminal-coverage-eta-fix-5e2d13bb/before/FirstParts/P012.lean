import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk012

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P012
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk012.witnesses
private def intervals : List NatInterval := [(1150, 1150), (1151, 1161), (1162, 1163), (1164, 1173), (1174, 1181), (1182, 1191), (1192, 1197), (1198, 1203), (1204, 1211), (1212, 1212), (1213, 1223), (1224, 1233), (1234, 1241), (1242, 1247), (1248, 1248), (1249, 1259)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk012.witnesses_check

private theorem cover_check : coverCheck 1150 1259 intervals = true := by
  decide

theorem sound : IntervalSound (1150, 1259) := by
  have hc : coverCheck 1150 1259 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 1150) (hi := 1259) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P012
