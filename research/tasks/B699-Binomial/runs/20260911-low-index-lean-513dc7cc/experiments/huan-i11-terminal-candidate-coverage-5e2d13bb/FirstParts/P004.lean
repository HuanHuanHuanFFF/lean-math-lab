import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk004

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P004
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk004.witnesses
private def intervals : List NatInterval := [(468, 477), (478, 478), (479, 489), (490, 497), (498, 501), (502, 509), (510, 519), (520, 520), (521, 531), (532, 533), (534, 534), (535, 535), (536, 536), (537, 537), (538, 538), (539, 539)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk004.witnesses_check

private theorem cover_check : coverCheck 468 539 intervals = true := by
  decide

theorem sound : IntervalSound (468, 539) := by
  have hc : coverCheck 468 539 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 468) (hi := 539) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P004
