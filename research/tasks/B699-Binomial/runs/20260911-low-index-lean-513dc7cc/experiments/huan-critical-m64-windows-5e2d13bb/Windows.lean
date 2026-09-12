import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-critical-m64-windows-5e2d13bb».Definitions
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Tactic.Ring

/-! Actual complete windows and their nonzero bounded difference.
This module is independent of the new CriticalPadeHeight candidate. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.CriticalM64Windows
open B699LowIndex B699LargePrimeStructure

theorem window_of_large_component {n i p : ℕ} (hi : 1 ≤ i) (hin : i ≤ n)
    (hp : p.Prime) (hn : 4096 < n)
    (hlarge : n ≤ 64 * p ^ (n.choose i).factorization p) :
    ∃ a A : ℕ, M64Window n i p a A := by
  obtain ⟨he, a, ha, A, hA, hcoef, hrepr⟩ :=
    binomial_power_interval_of_large_power hi hin hp (by omega : 64 < n) hlarge
  refine ⟨a, A, ha, hA, ?_, hcoef, hlarge, ?_⟩
  · dsimp only [fullExponent]
    omega
  · simpa only [fullExponent] using hrepr

theorem window_full_power_dvd {n i p a A : ℕ} (hw : M64Window n i p a A) :
    p ^ fullExponent n i p ∣ n - a := by
  obtain ⟨_, _, _, _, _, hrepr⟩ := hw
  have hsub : n - a = A * p ^ fullExponent n i p := by omega
  refine ⟨A, ?_⟩
  rw [hsub]
  ac_rfl

theorem window_full_power_large {n i p a A : ℕ} (hp : p.Prime)
    (hw : M64Window n i p a A) : n ≤ 64 * p ^ fullExponent n i p := by
  obtain ⟨_, _, _, _, hlarge, _⟩ := hw
  have hexp : (n.choose i).factorization p ≤ fullExponent n i p := by
    dsimp only [fullExponent]
    omega
  exact hlarge.trans (Nat.mul_le_mul_left 64 (Nat.pow_le_pow_right hp.pos hexp))

theorem window_cofactor_le_64 {n i p a A : ℕ} (hp : p.Prime)
    (hw : M64Window n i p a A) : A ≤ 64 := by
  obtain ⟨_, _, _, hcoef, _, _⟩ := hw
  have hone : 1 ≤ p ^ i.factorization p := Nat.succ_le_of_lt (pow_pos hp.pos _)
  have hA : A ≤ A * p ^ i.factorization p := by
    simpa only [Nat.mul_one] using Nat.mul_le_mul_left A hone
  exact hA.trans hcoef

theorem offsets_ne {n i p q a b A B : ℕ} (hn : 4096 < n) (hin : i ≤ n)
    (hp : p.Prime) (hq : q.Prime) (hpq : p ≠ q)
    (hP : M64Window n i p a A) (hQ : M64Window n i q b B) : a ≠ b := by
  intro hab
  have hdivP := window_full_power_dvd hP
  have hdivQ := window_full_power_dvd hQ
  rw [← hab] at hdivQ
  have hc := Nat.coprime_pow_primes (fullExponent n i p) (fullExponent n i q) hp hq hpq
  have hdiv : p ^ fullExponent n i p * q ^ fullExponent n i q ∣ n - a :=
    hc.mul_dvd_of_dvd_of_dvd hdivP hdivQ
  have ha : a < i := hP.1
  have hpositive : 0 < n - a := by omega
  have hproduct : p ^ fullExponent n i p * q ^ fullExponent n i q ≤ n - a :=
    Nat.le_of_dvd hpositive hdiv
  have hlargeP := window_full_power_large hp hP
  have hlargeQ := window_full_power_large hq hQ
  have hsquare : n * n ≤ 4096 * n := by
    calc
      n * n ≤ (64 * p ^ fullExponent n i p) *
          (64 * q ^ fullExponent n i q) := Nat.mul_le_mul hlargeP hlargeQ
      _ = 4096 * (p ^ fullExponent n i p * q ^ fullExponent n i q) := by ring
      _ ≤ 4096 * (n - a) := Nat.mul_le_mul_left 4096 hproduct
      _ ≤ 4096 * n := Nat.mul_le_mul_left 4096 (Nat.sub_le n a)
  have hsmall : n ≤ 4096 := Nat.le_of_mul_le_mul_right hsquare (by omega : 0 < n)
  omega

theorem window_signed_difference {n i p q a b A B : ℕ}
    (hP : M64Window n i p a A) (hQ : M64Window n i q b B) :
    signedGap n i p q A B = (b : ℤ) - (a : ℤ) := by
  obtain ⟨_, _, _, _, _, hreprP⟩ := hP
  obtain ⟨_, _, _, _, _, hreprQ⟩ := hQ
  have hPZ := congrArg (fun x : ℕ => (x : ℤ)) hreprP
  have hQZ := congrArg (fun x : ℕ => (x : ℤ)) hreprQ
  simp only [Nat.cast_add] at hPZ hQZ
  unfold signedGap
  omega

theorem offset_abs_gap_bounds {i a b : ℕ} (hi34 : i ≤ 34)
    (ha : a < i) (hb : b < i) (hab : a ≠ b) :
    (1 : ℤ) ≤ |(b : ℤ) - (a : ℤ)| ∧ |(b : ℤ) - (a : ℤ)| ≤ 33 := by
  have hne : (b : ℤ) - (a : ℤ) ≠ 0 := by omega
  have hpositive := abs_pos.mpr hne
  constructor
  · omega
  · apply abs_le.mpr
    constructor <;> omega

theorem pairData_of_ordered_windows {n i p q a b A B : ℕ}
    (hn : 4096 < n) (hin : i ≤ n) (hi34 : i ≤ 34)
    (hp : p.Prime) (hpi : p < i) (hq : q.Prime) (hqi : q < i) (hpq : p < q)
    (hP : M64Window n i p a A) (hQ : M64Window n i q b B) :
    M64PairData n i p q a b A B := by
  have hab := offsets_ne hn hin hp hq hpq.ne hP hQ
  have heq := window_signed_difference hP hQ
  have hgap := offset_abs_gap_bounds hi34 hP.1 hQ.1 hab
  rw [← heq] at hgap
  exact ⟨hp, hpi, hq, hqi, hpq, hP, hQ, hab, heq, hgap.1, hgap.2⟩

theorem pair_of_m64_parameters {n i j r s : ℕ} (hc : M64Parameters i r s)
    (hn : 4096 < n) (hij : i < j) (hjn : j ≤ n / 2) (hno : ¬ Common n i j) :
    M64Pair n i := by
  obtain ⟨hi, hi34, hsi, hcount, hlambda, hH, hexponent, hcertificate⟩ := hc
  have hHn : 4097 ≤ n := by omega
  obtain ⟨p, q, hp, hpi, hq, hqi, hpq, hlargeP, hlargeQ⟩ :=
    noCommon_two_large_small_prime_powers (r := r) (s := s) (H := 4097) (M := 64) (d := 0)
      hi hij hjn hsi hcount (by decide) hlambda hH hHn
      (by simpa only [Nat.add_zero] using hexponent)
      (by simpa only [pow_zero, Nat.mul_one] using hcertificate) hno
  have hin : i ≤ n := by omega
  obtain ⟨a, A, hP⟩ := window_of_large_component (by omega) hin hp hn hlargeP
  obtain ⟨b, B, hQ⟩ := window_of_large_component (by omega) hin hq hn hlargeQ
  by_cases horder : p < q
  · exact ⟨p, q, a, b, A, B,
      pairData_of_ordered_windows hn hin hi34 hp hpi hq hqi horder hP hQ⟩
  · have hreverse : q < p := by omega
    exact ⟨q, p, b, a, B, A,
      pairData_of_ordered_windows hn hin hi34 hq hqi hp hpi hreverse hQ hP⟩

end Math.B699.CriticalM64Windows
