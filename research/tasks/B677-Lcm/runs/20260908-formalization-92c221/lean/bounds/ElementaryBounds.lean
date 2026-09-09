import Math.B677.IntervalLcm
import research.tasks.«B686-Four».runs.«20260908-lcm-distance-7cab35e».uniform.LcmDistance

/-!
Elementary necessary bounds for a B677 collision. The interval and prefix
upper estimates, including `4^N`, are reused from the accepted B686 run.
The factorial-tail proof gives a stronger displacement constant than the
paper's 1466; the exact requested 1466/1480 consumer is retained below.

These are intermediate necessary inequalities. No Dusart theorem or finite
collision exclusion certificate is assumed or proved in this module.
-/

namespace B677Bounds

set_option maxHeartbeats 1200000

def intervalProduct (n k : ℕ) : ℕ := (n + 1).ascFactorial k

lemma interval_product_eq_Icc (n k : ℕ) :
    intervalProduct n k = B686Round8.product k n := by
  unfold intervalProduct B686Round8.product
  rw [Nat.ascFactorial_eq_prod_range]
  refine Finset.prod_bij (fun i _ ↦ i + 1) ?_ ?_ ?_ ?_
  · intro i hi
    simp only [Finset.mem_range] at hi
    simp only [Finset.mem_Icc]
    omega
  · intro i hi j hj hij
    omega
  · intro j hj
    simp only [Finset.mem_Icc] at hj
    exact ⟨j - 1, by simp only [Finset.mem_range]; omega, by omega⟩
  · intro i hi
    omega

lemma interval_product_pos (n k : ℕ) : 0 < intervalProduct n k :=
  Nat.ascFactorial_pos n k

lemma pow_le_interval_product (n k : ℕ) :
    (n + 1) ^ k ≤ intervalProduct n k :=
  Nat.pow_succ_le_ascFactorial (n + 1) k

lemma interval_product_le_pow (n k : ℕ) :
    intervalProduct n k ≤ (n + k) ^ k :=
  Nat.ascFactorial_le_pow_add n k

/-- Exact bridge between `(n,n+k]` and the positive-start range convention. -/
lemma interval_lcm_eq_positive_range (n k : ℕ) :
    B677.intervalLcm n k = B686LcmBounds.intervalLcm (n + 1) k := by
  rw [B677.interval_lcm_eq_range, B686LcmBounds.intervalLcm]
  apply Finset.lcm_congr rfl
  intro i hi
  omega

lemma prefix_lcm_eq_initial_lcm (k : ℕ) :
    B677.intervalLcm 0 k = B686LcmBounds.initialLcm k := by
  simpa [B686LcmBounds.initialLcm] using B677.interval_lcm_eq_range 0 k

theorem prefix_lcm_le_four_pow (k : ℕ) :
    B677.intervalLcm 0 k ≤ 4 ^ k := by
  rw [prefix_lcm_eq_initial_lcm]
  exact B686LcmBounds.initialLcm_le_four_pow k

/-- The paper's binomial upper divisibility, with B677's exact endpoints. -/
theorem interval_lcm_dvd_choose_mul_prefix {n k : ℕ} (hk : 0 < k) :
    B677.intervalLcm n k ∣ (n + k).choose k * B677.intervalLcm 0 k := by
  rw [interval_lcm_eq_positive_range, prefix_lcm_eq_initial_lcm]
  have h := B686LcmBounds.intervalLcm_dvd_choose_mul_initialLcm
    (a := n + 1) (m := k) (by omega) hk
  simpa [show n + 1 + k - 1 = n + k by omega] using h

theorem interval_lcm_le_choose_mul_prefix {n k : ℕ} (hk : 0 < k) :
    B677.intervalLcm n k ≤ (n + k).choose k * B677.intervalLcm 0 k := by
  exact Nat.le_of_dvd
    (mul_pos (Nat.choose_pos (by omega))
      (Nat.pos_of_ne_zero (B677.interval_lcm_ne_zero 0 k)))
    (interval_lcm_dvd_choose_mul_prefix hk)

/-- The same upper estimate with the binomial denominator cleared exactly. -/
theorem factorial_mul_lcm_le_product_mul_prefix {n k : ℕ} (hk : 0 < k) :
    k.factorial * B677.intervalLcm n k ≤
      intervalProduct n k * B677.intervalLcm 0 k := by
  have hdvd := B686LcmBounds.factorial_mul_intervalLcm_dvd_ascFactorial_mul_initialLcm
    (a := n + 1) (m := k) (by omega) hk
  rw [← interval_lcm_eq_positive_range, ← prefix_lcm_eq_initial_lcm] at hdvd
  exact Nat.le_of_dvd
    (mul_pos (interval_product_pos n k)
      (Nat.pos_of_ne_zero (B677.interval_lcm_ne_zero 0 k))) hdvd

/-- A single factorial pays for all prime-power multiplicity outside a
maximum-valuation factor, reusing B686's general concentration lemma. -/
theorem interval_product_dvd_factorial_mul_lcm {n k : ℕ} (hk : 0 < k) :
    intervalProduct n k ∣ (k - 1).factorial * B677.intervalLcm n k := by
  have hP0 := (interval_product_pos n k).ne'
  have hL0 := B677.interval_lcm_ne_zero n k
  apply (Nat.factorization_le_iff_dvd hP0
    (mul_ne_zero (Nat.factorial_ne_zero _) hL0)).mp
  intro p
  by_cases hp : p.Prime
  · obtain ⟨j, hj, hbound⟩ :=
      B686UniformDistance.small_prime_factorization_bound k n p hk hp
    rw [← interval_product_eq_Icc] at hbound
    have hj' := Finset.mem_Icc.mp hj
    have hterm : n + j ∣ B677.intervalLcm n k := by
      exact Finset.dvd_lcm (Finset.mem_Ioc.mpr ⟨by omega, by omega⟩)
    have hval := ((Nat.factorization_le_iff_dvd (by omega : n + j ≠ 0) hL0).mpr
      hterm) p
    rw [Nat.factorization_mul (Nat.factorial_ne_zero _) hL0, Finsupp.add_apply]
    omega
  · simp [Nat.factorization_eq_zero_of_not_prime _ hp]

theorem interval_product_le_factorial_mul_lcm {n k : ℕ} (hk : 0 < k) :
    intervalProduct n k ≤ (k - 1).factorial * B677.intervalLcm n k := by
  exact Nat.le_of_dvd
    (mul_pos (Nat.factorial_pos _)
      (Nat.pos_of_ne_zero (B677.interval_lcm_ne_zero n k)))
    (interval_product_dvd_factorial_mul_lcm hk)

lemma factorial_eq_mul_pred {k : ℕ} (hk : 0 < k) :
    k.factorial = k * (k - 1).factorial := by
  have h := Nat.factorial_succ (k - 1)
  simpa [show k - 1 + 1 = k by omega] using h

/-- The paper's lower binomial estimate, without division in the statement. -/
theorem mul_choose_le_interval_lcm {n k : ℕ} (hk : 0 < k) :
    k * (n + k).choose k ≤ B677.intervalLcm n k := by
  have h := interval_product_le_factorial_mul_lcm (n := n) hk
  rw [intervalProduct, Nat.ascFactorial_eq_factorial_mul_choose',
    show n + 1 + k - 1 = n + k by omega,
    factorial_eq_mul_pred hk] at h
  have h' : (k - 1).factorial * (k * (n + k).choose k) ≤
      (k - 1).factorial * B677.intervalLcm n k := by
    simpa [mul_assoc, mul_comm, mul_left_comm] using h
  exact Nat.le_of_mul_le_mul_left h' (Nat.factorial_pos _)

/-- General necessary start relation. Separation is not needed for this bound. -/
theorem later_start_lt_four_mul_end {n m k : ℕ} (hk : 2 ≤ k)
    (heq : B677.intervalLcm n k = B677.intervalLcm m k) :
    m + 1 < 4 * (n + k) := by
  have hp := interval_product_le_factorial_mul_lcm (n := m) (by omega : 0 < k)
  rw [← heq] at hp
  have hup := factorial_mul_lcm_le_product_mul_prefix (n := n) (by omega : 0 < k)
  have hscaled : k * intervalProduct m k ≤
      intervalProduct n k * B677.intervalLcm 0 k := by
    calc
      k * intervalProduct m k ≤
          k * ((k - 1).factorial * B677.intervalLcm n k) := Nat.mul_le_mul_left _ hp
      _ = k.factorial * B677.intervalLcm n k := by
        rw [factorial_eq_mul_pred (k := k) (by omega)]
        ring
      _ ≤ intervalProduct n k * B677.intervalLcm 0 k := hup
  have hpow : (m + 1) ^ k < (4 * (n + k)) ^ k := by
    calc
      (m + 1) ^ k < k * (m + 1) ^ k := by
        have hp0 : 0 < (m + 1) ^ k := Nat.pow_pos (by omega)
        nlinarith
      _ ≤ k * intervalProduct m k := Nat.mul_le_mul_left _ (pow_le_interval_product m k)
      _ ≤ intervalProduct n k * B677.intervalLcm 0 k := hscaled
      _ ≤ (n + k) ^ k * 4 ^ k :=
        Nat.mul_le_mul (interval_product_le_pow n k) (prefix_lcm_le_four_pow k)
      _ = (4 * (n + k)) ^ k := by rw [mul_pow]; ring
  by_contra hnot
  exact (not_le_of_gt hpow) (Nat.pow_le_pow_left (by omega) k)

lemma gap_lcm_eq_centered_lcm {k d : ℕ} (hk : 0 < k) (hd : k ≤ d) :
    (Finset.Icc (d + 1 - k) (d + k - 1)).lcm id =
      B686LcmScale.centeredDiffLcm k d := by
  rw [B686LcmBounds.centeredDiffLcm_eq_intervalLcm hk hd]
  have hstart : d - k + 1 = d - (k - 1) := by omega
  rw [← hstart, ← interval_lcm_eq_positive_range, B677.intervalLcm]
  apply Finset.lcm_congr
  · ext a
    simp only [Finset.mem_Icc, Finset.mem_Ioc]
    omega
  · intro a ha
    rfl

theorem equal_lcm_dvd_centered_lcm {n m k : ℕ} (hk : 0 < k)
    (hsep : n + k ≤ m)
    (heq : B677.intervalLcm n k = B677.intervalLcm m k) :
    B677.intervalLcm n k ∣ B686LcmScale.centeredDiffLcm k (m - n) := by
  have h := B677.equal_interval_lcm_dvd_gap hk hsep heq
  rw [gap_lcm_eq_centered_lcm hk (by omega)] at h
  exact h

/-- All `k` terms in the factorial tail from `k` to `2k-1` are at least `k`. -/
lemma factorial_tail_lower {k : ℕ} (hk : 0 < k) :
    (k - 1).factorial * k ^ k ≤ (2 * k - 1).factorial := by
  have h := @Nat.factorial_mul_pow_le_factorial (k - 1) k
  simpa only [show k - 1 + 1 = k by omega,
    show k - 1 + k = 2 * k - 1 by omega] using h

/-- A general polynomial necessary inequality for separated equal LCMs. -/
theorem start_mul_length_lt_sixteen_gap_sq {n m k : ℕ} (hk : 2 ≤ k)
    (hsep : n + k ≤ m)
    (heq : B677.intervalLcm n k = B677.intervalLcm m k) :
    (n + 1) * k < 16 * (m - n) ^ 2 := by
  have hk0 : 0 < k := by omega
  have hd : k ≤ m - n := by omega
  have hdiv := equal_lcm_dvd_centered_lcm hk0 hsep heq
  have hLle : B677.intervalLcm n k ≤ B686LcmScale.centeredDiffLcm k (m - n) :=
    Nat.le_of_dvd
      (Nat.pos_of_ne_zero (B686LcmScale.centeredDiffLcm_ne_zero hk0 hd)) hdiv
  have hgap := B686LcmBounds.factorial_mul_centeredDiffLcm_lt_four_mul_gap_pow hk hd
  have hproduct := interval_product_le_factorial_mul_lcm (n := n) hk0
  have hpow : ((n + 1) * k) ^ k < ((4 * (m - n)) ^ 2) ^ k := by
    calc
      ((n + 1) * k) ^ k = k ^ k * (n + 1) ^ k := by rw [mul_pow]; ring
      _ ≤ k ^ k * intervalProduct n k := Nat.mul_le_mul_left _ (pow_le_interval_product n k)
      _ ≤ k ^ k * ((k - 1).factorial * B677.intervalLcm n k) :=
        Nat.mul_le_mul_left _ hproduct
      _ = ((k - 1).factorial * k ^ k) * B677.intervalLcm n k := by ring
      _ ≤ (2 * k - 1).factorial * B677.intervalLcm n k :=
        Nat.mul_le_mul_right _ (factorial_tail_lower hk0)
      _ ≤ (2 * k - 1).factorial * B686LcmScale.centeredDiffLcm k (m - n) :=
        Nat.mul_le_mul_left _ hLle
      _ < (4 * (m - n)) ^ (2 * k - 1) := hgap
      _ ≤ (4 * (m - n)) ^ (2 * k) := Nat.pow_le_pow_right (by omega) (by omega)
      _ = ((4 * (m - n)) ^ 2) ^ k := by rw [pow_mul]
  have hbase : (n + 1) * k < (4 * (m - n)) ^ 2 := by
    by_contra hnot
    exact (not_le_of_gt hpow) (Nat.pow_le_pow_left (by omega) k)
  nlinarith

/-- The reused factorial-tail route gives a stronger bound than the paper's 1466. -/
theorem later_start_lt_1032_mul_length {n m k : ℕ} (hk : 2 ≤ k)
    (hsep : n + k ≤ m)
    (heq : B677.intervalLcm n k = B677.intervalLcm m k)
    (hgap : m - n ≤ 8 * k) : m < 1032 * k := by
  have h := start_mul_length_lt_sixteen_gap_sq hk hsep heq
  have hsquare := Nat.pow_le_pow_left hgap 2
  have hstart : n + 1 < 1024 * k := by
    nlinarith
  omega

/-- Requested displacement consumer, retained exactly despite the stronger route. -/
theorem later_start_lt_1466_mul_length {n m k : ℕ} (hk : 2 ≤ k)
    (hsep : n + k ≤ m)
    (heq : B677.intervalLcm n k = B677.intervalLcm m k)
    (hgap : m - n ≤ 8 * k) : m < 1466 * k := by
  have h := later_start_lt_1032_mul_length hk hsep heq hgap
  omega

theorem later_start_lt_1480_mul_length {n m k : ℕ} (hk : 2 ≤ k)
    (heq : B677.intervalLcm n k = B677.intervalLcm m k)
    (hstart : n ≤ 369 * k) : m < 1480 * k := by
  have h := later_start_lt_four_mul_end hk heq
  omega

/-- Exact elementary consumer requested for the existing 8/369 paper chain.
It supplies the two bounds; prime distribution and the finite exclusion
certificate are separate obligations of the complete noncollision argument. -/
theorem elementary_consumers (n m k : ℕ) (hk : 2 ≤ k) (hsep : n + k ≤ m)
    (heq : B677.intervalLcm n k = B677.intervalLcm m k) :
    ((m - n ≤ 8 * k → m < 1466 * k) ∧
     (n ≤ 369 * k → m < 1480 * k)) := by
  exact ⟨later_start_lt_1466_mul_length hk hsep heq,
    later_start_lt_1480_mul_length hk heq⟩

/-- info: 'B677Bounds.interval_product_dvd_factorial_mul_lcm' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms interval_product_dvd_factorial_mul_lcm
/-- info: 'B677Bounds.interval_lcm_dvd_choose_mul_prefix' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms interval_lcm_dvd_choose_mul_prefix
/-- info: 'B677Bounds.prefix_lcm_le_four_pow' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms prefix_lcm_le_four_pow
/-- info: 'B677Bounds.mul_choose_le_interval_lcm' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms mul_choose_le_interval_lcm
/-- info: 'B677Bounds.later_start_lt_four_mul_end' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms later_start_lt_four_mul_end
/-- info: 'B677Bounds.start_mul_length_lt_sixteen_gap_sq' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms start_mul_length_lt_sixteen_gap_sq
/-- info: 'B677Bounds.later_start_lt_1032_mul_length' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms later_start_lt_1032_mul_length
/-- info: 'B677Bounds.elementary_consumers' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms elementary_consumers

end B677Bounds
