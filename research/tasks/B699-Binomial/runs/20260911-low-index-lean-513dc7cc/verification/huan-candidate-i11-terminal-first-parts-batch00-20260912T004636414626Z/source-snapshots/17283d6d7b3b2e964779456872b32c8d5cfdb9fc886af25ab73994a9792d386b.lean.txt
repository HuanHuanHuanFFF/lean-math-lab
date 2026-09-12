import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk005

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P005
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk005.witnesses
private def intervals : List NatInterval := [(540, 540), (541, 551), (552, 557), (558, 567), (568, 573), (574, 581), (582, 587), (588, 597), (598, 603), (604, 611), (612, 617), (618, 627), (628, 629), (630, 630), (631, 641), (642, 651)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk005.witnesses_check

private theorem cover_check : coverCheck 540 651 intervals = true := by
  decide

theorem sound : IntervalSound (540, 651) := by
  have hc : coverCheck 540 651 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := witnesses)
    (lo := 540) (hi := 651) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P005
