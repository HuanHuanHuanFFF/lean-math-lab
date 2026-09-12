import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCrt.Dispatch
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStep.ActualStep

/-! UNCOMPILED. Actual noCommon produces terminal candidate membership.
The small branch has an explicit finite cover. No membership is assumed. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TerminalCRT
open Math.B699.I11CRTSixPair
open B699LargePrimeStructure B699LowIndex B699LowIndex.I11TerminalCover
open B699LowIndex.I11BoundedCofactors

theorem actual_i11_candidateMem (data : SixPairGrids)
    {n j H M : ℕ} {candidates : List NatInterval}
    (hconstants : stageConstantsCheck H M = true)
    (check23 : pairGridCoverCheck 2 3 H M data.grid23 candidates = true)
    (check25 : pairGridCoverCheck 2 5 H M data.grid25 candidates = true)
    (check27 : pairGridCoverCheck 2 7 H M data.grid27 candidates = true)
    (check35 : pairGridCoverCheck 3 5 H M data.grid35 candidates = true)
    (check37 : pairGridCoverCheck 3 7 H M data.grid37 candidates = true)
    (check57 : pairGridCoverCheck 5 7 H M data.grid57 candidates = true)
    (hsmall : coverCheck 24 (max M 109) candidates = true)
    (hij : 11 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 11 j) (hnH : n < H) :
    candidateMem n candidates := by
  have hn24 : 24 ≤ n := by omega
  by_cases hnM : n ≤ M
  · exact coverCheck_sound candidates 24 (max M 109) n hsmall hn24
      (Nat.le_trans hnM (Nat.le_max_left M 109))
  by_cases hnsmall : n < 110
  · have hn109 : n ≤ 109 := by omega
    exact coverCheck_sound candidates 24 (max M 109) n hsmall hn24
      (Nat.le_trans hn109 (Nat.le_max_right M 109))
  obtain ⟨hM, hcertificate⟩ := (stageConstantsCheck_spec H M).mp hconstants
  have hlarge : 110 ≤ n := by omega
  have hMn : M < n := Nat.lt_of_not_ge hnM
  obtain ⟨p, q, h, k, r, s, A, C, _, _, hpMem, hqMem, hpq, _, _,
    hh, hk, hr, hs, hA, hC, hAM, hCM, hP, hQ, _⟩ :=
      actual_i11_bounded_cofactor_bridge hM hlarge hMn hnH hij hjn hcertificate hno
  exact distinct_pair_windows_candidateMem data
    check23 check25 check27 check35 check37 check57 hpMem hqMem hpq hnH hr hs
    (Nat.succ_le_of_lt hh) (Nat.succ_le_of_lt hk) hA hC hAM hCM hP hQ

/-- Conditional complete terminal conclusion: all membership and witness
obligations are finite data checks; there is no membership input. -/
theorem common_of_terminal_grid_checks (data : SixPairGrids)
    {n j H M : ℕ} {candidates : List NatInterval} {witnesses : List Witness}
    (hconstants : stageConstantsCheck H M = true)
    (check23 : pairGridCoverCheck 2 3 H M data.grid23 candidates = true)
    (check25 : pairGridCoverCheck 2 5 H M data.grid25 candidates = true)
    (check27 : pairGridCoverCheck 2 7 H M data.grid27 candidates = true)
    (check35 : pairGridCoverCheck 3 5 H M data.grid35 candidates = true)
    (check37 : pairGridCoverCheck 3 7 H M data.grid37 candidates = true)
    (check57 : pairGridCoverCheck 5 7 H M data.grid57 candidates = true)
    (hsmall : coverCheck 24 (max M 109) candidates = true)
    (hwitness : candidateIntervalsCheck candidates witnesses = true)
    (hij : 11 < j) (hjn : j ≤ n / 2) (hnH : n < H) : Common n 11 j := by
  classical
  by_contra hno
  have hmember := actual_i11_candidateMem data hconstants
    check23 check25 check27 check35 check37 check57 hsmall hij hjn hno hnH
  exact hno (candidateIntervalsCheck_sound hwitness hmember hij hjn)

end Math.B699.I11TerminalCRT
