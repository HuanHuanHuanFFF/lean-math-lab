import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk007

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P007
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk007.witnesses
private def intervals : List NatInterval := [(780, 783), (784, 784), (785, 785), (786, 786), (787, 797), (798, 807), (808, 808), (809, 819), (820, 821), (822, 831), (832, 839), (840, 849), (850, 850), (851, 851), (852, 852), (853, 863)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk007.witnesses_check

private theorem cover_check : coverCheck 780 863 intervals = true := by
  decide

theorem sound : IntervalSound (780, 863) := by
  have hc : coverCheck 780 863 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 780) (hi := 863) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P007
