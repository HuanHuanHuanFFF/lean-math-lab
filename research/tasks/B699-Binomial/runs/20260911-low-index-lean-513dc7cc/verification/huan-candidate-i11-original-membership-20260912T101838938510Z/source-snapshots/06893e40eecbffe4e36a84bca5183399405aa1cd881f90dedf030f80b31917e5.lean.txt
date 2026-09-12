import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair23.Composer
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair25.Composer
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair27.Composer
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair35.Composer
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair37.Composer
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMembership.Pair57.Composer
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalFinal.Final
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStep.ActualStep

/-! UNCOMPILED CANDIDATE. All fixed stage04 numerical inputs are supplied
from the actual six membership tables and the original candidate list.
The only intermediate assumptions are the original legal domain, noCommon,
and the terminal height; the final original-index entry removes the latter two. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11OriginalFinal
open B699LargePrimeStructure B699LowIndex B699LowIndex.I11TerminalCover
open B699LowIndex.I11CrtStageMetadata
open Math.B699.I11CRTSixPair Math.B699.I11TerminalCRT
open Math.B699.I11TerminalMembership

def stage04Data : SixPairGrids where
  grid23 := Math.B699.I11TerminalMembership.Pair23.pairData
  grid25 := Math.B699.I11TerminalMembership.Pair25.pairData
  grid27 := Math.B699.I11TerminalMembership.Pair27.pairData
  grid35 := Math.B699.I11TerminalMembership.Pair35.pairData
  grid37 := Math.B699.I11TerminalMembership.Pair37.pairData
  grid57 := Math.B699.I11TerminalMembership.Pair57.pairData

theorem candidate_list_eq :
    candidates = extendedCandidates originalCandidates := rfl

theorem stage04_constants : stageConstantsCheck Stage04.H Stage04.M = true :=
  (stageConstantsCheck_spec Stage04.H Stage04.M).mpr
    ⟨Stage04.cap_positive, Stage04.cofactor_certificate⟩

theorem stage04_small_cover :
    coverCheck 24 (max Stage04.M 109) (extendedCandidates originalCandidates) = true := by
  have hmax : max Stage04.M 109 = (500 : ℕ) := by decide
  simpa only [hmax, candidate_list_eq] using
    Math.B699.I11TerminalMembership.small_cover

theorem candidate_mem_of_stage04 {n j : ℕ}
    (hij : 11 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 11 j)
    (hnH : n < Stage04.H) : candidateMem n originalCandidates := by
  exact Math.B699.I11TerminalCRT.actual_i11_terminal_membership stage04Data
    (H := Stage04.H) (M := Stage04.M) (cs := originalCandidates)
    stage04_constants
    (by simpa only [stage04Data, candidate_list_eq] using
      Math.B699.I11TerminalMembership.Pair23.pair_check)
    (by simpa only [stage04Data, candidate_list_eq] using
      Math.B699.I11TerminalMembership.Pair25.pair_check)
    (by simpa only [stage04Data, candidate_list_eq] using
      Math.B699.I11TerminalMembership.Pair27.pair_check)
    (by simpa only [stage04Data, candidate_list_eq] using
      Math.B699.I11TerminalMembership.Pair35.pair_check)
    (by simpa only [stage04Data, candidate_list_eq] using
      Math.B699.I11TerminalMembership.Pair37.pair_check)
    (by simpa only [stage04Data, candidate_list_eq] using
      Math.B699.I11TerminalMembership.Pair57.pair_check)
    stage04_small_cover hij hjn hno hnH

end Math.B699.I11OriginalFinal

#print axioms Math.B699.I11OriginalFinal.stage04Data
#print axioms Math.B699.I11OriginalFinal.candidate_list_eq
#print axioms Math.B699.I11OriginalFinal.stage04_constants
#print axioms Math.B699.I11OriginalFinal.stage04_small_cover
#print axioms Math.B699.I11OriginalFinal.candidate_mem_of_stage04
