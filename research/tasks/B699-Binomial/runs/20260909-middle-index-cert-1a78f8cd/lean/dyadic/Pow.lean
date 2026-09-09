import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.dyadic.Base

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699Dyadic

/-- Binary exponentiation, rounding downward after each multiplication. -/
def powDown (bits : ℕ) (x : Dyadic) (k : ℕ) : Dyadic :=
  if hk : k = 0 then one
  else
    let half := powDown bits x (k / 2)
    let square := mulDown bits half half
    if k % 2 = 0 then square else mulDown bits square x
termination_by k
decreasing_by exact Nat.div_lt_self (Nat.pos_of_ne_zero hk) (by decide)

/-- Binary exponentiation, rounding upward after each multiplication. -/
def powUp (bits : ℕ) (x : Dyadic) (k : ℕ) : Dyadic :=
  if hk : k = 0 then one
  else
    let half := powUp bits x (k / 2)
    let square := mulUp bits half half
    if k % 2 = 0 then square else mulUp bits square x
termination_by k
decreasing_by exact Nat.div_lt_self (Nat.pos_of_ne_zero hk) (by decide)

theorem powDown_le (bits : ℕ) (x : Dyadic) (k : ℕ) :
    (powDown bits x k).value ≤ x.value ^ k := by
  induction k using Nat.strong_induction_on with
  | h k ih =>
    by_cases hk : k = 0
    · subst k
      rw [powDown]
      simp
    · have hhalf : k / 2 < k := Nat.div_lt_self (Nat.pos_of_ne_zero hk) (by decide)
      have hb := ih (k / 2) hhalf
      have hs :
          (mulDown bits (powDown bits x (k / 2)) (powDown bits x (k / 2))).value ≤
            x.value ^ (k / 2 + k / 2) := by
        calc
          _ ≤ (powDown bits x (k / 2)).value * (powDown bits x (k / 2)).value :=
            mulDown_le _ _ _
          _ ≤ x.value ^ (k / 2) * x.value ^ (k / 2) := Nat.mul_le_mul hb hb
          _ = x.value ^ (k / 2 + k / 2) := (pow_add _ _ _).symm
      have hm := Nat.mod_lt k (by decide : 0 < 2)
      have he := Nat.mod_add_div k 2
      rw [powDown]
      simp only [hk, dite_false, if_false]
      by_cases hr : k % 2 = 0
      · simp only [hr, if_true]
        have hexp : k / 2 + k / 2 = k := by omega
        simpa only [hexp] using hs
      · simp only [hr, if_false]
        have hexp : k / 2 + k / 2 + 1 = k := by omega
        calc
          _ ≤ (mulDown bits (powDown bits x (k / 2))
              (powDown bits x (k / 2))).value * x.value := mulDown_le _ _ _
          _ ≤ x.value ^ (k / 2 + k / 2) * x.value :=
            Nat.mul_le_mul hs (Nat.le_refl _)
          _ = x.value ^ (k / 2 + k / 2 + 1) := (pow_succ _ _).symm
          _ = x.value ^ k := by rw [hexp]

theorem pow_le_powUp (bits : ℕ) (x : Dyadic) (k : ℕ) :
    x.value ^ k ≤ (powUp bits x k).value := by
  induction k using Nat.strong_induction_on with
  | h k ih =>
    by_cases hk : k = 0
    · subst k
      rw [powUp]
      simp
    · have hhalf : k / 2 < k := Nat.div_lt_self (Nat.pos_of_ne_zero hk) (by decide)
      have hb := ih (k / 2) hhalf
      have hs : x.value ^ (k / 2 + k / 2) ≤
          (mulUp bits (powUp bits x (k / 2)) (powUp bits x (k / 2))).value := by
        calc
          _ = x.value ^ (k / 2) * x.value ^ (k / 2) := pow_add _ _ _
          _ ≤ (powUp bits x (k / 2)).value * (powUp bits x (k / 2)).value :=
            Nat.mul_le_mul hb hb
          _ ≤ (mulUp bits (powUp bits x (k / 2)) (powUp bits x (k / 2))).value :=
            mul_le_mulUp _ _ _
      have hm := Nat.mod_lt k (by decide : 0 < 2)
      have he := Nat.mod_add_div k 2
      rw [powUp]
      simp only [hk, dite_false, if_false]
      by_cases hr : k % 2 = 0
      · simp only [hr, if_true]
        have hexp : k / 2 + k / 2 = k := by omega
        simpa only [hexp] using hs
      · simp only [hr, if_false]
        have hexp : k / 2 + k / 2 + 1 = k := by omega
        calc
          x.value ^ k = x.value ^ (k / 2 + k / 2 + 1) := by rw [hexp]
          _ = x.value ^ (k / 2 + k / 2) * x.value := pow_succ _ _
          _ ≤ (mulUp bits (powUp bits x (k / 2))
              (powUp bits x (k / 2))).value * x.value :=
            Nat.mul_le_mul hs (Nat.le_refl _)
          _ ≤ _ := mul_le_mulUp _ _ _

end B699Dyadic

#print axioms B699Dyadic.powDown_le
#print axioms B699Dyadic.pow_le_powUp
