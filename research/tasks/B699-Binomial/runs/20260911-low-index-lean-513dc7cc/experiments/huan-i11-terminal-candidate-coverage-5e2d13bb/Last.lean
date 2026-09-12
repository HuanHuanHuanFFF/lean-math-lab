import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk252

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.Last
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk252.w9]
private def intervals : List NatInterval := [(29294601, 29294602)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk252.w9_check, Bool.and_self]

private theorem cover_check : coverCheck 29294601 29294602 intervals = true := by
  decide

theorem sound : IntervalSound (29294601, 29294602) := by
  have hc : coverCheck 29294601 29294602 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 29294601) (hi := 29294602) checks hc

theorem common {n j : ℕ} (hIn : intervalMem n (29294601, 29294602))
    (hij : 11 < j) (hjn : j ≤ n / 2) : Common n 11 j :=
  sound hIn hij hjn

end Math.B699.I11TerminalCandidateCoverage.Last
