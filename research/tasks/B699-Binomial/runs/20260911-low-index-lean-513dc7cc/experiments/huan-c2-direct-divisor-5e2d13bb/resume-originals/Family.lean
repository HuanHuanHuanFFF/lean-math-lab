import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2Direct.Normalization

/-! UNCOMPILED. Source e,d,f,m family, with all positivity and truncation supplied. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.C2Direct
open scoped BigOperators

open Math.B699.PadeConstruction Polynomial

def sourceDivisor (e d f m : ℕ) : ℕ := c2 (e * m) (d * m) (f * m)

theorem source_products_pos (e d f m : ℕ)
    (he : 1 ≤ e) (hd : 1 ≤ d) (hf : 1 ≤ f) (hm : 1 ≤ m) :
    1 ≤ e * m ∧ 1 ≤ d * m ∧ 1 ≤ f * m := by
  exact ⟨by simpa using Nat.mul_le_mul he hm,
    by simpa using Nat.mul_le_mul hd hm,
    by simpa using Nat.mul_le_mul hf hm⟩

theorem sourceDivisor_pos (e d f m : ℕ) : 0 < sourceDivisor e d f m := c2_pos _ _ _

theorem source_layer_tail (e d f m p h : ℕ)
    (ht : (e + d + f) * m < p ^ h) :
    layer (e * m) (d * m) (f * m) (p ^ h) = 0 := by
  apply layer_zero_of_large
  simpa only [total, Nat.add_mul] using ht

theorem source_dvd_qMagnitude (e d f m delta r : ℕ)
    (he : 1 ≤ e) (hd : 1 ≤ d) (hf : 1 ≤ f) (hm : 1 ≤ m)
    (hdelta : delta = 0 ∨ delta = 1) (hr : r ≤ e * m - delta) :
    sourceDivisor e d f m ∣ qMagnitude (e * m - delta) (f * m - 1 + delta) (d * m - delta) r := by
  obtain ⟨hx, hy, hz⟩ := source_products_pos e d f m he hd hf hm
  exact c2_dvd_qMagnitude (e * m) (d * m) (f * m) delta r hx hy hz hdelta hr

theorem source_dvd_qCoefficient (e d f m delta r : ℕ)
    (he : 1 ≤ e) (hd : 1 ≤ d) (hf : 1 ≤ f) (hm : 1 ≤ m)
    (hdelta : delta = 0 ∨ delta = 1) (hr : r ≤ e * m - delta) :
    (sourceDivisor e d f m : ℤ) ∣
      qCoefficient (e * m - delta) (f * m - 1 + delta) (d * m - delta) r := by
  obtain ⟨hx, hy, hz⟩ := source_products_pos e d f m he hd hf hm
  exact c2_dvd_qCoefficient (e * m) (d * m) (f * m) delta r hx hy hz hdelta hr

theorem source_dvd_qContent (e d f m delta : ℕ)
    (he : 1 ≤ e) (hd : 1 ≤ d) (hf : 1 ≤ f) (hm : 1 ≤ m)
    (hdelta : delta = 0 ∨ delta = 1) :
    sourceDivisor e d f m ∣ qContent (e * m - delta) (f * m - 1 + delta) (d * m - delta) := by
  obtain ⟨hx, hy, hz⟩ := source_products_pos e d f m he hd hf hm
  exact c2_dvd_qContent (e * m) (d * m) (f * m) delta hx hy hz hdelta

theorem source_dvd_pCoefficient (e d f m delta r : ℕ)
    (he : 1 ≤ e) (hd : 1 ≤ d) (hf : 1 ≤ f) (hm : 1 ≤ m)
    (hdelta : delta = 0 ∨ delta = 1) (hr : r ≤ d * m - delta) :
    (sourceDivisor e d f m : ℤ) ∣
      pCoefficient (e * m - delta) (f * m - 1 + delta) (d * m - delta) r := by
  obtain ⟨hx, hy, hz⟩ := source_products_pos e d f m he hd hf hm
  exact c2_dvd_pCoefficient (e * m) (d * m) (f * m) delta r hx hy hz hdelta hr

theorem source_integer_polynomials (e d f m delta : ℕ)
    (he : 1 ≤ e) (hd : 1 ≤ d) (hf : 1 ≤ f) (hm : 1 ≤ m)
    (hdelta : delta = 0 ∨ delta = 1) :
    ∃ P Q : ℤ[X],
      Polynomial.C (sourceDivisor e d f m : ℤ) * P =
        pPolynomial (e * m - delta) (f * m - 1 + delta) (d * m - delta) ∧
      Polynomial.C (sourceDivisor e d f m : ℤ) * Q =
        qPolynomial (e * m - delta) (f * m - 1 + delta) (d * m - delta) := by
  obtain ⟨hx, hy, hz⟩ := source_products_pos e d f m he hd hf hm
  exact ⟨pQuotientPolynomial (e * m) (d * m) (f * m) delta,
    qQuotientPolynomial (e * m) (d * m) (f * m) delta,
    c2_mul_pQuotientPolynomial (e * m) (d * m) (f * m) delta hx hy hz hdelta,
    c2_mul_qQuotientPolynomial (e * m) (d * m) (f * m) delta hx hy hz hdelta⟩
end Math.B699.C2Direct
