/- leanprover/lean4:v4.29.1  mathlib v4.29.1 -/
import ErdosProblems.Erdos686ConstantQuotient

/-!
# Erdős Problem 686: row-1 base-quotient confinement

For the `N = 4` exclusion with `5 ≤ k ≤ 15` and gap `d ≥ 221`, the exact
ratio window

* `(n + d + k)^k ≤ 4·(n + k)^k`  (upper window), and
* `4·(n + 1)^k ≤ (n + d + 1)^k`  (lower window)

forces `n + 1 ≈ c(k)·d` where `c(k) = 1/(4^(1/k) − 1)`.  With `d ≥ 221`
the floor `(n + 1)/d` is pinned to a single table value `constantQuotientOf k`
for every `k` except `k = 9`, where `c(9) ≈ 6.005` sits just above `6` and
the floor can also be `5` (for bounded `d`); the main theorem
`row_base_quotient_confined_of_window` records exactly this dichotomy.

The proofs linearize the ratio window through per-`k` rational brackets
`A/B ≈ 4^(1/k)` (certified by `norm_num` on the integer power inequalities
`4·B^k < A^k`, resp. `A^k < 4·B^k`) via the bracket lemmas
`ratio_window_linearize_of_pow_bracket` and
`ratio_window_upper_linearize_of_pow_bracket` from `Erdos686.lean`;
the remaining arithmetic is linear and closed by `omega`.

The companion `window_n_upper_bound_of_d_le` is a crude uniform bound
`n + 1 ≤ 11·(d + 1)` valid for all `1 ≤ k ≤ 15`, obtained by raising the
lower window to exponent `15` and linearizing with the bracket
`12^15 < 4·11^15`.
-/

namespace Erdos686

namespace Erdos686Variant

/-- Expected row-1 base quotient `(n+1)/d = ⌊c(k)⌋`-table for the `N = 4`
window, `5 ≤ k ≤ 15` (for `k = 9` the generic value; the floor `5` is also
possible there, see `row_base_quotient_confined_of_window`). -/
def constantQuotientOf : ℕ → ℕ
  | 5 => 3 | 6 => 3 | 7 => 4 | 8 => 5 | 9 => 6 | 10 => 6
  | 11 => 7 | 12 => 8 | 13 => 8 | 14 => 9 | 15 => 10
  | _ => 0

/-- Two-sided bound characterization of the natural-number quotient. -/
private lemma div_eq_of_le_of_lt {m d q : ℕ} (hd : 0 < d)
    (h1 : q * d ≤ m) (h2 : m < (q + 1) * d) : m / d = q := by
  have hle : q ≤ m / d := (Nat.le_div_iff_mul_le hd).mpr h1
  have hlt : m / d < q + 1 := (Nat.div_lt_iff_lt_mul hd).mpr h2
  exact Nat.le_antisymm (Nat.lt_succ_iff.mp hlt) hle

/-! ## Per-`k` lower bounds `q·d ≤ n + 1`

Each lemma instantiates `ratio_window_linearize_of_pow_bracket` with a
rational bracket `A/B` just above `4^(1/k)` (so `4·B^k < A^k`), chosen with
`B/(A−B)` above `q + (k−1)/221` so that `d ≥ 221` absorbs the `k`-offset. -/

/-- `k = 5` lower confinement (bracket `41/31 > 4^(1/5)`). -/
lemma row_base_lower_k5 {n d : ℕ} (hd : 221 ≤ d)
    (hup : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5) : 3 * d ≤ n + 1 := by
  have hlin :=
    ratio_window_linearize_of_pow_bracket (N := 4) (A := 41) (B := 31)
      (k := 5) (n := n) (d := d) (by norm_num) (by norm_num) hup
  omega

/-- `k = 6` lower confinement (bracket `24/19 > 4^(1/6)`). -/
lemma row_base_lower_k6 {n d : ℕ} (hd : 221 ≤ d)
    (hup : (n + d + 6) ^ 6 ≤ 4 * (n + 6) ^ 6) : 3 * d ≤ n + 1 := by
  have hlin :=
    ratio_window_linearize_of_pow_bracket (N := 4) (A := 24) (B := 19)
      (k := 6) (n := n) (d := d) (by norm_num) (by norm_num) hup
  omega

/-- `k = 7` lower confinement (bracket `11/9 > 4^(1/7)`). -/
lemma row_base_lower_k7 {n d : ℕ} (hd : 221 ≤ d)
    (hup : (n + d + 7) ^ 7 ≤ 4 * (n + 7) ^ 7) : 4 * d ≤ n + 1 := by
  have hlin :=
    ratio_window_linearize_of_pow_bracket (N := 4) (A := 11) (B := 9)
      (k := 7) (n := n) (d := d) (by norm_num) (by norm_num) hup
  omega

/-- `k = 8` lower confinement (bracket `25/21 > 4^(1/8)`). -/
lemma row_base_lower_k8 {n d : ℕ} (hd : 221 ≤ d)
    (hup : (n + d + 8) ^ 8 ≤ 4 * (n + 8) ^ 8) : 5 * d ≤ n + 1 := by
  have hlin :=
    ratio_window_linearize_of_pow_bracket (N := 4) (A := 25) (B := 21)
      (k := 8) (n := n) (d := d) (by norm_num) (by norm_num) hup
  omega

/-- `k = 9` lower confinement (bracket `7/6 > 4^(1/9)`); only `5·d ≤ n + 1`
is claimed since `c(9) ≈ 6.005` sits too close to `6` to force the floor
`6` for every `d ≥ 221`. -/
lemma row_base_lower_k9 {n d : ℕ} (hd : 221 ≤ d)
    (hup : (n + d + 9) ^ 9 ≤ 4 * (n + 9) ^ 9) : 5 * d ≤ n + 1 := by
  have hlin :=
    ratio_window_linearize_of_pow_bracket (N := 4) (A := 7) (B := 6)
      (k := 9) (n := n) (d := d) (by norm_num) (by norm_num) hup
  omega

/-- `k = 10` lower confinement (bracket `23/20 > 4^(1/10)`). -/
lemma row_base_lower_k10 {n d : ℕ} (hd : 221 ≤ d)
    (hup : (n + d + 10) ^ 10 ≤ 4 * (n + 10) ^ 10) : 6 * d ≤ n + 1 := by
  have hlin :=
    ratio_window_linearize_of_pow_bracket (N := 4) (A := 23) (B := 20)
      (k := 10) (n := n) (d := d) (by norm_num) (by norm_num) hup
  omega

/-- `k = 11` lower confinement (bracket `25/22 > 4^(1/11)`). -/
lemma row_base_lower_k11 {n d : ℕ} (hd : 221 ≤ d)
    (hup : (n + d + 11) ^ 11 ≤ 4 * (n + 11) ^ 11) : 7 * d ≤ n + 1 := by
  have hlin :=
    ratio_window_linearize_of_pow_bracket (N := 4) (A := 25) (B := 22)
      (k := 11) (n := n) (d := d) (by norm_num) (by norm_num) hup
  omega

/-- `k = 12` lower confinement (bracket `73/65 > 4^(1/12)`). -/
lemma row_base_lower_k12 {n d : ℕ} (hd : 221 ≤ d)
    (hup : (n + d + 12) ^ 12 ≤ 4 * (n + 12) ^ 12) : 8 * d ≤ n + 1 := by
  have hlin :=
    ratio_window_linearize_of_pow_bracket (N := 4) (A := 73) (B := 65)
      (k := 12) (n := n) (d := d) (by norm_num) (by norm_num) hup
  omega

/-- `k = 13` lower confinement (bracket `29/26 > 4^(1/13)`). -/
lemma row_base_lower_k13 {n d : ℕ} (hd : 221 ≤ d)
    (hup : (n + d + 13) ^ 13 ≤ 4 * (n + 13) ^ 13) : 8 * d ≤ n + 1 := by
  have hlin :=
    ratio_window_linearize_of_pow_bracket (N := 4) (A := 29) (B := 26)
      (k := 13) (n := n) (d := d) (by norm_num) (by norm_num) hup
  omega

/-- `k = 14` lower confinement (bracket `21/19 > 4^(1/14)`). -/
lemma row_base_lower_k14 {n d : ℕ} (hd : 221 ≤ d)
    (hup : (n + d + 14) ^ 14 ≤ 4 * (n + 14) ^ 14) : 9 * d ≤ n + 1 := by
  have hlin :=
    ratio_window_linearize_of_pow_bracket (N := 4) (A := 21) (B := 19)
      (k := 14) (n := n) (d := d) (by norm_num) (by norm_num) hup
  omega

/-- `k = 15` lower confinement (bracket `45/41 > 4^(1/15)`). -/
lemma row_base_lower_k15 {n d : ℕ} (hd : 221 ≤ d)
    (hup : (n + d + 15) ^ 15 ≤ 4 * (n + 15) ^ 15) : 10 * d ≤ n + 1 := by
  have hlin :=
    ratio_window_linearize_of_pow_bracket (N := 4) (A := 45) (B := 41)
      (k := 15) (n := n) (d := d) (by norm_num) (by norm_num) hup
  omega

/-! ## Per-`k` upper bounds `n + 1 < (q+1)·d`

Each lemma instantiates `ratio_window_upper_linearize_of_pow_bracket` with
the successor fraction `(q+2)/(q+1) < 4^(1/k)` (equivalently
`(q+2)^k < 4·(q+1)^k`, i.e. `c(k) < q + 1`), which yields
`(q+2)(n+1) < (q+1)(n+d+1)` and hence `n + 1 < (q+1)·d` with no offset
slack at all — no lower bound on `d` is needed on this side. -/

/-- `k = 5` upper confinement (bracket `5/4 < 4^(1/5)`). -/
lemma row_base_upper_k5 {n d : ℕ}
    (hlo : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) : n + 1 < 4 * d := by
  have hlin :=
    ratio_window_upper_linearize_of_pow_bracket (N := 4) (A := 5) (B := 4)
      (k := 5) (n := n) (d := d) (by norm_num) (by norm_num) hlo
  omega

/-- `k = 6` upper confinement (bracket `5/4 < 4^(1/6)`). -/
lemma row_base_upper_k6 {n d : ℕ}
    (hlo : 4 * (n + 1) ^ 6 ≤ (n + d + 1) ^ 6) : n + 1 < 4 * d := by
  have hlin :=
    ratio_window_upper_linearize_of_pow_bracket (N := 4) (A := 5) (B := 4)
      (k := 6) (n := n) (d := d) (by norm_num) (by norm_num) hlo
  omega

/-- `k = 7` upper confinement (bracket `6/5 < 4^(1/7)`). -/
lemma row_base_upper_k7 {n d : ℕ}
    (hlo : 4 * (n + 1) ^ 7 ≤ (n + d + 1) ^ 7) : n + 1 < 5 * d := by
  have hlin :=
    ratio_window_upper_linearize_of_pow_bracket (N := 4) (A := 6) (B := 5)
      (k := 7) (n := n) (d := d) (by norm_num) (by norm_num) hlo
  omega

/-- `k = 8` upper confinement (bracket `7/6 < 4^(1/8)`). -/
lemma row_base_upper_k8 {n d : ℕ}
    (hlo : 4 * (n + 1) ^ 8 ≤ (n + d + 1) ^ 8) : n + 1 < 6 * d := by
  have hlin :=
    ratio_window_upper_linearize_of_pow_bracket (N := 4) (A := 7) (B := 6)
      (k := 8) (n := n) (d := d) (by norm_num) (by norm_num) hlo
  omega

/-- `k = 9` upper confinement (bracket `8/7 < 4^(1/9)`). -/
lemma row_base_upper_k9 {n d : ℕ}
    (hlo : 4 * (n + 1) ^ 9 ≤ (n + d + 1) ^ 9) : n + 1 < 7 * d := by
  have hlin :=
    ratio_window_upper_linearize_of_pow_bracket (N := 4) (A := 8) (B := 7)
      (k := 9) (n := n) (d := d) (by norm_num) (by norm_num) hlo
  omega

/-- `k = 10` upper confinement (bracket `8/7 < 4^(1/10)`). -/
lemma row_base_upper_k10 {n d : ℕ}
    (hlo : 4 * (n + 1) ^ 10 ≤ (n + d + 1) ^ 10) : n + 1 < 7 * d := by
  have hlin :=
    ratio_window_upper_linearize_of_pow_bracket (N := 4) (A := 8) (B := 7)
      (k := 10) (n := n) (d := d) (by norm_num) (by norm_num) hlo
  omega

/-- `k = 11` upper confinement (bracket `9/8 < 4^(1/11)`). -/
lemma row_base_upper_k11 {n d : ℕ}
    (hlo : 4 * (n + 1) ^ 11 ≤ (n + d + 1) ^ 11) : n + 1 < 8 * d := by
  have hlin :=
    ratio_window_upper_linearize_of_pow_bracket (N := 4) (A := 9) (B := 8)
      (k := 11) (n := n) (d := d) (by norm_num) (by norm_num) hlo
  omega

/-- `k = 12` upper confinement (bracket `10/9 < 4^(1/12)`). -/
lemma row_base_upper_k12 {n d : ℕ}
    (hlo : 4 * (n + 1) ^ 12 ≤ (n + d + 1) ^ 12) : n + 1 < 9 * d := by
  have hlin :=
    ratio_window_upper_linearize_of_pow_bracket (N := 4) (A := 10) (B := 9)
      (k := 12) (n := n) (d := d) (by norm_num) (by norm_num) hlo
  omega

/-- `k = 13` upper confinement (bracket `10/9 < 4^(1/13)`). -/
lemma row_base_upper_k13 {n d : ℕ}
    (hlo : 4 * (n + 1) ^ 13 ≤ (n + d + 1) ^ 13) : n + 1 < 9 * d := by
  have hlin :=
    ratio_window_upper_linearize_of_pow_bracket (N := 4) (A := 10) (B := 9)
      (k := 13) (n := n) (d := d) (by norm_num) (by norm_num) hlo
  omega

/-- `k = 14` upper confinement (bracket `11/10 < 4^(1/14)`). -/
lemma row_base_upper_k14 {n d : ℕ}
    (hlo : 4 * (n + 1) ^ 14 ≤ (n + d + 1) ^ 14) : n + 1 < 10 * d := by
  have hlin :=
    ratio_window_upper_linearize_of_pow_bracket (N := 4) (A := 11) (B := 10)
      (k := 14) (n := n) (d := d) (by norm_num) (by norm_num) hlo
  omega

/-- `k = 15` upper confinement (bracket `12/11 < 4^(1/15)`). -/
lemma row_base_upper_k15 {n d : ℕ}
    (hlo : 4 * (n + 1) ^ 15 ≤ (n + d + 1) ^ 15) : n + 1 < 11 * d := by
  have hlin :=
    ratio_window_upper_linearize_of_pow_bracket (N := 4) (A := 12) (B := 11)
      (k := 15) (n := n) (d := d) (by norm_num) (by norm_num) hlo
  omega

/-! ## Main confinement theorem -/

/--
Row-1 base-quotient confinement for the `N = 4` ratio window: for
`5 ≤ k ≤ 15` and `d ≥ 221` the base quotient `(n+1)/d` equals the table
value `constantQuotientOf k`, except that for `k = 9` (where
`c(9) = 1/(4^(1/9) − 1) ≈ 6.005` sits just above `6`) the value `5` also
remains possible.
-/
theorem row_base_quotient_confined_of_window
    {k n d : ℕ} (hk5 : 5 ≤ k) (hk15 : k ≤ 15) (hd : 221 ≤ d)
    (hup : (n + d + k) ^ k ≤ 4 * (n + k) ^ k)
    (hlo : 4 * (n + 1) ^ k ≤ (n + d + 1) ^ k) :
    (n + 1) / d = constantQuotientOf k ∨ (k = 9 ∧ (n + 1) / d = 5) := by
  have hd0 : 0 < d := by omega
  interval_cases k
  · -- k = 5, quotient 3
    have h1 := row_base_lower_k5 hd hup
    have h2 := row_base_upper_k5 hlo
    have hq : (n + 1) / d = 3 := div_eq_of_le_of_lt hd0 h1 (by omega)
    exact Or.inl hq
  · -- k = 6, quotient 3
    have h1 := row_base_lower_k6 hd hup
    have h2 := row_base_upper_k6 hlo
    have hq : (n + 1) / d = 3 := div_eq_of_le_of_lt hd0 h1 (by omega)
    exact Or.inl hq
  · -- k = 7, quotient 4
    have h1 := row_base_lower_k7 hd hup
    have h2 := row_base_upper_k7 hlo
    have hq : (n + 1) / d = 4 := div_eq_of_le_of_lt hd0 h1 (by omega)
    exact Or.inl hq
  · -- k = 8, quotient 5
    have h1 := row_base_lower_k8 hd hup
    have h2 := row_base_upper_k8 hlo
    have hq : (n + 1) / d = 5 := div_eq_of_le_of_lt hd0 h1 (by omega)
    exact Or.inl hq
  · -- k = 9, quotient 5 or 6
    have h1 := row_base_lower_k9 hd hup
    have h2 := row_base_upper_k9 hlo
    by_cases h6 : n + 1 < 6 * d
    · have hq : (n + 1) / d = 5 := div_eq_of_le_of_lt hd0 h1 (by omega)
      exact Or.inr ⟨rfl, hq⟩
    · have hq : (n + 1) / d = 6 :=
        div_eq_of_le_of_lt hd0 (by omega) (by omega)
      exact Or.inl hq
  · -- k = 10, quotient 6
    have h1 := row_base_lower_k10 hd hup
    have h2 := row_base_upper_k10 hlo
    have hq : (n + 1) / d = 6 := div_eq_of_le_of_lt hd0 h1 (by omega)
    exact Or.inl hq
  · -- k = 11, quotient 7
    have h1 := row_base_lower_k11 hd hup
    have h2 := row_base_upper_k11 hlo
    have hq : (n + 1) / d = 7 := div_eq_of_le_of_lt hd0 h1 (by omega)
    exact Or.inl hq
  · -- k = 12, quotient 8
    have h1 := row_base_lower_k12 hd hup
    have h2 := row_base_upper_k12 hlo
    have hq : (n + 1) / d = 8 := div_eq_of_le_of_lt hd0 h1 (by omega)
    exact Or.inl hq
  · -- k = 13, quotient 8
    have h1 := row_base_lower_k13 hd hup
    have h2 := row_base_upper_k13 hlo
    have hq : (n + 1) / d = 8 := div_eq_of_le_of_lt hd0 h1 (by omega)
    exact Or.inl hq
  · -- k = 14, quotient 9
    have h1 := row_base_lower_k14 hd hup
    have h2 := row_base_upper_k14 hlo
    have hq : (n + 1) / d = 9 := div_eq_of_le_of_lt hd0 h1 (by omega)
    exact Or.inl hq
  · -- k = 15, quotient 10
    have h1 := row_base_lower_k15 hd hup
    have h2 := row_base_upper_k15 hlo
    have hq : (n + 1) / d = 10 := div_eq_of_le_of_lt hd0 h1 (by omega)
    exact Or.inl hq

/-! ## Uniform crude upper bound -/

/--
Uniform crude bound for the lower ratio window: for every `1 ≤ k ≤ 15`,
`4·(n+1)^k ≤ (n+d+1)^k` forces `n + 1 ≤ 11·(d + 1)` (since
`c(k) ≤ c(15) ≈ 10.33 < 11`).  The window is raised to exponent `15`
using monotonicity in the exponent and then linearized with the `k = 15`
bracket `12^15 < 4·11^15`.
-/
theorem window_n_upper_bound_of_d_le
    {k n d : ℕ} (hk1 : 1 ≤ k) (hk15 : k ≤ 15)
    (hlo : 4 * (n + 1) ^ k ≤ (n + d + 1) ^ k) :
    n + 1 ≤ 11 * (d + 1) := by
  have hpow15 : 4 * (n + 1) ^ 15 ≤ (n + d + 1) ^ 15 := by
    have e1 : (n + 1) ^ 15 = (n + 1) ^ k * (n + 1) ^ (15 - k) := by
      rw [← pow_add]
      congr 1
      omega
    have e2 : (n + d + 1) ^ 15 = (n + d + 1) ^ k * (n + d + 1) ^ (15 - k) := by
      rw [← pow_add]
      congr 1
      omega
    have hmono : (n + 1) ^ (15 - k) ≤ (n + d + 1) ^ (15 - k) :=
      Nat.pow_le_pow_left (by omega) _
    calc 4 * (n + 1) ^ 15
        = 4 * (n + 1) ^ k * (n + 1) ^ (15 - k) := by rw [e1, mul_assoc]
      _ ≤ 4 * (n + 1) ^ k * (n + d + 1) ^ (15 - k) :=
          Nat.mul_le_mul le_rfl hmono
      _ ≤ (n + d + 1) ^ k * (n + d + 1) ^ (15 - k) :=
          Nat.mul_le_mul hlo le_rfl
      _ = (n + d + 1) ^ 15 := e2.symm
  have hlin :=
    ratio_window_upper_linearize_of_pow_bracket (N := 4) (A := 12) (B := 11)
      (k := 15) (n := n) (d := d) (by norm_num) (by norm_num) hpow15
  omega

end Erdos686Variant

end Erdos686
