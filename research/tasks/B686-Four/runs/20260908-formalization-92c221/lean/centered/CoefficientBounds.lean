import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.centered.RootPolynomial

namespace B686CenteredRunge

open Finset Polynomial

noncomputable section

theorem radicand_degree_le (a : ℕ → ℤ) (r : ℕ) :
    (radicand a r).natDegree ≤ 2 * r := by
  induction r with
  | zero => simp [radicand]
  | succ r ih =>
    rw [radicand, prod_range_succ]
    have hfac : (X ^ 2 - C (a r ^ 2)).natDegree ≤ 2 :=
      (natDegree_sub_le _ _).trans (by simp)
    have hh := natDegree_mul_le (p := radicand a r) (q := X ^ 2 - C (a r ^ 2))
    change (radicand a r * (X ^ 2 - C (a r ^ 2))).natDegree ≤ _
    omega

theorem radicand_coeff_bound (a : ℕ → ℤ) (k : ℤ) (hk : 0 ≤ k)
    (r h : ℕ) (ha : ∀ i < r, |a i| ≤ k) (hh : h ≤ 2 * r) :
    |(radicand a r).coeff h| ≤ 2 ^ r * k ^ (2 * r - h) := by
  induction r generalizing h with
  | zero =>
    have hz : h = 0 := by omega
    subst h
    simp [radicand]
  | succ r ih =>
    have hprev (j : ℕ) (hj : j ≤ 2 * r) :
        |(radicand a r).coeff j| ≤ 2 ^ r * k ^ (2 * r - j) :=
      ih j (fun i hi => ha i (by omega)) hj
    have ha2 : a r ^ 2 ≤ k ^ 2 := by
      have hh := ha r (by omega)
      nlinarith [sq_abs (a r), abs_nonneg (a r)]
    have hfirst : |if 2 ≤ h then (radicand a r).coeff (h - 2) else 0| ≤
        2 ^ r * k ^ (2 * (r + 1) - h) := by
      split_ifs with hi
      · have hb := hprev (h - 2) (by omega)
        convert hb using 1
        congr 2
        omega
      · simp only [abs_zero]
        positivity
    have hsecond : |(radicand a r).coeff h * a r ^ 2| ≤
        2 ^ r * k ^ (2 * (r + 1) - h) := by
      by_cases hi : h ≤ 2 * r
      · rw [abs_mul, abs_of_nonneg (sq_nonneg (a r))]
        calc
          _ ≤ (2 ^ r * k ^ (2 * r - h)) * k ^ 2 :=
            mul_le_mul (hprev h hi) ha2 (sq_nonneg _) (by positivity)
          _ = 2 ^ r * k ^ (2 * (r + 1) - h) := by
            rw [mul_assoc, ← pow_add]
            congr 2
            omega
      · rw [coeff_eq_zero_of_natDegree_lt ((radicand_degree_le a r).trans_lt (by omega))]
        simp only [zero_mul, abs_zero]
        positivity
    rw [radicand, prod_range_succ]
    change |(radicand a r * (X ^ 2 - C (a r ^ 2))).coeff h| ≤ _
    rw [mul_sub, coeff_sub, coeff_mul_X_pow', coeff_mul_C]
    have ht := abs_add_le
      (if 2 ≤ h then (radicand a r).coeff (h - 2) else 0)
      (-(radicand a r).coeff h * a r ^ 2)
    have ht' : |(if 2 ≤ h then (radicand a r).coeff (h - 2) else 0) -
        (radicand a r).coeff h * a r ^ 2| ≤
        |if 2 ≤ h then (radicand a r).coeff (h - 2) else 0| +
          |(radicand a r).coeff h * a r ^ 2| := by
      simpa only [neg_mul, abs_neg, sub_eq_add_neg] using ht
    rw [pow_succ (2 : ℤ) r]
    nlinarith only [hfirst, hsecond, ht']

theorem mul_coeff_weighted_bound (p q : ℤ[X]) (Cp Cq k : ℤ) (d e h : ℕ)
    (hCp : 0 ≤ Cp) (hCq : 0 ≤ Cq) (hk : 0 ≤ k)
    (hpd : p.natDegree ≤ d) (hqe : q.natDegree ≤ e) (hh : h ≤ d + e)
    (hp : ∀ i ≤ d, |p.coeff i| ≤ Cp * k ^ (d - i))
    (hq : ∀ i ≤ e, |q.coeff i| ≤ Cq * k ^ (e - i)) :
    |(p * q).coeff h| ≤ (h + 1 : ℤ) * Cp * Cq * k ^ (d + e - h) := by
  rw [coeff_mul, Finset.Nat.sum_antidiagonal_eq_sum_range_succ
    (fun i j => p.coeff i * q.coeff j) h]
  calc
    |∑ i ∈ range (h + 1), p.coeff i * q.coeff (h - i)| ≤
        ∑ i ∈ range (h + 1), |p.coeff i * q.coeff (h - i)| := abs_sum_le_sum_abs _ _
    _ ≤ ∑ _i ∈ range (h + 1), Cp * Cq * k ^ (d + e - h) := by
      apply sum_le_sum
      intro i hi
      have hih : i ≤ h := by simpa using hi
      by_cases hid : i ≤ d
      · by_cases hie : h - i ≤ e
        · rw [abs_mul]
          calc
            _ ≤ (Cp * k ^ (d - i)) * (Cq * k ^ (e - (h - i))) :=
              mul_le_mul (hp i hid) (hq (h - i) hie) (abs_nonneg _) (by positivity)
            _ = Cp * Cq * k ^ (d + e - h) := by
              have heq : d - i + (e - (h - i)) = d + e - h := by omega
              rw [show (Cp * k ^ (d - i)) * (Cq * k ^ (e - (h - i))) =
                Cp * Cq * (k ^ (d - i) * k ^ (e - (h - i))) by ring, ← pow_add, heq]
        · rw [coeff_eq_zero_of_natDegree_lt (hqe.trans_lt (by omega)), mul_zero, abs_zero]
          positivity
      · rw [coeff_eq_zero_of_natDegree_lt (hpd.trans_lt (by omega)), zero_mul, abs_zero]
        positivity
    _ = (h + 1 : ℤ) * Cp * Cq * k ^ (d + e - h) := by simp [mul_assoc]

theorem errorPolynomial_coeff_bound (a : ℕ → ℤ) (k : ℤ) (hk : 0 ≤ k)
    (r h : ℕ) (hr : 1 ≤ r) (ha : ∀ i < r, |a i| ≤ k) (hh : h ≤ 2 * r) :
    |(errorPolynomial a r).coeff h| ≤ 2 ^ (8 * r) * k ^ (2 * r - h) := by
  have hAsq := mul_coeff_weighted_bound (rootPolynomial a r) (rootPolynomial a r)
    (2 ^ (2 * r + r / 2)) (2 ^ (2 * r + r / 2)) k r r h
    (by positivity) (by positivity) hk (rootPolynomial_degree_le a r)
    (rootPolynomial_degree_le a r) (by omega)
    (fun i hi => rootPolynomial_coeff_bound a k hk r i ha hi)
    (fun i hi => rootPolynomial_coeff_bound a k hk r i ha hi)
  have hcount : (h + 1 : ℤ) ≤ 2 ^ (2 * r) := by
    exact_mod_cast (Nat.add_le_add_right hh 1).trans (Nat.succ_le_iff.mpr (2 * r).lt_two_pow_self)
  have hAsq' : |(rootPolynomial a r ^ 2).coeff h| ≤
      2 ^ (7 * r) * k ^ (2 * r - h) := by
    have hmul := mul_le_mul_of_nonneg_right hcount
      (show 0 ≤ (2 : ℤ) ^ (2 * r + r / 2) * 2 ^ (2 * r + r / 2) *
        k ^ (2 * r - h) by positivity)
    have hp : (2 : ℤ) ^ (2 * r) * 2 ^ (2 * r + r / 2) *
        2 ^ (2 * r + r / 2) ≤ 2 ^ (7 * r) := by
      rw [← pow_add, ← pow_add]
      exact pow_le_pow_right₀ (by norm_num) (by omega)
    have hmul' := mul_le_mul_of_nonneg_right hp (pow_nonneg hk (2 * r - h))
    rw [pow_two]
    have he : r + r = 2 * r := by omega
    rw [he] at hAsq
    nlinarith only [hAsq, hmul, hmul']
  have hR := radicand_coeff_bound a k hk r h ha hh
  have hR' : |(C (2 ^ (2 * r)) * radicand a r).coeff h| ≤
      2 ^ (3 * r) * k ^ (2 * r - h) := by
    rw [coeff_C_mul, abs_mul, abs_of_nonneg (by positivity : (0 : ℤ) ≤ 2 ^ (2 * r))]
    calc
      _ ≤ 2 ^ (2 * r) * (2 ^ r * k ^ (2 * r - h)) :=
        mul_le_mul_of_nonneg_left hR (by positivity)
      _ = 2 ^ (3 * r) * k ^ (2 * r - h) := by
        rw [← mul_assoc, ← pow_add, show 2 * r + r = 3 * r by omega]
  have hB : (2 : ℤ) ^ (7 * r) + 2 ^ (3 * r) ≤ 2 ^ (8 * r) := by
    have hp : (2 : ℤ) ^ (3 * r) ≤ 2 ^ (7 * r) :=
      pow_le_pow_right₀ (by norm_num) (by omega)
    have hp' : (2 : ℤ) ^ (7 * r + 1) ≤ 2 ^ (8 * r) :=
      pow_le_pow_right₀ (by norm_num) (by omega)
    rw [pow_succ] at hp'
    omega
  rw [errorPolynomial, coeff_sub]
  have htri := abs_add_le ((rootPolynomial a r ^ 2).coeff h)
    (-((C (2 ^ (2 * r)) * radicand a r).coeff h))
  simp only [← sub_eq_add_neg, abs_neg] at htri
  have hmul := mul_le_mul_of_nonneg_right hB (pow_nonneg hk (2 * r - h))
  nlinarith only [hAsq', hR', htri, hmul]

end

end B686CenteredRunge
