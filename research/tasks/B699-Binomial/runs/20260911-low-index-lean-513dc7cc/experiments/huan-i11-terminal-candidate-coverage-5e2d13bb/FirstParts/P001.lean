import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk001

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P001
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk001.witnesses
private def intervals : List NatInterval := [(138, 147), (148, 149), (150, 159), (160, 167), (168, 177), (178, 183), (184, 191), (192, 201), (202, 209), (210, 210), (211, 221), (222, 222), (223, 233), (234, 243), (244, 251), (252, 261)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk001.witnesses_check

private theorem cover_check : coverCheck 138 261 intervals = true := by
  decide

theorem sound : IntervalSound (138, 261) := by
  have hc : coverCheck 138 261 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 138) (hi := 261) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P001
