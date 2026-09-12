import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-crt-pair-max-5e2d13bb».Bounds

/-!
# A checkable complete CRT pair upper-bound consumer

UNCOMPILED CANDIDATE. Certificates supply only two integer parameter bounds
and strict affine checks. The returned n-bound is computed, never assumed.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.CRTPairMax

structure BoundsDatum where
  lo : ℤ
  hi : ℤ
  deriving DecidableEq, Repr

def pairBoundCheck (P Q v capA capC w : ℕ) (d : ℤ) (bounds : BoundsDatum) : Bool :=
  decide (2 ≤ P ∧ 2 ≤ Q ∧ (P * v) % Q = 1 ∧ -(w : ℤ) ≤ d ∧ d ≤ (w : ℤ) ∧
    lowerCondition P Q v d bounds.lo ∧ upperCondition P Q v capA capC d bounds.hi)

/-- Every original positive bounded cofactor solution lies in the certified
integer parameter interval, including when the seed C-coordinate is negative. -/
theorem pairBoundCheck_parameters {P Q v capA capC w A C : ℕ} {d : ℤ}
    {bounds : BoundsDatum} (hcheck : pairBoundCheck P Q v capA capC w d bounds = true)
    (hA : 1 ≤ A) (hC : 1 ≤ C) (hAcap : A ≤ capA) (hCcap : C ≤ capC)
    (heq : (P : ℤ) * (A : ℤ) - (Q : ℤ) * (C : ℤ) = d) :
    ∃ t : ℤ, 0 ≤ t ∧ bounds.lo ≤ t ∧ t ≤ bounds.hi ∧
      (A : ℤ) = coordinateA Q v d t ∧ (C : ℤ) = coordinateC P Q v d t := by
  unfold pairBoundCheck at hcheck
  have hmeta : 2 ≤ P ∧ 2 ≤ Q ∧ (P * v) % Q = 1 ∧ -(w : ℤ) ≤ d ∧ d ≤ (w : ℤ) ∧
      lowerCondition P Q v d bounds.lo ∧ upperCondition P Q v capA capC d bounds.hi :=
    of_decide_eq_true hcheck
  rcases hmeta with ⟨_hp, hq, hinv, _hdlo, _hdhi, hlo, hhi⟩
  obtain ⟨t, ht, hAt, hCt⟩ := solution_parameterization (by omega : 1 < Q) hinv
    (by omega : 0 < A) heq
  have hAI : (A : ℤ) = coordinateA Q v d t := hAt
  have hCI : (C : ℤ) = coordinateC P Q v d t := hCt
  have hCposI : 1 ≤ coordinateC P Q v d t := by rw [← hCI]; omega
  have hAcapI : coordinateA Q v d t ≤ (capA : ℤ) := by rw [← hAI]; omega
  have hCcapI : coordinateC P Q v d t ≤ (capC : ℤ) := by rw [← hCI]; omega
  have hb := parameter_bounds hlo hhi ht hCposI hAcapI hCcapI
  exact ⟨t, ht, hb.1, hb.2, hAI, hCI⟩

/-- A reversed parameter interval certifies that there are no feasible cofactors.
For example capA<rho is covered by lo=0, hi=-1 and the A cap violation. -/
theorem pairBoundCheck_empty {P Q v capA capC w A C : ℕ} {d : ℤ}
    {bounds : BoundsDatum} (hcheck : pairBoundCheck P Q v capA capC w d bounds = true)
    (hempty : bounds.hi < bounds.lo)
    (hA : 1 ≤ A) (hC : 1 ≤ C) (hAcap : A ≤ capA) (hCcap : C ≤ capC)
    (heq : (P : ℤ) * (A : ℤ) - (Q : ℤ) * (C : ℤ) = d) : False := by
  obtain ⟨t, _ht, hlo, hhi, _hAI, _hCI⟩ :=
    pairBoundCheck_parameters hcheck hA hC hAcap hCcap heq
  omega

/-- The affine value at the certified upper parameter bounds the actual window
maximum. No searched maximum or maximum-validity proposition is a premise. -/
theorem pairBoundCheck_upper_int {P Q v capA capC w A C n : ℕ} {d : ℤ}
    {bounds : BoundsDatum} (hcheck : pairBoundCheck P Q v capA capC w d bounds = true)
    (hA : 1 ≤ A) (hC : 1 ≤ C) (hAcap : A ≤ capA) (hCcap : C ≤ capC)
    (heq : (P : ℤ) * (A : ℤ) - (Q : ℤ) * (C : ℤ) = d)
    (hn : n ≤ min (P * A) (Q * C) + w) :
    (n : ℤ) ≤ upperValue P Q v w d bounds.hi := by
  obtain ⟨t, _ht, _hlo, hhi, hAI, hCI⟩ :=
    pairBoundCheck_parameters hcheck hA hC hAcap hCcap heq
  have hnt : (n : ℤ) ≤ upperValue P Q v w d t := by
    unfold upperValue
    rw [← hAI, ← hCI]
    exact_mod_cast hn
  exact hnt.trans (upperValue_mono hhi)

theorem pairBoundCheck_upper_nat {P Q v capA capC w A C n : ℕ} {d : ℤ}
    {bounds : BoundsDatum} (hcheck : pairBoundCheck P Q v capA capC w d bounds = true)
    (hA : 1 ≤ A) (hC : 1 ≤ C) (hAcap : A ≤ capA) (hCcap : C ≤ capC)
    (heq : (P : ℤ) * (A : ℤ) - (Q : ℤ) * (C : ℤ) = d)
    (hn : n ≤ min (P * A) (Q * C) + w) :
    n ≤ (upperValue P Q v w d bounds.hi).toNat := by
  have hbound := pairBoundCheck_upper_int hcheck hA hC hAcap hCcap heq hn
  omega

end Math.B699.CRTPairMax
