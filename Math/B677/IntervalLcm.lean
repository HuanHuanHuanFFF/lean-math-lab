import Mathlib.Algebra.GCDMonoid.FinsetLemmas
import Mathlib.Order.Interval.Finset.Nat
import Lean.Elab.Tactic.Omega

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B677

/-- Exact natural-number specialization of the platform's interval definition. -/
def intervalLcm (n k : ℕ) : ℕ := (Finset.Ioc n (n + k)).lcm id

lemma interval_lcm_ne_zero (n k : ℕ) : intervalLcm n k ≠ 0 := by
  apply Finset.lcm_ne_zero_iff.mpr
  intro a ha
  have ha' := Finset.mem_Ioc.mp ha
  simp only [id_eq]
  omega

lemma prime_pow_occurs_in_lcm {s : Finset ℕ} (hs : s.Nonempty)
    (hz : ∀ a ∈ s, a ≠ 0) {p e : ℕ} (hp : p.Prime)
    (h : p ^ e ∣ s.lcm id) : ∃ a ∈ s, p ^ e ∣ a := by
  have hl : s.lcm id ≠ 0 := Finset.lcm_ne_zero_iff.mpr hz
  have he := (hp.pow_dvd_iff_le_factorization hl).mp h
  rw [Finset.factorization_lcm (f := id) hz] at he
  obtain ⟨a, ha, hmax⟩ := Finset.exists_mem_eq_sup s hs (fun x ↦ x.factorization p)
  refine ⟨a, ha, (hp.pow_dvd_iff_le_factorization (hz a ha)).mpr ?_⟩
  simpa only [id_eq, hmax] using he

/-- Equal LCMs on separated intervals divide the LCM of their possible differences. -/
theorem equal_interval_lcm_dvd_gap {n m k : ℕ} (hk : 0 < k)
    (hsep : n + k ≤ m) (heq : intervalLcm n k = intervalLcm m k) :
    intervalLcm n k ∣ (Finset.Icc (m - n + 1 - k) (m - n + k - 1)).lcm id := by
  apply (Nat.dvd_iff_prime_pow_dvd_dvd _ _).mpr
  intro p e hp hpe
  have hn : (Finset.Ioc n (n + k)).Nonempty := ⟨n + 1, by simp; omega⟩
  have hm : (Finset.Ioc m (m + k)).Nonempty := ⟨m + 1, by simp; omega⟩
  have hnz : ∀ a ∈ Finset.Ioc n (n + k), a ≠ 0 := by
    intro a ha
    have := Finset.mem_Ioc.mp ha
    omega
  have hmz : ∀ b ∈ Finset.Ioc m (m + k), b ≠ 0 := by
    intro b hb
    have := Finset.mem_Ioc.mp hb
    omega
  obtain ⟨a, ha, hpa⟩ := prime_pow_occurs_in_lcm hn hnz hp hpe
  have hpe' : p ^ e ∣ intervalLcm m k := heq ▸ hpe
  obtain ⟨b, hb, hpb⟩ := prime_pow_occurs_in_lcm hm hmz hp hpe'
  have ha' := Finset.mem_Ioc.mp ha
  have hb' := Finset.mem_Ioc.mp hb
  have hmem : b - a ∈ Finset.Icc (m - n + 1 - k) (m - n + k - 1) := by
    apply Finset.mem_Icc.mpr
    constructor <;> omega
  exact (Nat.dvd_sub hpb hpa).trans (Finset.dvd_lcm hmem)

/-- A weaker prefix form that is useful for uniform upper bounds. -/
theorem equal_interval_lcm_dvd_prefix {n m k : ℕ} (hk : 0 < k)
    (hsep : n + k ≤ m) (heq : intervalLcm n k = intervalLcm m k) :
    intervalLcm n k ∣ intervalLcm 0 (m - n + k - 1) := by
  apply (equal_interval_lcm_dvd_gap hk hsep heq).trans
  apply Finset.lcm_mono
  intro a ha
  have ha' := Finset.mem_Icc.mp ha
  apply Finset.mem_Ioc.mpr
  constructor <;> omega

/-- The range-indexed statement independently fixes the positive interval endpoints. -/
theorem interval_lcm_eq_range (n k : ℕ) :
    intervalLcm n k = (Finset.range k).lcm (fun i ↦ n + i + 1) := by
  have hs : (Finset.range k).image (fun i ↦ n + i + 1) = Finset.Ioc n (n + k) := by
    ext a
    simp only [Finset.mem_image, Finset.mem_range, Finset.mem_Ioc]
    constructor
    · rintro ⟨i, hi, rfl⟩
      constructor <;> omega
    · rintro ⟨ha, hak⟩
      exact ⟨a - n - 1, by omega, by omega⟩
  rw [intervalLcm, ← hs, Finset.lcm_image]
  rfl

/-- A prime in the later interval makes equality impossible. -/
theorem interval_lcm_ne_of_later_prime {n m k p : ℕ} (hk : 0 < k)
    (hsep : n + k ≤ m) (hp : p.Prime) (hpm : m < p) (hpk : p ≤ m + k) :
    intervalLcm n k ≠ intervalLcm m k := by
  intro heq
  have hd : p ^ 1 ∣ intervalLcm n k := by
    rw [heq, intervalLcm, pow_one]
    exact Finset.dvd_lcm (Finset.mem_Ioc.mpr ⟨hpm, hpk⟩)
  have hn : (Finset.Ioc n (n + k)).Nonempty := ⟨n + 1, by simp; omega⟩
  have hnz : ∀ a ∈ Finset.Ioc n (n + k), a ≠ 0 := by
    intro a ha
    have := Finset.mem_Ioc.mp ha
    omega
  obtain ⟨a, ha, hpa⟩ := prime_pow_occurs_in_lcm hn hnz hp hd
  have ha' := Finset.mem_Ioc.mp ha
  have hle : p ≤ a := by
    apply Nat.le_of_dvd (by omega)
    simpa only [pow_one] using hpa
  omega

end B677

