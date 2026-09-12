import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-window-prime-assignment-5e2d13bb».Blocks

/-! UNCOMPILED. The actual natural quotient is used. Divisibility and positivity
justify its multiplication identity; the positive actual choose(n,k) is then
cancelled from the total numerator-window product. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.WindowPrimeAssignment
open scoped BigOperators

noncomputable def windowRemainder (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) (r : ℕ) : ℕ :=
  (n - r) / assignedBlock n k hk hkn r

theorem window_pos (n k : ℕ) (hkn : k ≤ n) (r : ℕ) (hr : r < k) : 0 < n - r :=
  Nat.sub_pos_of_lt (lt_of_lt_of_le hr hkn)

theorem remainder_mul_block (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) (r : ℕ) :
    windowRemainder n k hk hkn r * assignedBlock n k hk hkn r = n - r := by
  exact Nat.div_mul_cancel (block_dvd_window n k hk hkn r)

theorem remainder_pos (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) (r : ℕ) (hr : r < k) :
    0 < windowRemainder n k hk hkn r := by
  have hN : n - r ≠ 0 := (window_pos n k hkn r hr).ne'
  apply Nat.pos_of_ne_zero
  intro hzero
  apply hN
  calc
    n - r = windowRemainder n k hk hkn r * assignedBlock n k hk hkn r :=
      (remainder_mul_block n k hk hkn r).symm
    _ = 0 := by rw [hzero, Nat.zero_mul]

theorem remainder_ge_one (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) (r : ℕ) (hr : r < k) :
    1 ≤ windowRemainder n k hk hkn r := by
  have h := remainder_pos n k hk hkn r hr
  omega

theorem numerator_window_product (n k : ℕ) :
    (∏ r ∈ Finset.range k, n - r) = k.factorial * n.choose k := by
  rw [← Nat.descFactorial_eq_prod_range, Nat.descFactorial_eq_factorial_mul_choose]

theorem remainders_product (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) :
    (∏ r ∈ Finset.range k, windowRemainder n k hk hkn r) = k.factorial := by
  apply Nat.eq_of_mul_eq_mul_right (Nat.choose_pos hkn)
  calc
    (∏ r ∈ Finset.range k, windowRemainder n k hk hkn r) * n.choose k =
        (∏ r ∈ Finset.range k, windowRemainder n k hk hkn r) *
          (∏ r ∈ Finset.range k, assignedBlock n k hk hkn r) := by
      rw [blocks_product n k hk hkn]
    _ = ∏ r ∈ Finset.range k,
        windowRemainder n k hk hkn r * assignedBlock n k hk hkn r := by
      rw [Finset.prod_mul_distrib]
    _ = ∏ r ∈ Finset.range k, n - r := by
      apply Finset.prod_congr rfl
      intro r _
      exact remainder_mul_block n k hk hkn r
    _ = k.factorial * n.choose k := numerator_window_product n k

/-- Every property is supplied by the actual construction, not a chosen
assignment or product identity supplied by the caller. -/
theorem actual_window_factorization (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) :
    (∀ r : ℕ, r < k →
      0 < assignedBlock n k hk hkn r ∧
      assignedBlock n k hk hkn r ∣ n - r ∧
      1 ≤ windowRemainder n k hk hkn r ∧
      windowRemainder n k hk hkn r * assignedBlock n k hk hkn r = n - r) ∧
    (∏ r ∈ Finset.range k, windowRemainder n k hk hkn r) = k.factorial := by
  constructor
  · intro r hr
    exact ⟨block_pos n k hk hkn r, block_dvd_window n k hk hkn r,
      remainder_ge_one n k hk hkn r hr, remainder_mul_block n k hk hkn r⟩
  · exact remainders_product n k hk hkn

end Math.B699.WindowPrimeAssignment
