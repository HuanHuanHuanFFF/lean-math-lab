import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStep.Dispatch
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Bounded.ActualBridge

/-! UNCOMPILED CANDIDATE. One actual i11 descent step for arbitrary H.
All windows and bounded cofactors are produced internally from the original
noCommon. Small n branches are retained; no initial height is assumed. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11CRTSixPair
open B699LargePrimeStructure B699LowIndex.UpperHeight
open B699LowIndex.I11BoundedCofactors

def stageConstantsCheck (H M : ℕ) : Bool :=
  decide (1 ≤ M ∧ (2 * Nat.factorial 11) ^ 11 * H ^ 7 ≤ i11K * M ^ 33)

def stageBound (M T : ℕ) : ℕ := max M (max 109 T)
def nextHeight (M T : ℕ) : ℕ := stageBound M T + 1

theorem stageConstantsCheck_spec (H M : ℕ) :
    stageConstantsCheck H M = true ↔
      1 ≤ M ∧ (2 * Nat.factorial 11) ^ 11 * H ^ 7 ≤ i11K * M ^ 33 := by
  unfold stageConstantsCheck
  exact decide_eq_true_iff

theorem actual_i11_step (data : SixPairGrids) {n j H M T : ℕ}
    (hconstants : stageConstantsCheck H M = true)
    (check23 : pairGridCheck 2 3 H M T data.grid23 = true)
    (check25 : pairGridCheck 2 5 H M T data.grid25 = true)
    (check27 : pairGridCheck 2 7 H M T data.grid27 = true)
    (check35 : pairGridCheck 3 5 H M T data.grid35 = true)
    (check37 : pairGridCheck 3 7 H M T data.grid37 = true)
    (check57 : pairGridCheck 5 7 H M T data.grid57 = true)
    (hij : 11 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 11 j) (hnH : n < H) :
    n ≤ stageBound M T := by
  change n ≤ max M (max 109 T)
  obtain ⟨hM, hcertificate⟩ := (stageConstantsCheck_spec H M).mp hconstants
  by_cases hnM : n ≤ M
  · exact Nat.le_trans hnM (Nat.le_max_left M (max 109 T))
  by_cases hnsmall : n < 110
  · have hn109 : n ≤ 109 := by omega
    exact Nat.le_trans hn109
      (Nat.le_trans (Nat.le_max_left 109 T) (Nat.le_max_right M (max 109 T)))
  have hlarge : 110 ≤ n := by omega
  have hMn : M < n := Nat.lt_of_not_ge hnM
  obtain ⟨p, q, h, k, r, s, A, C, _, _, hpMem, hqMem, hpq, _, _,
    hh, hk, hr, hs, hA, hC, hAM, hCM, hP, hQ, _⟩ :=
      actual_i11_bounded_cofactor_bridge hM hlarge hMn hnH hij hjn hcertificate hno
  have hT : n ≤ T := distinct_pair_windows_bound data
    check23 check25 check27 check35 check37 check57 hpMem hqMem hpq hnH hr hs
    (Nat.succ_le_of_lt hh) (Nat.succ_le_of_lt hk) hA hC hAM hCM hP hQ
  exact Nat.le_trans hT
    (Nat.le_trans (Nat.le_max_right 109 T) (Nat.le_max_right M (max 109 T)))

/-- Inclusive upper bound to strict next-stage input; no strict decrease is
asserted unless the separately computed nextHeight is smaller than H. -/
theorem actual_i11_next_height (data : SixPairGrids) {n j H M T : ℕ}
    (hconstants : stageConstantsCheck H M = true)
    (check23 : pairGridCheck 2 3 H M T data.grid23 = true)
    (check25 : pairGridCheck 2 5 H M T data.grid25 = true)
    (check27 : pairGridCheck 2 7 H M T data.grid27 = true)
    (check35 : pairGridCheck 3 5 H M T data.grid35 = true)
    (check37 : pairGridCheck 3 7 H M T data.grid37 = true)
    (check57 : pairGridCheck 5 7 H M T data.grid57 = true)
    (hij : 11 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 11 j) (hnH : n < H) :
    n < nextHeight M T := by
  change n < Nat.succ (stageBound M T)
  exact Nat.lt_succ_of_le (actual_i11_step data hconstants
    check23 check25 check27 check35 check37 check57 hij hjn hno hnH)

end Math.B699.I11CRTSixPair
#print axioms Math.B699.I11CRTSixPair.stageConstantsCheck_spec
#print axioms Math.B699.I11CRTSixPair.actual_i11_step
#print axioms Math.B699.I11CRTSixPair.actual_i11_next_height
