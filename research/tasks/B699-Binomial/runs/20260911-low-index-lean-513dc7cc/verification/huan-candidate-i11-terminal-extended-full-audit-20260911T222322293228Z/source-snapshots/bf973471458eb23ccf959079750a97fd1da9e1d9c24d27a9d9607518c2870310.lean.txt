import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalFinal.Extended
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCrt.Actual

/-! UNCOMPILED. Complete terminal consumer with low-domain padding only in
numeric membership checks. All terminal witness checks remain on original cs. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TerminalCRT
open Math.B699.I11CRTSixPair
open B699LargePrimeStructure B699LowIndex B699LowIndex.I11TerminalCover

theorem actual_i11_terminal_membership (data : SixPairGrids)
    {n j H M : ℕ} {cs : List NatInterval}
    (hconstants : stageConstantsCheck H M = true)
    (check23 : pairGridCoverCheck 2 3 H M data.grid23 (extendedCandidates cs) = true)
    (check25 : pairGridCoverCheck 2 5 H M data.grid25 (extendedCandidates cs) = true)
    (check27 : pairGridCoverCheck 2 7 H M data.grid27 (extendedCandidates cs) = true)
    (check35 : pairGridCoverCheck 3 5 H M data.grid35 (extendedCandidates cs) = true)
    (check37 : pairGridCoverCheck 3 7 H M data.grid37 (extendedCandidates cs) = true)
    (check57 : pairGridCoverCheck 5 7 H M data.grid57 (extendedCandidates cs) = true)
    (hsmall : coverCheck 24 (max M 109) (extendedCandidates cs) = true)
    (hij : 11 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 11 j) (hnH : n < H) :
    candidateMem n cs := by
  have hmember := Math.B699.I11TerminalCRT.actual_i11_candidateMem data hconstants
    check23 check25 check27 check35 check37 check57 hsmall hij hjn hno hnH
  exact candidateMem_of_extended_legal hmember hij hjn

/-- No candidate membership is a premise. The old witness checker is not asked
to certify the artificial0..23 padding. -/
theorem terminal_common_of_extended_checks (data : SixPairGrids)
    {n j H M : ℕ} {cs : List NatInterval} {witnesses : List Witness}
    (hconstants : stageConstantsCheck H M = true)
    (check23 : pairGridCoverCheck 2 3 H M data.grid23 (extendedCandidates cs) = true)
    (check25 : pairGridCoverCheck 2 5 H M data.grid25 (extendedCandidates cs) = true)
    (check27 : pairGridCoverCheck 2 7 H M data.grid27 (extendedCandidates cs) = true)
    (check35 : pairGridCoverCheck 3 5 H M data.grid35 (extendedCandidates cs) = true)
    (check37 : pairGridCoverCheck 3 7 H M data.grid37 (extendedCandidates cs) = true)
    (check57 : pairGridCoverCheck 5 7 H M data.grid57 (extendedCandidates cs) = true)
    (hsmall : coverCheck 24 (max M 109) (extendedCandidates cs) = true)
    (hwitness : candidateIntervalsCheck cs witnesses = true)
    (hij : 11 < j) (hjn : j ≤ n / 2) (hnH : n < H) : Common n 11 j := by
  classical
  by_contra hno
  have hmember := actual_i11_terminal_membership data hconstants
    check23 check25 check27 check35 check37 check57 hsmall hij hjn hno hnH
  exact hno (candidateIntervalsCheck_sound hwitness hmember hij hjn)

/-- Equivalent consumer when the small cover is supplied on the old cs. -/
theorem terminal_common_of_original_small_cover (data : SixPairGrids)
    {n j H M : ℕ} {cs : List NatInterval} {witnesses : List Witness}
    (hconstants : stageConstantsCheck H M = true)
    (check23 : pairGridCoverCheck 2 3 H M data.grid23 (extendedCandidates cs) = true)
    (check25 : pairGridCoverCheck 2 5 H M data.grid25 (extendedCandidates cs) = true)
    (check27 : pairGridCoverCheck 2 7 H M data.grid27 (extendedCandidates cs) = true)
    (check35 : pairGridCoverCheck 3 5 H M data.grid35 (extendedCandidates cs) = true)
    (check37 : pairGridCoverCheck 3 7 H M data.grid37 (extendedCandidates cs) = true)
    (check57 : pairGridCoverCheck 5 7 H M data.grid57 (extendedCandidates cs) = true)
    (hsmall : coverCheck 24 (max M 109) cs = true)
    (hwitness : candidateIntervalsCheck cs witnesses = true)
    (hij : 11 < j) (hjn : j ≤ n / 2) (hnH : n < H) : Common n 11 j := by
  have hs : coverCheck 24 (max M 109) (extendedCandidates cs) = true :=
    Eq.trans (smallCoverCheck_extended M cs) hsmall
  exact terminal_common_of_extended_checks data hconstants
    check23 check25 check27 check35 check37 check57 hs hwitness hij hjn hnH

end Math.B699.I11TerminalCRT
