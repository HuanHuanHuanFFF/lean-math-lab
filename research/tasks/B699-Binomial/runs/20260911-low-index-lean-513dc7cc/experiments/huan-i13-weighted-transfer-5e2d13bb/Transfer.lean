import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i13-weighted-transfer-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i13-weighted-transfer-5e2d13bb».Windows
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i13-weighted-transfer-5e2d13bb».Positions

/-! UNCOMPILED. The actual p>=13 support product, with full component exponents,
is transferred under only the original hij/hjn/noCommon hypotheses. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I13WeightedTransfer
open scoped BigOperators
open Math.B699.WindowPrimeAssignment B699LargePrimeStructure

noncomputable def largeWeightedProduct (n : ℕ) (hn : 13 ≤ n) : ℕ :=
  ∏ p ∈ (primeSupport n 13).filter (fun p => 13 ≤ p),
    primeComponent n 13 p ^ (16 - assignedIndex n 13 (by decide) hn p)

theorem actual_component_weight_dvd (n j p : ℕ)
    (hij : 13 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 13 j)
    (hmem : p ∈ primeSupport n 13) (hpi : 13 ≤ p) :
    primeComponent n 13 p ^
        (16 - assignedIndex n 13 (by decide) (original_index_le hij hjn) p) ∣
      doubleWindow n j := by
  obtain ⟨b, c, _, _, hbc, hb, hc⟩ := actual_transferred_positions n j p hij hjn hno hmem hpi
  exact component_power_dvd_double_window n j _ b c _ hbc hb hc

theorem actual_large_weighted_dvd (n j : ℕ)
    (hij : 13 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 13 j) :
    largeWeightedProduct n (original_index_le hij hjn) ∣ doubleWindow n j := by
  classical
  have h := prime_power_finset_prod_dvd
    ((primeSupport n 13).filter (fun p => 13 ≤ p))
    (fun p => (n.choose 13).factorization p *
      (16 - assignedIndex n 13 (by decide) (original_index_le hij hjn) p))
    (doubleWindow n j)
    (fun p hp => supported_prime n 13 p (Finset.mem_filter.mp hp).1)
    (fun p hp => by
      obtain ⟨hps, hpi⟩ := Finset.mem_filter.mp hp
      simpa only [primeComponent, Nat.pow_mul] using
        actual_component_weight_dvd n j p hij hjn hno hps hpi)
  simpa only [largeWeightedProduct, primeComponent, Nat.pow_mul] using h

theorem actual_large_weighted_le_windows (n j : ℕ)
    (hij : 13 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 13 j) :
    largeWeightedProduct n (original_index_le hij hjn) ≤ doubleWindow n j := by
  apply Nat.le_of_dvd
  · exact double_window_pos n j (by omega) (by omega)
  · exact actual_large_weighted_dvd n j hij hjn hno

theorem actual_large_weighted_le_n72 (n j : ℕ)
    (hij : 13 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 13 j) :
    largeWeightedProduct n (original_index_le hij hjn) ≤ n ^ 72 :=
  (actual_large_weighted_le_windows n j hij hjn hno).trans
    (double_window_upper n j (hjn.trans (Nat.div_le_self n 2)))

/-- The exact source-side divisibility and size statements are supplied together. -/
theorem actual_large_weighted_transfer (n j : ℕ)
    (hij : 13 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 13 j) :
    largeWeightedProduct n (original_index_le hij hjn) ∣ doubleWindow n j ∧
      largeWeightedProduct n (original_index_le hij hjn) ≤ doubleWindow n j ∧
      doubleWindow n j ≤ n ^ 72 := by
  exact ⟨actual_large_weighted_dvd n j hij hjn hno,
    actual_large_weighted_le_windows n j hij hjn hno,
    double_window_upper n j (hjn.trans (Nat.div_le_self n 2))⟩

end Math.B699.I13WeightedTransfer
