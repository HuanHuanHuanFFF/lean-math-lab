import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WinAssign.Weighted

/-! UNCOMPILED. Weighted numerator identity and factorial loss for the actual
WinAssign construction. No assignment or total-product identity is an input. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I13WeightedTransfer
open scoped BigOperators
open Math.B699.WindowPrimeAssignment

noncomputable def weightedComponents (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n)
    (w : ℕ → ℕ) : ℕ :=
  ∏ p ∈ primeSupport n k, primeComponent n k p ^ w (assignedIndex n k hk hkn p)

theorem weighted_blocks_product (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n)
    (w : ℕ → ℕ) :
    (∏ r ∈ Finset.range k, assignedBlock n k hk hkn r ^ w r) =
      weightedComponents n k hk hkn w := by
  classical
  unfold weightedComponents
  calc
    _ = ∏ r ∈ Finset.range k,
        ∏ p ∈ (primeSupport n k).filter (fun p => assignedIndex n k hk hkn p = r),
          primeComponent n k p ^ w (assignedIndex n k hk hkn p) := by
      apply Finset.prod_congr rfl
      intro r _
      rw [assignedBlock, ← Finset.prod_pow]
      apply Finset.prod_congr rfl
      intro p hp
      rw [(Finset.mem_filter.mp hp).2]
    _ = ∏ p ∈ primeSupport n k,
        primeComponent n k p ^ w (assignedIndex n k hk hkn p) :=
      Finset.prod_fiberwise_of_maps_to
        (s := primeSupport n k) (t := Finset.range k) (g := assignedIndex n k hk hkn)
        (fun p hp => Finset.mem_range.mpr
          (assigned_index_spec n k hk hkn p (supported_prime n k p hp)).1)
        (fun p => primeComponent n k p ^ w (assignedIndex n k hk hkn p))

theorem weighted_numerator_identity (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n)
    (w : ℕ → ℕ) :
    (∏ r ∈ Finset.range k, (n - r) ^ w r) =
      (∏ r ∈ Finset.range k, windowRemainder n k hk hkn r ^ w r) *
        weightedComponents n k hk hkn w := by
  calc
    _ = ∏ r ∈ Finset.range k,
        (windowRemainder n k hk hkn r * assignedBlock n k hk hkn r) ^ w r := by
      apply Finset.prod_congr rfl
      intro r _
      rw [remainder_mul_block n k hk hkn r]
    _ = (∏ r ∈ Finset.range k, windowRemainder n k hk hkn r ^ w r) *
        (∏ r ∈ Finset.range k, assignedBlock n k hk hkn r ^ w r) := by
      simp only [Nat.mul_pow, Finset.prod_mul_distrib]
    _ = _ := by rw [weighted_blocks_product n k hk hkn w]

theorem weighted_numerator_loss (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n)
    (w : ℕ → ℕ) (L : ℕ) (hw : ∀ r : ℕ, r < k → w r ≤ L) :
    (∏ r ∈ Finset.range k, (n - r) ^ w r) ≤
      k.factorial ^ L * weightedComponents n k hk hkn w := by
  rw [weighted_numerator_identity n k hk hkn w]
  exact Nat.mul_le_mul_right _ (weighted_remainders_le n k hk hkn w L hw)

theorem thirteen_numerator_loss (n : ℕ) (hn : 13 ≤ n) :
    (∏ r ∈ Finset.range 13, (n - r) ^ (16 - r)) ≤
      (Nat.factorial 13) ^ 16 *
        weightedComponents n 13 (by decide) hn (fun r => 16 - r) :=
  weighted_numerator_loss n 13 (by decide) hn (fun r => 16 - r) 16
    (fun r _ => Nat.sub_le 16 r)

end Math.B699.I13WeightedTransfer
