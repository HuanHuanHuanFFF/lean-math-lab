import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-window-prime-assignment-5e2d13bb».Assignment
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-window-prime-assignment-5e2d13bb».Products

/-! UNCOMPILED. Actual location fibers of the complete prime support.
Each fiber is a positive divisor; distinct fibers are coprime; their product
is exactly the original binomial coefficient. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.WindowPrimeAssignment
open scoped BigOperators

noncomputable def assignedBlock (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) (r : ℕ) : ℕ :=
  ∏ p ∈ (primeSupport n k).filter (fun p => assignedIndex n k hk hkn p = r),
    primeComponent n k p

theorem block_pos (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) (r : ℕ) :
    0 < assignedBlock n k hk hkn r := by
  classical
  unfold assignedBlock
  apply Finset.prod_pos
  intro p hp
  exact component_pos n k p (Finset.mem_filter.mp hp).1

theorem block_dvd_window (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) (r : ℕ) :
    assignedBlock n k hk hkn r ∣ n - r := by
  classical
  unfold assignedBlock
  apply product_dvd_of_pairwise_coprime
  · intro p hp q hq hpq
    exact components_coprime n k p q
      (Finset.mem_filter.mp hp).1 (Finset.mem_filter.mp hq).1 hpq
  · intro p hp
    obtain ⟨hps, hpr⟩ := Finset.mem_filter.mp hp
    have h := component_dvd_assigned_window n k hk hkn p (supported_prime n k p hps)
    simpa only [hpr] using h

theorem blocks_coprime (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n)
    (r s : ℕ) (hrs : r ≠ s) :
    Nat.Coprime (assignedBlock n k hk hkn r) (assignedBlock n k hk hkn s) := by
  classical
  unfold assignedBlock
  apply Nat.coprime_prod_left_iff.mpr
  intro p hp
  apply Nat.coprime_prod_right_iff.mpr
  intro q hq
  obtain ⟨hps, hpr⟩ := Finset.mem_filter.mp hp
  obtain ⟨hqs, hqspos⟩ := Finset.mem_filter.mp hq
  apply components_coprime n k p q hps hqs
  intro hpq
  apply hrs
  calc
    r = assignedIndex n k hk hkn p := hpr.symm
    _ = assignedIndex n k hk hkn q := congrArg (assignedIndex n k hk hkn) hpq
    _ = s := hqspos

theorem blocks_product (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) :
    (∏ r ∈ Finset.range k, assignedBlock n k hk hkn r) = n.choose k := by
  classical
  calc
    _ = ∏ p ∈ primeSupport n k, primeComponent n k p := by
      unfold assignedBlock
      exact Finset.prod_fiberwise_of_maps_to
        (s := primeSupport n k) (t := Finset.range k) (g := assignedIndex n k hk hkn)
        (fun p hp => Finset.mem_range.mpr
          (assigned_index_spec n k hk hkn p (supported_prime n k p hp)).1)
        (primeComponent n k)
    _ = n.choose k := components_product n k hkn

end Math.B699.WindowPrimeAssignment
