import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk002

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P002
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk002.witnesses
private def intervals : List NatInterval := [(262, 267), (268, 273), (274, 281), (282, 291), (292, 293), (294, 303), (304, 304), (305, 305), (306, 306), (307, 317), (318, 327), (328, 328), (329, 329), (330, 330), (331, 341), (342, 347)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk002.witnesses_check

private theorem cover_check : coverCheck 262 347 intervals = true := by
  decide

theorem sound : IntervalSound (262, 347) := by
  have hc : coverCheck 262 347 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 262) (hi := 347) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P002
