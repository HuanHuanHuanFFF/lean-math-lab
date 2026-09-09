/- leanprover/lean4:v4.29.1  mathlib v4.29.1 -/
import ErdosProblems.Erdos686

/-!
# Erdős Problem 686: constant-quotient residual machinery

Small-`k` branch infrastructure for the `N = 4` exclusion.  For a hypothetical
gap solution with constant row-base quotient `q` on rows `1..4`, write
`A = n + 1 = (q+1)·d − u`.  The row divisor skeleton then forces the residual
divisibilities `A + t ∣ residualRowPoly k q (d − u + (q+1)·t)` for
`t = 0,1,2,3`, and the lifted affine machinery decomposes these exactly into
affine saturation plus a fixed `(q+1)^k` correction.  Prime witnesses against
affine saturation refute individual rows.
-/

namespace Erdos686

namespace Erdos686Variant

/-- Residual row polynomial `∏_{s<k} (q·s − r)` over `ℤ`. -/
def residualRowPoly (k q r : ℕ) : ℤ :=
  ∏ s ∈ Finset.range k, ((q : ℤ) * (s : ℤ) - (r : ℤ))

/-- Affine residual polynomial `∏_{s<k} (u + (q+1)·s − (q+2)·t)` over `ℤ`. -/
def affineResidualPoly (k q u t : ℕ) : ℤ :=
  ∏ s ∈ Finset.range k,
    ((u : ℤ) + ((q : ℤ) + 1) * (s : ℤ) - ((q : ℤ) + 2) * (t : ℤ))

/-- Lifted affine residual polynomial
`∏_{s<k} (q·(u + (q+1)·s − (q+2)·t) − M)` over `ℤ`. -/
def liftedAffineResidualPoly (k q u t M : ℕ) : ℤ :=
  ∏ s ∈ Finset.range k,
    ((q : ℤ) * ((u : ℤ) + ((q : ℤ) + 1) * (s : ℤ) - ((q : ℤ) + 2) * (t : ℤ))
      - (M : ℤ))

/-- Explicit correction quotient in the primitive affine decomposition. -/
def liftedAffineCorrection (k q u t M : ℕ) : ℤ :=
  (liftedAffineResidualPoly k q u t M
    - (q : ℤ) ^ k * affineResidualPoly k q u t) / (M : ℤ)

/-- Congruence of products from factorwise congruence. -/
private lemma prod_modEq_prod {M : ℤ} {s : Finset ℕ} {f g : ℕ → ℤ}
    (h : ∀ i ∈ s, f i ≡ g i [ZMOD M]) :
    (∏ i ∈ s, f i) ≡ (∏ i ∈ s, g i) [ZMOD M] := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | insert a s' ha ih =>
      rw [Finset.prod_insert ha, Finset.prod_insert ha]
      exact (h a (Finset.mem_insert_self a s')).mul
        (ih fun i hi => h i (Finset.mem_insert_of_mem hi))

/-- Pulling a constant multiplier out of a `range k` product. -/
private lemma prod_const_mul_out {k : ℕ} (c : ℤ) (f : ℕ → ℤ) :
    (∏ s ∈ Finset.range k, (c * f s)) = c ^ k * ∏ s ∈ Finset.range k, f s := by
  rw [Finset.prod_mul_distrib, Finset.prod_const, Finset.card_range]

/-- Reindexing a shifted-row product from `Icc 1 k` to `range k`. -/
private lemma prod_range_shift_eq_prod_Icc (k d j : ℕ) :
    (∏ s ∈ Finset.range k, (d + (1 + s) - j))
      = ∏ i ∈ Finset.Icc 1 k, (d + i - j) := by
  induction k with
  | zero => simp
  | succ m ih =>
      rw [Finset.prod_range_succ, ih,
        Finset.prod_Icc_succ_top (by omega : 1 ≤ m + 1)]
      congr 1
      omega

/-- At `M = 0` the lifted polynomial degenerates to `q^k` times the affine
polynomial. -/
lemma liftedAffineResidualPoly_zero_M (k q u t : ℕ) :
    liftedAffineResidualPoly k q u t 0
      = (q : ℤ) ^ k * affineResidualPoly k q u t := by
  unfold liftedAffineResidualPoly affineResidualPoly
  rw [← prod_const_mul_out]
  exact Finset.prod_congr rfl fun s _ => by push_cast; ring

/-- Exact lifted identity: with `A = (q+1)·d − u` and `M = A + t`, each lifted
affine factor is `(q+1)` times the corresponding residual factor, so the whole
lifted polynomial is `(q+1)^k` times the residual row polynomial. -/
lemma liftedAffineResidualPoly_eq_lambda_pow_mul_residualRowPoly
    {k q d u A t : ℕ} (hu : u ≤ d) (hA : A = (q + 1) * d - u) :
    liftedAffineResidualPoly k q u t (A + t)
      = (((q + 1) ^ k : ℕ) : ℤ)
          * residualRowPoly k q (d - u + (q + 1) * t) := by
  have hud : u ≤ (q + 1) * d := hu.trans (Nat.le_mul_of_pos_left d q.succ_pos)
  have hAz : ((A + t : ℕ) : ℤ) = ((q : ℤ) + 1) * d - u + t := by
    subst hA
    rw [Nat.cast_add, Nat.cast_sub hud]
    push_cast
    ring
  have hRz : ((d - u + (q + 1) * t : ℕ) : ℤ)
      = (d : ℤ) - u + ((q : ℤ) + 1) * t := by
    rw [Nat.cast_add, Nat.cast_sub hu]
    push_cast
    ring
  have hcast : (((q + 1) ^ k : ℕ) : ℤ) = ((q : ℤ) + 1) ^ k := by push_cast; ring
  unfold liftedAffineResidualPoly residualRowPoly
  rw [hcast, ← prod_const_mul_out]
  refine Finset.prod_congr rfl ?_
  intro s _
  rw [hAz, hRz]
  ring

/-- Divisibility transfer: residual divisibility is equivalent to lifted affine
divisibility with the `(q+1)^k` saturation factor. -/
theorem constant_residual_dvd_iff_lifted_affine_dvd
    {k q d u A t : ℕ} (hu : u ≤ d) (hA : A = (q + 1) * d - u) :
    (((A + t : ℕ) : ℤ) ∣ residualRowPoly k q (d - u + (q + 1) * t))
      ↔ ((((A + t) * (q + 1) ^ k : ℕ) : ℤ)
          ∣ liftedAffineResidualPoly k q u t (A + t)) := by
  rw [liftedAffineResidualPoly_eq_lambda_pow_mul_residualRowPoly hu hA,
    Nat.cast_mul, mul_comm (((A + t : ℕ)) : ℤ) (((q + 1) ^ k : ℕ) : ℤ)]
  have hpow : (((q + 1) ^ k : ℕ) : ℤ) ≠ 0 := by positivity
  exact (mul_dvd_mul_iff_left hpow).symm

/-- Modulo `M`, every lifted affine factor agrees with `q` times the affine
factor, so `M` divides the difference of the two products. -/
lemma liftedAffineResidualPoly_sub_qpow_affine_dvd_M (k q u t M : ℕ) :
    (M : ℤ) ∣ liftedAffineResidualPoly k q u t M
      - (q : ℤ) ^ k * affineResidualPoly k q u t := by
  have hmod : liftedAffineResidualPoly k q u t M
      ≡ (q : ℤ) ^ k * affineResidualPoly k q u t [ZMOD (M : ℤ)] := by
    have h1 : liftedAffineResidualPoly k q u t M
        ≡ ∏ s ∈ Finset.range k,
            ((q : ℤ) * ((u : ℤ) + ((q : ℤ) + 1) * (s : ℤ)
              - ((q : ℤ) + 2) * (t : ℤ))) [ZMOD (M : ℤ)] := by
      unfold liftedAffineResidualPoly
      refine prod_modEq_prod ?_
      intro s _
      exact Int.modEq_iff_dvd.mpr ⟨1, by ring⟩
    have h2 : (∏ s ∈ Finset.range k,
        ((q : ℤ) * ((u : ℤ) + ((q : ℤ) + 1) * (s : ℤ)
          - ((q : ℤ) + 2) * (t : ℤ))))
        = (q : ℤ) ^ k * affineResidualPoly k q u t := by
      rw [affineResidualPoly, ← prod_const_mul_out]
    exact h2 ▸ h1
  exact (hmod.symm).dvd

/-- Primitive decomposition of the lifted polynomial: affine main term plus an
`M`-multiple correction. -/
lemma liftedAffineResidualPoly_eq_qpow_affine_add_M_mul_correction
    (k q u t M : ℕ) :
    liftedAffineResidualPoly k q u t M
      = (q : ℤ) ^ k * affineResidualPoly k q u t
        + (M : ℤ) * liftedAffineCorrection k q u t M := by
  have h := liftedAffineResidualPoly_sub_qpow_affine_dvd_M k q u t M
  unfold liftedAffineCorrection
  rw [Int.mul_ediv_cancel' h]
  ring

/-- Primitive affine criterion: lifted divisibility with the saturation factor
is equivalent to affine saturation together with the fixed `(q+1)^k`
correction divisibility. -/
theorem lifted_affine_dvd_iff_saturation_and_explicit_correction
    {k q u t M : ℕ} (hM : 0 < M) :
    ((((M * (q + 1) ^ k : ℕ) : ℤ) ∣ liftedAffineResidualPoly k q u t M) ↔
      (((M : ℕ) : ℤ) ∣ (q : ℤ) ^ k * affineResidualPoly k q u t) ∧
        ((((q + 1) ^ k : ℕ) : ℤ) ∣
          ((q : ℤ) ^ k * affineResidualPoly k q u t) / (M : ℤ)
            + liftedAffineCorrection k q u t M)) := by
  have hMz : ((M : ℕ) : ℤ) ≠ 0 := by exact_mod_cast hM.ne'
  have hdecomp := liftedAffineResidualPoly_eq_qpow_affine_add_M_mul_correction
    k q u t M
  constructor
  · intro h
    have hMdvd : ((M : ℕ) : ℤ) ∣ liftedAffineResidualPoly k q u t M :=
      dvd_trans ⟨(((q + 1) ^ k : ℕ) : ℤ), by push_cast; ring⟩ h
    have hsat : ((M : ℕ) : ℤ) ∣ (q : ℤ) ^ k * affineResidualPoly k q u t := by
      have hsub := dvd_sub hMdvd
        (dvd_mul_right ((M : ℕ) : ℤ) (liftedAffineCorrection k q u t M))
      rw [hdecomp] at hsub
      simpa using hsub
    refine ⟨hsat, ?_⟩
    obtain ⟨B, hB⟩ := hsat
    have hBdiv : ((q : ℤ) ^ k * affineResidualPoly k q u t) / (M : ℤ) = B := by
      rw [hB, Int.mul_ediv_cancel_left _ hMz]
    rw [hBdiv]
    have hlift : liftedAffineResidualPoly k q u t M
        = (M : ℤ) * (B + liftedAffineCorrection k q u t M) := by
      rw [hdecomp, hB]; ring
    rw [hlift, Nat.cast_mul] at h
    exact (mul_dvd_mul_iff_left hMz).mp h
  · rintro ⟨hsat, hcorr⟩
    obtain ⟨B, hB⟩ := hsat
    have hBdiv : ((q : ℤ) ^ k * affineResidualPoly k q u t) / (M : ℤ) = B := by
      rw [hB, Int.mul_ediv_cancel_left _ hMz]
    rw [hBdiv] at hcorr
    have hlift : liftedAffineResidualPoly k q u t M
        = (M : ℤ) * (B + liftedAffineCorrection k q u t M) := by
      rw [hdecomp, hB]; ring
    rw [hlift, Nat.cast_mul]
    exact mul_dvd_mul_left _ hcorr

/-- Row-four escape witness: a prime power in the `q^k`-reduced part of
`M = A + t` that exceeds the `p`-adic valuation of the affine polynomial
rules out the residual divisibility. -/
theorem residual_not_dvd_of_affine_saturation_prime_witness
    {k q d u A t p e : ℕ}
    (hu : u ≤ d)
    (hA : A = (q + 1) * d - u)
    (hMpos : 0 < A + t)
    (hp : p.Prime)
    (haff : affineResidualPoly k q u t ≠ 0)
    (hpM : p ^ e ∣ (A + t) / Nat.gcd (A + t) (q ^ k))
    (hvp : (affineResidualPoly k q u t).natAbs.factorization p < e) :
    ¬ (((A + t : ℕ) : ℤ) ∣ residualRowPoly k q (d - u + (q + 1) * t)) := by
  intro hdvd
  have hlift := (constant_residual_dvd_iff_lifted_affine_dvd
    (t := t) hu hA).mp hdvd
  have hMlift : ((A + t : ℕ) : ℤ) ∣ liftedAffineResidualPoly k q u t (A + t) :=
    dvd_trans ⟨(((q + 1) ^ k : ℕ) : ℤ), by push_cast; ring⟩ hlift
  have hdecomp := liftedAffineResidualPoly_eq_qpow_affine_add_M_mul_correction
    k q u t (A + t)
  have hMaffq : ((A + t : ℕ) : ℤ) ∣ (q : ℤ) ^ k * affineResidualPoly k q u t := by
    have hsub := dvd_sub hMlift
      (dvd_mul_right ((A + t : ℕ) : ℤ) (liftedAffineCorrection k q u t (A + t)))
    rw [hdecomp] at hsub
    simpa using hsub
  have hnat : (A + t) ∣ q ^ k * (affineResidualPoly k q u t).natAbs := by
    have h1 : ((A + t : ℕ) : ℤ).natAbs ∣
        ((q : ℤ) ^ k * affineResidualPoly k q u t).natAbs :=
      Int.natAbs_dvd_natAbs.mpr hMaffq
    simpa [Int.natAbs_mul, Int.natAbs_pow] using h1
  set g := Nat.gcd (A + t) (q ^ k) with hg
  have hgpos : 0 < g := Nat.gcd_pos_of_pos_left _ hMpos
  have hga : g * ((A + t) / g) = A + t := Nat.mul_div_cancel' (Nat.gcd_dvd_left _ _)
  have hgb : g * (q ^ k / g) = q ^ k := Nat.mul_div_cancel' (Nat.gcd_dvd_right _ _)
  have hdiv : (A + t) / g ∣ (q ^ k / g) * (affineResidualPoly k q u t).natAbs := by
    have h2 : g * ((A + t) / g)
        ∣ g * ((q ^ k / g) * (affineResidualPoly k q u t).natAbs) := by
      rw [hga, ← mul_assoc, hgb]
      exact hnat
    exact (mul_dvd_mul_iff_left hgpos.ne').mp h2
  have hcop : Nat.Coprime ((A + t) / g) (q ^ k / g) :=
    Nat.coprime_div_gcd_div_gcd hgpos
  have hMg_aff : (A + t) / g ∣ (affineResidualPoly k q u t).natAbs :=
    hcop.dvd_of_dvd_mul_left hdiv
  have hpe : p ^ e ∣ (affineResidualPoly k q u t).natAbs := hpM.trans hMg_aff
  have hle : e ≤ (affineResidualPoly k q u t).natAbs.factorization p :=
    (Nat.Prime.pow_dvd_iff_le_factorization hp (Int.natAbs_ne_zero.mpr haff)).mp hpe
  omega

/-!
## Row divisibility forces residual divisibility

The key exact identity: with `M = n + 1 + t = (q+1)·d − u + t` and `j = t+1`,
each residual factor satisfies `q·s − R_t = q·(d + (1+s) − j) − M` exactly in
`ℤ`.  Hence modulo `M` the residual row polynomial is `q^k` times the shifted
difference product, and row divisibility transfers.
-/

theorem residual_dvd_of_row_dvd
    {k q n d u t : ℕ}
    (hu : u ≤ d)
    (ht : t + 1 ≤ d)
    (hA : n + 1 = (q + 1) * d - u)
    (hrow : n + (t + 1) ∣ shiftedDiffProductAt k d (t + 1)) :
    ((n + 1 + t : ℕ) : ℤ) ∣ residualRowPoly k q (d - u + (q + 1) * t) := by
  have hud : u ≤ (q + 1) * d := hu.trans (Nat.le_mul_of_pos_left d q.succ_pos)
  have hMz : ((n + 1 + t : ℕ) : ℤ) = ((q : ℤ) + 1) * d - u + t := by
    rw [show n + 1 + t = ((q + 1) * d - u) + t by rw [← hA]]
    rw [Nat.cast_add, Nat.cast_sub hud]
    push_cast
    ring
  have hRz : ((d - u + (q + 1) * t : ℕ) : ℤ)
      = (d : ℤ) - u + ((q : ℤ) + 1) * t := by
    rw [Nat.cast_add, Nat.cast_sub hu]
    push_cast
    ring
  have hprod : residualRowPoly k q (d - u + (q + 1) * t)
      = ∏ s ∈ Finset.range k,
          ((q : ℤ) * ((d + (1 + s) - (t + 1) : ℕ) : ℤ)
            - ((n + 1 + t : ℕ) : ℤ)) := by
    unfold residualRowPoly
    refine Finset.prod_congr rfl ?_
    intro s _
    have hc : ((d + (1 + s) - (t + 1) : ℕ) : ℤ) = (d : ℤ) + s - t := by
      rw [Nat.cast_sub (by omega)]
      push_cast
      ring
    rw [hc, hMz, hRz]
    ring
  -- the ℕ product over the reindexed range equals the shifted diff product
  have hreindex : (∏ s ∈ Finset.range k, (d + (1 + s) - (t + 1)))
      = shiftedDiffProductAt k d (t + 1) := by
    rw [shiftedDiffProductAt]
    exact prod_range_shift_eq_prod_Icc k d (t + 1)
  -- congruence: residual ≡ q^k * shiftedDiff  [ZMOD (n+1+t)]
  have hmod : residualRowPoly k q (d - u + (q + 1) * t)
      ≡ (q : ℤ) ^ k * ((shiftedDiffProductAt k d (t + 1) : ℕ) : ℤ)
        [ZMOD ((n + 1 + t : ℕ) : ℤ)] := by
    rw [hprod]
    have hstep : (∏ s ∈ Finset.range k,
        ((q : ℤ) * ((d + (1 + s) - (t + 1) : ℕ) : ℤ)
          - ((n + 1 + t : ℕ) : ℤ)))
        ≡ ∏ s ∈ Finset.range k,
            ((q : ℤ) * ((d + (1 + s) - (t + 1) : ℕ) : ℤ))
          [ZMOD ((n + 1 + t : ℕ) : ℤ)] := by
      refine prod_modEq_prod ?_
      intro s _
      exact Int.modEq_iff_dvd.mpr ⟨1, by ring⟩
    have heq2 : (∏ s ∈ Finset.range k,
        ((q : ℤ) * ((d + (1 + s) - (t + 1) : ℕ) : ℤ)))
        = (q : ℤ) ^ k * ((shiftedDiffProductAt k d (t + 1) : ℕ) : ℤ) := by
      rw [prod_const_mul_out, ← hreindex, Nat.cast_prod]
    exact heq2 ▸ hstep
  -- transfer divisibility
  have hrow' : n + 1 + t ∣ shiftedDiffProductAt k d (t + 1) := by
    have heq : n + (t + 1) = n + 1 + t := by ring
    rwa [heq] at hrow
  have hdvd2 : ((n + 1 + t : ℕ) : ℤ)
      ∣ (q : ℤ) ^ k * ((shiftedDiffProductAt k d (t + 1) : ℕ) : ℤ) :=
    Dvd.dvd.mul_left (Int.natCast_dvd_natCast.mpr hrow') _
  have hsub := hmod.dvd
  simpa using dvd_sub hdvd2 hsub

/-- Package: rows `1..4` of the divisor skeleton force the four residual
divisibilities for the constant-quotient analysis. -/
theorem residual_rows_of_row_prefix_four
    {k q n d u : ℕ}
    (hu : u ≤ d)
    (hd4 : 4 ≤ d)
    (hA : n + 1 = (q + 1) * d - u)
    (hrows : ∀ j, j ∈ Finset.Icc 1 4 → n + j ∣ shiftedDiffProductAt k d j) :
    ∀ t, t ≤ 3 →
      ((n + 1 + t : ℕ) : ℤ) ∣ residualRowPoly k q (d - u + (q + 1) * t) := by
  intro t ht
  refine residual_dvd_of_row_dvd hu (by omega) hA ?_
  exact hrows (t + 1) (Finset.mem_Icc.mpr ⟨by omega, by omega⟩)

/-- Base-quotient parametrization: if `(n+1)/d = q` with `d > 0`, the
deficiency `u = (q+1)·d − (n+1)` satisfies `1 ≤ u ≤ d` and
`n + 1 = (q+1)·d − u`. -/
lemma exists_deficiency_of_row_base_quotient
    {n d q : ℕ} (hd : 0 < d) (hq : (n + 1) / d = q) :
    ∃ u, 1 ≤ u ∧ u ≤ d ∧ n + 1 = (q + 1) * d - u := by
  have hdm := Nat.div_add_mod (n + 1) d
  rw [hq] at hdm
  have hmod : (n + 1) % d < d := Nat.mod_lt _ hd
  have hqd : (q + 1) * d = d * q + d := by ring
  exact ⟨(q + 1) * d - (n + 1), by omega, by omega, by omega⟩

end Erdos686Variant

end Erdos686
