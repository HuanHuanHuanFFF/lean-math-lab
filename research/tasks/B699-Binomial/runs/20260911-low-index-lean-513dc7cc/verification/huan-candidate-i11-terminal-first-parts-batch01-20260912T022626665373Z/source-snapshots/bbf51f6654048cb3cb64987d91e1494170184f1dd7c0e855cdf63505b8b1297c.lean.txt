import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk011

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P011
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk011.witnesses
private def intervals : List NatInterval := [(1098, 1107), (1108, 1113), (1114, 1119), (1120, 1127), (1128, 1133), (1134, 1139), (1140, 1140), (1141, 1141), (1142, 1142), (1143, 1143), (1144, 1144), (1145, 1145), (1146, 1146), (1147, 1147), (1148, 1148), (1149, 1149)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk011.witnesses_check

private theorem cover_check : coverCheck 1098 1149 intervals = true := by
  decide

theorem sound : IntervalSound (1098, 1149) := by
  have hc : coverCheck 1098 1149 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := witnesses)
    (lo := 1098) (hi := 1149) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P011
