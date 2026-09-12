import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk009

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P009
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk009.witnesses
private def intervals : List NatInterval := [(918, 921), (922, 929), (930, 939), (940, 947), (948, 957), (958, 963), (964, 964), (965, 965), (966, 966), (967, 977), (978, 987), (988, 993), (994, 1001), (1002, 1007), (1008, 1008), (1009, 1019)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk009.witnesses_check

private theorem cover_check : coverCheck 918 1019 intervals = true := by
  decide

theorem sound : IntervalSound (918, 1019) := by
  have hc : coverCheck 918 1019 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := witnesses)
    (lo := 918) (hi := 1019) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P009
