import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk010

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P010
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk010.witnesses
private def intervals : List NatInterval := [(1020, 1029), (1030, 1031), (1032, 1041), (1042, 1049), (1050, 1059), (1060, 1061), (1062, 1071), (1072, 1079), (1080, 1080), (1081, 1081), (1082, 1082), (1083, 1083), (1084, 1084), (1085, 1085), (1086, 1086), (1087, 1097)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk010.witnesses_check

private theorem cover_check : coverCheck 1020 1097 intervals = true := by
  decide

theorem sound : IntervalSound (1020, 1097) := by
  have hc : coverCheck 1020 1097 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 1020) (hi := 1097) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P010
